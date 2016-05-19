## Prerequisites
- Install **docker**
- Install **docker-compose**
- Rename `.env.example` to `.env`
- Set up database credentials
- Set up email credentials

## Build images and network
`docker-compose up -d`

## Set up secret key
`docker-compose exec web sentry config generate-secret-key`
Make sure to put the result in your `.env` file

## Set up initial database
`docker-compose exec web sentry upgrade`

## Restart it all
`docker-compose restart`

*You are all set now!*
