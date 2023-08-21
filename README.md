# webapp-ansible-apache

git init
git add .
git config --global user.email "diranetafen@yahoo.com"
git config --global user.name "dirane"
git commit -m "webapp first version"
git add origin
git push origin master

ansible-playbook -i hosts.yml deploy.yml
