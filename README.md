# Java 2 S3 CLI
Python CLI for publish maven projects to an S3 maven repository. Requires maven installed in your path.

## Install
`pip install j2s3-cli`

## Usage
```
Usage: j2s3 [OPTIONS] COMMAND [ARGS]...

  CLI for publish maven Java projects to an s3 maven repository

Options:
  --help  Show this message and exit.

Commands:
  publish  Publish a maven project to an s3 maven...
```

```
Usage: j2s3 publish [OPTIONS]

  Publish a maven project to an s3 maven repository.  Your input directory
  must contain valid java source and a maven pom.xml file.  Your s3 bucket
  must exist and your IAM user must have GetObject and PutObject access.

Options:
  -l, --location PATH  Input directory containing Java source and pom.xml file
  -u, --username TEXT  AWS_ACCESS_KEY_ID for an IAM user with s3 access
  -p, --password TEXT  AWS_SECRET_ACCESS_KEY for an IAM user with s3 access
  -b, --bucket TEXT    Existing AWS S3 bucket name
  -d, --dry            Dry run
  --help               Show this message and exit
```

## Contributing

Pull requests and bug reports welcome on the [github repository](https://github.com/jackmahoney/j2s3-cli) and the [underlying library](https://pypi.org/project/j2s3/). 
