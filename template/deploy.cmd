echo 'Run npm build'
REM npm run build
REM START /wait npm run build
CALL npm run build
echo 'Done...'

echo 'Format index.html as Jinja template'
python format_index_html.py
echo 'Done...'

echo 'Install python modules'
pip install -r requirements.txt
echo 'Done...'

echo 'Collect static'
python manage.py collectstatic --noinput
echo 'Done...'

echo 'Run migrations'
python manage.py migrate
echo 'Done...'

set PORT=8000
echo 'Server runnning on port ' $PORT
python manage.py runserver
