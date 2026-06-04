#!/usr/bin/env python3

import rclpy
from rclpy.node import Node

from nav2_msgs.srv import SaveMap

class NumberGameClient(Node):

    def __init__(self):
        super().__init__('map_trySave')

        self.client = self.create_client(
            srv_type=SaveMap, 
            srv_name='/map_saver/save_map'
        ) 

        self.declare_parameters(
            namespace='',
            parameters=[
                ('MapName', 'default'),
            ]
        ) 

        while not self.client.wait_for_service(timeout_sec=1.0):
            self.get_logger().info(
                "Waiting for service..."
            ) 

    def send_request(self): 
        guess_input = self.get_parameter(
            'MapName' 
        ).get_parameter_value().string_value 

        self.get_logger().info(
            f"Sending the request:\n"
            f" - map name is: {guess_input}\n"
            f"   Awaiting response..."
        ) 

        request = SaveMap.Request() 
        request.map_url = "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part4_services/scripts/"+guess_input
        
        return self.client.call_async(request) 

def main():
    rclpy.init()
    client = NumberGameClient()

    future = client.send_request() 
    rclpy.spin_until_future_complete(client, future) 
    response = future.result() 

    client.get_logger().info(
        f"The server responded with:\n"
        f"{response.result}"
        f"if true then ur map name has been set by YOU else default"
        
    ) 

    client.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()