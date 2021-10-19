FROM nginx:mainline-alpine

RUN echo "<h1>Jahnin/nginx-net-info</h1><h1></h1><h2>Hostname: `hostname`</h2>" > /usr/share/nginx/html/index.html 
RUN echo "<h2>IFCONFIG</h2><code>`ip a| awk '{ print $0"<br>" }'`</code>" >> /usr/share/nginx/html/index.html
RUN echo "<h2>IP Route</h2><code>`ip route| awk '{ print $0"<br>" }'`</code>" >> /usr/share/nginx/html/index.html
