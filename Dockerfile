FROM tutum/lamp:latest

# Copy the current directory contents into the container at /tmp
COPY . /tmp/

RUN cd /tmp/sqli-labs && \
    rm -rf /app/* /create_mysql_admin_user.sh /run.sh && \
    mv -f /tmp/sqli-labs/* /app/ && \
    chown www-data:www-data -R /app && \
    mv /tmp/run.sh /run.sh && \
    chmod +x /run.sh && \
    rm -rf /tmp/*
