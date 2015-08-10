accessing
exampleFileContents
	"Execute this to create teh file in your ssp dir"
	" | str |
	str := ((SspFilename on: 'ssp'), 'notification.ssp') writeStream.
	[str nextPutAll: self exampleFileContents] ensure: [str close]. "

^'<html>
<head><title>To Do></title></head>
<body>
<center>
<h1>To Do</h1>
<? self renderToDoList ?>
</center>
</body>
</html>
'