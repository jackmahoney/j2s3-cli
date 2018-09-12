import click
from src import *
from click.testing import CliRunner

def test_root():
    runner = CliRunner()
    result = runner.invoke(cli, ['--help'])
    assert result.exit_code == 0
    assert 'CLI for publish maven Java projects to an s3 maven repository' in result.output


def test_publish():
    runner = CliRunner()
    result = runner.invoke(cli, ['publish', '--help'])
    assert result.exit_code == 0
    assert 'Your input directory' in result.output
