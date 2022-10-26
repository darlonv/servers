#!/bin/bash

docker run -dit --name http -p 8080:80 -v "$PWD"/data:/usr/local/apache2/htdocs/ httpd:2.4


