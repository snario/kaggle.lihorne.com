To create a LetsEncrypt certificate and store it in the volume `kaggle.lihorne.com-secrets`, just run this:

```bash
FQDN=kaggle.lihorne.com \
EMAIL=liam+letsencrypt@lihorne.com \
SECRETS_VOLUME=kaggle.lihorne.com-secrets \
  ./letsencrypt.sh
```
