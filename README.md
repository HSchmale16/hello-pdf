# Hello PDF

A lambda function that lets you upload a markdown file and get a generated default pdf. 
Made for wrangling stupid dependencies.

This powered by [pandoc][1] and debian.

[1]: https://pandoc.org/

# Why?

I needed to make PDFs at work inside of Azure, but their cloudshell doesn't let you install any extra development tools.
At least it gives you a couple more development tools and a larger fileshare, but not really because it's overall worse than AWS.

So might as well use AWS where things work properly the first time.


# Deployment

You will need docker installed.

1. You will create an ecr repo
2. You will run docker login
3. You will create an ecr repo named hello-pdf in your account
4. You will create a function in your default region named `hello-pdf`.
    1. Attach a function url to this function. Ensure that the auth mode is `NONE`
4. You will execute `bash deploy.sh`. You will be able to make changes and run this script again.
5. You will be able to make pdfs from a specific endpoint. Please see the `execute.sh` file for how to use.


# Additional Configuration and Requirements

You may want to consider adding some kind of authorization to this application.