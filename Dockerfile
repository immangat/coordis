# Use the official Python image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable (will be overwritten at runtime)
ENV DISCORD_TOKEN=""

# Run the bot
CMD ["python", "main.py"]
