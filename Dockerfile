# 1. Base image with Python
FROM python:3.10-slim

# 2. Set working directory
WORKDIR /app

# 3. Install system deps (needed for numpy, pandas, scikit-learn)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 4. Copy requirements first (better caching)
COPY requirements.txt .

# 5. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 6. Download NLTK data (punkt + stopwords)
RUN python -m nltk.downloader punkt stopwords

# 7. Copy rest of the project (app, model, vectorizer, etc.)
COPY . .

# 8. Expose Streamlit’s default port
EXPOSE 8501

# 9. Run Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
