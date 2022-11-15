FROM python:3.6-alpine
WORKDIR /opt
RUN pip3 install flask==1.1.2
ENV ODOO_URL="192.168.99.10:8069"
ENV PGADMIN_URL="192.168.99.10:5055"
COPY . /opt
#COPY ./templates/index.html ./templates/
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
