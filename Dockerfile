# استخدم صورة بايثون
FROM python:3.9

# تعيين مجلد العمل
WORKDIR /app

# نسخ ملفات المشروع إلى الحاوية
COPY . .

# تثبيت المتطلبات
RUN pip install -r requirements.txt

# تحديد المنفذ
EXPOSE 5000

# تشغيل التطبيق
CMD ["python", "app.py"]