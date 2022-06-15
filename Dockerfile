#base image is nginx 
FROM nginx:latest

#Adding custom index.html file
ADD https://raw.githubusercontent.com/YugeshMarahhatta/DockerFile/main/index.html /usr/share/nginx/html/

#Adding read permission to custom index.html
RUN chmod +r /usr/share/nginx/html/index.html

#'nginx -g daemon off' will run as default command when any container is run uses the image that was built using this dockerfile
CMD ["nginx", "g", "daemon off;"]
