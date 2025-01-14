# Use Python image
FROM python:3.9

# Set the working directory
WORKDIR /usr/src/app

# Copy project files to the container
COPY requirements.txt /usr/src/app

# Install dependencies
RUN pip install -r requirements.txt

COPY . /usr/src/app

# Specify the port
EXPOSE 5000

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]