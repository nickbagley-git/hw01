server {
	listen 80;
	listen [::]:80;

	root /home/nickbagley/hw01/bagleysite.com;

	index index.html;

	server_name hw01.bagleysite.com;

	location / {
		try_files $uri $uri/ =404;
	}
}
