# استخدم صورة بايثون
FROM python:3.9

# تعيين مجلد العمل
WORKDIR /usr/src/app

# نسخ ملفات المشروع إلى الحاوية
COPY  requirements.txt /usr/src/app

# تثبيت المتطلبات
RUN pip install -r requirements.txt

COPY  . /usr/src/app

# تحديد المنفذ
EXPOSE 5000

# تشغيل التطبيق
CMD ["python", "app.py"]