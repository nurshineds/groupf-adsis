# Menggunakan nginx sebagai basis image
FROM nginx:latest

# Menyalin semua file dari direktori 'persona' ke direktori kerja di dalam container
COPY . /usr/share/nginx/html

# Mengekspos port 80 untuk mengakses aplikasi
EXPOSE 80

# Menjalankan nginx di foreground
CMD ["nginx", "-g", "daemon off;"]