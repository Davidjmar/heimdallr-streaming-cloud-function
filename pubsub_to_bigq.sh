#!/bin/bash
gcloud functions deploy pubsub_to_bigq \
   --runtime "python37" \
   --entry-point=pubsub_to_bigq \
   --trigger-topic movement \
   --set-env-vars dataset=dataset_test,table=taffds
