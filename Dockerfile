# 1. Bizə lazım olan rəsmi Python imicini fundament olaraq götürürük
FROM python:3.9-slim

# 2. Konteynerin daxilində layihə üçün qovluq yaradırıq
WORKDIR /app

# 3. Asılılıqlar siyahısını konteynerə köçürürük
COPY requirements.txt .

# 4. Siyahıdakı Flask kitabxanasını konteynerin içinə yükləyirik
RUN pip install --no-cache-dir -r requirements.txt

# 5. Bizim app.py kodumuzu və digər hər şeyi konteynerə köçürürük
COPY . .

# 6. Tətbiqimizin 5000-ci portdan kənara açılacağını bildiririk
EXPOSE 5000

# 7. Mühit dəyişənini (Environment Variable) təyin edirik
ENV APP_ENV=Production

# 8. Konteyner ayağa qalxanda avtomatik icra olunacaq əmr
CMD ["python", "app.py"]