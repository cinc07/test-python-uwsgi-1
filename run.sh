git clone https://github.com/cinc07/test-python-uwsgi-1.git

cd test-python-uwsgi-1
virtualenv venv
./venv/bin/pip install -r requirements.txt
./venv/bin/uwsgi --http :9090 --wsgi-file foobar.py
