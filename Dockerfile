FROM python:3.9-slim

# Set the working directory within the container
WORKDIR /app

# Copy dependency file
COPY requirements.txt  /app/requirements.txt

# Upgrade pip and install dependencies
RUN pip install --no-cache-dir -r  /app/requirements.txt

# Copy the rest of the application
Copy . /app

# Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Run the application
CMD ["flask", "run"]

# Expose port 5000 for the Flask application
EXPOSE 5000

