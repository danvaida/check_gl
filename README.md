# check_gl

# About

The purpose of this plugin is to perform `GET` requests against the [Graylog](https://www.graylog.org) REST API endpoints.
The response is compliant with the [Icinga](https://www.icinga.org/products/icinga-2/) plugin output format.

# Disclaimer

Although used in some projects, I regard this plugin as a pamphlet and recommend others to view it for what it is: some lines scribbled on a napkin meanwhile on a beach :wink:

# Getting started

See how you can browse through the Graylog API [here](https://www.graylog.org/blog/8-tips-tricks-2-using-the-graylog-rest-api)

Install `JSONPath` dependency with:

    $ cd deps
    $ tar xvzf jsonpath-0.54.tar.gz
    $ cd jsonpath-0.54
    $ python setup.py install

Instructions for installing Icinga plugins are [here](http://docs.icinga.org/icinga2/latest/doc/module/icinga2/chapter/addons-plugins)

# Usage

    Parameters:
    -V, --version                                      |   (optional, displays script version)
    -h, --help                                         |   (optional, displays this information)
    -u, --user <username>                              |   (mandatory)
    -p, --password <password>                          |   (mandatory)
    -e, --endpoint <protocol>://<host>:<port>/<path>   |   (mandatory)
    -f, --filter <object>                              |   (mandatory)
    -c, --critical <integer>                           |   (mandatory)
    -w, --warning <integer>                            |   (mandatory)

# Example
    ./check_gl --endpoint http://localhost:12900/system/metrics/org.graylog2.buffers.process.usage --user dan --pass 1234 --filter buffers.input.utilization -c 50 -w 100

# Some further improvements, at my earliest convenience:

* Units for `--warning` and `--critical` paramters
* Tests (most likely with [nose2](https://github.com/nose-devs/nose2))
* Remove the nasty JSONPath dependency
* Enrich the output, as per the supported format by Icinga
* Refactoring as per [PEP8](https://www.python.org/dev/peps/pep-0008/)

Naturally, pull requests are welcome.

# License

    This plugin is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License or
    (at your option) any later version.
    
    This plugin is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.
