# Use an official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the application files
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 7000

# Run the application
CMD ["python", "app.py"]

