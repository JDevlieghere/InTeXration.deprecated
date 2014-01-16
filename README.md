InTeXration
===========

TeX Continuous Integration Service


Features
--------
InTeXration is a continious integration-like tool for building LaTeX files. It integrates with GitHub using a webhook URL. On each commit the PDF file is build and updated at a fixed location. You can include this location in your README.md to offer interested parties a compiled version of the document in your repository.

Requirements
------------
The following prerequisites are needed by InTeXration:

- Python 3
- pdflatex (TeX Live, especially the complete version, is recommened)
- bottle (included)

If you want to install Tex Live 2013 on Ubuntu, [this repository](https://github.com/scottkosty/install-tl-ubuntu)) might come in handy.

Usage
-----
First you will have to generate an API key, for example  a [GUID](http://www.guidgenerator.com/), and add it to the list of authorized API keys (api_keys.txt). Make sure to put each key on a different line.

Next you must add the hook URL to GitHub.

### Starting the Server
Starting InTeXration is as easy as starting the server. The default hostname is *localhost* and the default port is *8000*. You can alter these depending on your setup using the parameters as described below.
```bash
usage: server.py [-h] [-host HOST] [-port PORT]

optional arguments:
  -h, --help  show this help message and exit
  -host HOST  hostname
  -port PORT  port```

To run the server in the background `nohup` can be used to ignore the hangup signal.

```bash
nohup python3.3 server.py > /dev/null 2>&1 &
```

### Output

- PDF: http://host:port/out/[name of repository]
- Log: http://host:port/log/[name of repository]
