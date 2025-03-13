# 0x1A. Application Server

## Description
In this project, we extend our web infrastructure by setting up an **Application Server** to serve dynamic content for our **Airbnb Clone** project. The application server will work alongside **Nginx**, which will act as a reverse proxy, directing client requests to the appropriate backend.

## Learning Objectives
By the end of this project, you should be able to:
- Explain the role of an application server.
- Set up **Gunicorn** as an application server.
- Configure **Nginx** to work with the application server.
- Serve dynamic content using Python-based web applications.
- Manage processes and optimize performance.

## Technologies Used
- Ubuntu 20.04 LTS
- Nginx
- Gunicorn
- Flask (for testing application serving)
- Systemd (for managing services)

## Installation & Setup
Follow these steps to set up the application server:

### 1. Install Required Packages
```bash
sudo apt update && sudo apt install -y python3-pip python3-venv nginx
```

### 2. Set Up the Application Environment
```bash
mkdir -p ~/airbnb_clone && cd ~/airbnb_clone
python3 -m venv venv
source venv/bin/activate
pip install flask gunicorn
```

### 3. Create a Simple Flask App
```python
# app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return "Hello, this is the Airbnb Clone Application Server!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
```

### 4. Run the App with Gunicorn
```bash
gunicorn --bind 0.0.0.0:5000 app:app
```

### 5. Configure Nginx as a Reverse Proxy
Edit the Nginx configuration file:
```bash
sudo nano /etc/nginx/sites-available/default
```
Replace existing content with:
```nginx
server {
    listen 80;
    server_name your_domain_or_IP;

    location / {
        proxy_pass http://127.0.0.1:5000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```
Restart Nginx:
```bash
sudo systemctl restart nginx
```

### 6. Create a Systemd Service for Gunicorn
```bash
sudo nano /etc/systemd/system/airbnb.service
```
Add the following:
```ini
[Unit]
Description=Gunicorn instance for Airbnb Clone
After=network.target

[Service]
User=ubuntu
Group=ubuntu
WorkingDirectory=/home/ubuntu/airbnb_clone
ExecStart=/home/ubuntu/airbnb_clone/venv/bin/gunicorn --workers 3 --bind unix:/home/ubuntu/airbnb_clone/airbnb.sock app:app

[Install]
WantedBy=multi-user.target
```
Enable and start the service:
```bash
sudo systemctl daemon-reload
sudo systemctl enable airbnb.service
sudo systemctl start airbnb.service
```

## Testing
To confirm everything is working, visit:
```bash
http://your_server_ip/
```
You should see:
```
Hello, this is the Airbnb Clone Application Server!
```

## Author
- Byte Master63

## License
This project is for educational purposes under the ALX SE program.

