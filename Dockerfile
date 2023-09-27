FROM ubuntu
FROM python:3
RUN pip install django
RUN pip install  django-crispy-forms && pip install crispy-bootstrap5 && pip install Pillow
WORKDIR /usr/build
COPY .  .
RUN cd /usr/build
RUN python manage.py migrate
CMD ["python","manage.py","runserver"]
