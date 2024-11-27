#!/bin/bash
url=$(aws lambda get-function-url-config --function-name hello-pdf --query FunctionUrl --output text)
curl -i -X POST $url -H "Content-Type: text/plain" --data-binary @TEST.md
