# hello-kubernetes
Learning - Deploy Django into Production with Kubernetes, Docker, &amp; Github Actions

Following along with [this tutorial](https://www.youtube.com/watch?v=NAOsLaB6Lfc&t=63s).

Kubernetes manages Docker Containers... (Container Orchestration Tool)

Install Kubernetes Command-Line Tool, KubeCTL. In the terminal, w/ virtual environment activated, I ran:

'brew install kubectl'

To check the version:

'kubectl version --client'

Create /web for all django stuff

'mkdir web'

'cd web'

pip install "django>=3.2,<4.0"

Then write out the requirements and install within web/

'pip install -r requirements.txt'

Then start the Django project

'django-admin startproject hello_kubernetes .'

Create .env:

code .env

Add web/.env to .gitignore

### Django
Install Django:

```pip3 install Django```

Create Project:

```django-admin startproject PROJECT_NAME```

Run Server:

```python manage.py runserver```

Create App:

```python manage.py startapp APP_NAME```


After creating a new app:

* Add APP_NAME to _PROJECT_NAME/settings.py_ installed_apps list
* Add APP_NAME to urlpatterns in _PROJECT_NAME/urls.py_
* Add urls.py file to _PROJECT_NAME/APP_NAME_

After creating models:

Make Migrations:

```python manage.py makemigrations```

Apply Migrations:

```python manage.py migrate```

Activate the Django Python Shell

```python manage.py shell```

Create Admin:

```python manage.py createsuperuser```

After creating an Admin:

* Add models to admin.py
    * from .models import MODEL_NAME
    * admin.site.register(MODEL_NAME)
* Visit BASE_URL/admin

Create User:

For most applications a simple user model will do. This can be extended later. For example, in models.py:

```
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    pass
```

Then be sure to add this model to _PROJECT_NAME/settings.py_ like this:

```
AUTH_USER_MODEL = "APP_NAME.User"
```



<br>
Add HTML:

Create PROJECT_NAME/APP_NAME/templates/APP_NAME/index.html

<br>

---

<br>

### Helpful Django Documentation

[Models](https://docs.djangoproject.com/en/4.2/topics/db/models/)

[Queries](https://docs.djangoproject.com/en/4.2/topics/db/queries/)

<br>

---

<br>

### Django HTML Templating
Insert Variable:
```
{{ VARIABLE }}
```
Add Logic:
```
{% if CONDITION %}
    
    Some HTML
    
{% else %}
    
    Some other HTML

{% endif %}
```
Loop:
```
{% for item in items %}

    Some HTML with {{ item }}

{% empty %}

    Some other HTML if the iterable is empty

{% endfor %}
```

Add CSS to an HTML file:

_sometimes you need to restart the server to load static files_
```
{% load static %}

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Welcome to Discogskiii</title>
        <link href="{% static 'APP_NAME/styles.css' %}" rel="stylesheet">
    </head>
    <body>
        <h1>Hello, vinyl heads!</h1>
    </body>
</html>
```

Template Inheritance:

Create templates/APP_NAME/layout.html
```
{% load static %}

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Discogskiii</title>
        <link href="{% static 'APP_NAME/styles.css' %}" rel="stylesheet">
    </head>
    <body>
        {% block body %}
        {% endblock %}
    </body>
</html>
```

Then inherit this layout in other HTML files, for example index.html.
```
{% extends "APP_NAME/layout.html" %}
{% block body %}
    <body>
        <h1>Hello, Discogskiii</h1>
    </body>
{% endblock %}
```

Link to URL:

_where URL_NAME is the name assigned to a path in urls.py and APP_NAME is the variable assigned in that same file._
```
<a href="{% url 'APP_NAME:URL_NAME' %}"> Click Me</a>
```

<br>

---

<br>

### Virtual Environments
Create Python3 Virtual Environment:

```python3 -m venv env```

Upgrade Virtual Environment Pip (w/ Virtual Environment Activated):

```pip install pip --upgrade```

Activate Virtual Environment:

```source env/bin/activate```

Deactivate Virtual Environment:

```deactivate```

Remove Virtual Environment:

```sudo em -rf venv```

<br>

---

<br>

### Requirements.txt
Automagically create a requirements.txt file:

```pip3 freeze > requirements.txt```


<br>

---

<br>

### Git
Add Files

```git add```

Commit with Message

```git commit -am "my first commit!"```

Push

```git push```

Branching

See Branches

```git branch```

Create New Branch & Checkout

```git checkout -b BRANCH_NAME```

While on Main, Merge in New Branch

```git merge BRANCH_NAME```

Delete Branch

```git branch -d BRANCH_NAME```