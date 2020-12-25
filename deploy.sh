#!/bin/bash
gcloud functions deploy streaming --runtime java11 --trigger-topic movement --region us-central1 \
--entry-point PubSubToGcs \
--allow-unauthenticated --set-env-vars GCLOUD_PROJECT=adroit-memento-271818 \
--set-env-vars NODE_ENV=production
