import numpy as np
import matplotlib.pyplot as plt
import random
import math


class Bandit:
    def __init__(self, probabilities):
        self.probabilities = probabilities
        self.num_arms = len(probabilities)

    def pull(self, arm_index):
        # Return 1 if a random number is less than the true probability else 0
        if np.random.rand() < self.probabilities[arm_index]:
            return 1
        return 0


class EpsilonGreedy:
    def __init__(self, num_arms, epsilon=0.1):
        self.num_arms = num_arms
        self.epsilon = epsilon
        self.q_values = np.zeros(num_arms)
        self.action_counts = np.zeros(num_arms)

    def select_action(self):
       
        if random.random() < self.epsilon:
            return random.randrange(self.num_arms)
        
        
        max_q = np.max(self.q_values)
        best_actions = [a for a in range(self.num_arms) if self.q_values[a] == max_q]
        return random.choice(best_actions)

    def update(self, action, reward):
        self.action_counts[action] += 1
        n = self.action_counts[action]
        self.q_values[action] += (1.0 / n) * (reward - self.q_values[action])

class EpsilonDecreasing(EpsilonGreedy):
    def __init__(self, num_arms, initial_epsilon=1.0, decay_rate=0.99):
        # Inheritance
        super().__init__(num_arms, epsilon=initial_epsilon)
        self.decay_rate = decay_rate

    def update(self, action, reward):
        super().update(action, reward)
        #Multiply epsilon by the decay
        self.epsilon *= self.decay_rate

class UCB1:
    def __init__(self, num_arms):
        self.num_arms = num_arms
        self.q_values = np.zeros(num_arms)
        self.action_counts = np.zeros(num_arms)
        self.total_pulls = 0

    def select_action(self):
        #avoid dividing by zero
        for a in range(self.num_arms):
            if self.action_counts[a] == 0:
                return a
        
        
        ucb_scores = np.zeros(self.num_arms)
        for a in range(self.num_arms):
            exploration_bonus = math.sqrt((2 * math.log(self.total_pulls)) / self.action_counts[a])
            ucb_scores[a] = self.q_values[a] + exploration_bonus
            
        return np.argmax(ucb_scores)

    def update(self, action, reward):
        self.action_counts[action] += 1
        self.total_pulls += 1
        n = self.action_counts[action]
        self.q_values[action] += (1.0 / n) * (reward - self.q_values[action])



def run_simulation(agent_class, bandit, pulls=1000, runs=300, **kwargs):
   
    average_rewards = np.zeros(pulls)
    
    for _ in range(runs):
        agent = agent_class(bandit.num_arms, **kwargs)
        
        for t in range(pulls):
            action = agent.select_action()
            reward = bandit.pull(action)
            agent.update(action, reward)
            
            
            average_rewards[t] += reward
            
    
    return average_rewards / runs


if __name__ == "__main__":
    # Setup: 5 arms with fixed, unknown payout probabilities
    true_probabilities = [0.1, 0.5, 0.8, 0.3, 0.4]
    bandit = Bandit(true_probabilities)
    
    pulls = 5000
    runs = 1000 # A few hundred runs to smooth out the noise
    
    print("Simulating Epsilon-Greedy...")
    eps_greedy_rewards = run_simulation(EpsilonGreedy, bandit, pulls, runs, epsilon=0.1)
    
    print("Simulating Epsilon-Decreasing...")
    eps_dec_rewards = run_simulation(EpsilonDecreasing, bandit, pulls, runs, initial_epsilon=1.0, decay_rate=0.99)
    
    print("Simulating UCB1...")
    # UCB1 doesn't need extra kwargs
    ucb1_rewards = run_simulation(UCB1, bandit, pulls, runs)
    
    # Plotting the results
    plt.figure(figsize=(10, 6))
    plt.plot(eps_greedy_rewards, label='Epsilon-Greedy (ε=0.1)', alpha=0.8)
    plt.plot(eps_dec_rewards, label='Epsilon-Decreasing', alpha=0.8)
    plt.plot(ucb1_rewards, label='UCB1', alpha=0.8)
    
    # Adding a dashed line for the theoretical maximum possible reward (0.8)
    plt.axhline(y=max(true_probabilities), color='r', linestyle='--', label='Max Possible Reward')
    
    plt.title('Multi-Armed Bandit Strategies Comparison')
    plt.xlabel('Number of Pulls')
    plt.ylabel('Average Reward')
    plt.legend()
    plt.grid(True, alpha=0.3)
    plt.show()