FROM python:3.6-alpine
WORKDIR /opt
RUN pip3 install flask==1.1.2
ENV ODOO_URL="https://odoo.com"
ENV PGADMIN_URL="https://www.pgadmin.org"
COPY . /opt
#COPY ./templates/index.html ./templates/
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
