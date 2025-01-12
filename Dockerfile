# استخدم صورة بايثون
FROM python:alpine

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
CMD ["python3", "manage.py", "runserver", "0.0.0.0:5000"]