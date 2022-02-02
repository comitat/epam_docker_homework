FROM python:3.8-slim
WORKDIR /app
COPY lib_catalog/ /app
RUN apt-get update \
    && pip3 install django \
    && pip3 install -r requirements.txt \ 
    && sed -i 's/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \["*"\]/g' /app/lib_catalog/settings.py \
    && sed -i 's/0.0.0.0:3000/82.151.212.74:3000/g' /app/lib_catalog/settings.py
CMD [ "sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
