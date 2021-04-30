
## Start Nginx
  Here we have three options:
   - start the Nginx service with
   
       `sudo service nginx start`{{execute interrupt}}
   - start the server with
   
       `sudo nginx`{{execute interrupt}}
   - run the server in the background with
    
        `sudo nginx &`{{execute interrupt}}
        
  You can choose whatever method you prefer.
   
  After starting Nginx, you can check that it works by executing
   `wget http://127.0.0.1`{{execute interrupt}}
    
  Let's look at the result. An **index.html** file was created in the  **where?**.
  
  We can view its content in the terminal by executing the command:
    
  `cat index.html`{{execute interrupt}}
  
🎉 **Congratulations!** 🎉

   *You now have a basic Nginx server up and running!*

💡 **Tip:** By default, Nginx serves `/usr/share/nginx/html/index.html`.
    Feel free to either make a new .html file in the */vagrant/* folder (in the box), or just copy the default one there.
    (we will need it for automation)
    
 To copy the index.html file to the /vagrant folder we will use the following command:
 
   `sudo cp /usr/share/nginx/html/index.html /vagrant`{{execute interrupt}}
   
💡 **Tip:** The server configuration file is in `/etc/nginx/nginx.conf`. You can leave it as it is, or change it however you wish. 

More details and examples can be found on [archlinux.org](https://wiki.archlinux.org/index.php/nginx) or [nginx.org](https://wiki.nginx.org/Configuration)
# either way, copy the file to /vagrant when you're done
`sudo cp /etc/nginx/nginx.conf /vagrant`{{execute interrupt}}
# you should now have both the .html and the .conf files in /vagrant, which is rsynced to the root folder of the box. to put it in simple terms, whatever you put in /vagrant within the VM will be mirrored to the /root/box folder outside the VM

 The final step is to exit the virtual machine with the `exit`{{execute interrupt}} command.