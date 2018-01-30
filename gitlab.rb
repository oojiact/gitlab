nginx['ssl_certificate'] = "/etc/letsencrypt/live/gitlab.oojiact.space/fullchain.pem"
nginx['ssl_certificate_key'] = "/etc/letsencrypt/live/gitlab.oojiact.space/privkey.pem"
registry_nginx['ssl_certificate'] = "/etc/letsencrypt/live/registry.gitlab.oojiact.space/fullchain.pem"
registry_nginx['ssl_certificate_key'] = "/etc/letsencrypt/live/registry.gitlab.oojiact.space/privkey.pem”

nginx['custom_gitlab_server_config'] = "location ^~ /.well-known { root /var/www/letsencrypt; }”
registry_nginx['custom_gitlab_server_config'] = "location ^~ /.well-known { root /var/www/letsencrypt; }”
external_url 'https://gitlab.oojiact.space’
