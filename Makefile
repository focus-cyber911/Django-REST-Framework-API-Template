mig:
	python manage.py makemigrations
	python manage.py migrate

admin:
	python manage.py createsuperuser

run:
	python manage.py runserver

req:
	pip install -r requirements.txt
