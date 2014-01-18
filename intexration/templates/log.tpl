<!doctype html>

<html lang="en">
<head>
	<meta charset="utf-8">

	<title>{{repo}} - {{name}}</title>
	<meta name="description" content="LaTeX Log">
	<meta name="author" content="InTeXration">
	<style type="text/css">
        body {
            font-family: sans-serif;
        }

        h1 {
            font-size: 16pt;
        }

        .container {
          padding-right: 15px;
          padding-left: 15px;
          margin-right: auto;
          margin-left: auto;
        }

        .container:before,
        .container:after {
          display: table;
          content: " ";
        }

        .container:after {
          clear: both;
        }

        .container:before,
        .container:after {
          display: table;
          content: " ";
        }

        .container:after {
          clear: both;
        }

        @media (min-width: 768px) {
          .container {
            width: 750px;
          }
        }

        @media (min-width: 992px) {
          .container {
            width: 970px;
          }
        }

        @media (min-width: 1200px) {
          .container {
            width: 1170px;
          }
        }

        .log {

            font-family: "Courier New", Courier, monospace
        }

        .callout {
          margin: 20px 0;
          padding: 20px;
          border-left: 3px solid #eee;
          overflow: auto;
        }
        .callout h1 {
          margin-top: 0;
          margin-bottom: 5px;
        }
        .callout p:last-child {
          margin-bottom: 0;
        }

        /* Variations */
        .callout-error {
          background-color: #fdf7f7;
          border-color: #eed3d7;
        }
        .callout-error h1 {
          color: #b94a48;
        }
        .callout-warning {
          background-color: #faf8f0;
          border-color: #faebcc;
        }
        .callout-warning h1 {
          color: #8a6d3b;
        }
        .callout-info {
          background-color: #eeeeee;
          border-color: #cccccc;
        }
        .callout-info h1 {
          color: #000000;
        }

        .status {
            text-align: center;
        }
	</style>

</head>

<body>
<div class="container">
	<div class="callout callout-error">
		<h1>Errors</h1>
		<div class="log">
			% for line in errors:
			{{line}} <br/>
			% end
		</div>
	</div>
	<div class="callout callout-warning">
		<h1>Warnings</h1>
		<div class="log">
			% for line in warnings:
			{{line}} <br/>
			% end
		</div>
	</div>

	<div id="all" class="callout callout-info">
		<h1>Log</h1>
		<div class="log">
			% for line in all:
			{{line}} <br/>
			% end
		</div>
	</div>
</div>

</body>
</html>