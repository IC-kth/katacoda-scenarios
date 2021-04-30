
![Nginx](assets/nginxLogo.png)

Nginx is an open-source web server. Since its initial success as a web server, Nginx is nowadays also used as a reverse proxy, HTTP cache, and load balancer.

Nginx is built to offer low memory usage and high concurrency. Instead of creating new processes for each web request, Nginx uses an asynchronous, event-driven approach where requests are handled in a single thread. Since its roots are in performance optimization under scale, Nginx often outperforms other popular web servers in benchmark tests.

The [Nginx documentation](https://nginx.org/en/docs/) provides a more in-depth overview of the available features as well as numerous examples.

## Install Nginx

First, we need to update the existing package versions and their dependencies to the latest available. We can do this by running the following command:

`sudo apt update`{{execute interrupt}}

We will install Nginx using the following command:

`sudo apt install nginx`{{execute interrupt}}

📢 When prompted with *Do you want to continue?* press **Y**.

   