# kaggle.lihorne.com

This is the code that powers https://kaggle.lihorne.com - my personal Jupyter Notebook server. It is based off [`docker-stacks`](https://github.com/jupyter/docker-stacks/tree/master/examples/docker-compose). The `docker` folder contains everything necessary too start the server, and then the `contests` directory is where I add notebooks and `input` folders with the data from the contest.

### Starting the server

```bash
./docker/notebook/up.sh --letsencrypt --password <some_password> --secrets kaggle.lihorne.com-secrets
```
