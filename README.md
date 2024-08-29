# jember-deploy
Deployment for jember.ai

## Get Running

First, copy `.env.example` to an `.env` file

Next, change the image tags for services being worked on ... for example if working on the streamlit chat ui ... change the `CHAT_IMAGE_TAG=latest` to `CHAT_IMAGE_TAG=local`

This will require you to have built the streamlit chat image and tagged it to local ie. `quay.io/jember.ai/streamlit-chat:local` on your local machine ... otherwise image will be pulled from registry

Once you have your `.env` configured to use the correct image tags ... you can start the stack

### With Makefile

Uses docker compose in make targets

To startup all services 
```
make up
```

To stop all services
```
make down
```

### With Compose

#### Startup with tools
```
docker compose -f docker-compose.infra.yml -f docker-compose.yml up -d
```

#### Startup without tools
```
docker compose -f docker-compose.yml up -d
```

#### Stop
```
docker compose down
```