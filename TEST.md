---
title: HELLO PDF TEST
author: Henry J Schmale
date: November 26, 2024
geometry: margin=2cm
---

# Hello PDF

A lambda function that lets you upload a markdown file and get the results.

You will POST to a lambda function URL.

```bash
rm -rf /
```

1. You will create an ecr repo
2. You will run docker login
3. You will create an ecr repo named hello-pdf in your account
4. You will create a function in your default region named `hello-pdf`.
    1. This function should be allocated at least 2048MB in ram and a timeout of 1 minute
4. You will execute `bash deploy.sh`. You will be able to make changes and run this script again.
5. You will be able to make pdfs from a specific endpoint.

# Hello PDF

A lambda function that lets you upload a markdown file and get a generated default pdf. 
Made for wrangling stupid dependencies.

This powered by [pandoc][1] and debian.

[1]: https://pandoc.org/


# Deployment

You will need docker installed.

1. You will create an ecr repo
2. You will run docker login
3. You will create an ecr repo named hello-pdf in your account
4. You will create a function in your default region named `hello-pdf`
4. You will execute `bash deploy.sh`. You will be able to make changes and run this script again.
5. You will be able to make pdfs from a specific endpoint.