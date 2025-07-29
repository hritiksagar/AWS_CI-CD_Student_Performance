FROM python:3.13-rc-slim


# Set working directory
WORKDIR /app

# Copy your project files to the container
COPY . /app

# Install dependencies if you have a requirements.txt
RUN apt update -y && apt install awscli -y

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt

# Run your main Python script
CMD ["python", "application.py"]
