# virtualenv -p /usr/local/opt/python@2/bin/python --distribute temp-python
source temp-python/bin/activate
# Everything except these two lines is here to run Python2
bundle exec jekyll b
# scp -r _site/* nstuurman@valelab2.ucsf.edu:public_html/
deactivate
rm -rf _site/temp-python
