accessing
exampleFileContents
	"Execute this to create the file in your ssp dir if you like"
	" | str |
	str := ((SspFilename on: 'ssp'), 'notification.ssp') writeStream.
	[str nextPutAll: self exampleFileContents] ensure: [str close]. "

^'<html>
<head><title><? self title ?></title></head>
<body>
<center>
<h1><? self title ?></h1>
<? self message ?>
<p>
<? self renderContinueButton ?>
</center>
</body>
</html>
'