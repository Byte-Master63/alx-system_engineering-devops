# 0x0F-load_balancer

## Description
This project is focused on understanding and implementing load balancing in distributed systems. Load balancers are essential for distributing incoming network traffic across multiple servers to ensure high availability, reliability, and performance of web applications.

The tasks in this project involve setting up a load balancer, configuring it, and understanding how it interacts with backend servers. The project provides a hands-on approach to concepts like HTTP traffic distribution, server management, and system optimization.

---

## Learning Objectives
By completing this project, you will:

- Understand the purpose and benefits of load balancing.
- Learn how to configure and use a load balancer.
- Explore different load balancing algorithms and their use cases.
- Gain practical experience with managing backend servers and optimizing traffic flow.
- Understand the importance of fault tolerance and redundancy in distributed systems.

---

## Project Tasks

### 0. Double Your Traffic
- **Objective**: Set up a load balancer to distribute traffic evenly across two web servers.
- **Tools**: Use tools like **HAProxy** or any other load balancer.
- **Deliverables**:
  - A functional load balancer configuration file.
  - Documentation of the setup process.

### 1. Add Another Layer
- **Objective**: Expand the architecture by adding an additional web server and updating the load balancer configuration.
- **Tasks**:
  - Modify the load balancer to distribute traffic among three backend servers.
  - Test the setup to ensure even distribution and reliability.
- **Deliverables**:
  - Updated load balancer configuration file.
  - Test results and observations.

---

## Requirements

### General
- All configurations should be written in well-documented files.
- Scripts and commands must be tested on Ubuntu 20.04 LTS.
- Ensure that all servers are functional and reachable through the load balancer.
- Use appropriate tools for testing and validating traffic distribution.
