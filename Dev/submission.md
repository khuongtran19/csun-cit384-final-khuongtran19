1. What is the difference between Docker image and Docker container?
    * Difference between Docker image and Docker container is Docker images are read-only templates used to build containers. Docker container are deployed instances created from those templates 

2. What is the command to build a docker image named `cit384-final`?
    * docker build cit384-final git@github.com:CIT384/final-khuongtran19.git<!-- answer -->

3. What is the command to run a container with `cit384-final` image with an interactive terminal running bash?
    * docker run -dit --name cit384-final.site -p 8080:80 cit384-final<!-- answer -->

4. When running Docker commands there are many options you can use for example to run a container named cit384 with an ubuntu image the command is: `docker run --name cit384 ubuntu`. What do the following options do? 
   1. --name: Names my container cit384
   2. -d: Run container in background and print container ID<!-- answer -->
   3. --rm: Automatically remove the container cit384 when it exit<!-- answer -->
   4. -p: Publish a container's port(s) to the host     <!-- answer -->
   5. --add-host: Add customer host-to-IP mapping       <!-- answer -->
   6. -it: for interactive processes, use together in order to allocate a TTY<!-- answer -->
   7. -v: Bing mount a volume                            <!-- answer -->

5. What is the difference between `-` and `--` in command line parameter?
    * "-" is short form which always a single letter, can have and optional operand and can group multiple short options with one dash. While "--" is long form which can't group together and also sometimes called as "extended" version of command line options  <!-- answer -->

6. In the following code block, provide the git instructions necessary to add a new file to the remote repository: git@github.com:org/project.git (You should presume that you don't have a copy of this repository on your local computer.)
   ```
   git clone git@github.com:org/project.git   <!-- answer -->
   cd project 				      <!-- answer -->
   touch new_file			      <!-- answer -->
   git add new_file                           <!-- answer -->
   git commit -m 'added new_file'             <!-- answer -->
   git push				      <!-- answer -->
   ```
   <!-- You many add any number of lines in the above code block that you need. -->

7. What do the following Apache Directive do?
   1. SSLEngine: Allows us to enable or disable the SSL engine for 
   2. ProxyEngine: Allow us to enable or discable the Proxy engine <!-- answer -->
   3. ProxyAddHeaders: Add proxy information in X-Forwarded-* headers <!-- answer -->
   4. ProxyPass: Allows remote servers to be mapped into the space of the local server. <!-- answer -->
   5. ProxyPassReverse: lets Apache httpd adjust the URL in the Location, Content-Location and URI headers on HTTP redirect responses  <!-- answer -->
   6. RewriteRule: Defines rules for the rewriting engine  <!-- answer -->
   7. Redirect: Redirection Route of the worker        <!-- answer -->

8. What module needs to be enabled in order to use the Rewrite directive?
    * <IfModule mod_rewrite.c> RewriteEngine On </IfModule> <!-- answer -->

9. What is the command to enable a new domain/vHost?
    * sudo a2ensite  <!-- answer -->

10. What is the command to disable a new domain/vHost?
    * sudo a2dissite  <!-- answer -->

11. What happens when a user enters a URL into the browser?
    *                                                  <!-- answer -->

---
You may earn extra credit in this part of the assignment by: 
   1. Adding a file named ``interview_question.md`` to your repository
   2. Providing a comprehensive answer, in essay form, to the following question:
      * What happens when a user enters a URL into the browser?

Of course, your answer here need to much more complete and robust then the answer you provide to the last question in the assignment above.
