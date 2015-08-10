starting / stopping
stopRunningHttpServers

	ZnManagingMultiThreadedServer allInstances do: [:e | e unregister].
	SspApplication withAllSubclassesDo: [ :cls | cls allInstances do: [:e | e stop]].