server {
	listen 80;

	root /home/aj/www/swoogity.com;
	index index.html;
	server_name swoogity.com www.swoogity.com;

	location / {
		try_files $uri $uri/ =404;
	}
}
