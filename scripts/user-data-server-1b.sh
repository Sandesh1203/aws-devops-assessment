#!/bin/bash
yum update -y
yum install -y nginx

rm -f /usr/share/nginx/html/index.html

cat > /usr/share/nginx/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>Hello World</title>
</head>
<body style="text-align: center; font-family: Arial; margin-top: 100px;">
    <h1>Hello World!</h1>
    <p>Instance ID: <strong> i-08fdf339ad4ed444f </strong></p>
    <p>Availability Zone: <strong>us-east-1b</strong></p>
    <p>Served by: <strong>Nginx</strong></p>
</body>
</html>
EOF

chmod 644 /usr/share/nginx/html/index.html
systemctl start nginx
systemctl enable nginx
