
## Start Nginx
  Here we have three options, from which we must choose one:
   - start the Nginx service with
   
       `sudo service nginx start`{{execute interrupt}}
          
       OR
       
       
   - start the server with
   
       `sudo nginx`{{execute interrupt}}
       
       OR
       
       
   - run the server in the background with
    
        `sudo nginx &`{{execute interrupt}}
        
  You can choose whatever method you prefer.
   
  After starting Nginx, you can check that it works by executing
  
   `wget http://127.0.0.1`{{execute interrupt}}
    
  Let's look at the result. An **index.html** file was created.
  
  We can view its content in the terminal by executing the command:
    
  `cat index.html`{{execute interrupt}}
  
🎉 **Congratulations!** 🎉

   *You now have a basic Nginx server up and running!*

💡 **Tip:** By default, Nginx serves `/usr/share/nginx/html/index.html`.
    Feel free to either make a new **.html** file in the `/vagrant/` folder (in the box), or just copy the default one there.

📍 **Important:** We will need the above specified files in the next step.
    
 To copy the index.html file to the `/vagrant` folder we will use the following command:
 
   `sudo cp /usr/share/nginx/html/index.html /vagrant`{{execute interrupt}}
   
💡 **Tip:** The server configuration file is in `/etc/nginx/nginx.conf`. You can leave it as it is, or change it however you wish. 

📍 More details and examples on the topic can be found on [archlinux.org](https://wiki.archlinux.org/index.php/nginx) or [nginx.org](https://wiki.nginx.org/Configuration).

Before exiting the virtual machine we need to copy the *nginx.conf* file to the `/vagrant` directory using:
   
   `sudo cp /etc/nginx/nginx.conf /vagrant`{{execute interrupt}}

At this point, you should have both the *.html*, and the *.conf* files in `/vagrant`, which is synced to the root folder of the box.

*For short, whatever ends up in `/vagrant` within the virtual machine will be mirrored to the `/root/box` folder outside the virtual machine.*

 The final step is to exit the virtual machine with the `exit`{{execute interrupt}} command.