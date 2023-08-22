# webapp-ansible-apache

git init
git add .
git config --global user.email "guih@laposte.net"
git config --global user.name "Guih44"
git commit -m "webapp first version"
git add origin
git push origin master

git pull --rebase

ansible-playbook -i hosts.yml deploy.yml
