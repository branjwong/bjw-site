# Web Hosting

## Intial Server Setup

- Login: `ssh root@SERVER_IP_ADDRESS`
- Create a New User: `adduser demo`
- Give Root Priviledges: `gpasswd -a demo sudo`
- Install Public Key to a user you have login credentials for: `ssh-copy-id demo@SERVER_IP_ADDRESS`
- `nano /etc/ssh/sshd_config`, `PermitRootLogin yes` --> `PermitRootLogin no`, `service ssh restart`

- Refer to personal-site/README.md for dev env requirements

## Install Nginx

- `sudo apt-get update`
- `sudo apt-get install nginx`

## Configure Nginx

- editing config: `sudo nano /etc/nginx/sites-available/default`
- making directories: `sudo mkdir NAME`
- deleting [directories]: `sudo rm [-r] NAME`
- main directory: `/usr/share/nginx/bjw-site/`


### Tutorials

- [connect to droplet](https://www.digitalocean.com/community/tutorials/how-to-connect-to-your-droplet-with-ssh)
- [init server](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04)
- [nginx](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-14-04-lts?utm_source=Customerio&utm_medium=Email_Internal&utm_campaign=Email_UbuntuDistroApacheWelcome)

