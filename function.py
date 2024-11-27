import base64
import subprocess

def run_command(command):
    return subprocess.run(command, shell=True, check=True, stdout=subprocess.PIPE).stdout.decode('utf-8')


def handler(event, context):
    print(event)

    if 'body' in event:
        data = event['body']
    else:
        return {
            'statusCode': 400,
            'body': 'No data provided'
        }

    markdown = data
    with open('/tmp/markdown.md', 'w') as f:
        f.write(markdown)
    print("SAVED MARKDOWN")

    output = run_command('pandoc /tmp/markdown.md -o /tmp/markdown.pdf')
    print(output)
    print("Executed PDF")

    with open('/tmp/markdown.pdf', 'rb') as f:
        pdf = f.read()

    print("LOADED PDF")

    return pdf
