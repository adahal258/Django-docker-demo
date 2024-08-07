FROM ubuntu

WORKDIR /app

#you copy the main configuration file
COPY dockerDemo /app/ 

RUN apt-get update && \
    apt-get install -y python3 python3-pip && python3-django

ENTRYPOINT [ "python3" ]

CMD [ "manage.py", "runserver", "0.0.0.0:8000" ]



