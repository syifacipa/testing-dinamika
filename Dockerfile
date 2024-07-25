# Gunakan image dasar dari Python
FROM python:3.9-slim

# Set label maintainer (opsional)
LABEL maintainer="email@example.com"

# Set direktori kerja di dalam container
WORKDIR /app

# Copy file requirements.txt ke dalam container
COPY req.txt .

# Install dependensi dari requirements.txt
RUN pip install --no-cache-dir -r req.txt

# Copy sisa file proyek ke dalam container
COPY . .

# Jalankan aplikasi
CMD ["python", "myapp.py"]
