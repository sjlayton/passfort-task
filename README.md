### Dice App

## Description

The app is bundled into two docker containers, with a third container providing datadog metrics. The containers are launched via docker-compose. Datadog has the APM module enabled, plus default statistics and log aggregation. 

## Requirements

You will need to install [Docker Desktop](https://hub.docker.com/?overlay=onboarding) _(Mac)_ or [Docker CE](https://docs.docker.com/install/) _(Linux)_. The datadog container won't work on Windows hosts, so it's probably best to spin up a linux VM somewhere if you're running Windows.
If you're using Docker CE, you will also need to install [Docker Compose](https://docs.docker.com/compose/install/) (it comes bundled with Docker Desktop)

## So how do I actually do this?

1. Clone this repo

2. Set your datadog API key to the environment variable "DD_API_KEY"

     export DD_API_KEY=<apikey>

3. Start the container with the following command

     sudo -E docker-compose up -d

Now you should be able to curl http://127.0.0.1:5000 and see the app in action! Exciting! Metrics should also be being collected in your Datadog account automatically, as well as trace information via the APM module and log analytics via the logging module.

## Next steps

As stated in the requirements, the applications both run a /health endpoint which we should be monitoring. This could easily be done with the [Datadog http_check module](https://docs.datadoghq.com/integrations/http_check/), as extra checks can be added to the container by following the guide [here](https://docs.datadoghq.com/agent/docker/#configuration-files). We would then need to configure an alert based on the data collected on this page via the [Create Monitor](https://app.datadoghq.com/monitors#/create) page.
