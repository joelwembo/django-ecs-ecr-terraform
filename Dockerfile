# Use an official Python runtime as a parent image
FROM public.ecr.aws/lambda/python:3.9
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/
COPY gunicorn-cfg.py /app/

# COPY deployments ./app/deployments/

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -r requirements.txt
# Copy the current directory contents into the container at /app
COPY . /app/

# RUN python manage.py makemigrations
# RUN python manage.py migrate

EXPOSE 8000
# RUN python manage.py runserver
