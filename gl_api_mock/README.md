# Graylog API Mock

Mocks **some** of the GL API endpoints. Take them as examples.

## Building & running it

You should be able to simply run it by executing `./background`.

    $ cd gl_api_mock
    $ make build
    $ ./background

The mock server should be available at `http://0.0.0.0:3001/`.

## Development

You can change the contents of any file under `responses/` and your changes
will be applied just by restarting the server.

If you want to perform changes on the server itself, then you'll need to
install the [Crystal](http://crystal-lang.org/) language package.
