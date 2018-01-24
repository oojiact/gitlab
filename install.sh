sudo apt-get update
sudo apt-get install ca-certificates curl openssh-server postfix
cd /tmp
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash /tmp/script.deb.sh
sudo apt-get install gitlab-ce
sudo gitlab-ctl reconfigure
sudo ufw enable
sudo ufw allow http
sudo ufw allow OpenSSH
