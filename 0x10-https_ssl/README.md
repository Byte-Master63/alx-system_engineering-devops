# 0x10. HTTPS SSL

## Description
This project focuses on understanding and implementing **HTTPS** and **SSL/TLS** to secure web communication. The goal is to learn how to configure SSL certificates on web servers and understand the importance of secure communication in web development.

---

## Learning Objectives
By the end of this project, you will be able to:
- Explain the purpose and functionality of **HTTPS**.
- Describe how SSL/TLS encryption works.
- Configure a web server to use **SSL certificates**.
- Understand the importance of secure web communication.

---

## Requirements
- All scripts must run on **Ubuntu 20.04 LTS**.
- The `bash` scripts should pass **Shellcheck** without errors.
- Files must be executable.
- All files must be interpreted on `#!/bin/bash`.

---

## Project Tasks

### 0. World Wide Web
**Description**: Configure a domain name to point to a web server. 
- Ensure that the domain name is configured correctly.
- Verify that the web server is accessible via **HTTP**.

---

### 1. HTTPS Certificate
**Description**: Set up SSL/TLS on a web server to enable **HTTPS**.
- Obtain a free SSL certificate from **Let's Encrypt**.
- Install the certificate on your web server.
- Ensure the site is accessible securely via **HTTPS**.


---

### 2. HSTS (HTTP Strict Transport Security)
**Description**: Configure the web server to enforce **HSTS**.
- Enforce HTTPS by redirecting all HTTP traffic to HTTPS.
- Set up **HSTS headers** to ensure browsers always use HTTPS.

---

## Concepts Covered
- **HTTP vs HTTPS**: Understanding the differences and why HTTPS is preferred.
- **SSL/TLS**: Basics of encryption protocols used for secure communication.
- **SSL Certificates**: How they work and how to install them.
- **HSTS**: Ensuring strict use of HTTPS.

---

