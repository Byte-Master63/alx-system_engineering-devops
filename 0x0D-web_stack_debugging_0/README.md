# 0x0D. Web Stack Debugging #0

## Description

This project is part of the ALX Software Engineering curriculum, focusing on system debugging and troubleshooting. In this task, we dive into resolving issues with a Dockerized web stack environment to ensure proper functionality.

### Objective
Identify and fix a web server issue within a Docker container so that it returns the expected `200 OK` HTTP status code.

---

## Learning Objectives
By completing this project, you will:

- Understand common issues that can arise in a web stack setup.
- Learn how to diagnose and troubleshoot web server failures.
- Practice debugging techniques using Docker containers.
- Gain insights into HTTP status codes and server health monitoring.

---

## Project Tasks

### Task 0: The Troubleshooting Begins

**File:** `0-give_me_a_page`  
**Description:**
This script resolves an issue with a web server running in a Docker container that doesn't return the correct HTTP status code.

**Requirements:**

- Ensure that the web server returns a `200 OK` status code.
- Make changes directly to the Docker container as necessary.
- The solution must not require any modifications to the existing Docker configuration or system environment outside of debugging.

---

## Environment

- **Operating System:** Ubuntu 20.04 LTS
- **Containerization:** Docker
- **Programming Language:** Shell scripting (for debugging and fixes)
- **Text Editor:** vi, vim, emacs, or any command-line text editor

---

## Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-repo/0x0D-web_stack_debugging_0.git
   ```

2. **Navigate to the project directory:**
   ```bash
   cd 0x0D-web_stack_debugging_0
   ```

3. **Run the Docker container:**
   ```bash
   docker run -d -p 80:80 your-docker-image
   ```

4. **Execute the script to fix the issue:**
   ```bash
   ./0-give_me_a_page
   ```

5. **Verify the fix:**
   Ensure that accessing the server via a browser or cURL returns `200 OK`.

---

## Debugging Tips

- Check the status of services running in the container.
- Review error logs in `/var/log` for clues.
- Ensure necessary dependencies and configurations are correctly set.

---

## Author

- **Byte Master63**

Feel free to reach out with any questions or suggestions!

