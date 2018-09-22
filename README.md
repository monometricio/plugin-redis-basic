# plugin-redis-basic
Monometric.IO redis plugin (https://monometric.io)

## Description

This plugin will query redis for stats

## Installation

```mm-plugins install monometricio/plugin-redis-basic```

```mm-plugins enable monometricio/plugin-redis-basic```

You should see the plugin when running ```mm-plugins list```.

Remember to edit the configuration file ```/etc/mm-agent/plugins/monometricio-plugin-redis-basic.conf```.

## Configuration

The plugin has the following optional configuration keys:

- REDIS_PASSWORD
- REDIS_HOST
- REDIS_PORT

## Testing configuration

You can test-run the plugin and verify the output by running:

```mm-plugins run monometricio/plugin-redis-basic```
