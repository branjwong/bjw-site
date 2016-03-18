# Web Hosting

## Links & Proxies

- ./ -> home page
- ./git/ -> github
- ./linkedin -> linkedin


## Intial Server Setup

- Login: `ssh root@SERVER_IP_ADDRESS`
- Create a New User: `adduser demo`
- Give Root Priviledges: `gpasswd -a demo sudo`
- Install Public Key to a user you have login credentials for: `ssh-copy-id demo@SERVER_IP_ADDRESS`
- `nano /etc/ssh/sshd_config`, `PermitRootLogin yes` --> `PermitRootLogin no`, `service ssh restart`

## Install Nginx

- `apt-get update`
- `apt-get install nginx`

## Configure Nginx

- EDITING CONFIG: `nano /etc/nginx/nginx.conf`
- MAIN_DIR: `/usr/share/nginx/bjw-site/`

- making directories: `mkdir NAME`
- deleting [directories]: `rm [-r] NAME`

## Install Site

- Make sure npm is installed on your system.
- Clone this MAIN_DIR.
- Run `npm install`.
- Configure nginx to point at `bjw-site/dist/html/index.html`
- ????
- PROFIT!!!


### Tutorials

- [connect to droplet](https://www.digitalocean.com/community/tutorials/how-to-connect-to-your-droplet-with-ssh)
- [init server](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04)
- [install nginx](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-14-04-lts?utm_source=Customerio&utm_medium=Email_Internal&utm_campaign=Email_UbuntuDistroApacheWelcome)
- [congfigure nginx](https://www.youtube.com/watch?v=7QXnk8emzOU)


