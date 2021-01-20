server {
	listen 80;

	root /home/aj/www/hw01.swoogity.com;
	index index.html;
	server_name hw01.swoogity.com;

	location / {
		try_files $uri $uri/ =404;
	}
}
