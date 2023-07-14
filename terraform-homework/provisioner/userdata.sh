
    #!/bin/bash
    sudo apt install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
    sudo echo "hello world!" > /var/www/html/index.html