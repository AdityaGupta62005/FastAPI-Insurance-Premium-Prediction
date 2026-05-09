# Base Image
FROM python:3.11-slim

# Working Directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy rest of application code
COPY . .

# Application Port
EXPOSE 8000

# Command to start FastAPI application
CMD ['uvicorn', 'app:app', '--host', '0.0.0.0', '--port', '8000']
