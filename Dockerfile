# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir Flask Flask-CORS

# Expose the port the app runs on
EXPOSE 5000

# Define environment variable for Flask to run in production mode
ENV FLASK_ENV=production

# Run the application when the container starts
CMD ["python3", "app.py"]
