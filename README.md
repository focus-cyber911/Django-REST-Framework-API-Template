# Django + REST Framework API Template

REST API yaratish uchun tayyor Django template.

## Tech Stack

- **Django 5** — web framework
- **Django REST Framework** — REST API
- **SQLite** — ma'lumotlar bazasi (default)
- **django-cors-headers** — CORS support

## Ishga tushirish

### 1. Virtual environment yaratish

```bash
python -m venv venv
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows
```

### 2. Kutubxonalarni o'rnatish

```bash
pip install -r requirements.txt
```

### 3. Ma'lumotlar bazasini yaratish

```bash
python manage.py makemigrations
python manage.py migrate
```

### 4. Admin yaratish (ixtiyoriy)

```bash
python manage.py createsuperuser
```

### 5. Serverni ishga tushirish

```bash
python manage.py runserver
```

Server `http://localhost:8000` da ishlaydi.

### 6. API dokumentatsiya

Django REST Framework da browsable API mavjud:

- **Users list:** `GET http://localhost:8000/api/v1/users/`
- **User create:** `POST http://localhost:8000/api/v1/users/create/`
- **User detail:** `GET http://localhost:8000/api/v1/users/{id}/`
- **Admin panel:** `http://localhost:8000/admin/`

## Loyiha strukturasi

```
Default Project/
+-- core/
|   +-- settings.py
|   +-- urls.py
|   +-- wsgi.py
|   +-- asgi.py
+-- apps/
|   +-- users/
|       +-- models.py
|       +-- serializers.py
|       +-- views.py
|       +-- urls.py
|       +-- admin.py
+-- manage.py
+-- requirements.txt
+-- README.md
```

## API Endpointlar

| Method | Endpoint                       | Tavsifi                |
|--------|--------------------------------|------------------------|
| GET    | `/api/v1/users/`               | Barcha foydalanuvchilar |
| POST   | `/api/v1/users/create/`        | Yangi foydalanuvchi    |
| GET    | `/api/v1/users/{id}/`          | Bitta foydalanuvchi    |
| GET    | `/admin/`                      | Admin panel            |
