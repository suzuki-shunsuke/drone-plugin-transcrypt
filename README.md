# drone-plugin-transcrypt

[![GitHub last commit](https://img.shields.io/github/last-commit/suzuki-shunsuke/drone-plugin-transcrypt.svg)](https://github.com/suzuki-shunsuke/drone-plugin-transcrypt)
[![GitHub tag](https://img.shields.io/github/tag/suzuki-shunsuke/drone-plugin-transcrypt.svg)](https://github.com/suzuki-shunsuke/drone-plugin-transcrypt/releases)
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/suzukishunsuke/drone-plugin-transcrypt)
[![License](http://img.shields.io/badge/license-mit-blue.svg?style=flat-square)](https://raw.githubusercontent.com/suzuki-shunsuke/drone-plugin-transcrypt/master/LICENSE)

[drone plugin](http://docs.drone.io/plugin-overview/) to decrypt files encrypted by [elasticdog/transcrypt](https://github.com/elasticdog/transcrypt) .

## What does the plugin do?

Please see [Dockerfile](Dockerfile) and [decrypt.sh](decrypt.sh).

```
$ transcrypt -y -c $TRANSCRYPT_CIPHER -p $TRANSCRYPT_PASSWORD
```

## Usage

.drone.yml

```yaml
pipeline:
  decrypt:
    image: suzukishunsuke/drone-plugin-transcrypt:1.1.0__0.1.0
    cipher: aes-256-cbc
    secrets:
    - transcrypt_password
```

## Parameter

plugin parameter | environment variable | description
--- | --- | ---
cipher | TRANSCRYPT_CIPHER or PLUGIN_CIPHER |
password | TRANSCRYPT_PASSWORD or PLUGIN_PASSWORD |

## License

[MIT](LICENSE)
