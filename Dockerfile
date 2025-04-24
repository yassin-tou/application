# Use an official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy everything from repo into container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose Streamlit's default port
EXPOSE 8080

# Run the Streamlit app
CMD ["streamlit", "run", "appli.py", "--server.port=8501", "--server.enableCORS=false", "--server.enableXsrfProtection=false"]
