# kaggle.lihorne.com

This is the code that powers https://kaggle.lihorne.com - my personal Jupyter Notebook server. It is based off [https://github.com/jupyter/docker-stacks/tree/master/examples/docker-compose](this example) from `docker-stacks`. The `compose` folder contains everything necessary too start the server, and then the `contests` directory is just used to mount .

### Starting the server

Simply specify the contest name and a password for the server.

```bash
CONTEST=dstl-satellite-imagery-feature-detection PASSWORD=???????? ./up.sh
```
