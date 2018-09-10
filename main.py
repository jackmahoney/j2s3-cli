import click
from j2s3.main import publish

@click.command()
@click.option('-i', help='Input directory containing Java source and pom.xml file')
@click.option('-u', help='AWS_ACCESS_KEY_ID')
@click.option('-p', help='AWS_SECRET_ACCESS_KEY')
@click.option('-b', help='AWS S3 bucket name')
def cli(input, username, password, bucket):
    click.echo('Attempting j2s3 upload')
    publish(input, username, password, bucket)
    click.echo('All done')
