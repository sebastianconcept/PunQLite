Class {
	#name : #UnQLiteLibrary,
	#superclass : #FFILibrary,
	#instVars : [
		'runner'
	],
	#category : #'PunQLite-Core-FFI'
}

{ #category : #accessing }
UnQLiteLibrary >> calloutAPIClass [ 

	^ TFCalloutAPI
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> macLibraryName [
	self deprecated: 'use macModuleName'.
	^ (FileLocator imageDirectory / 'unqlite.dylib') fullName
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> macModuleName [
	^ (FileLocator imageDirectory / 'unqlite.dylib') fullName
]

{ #category : #accessing }
UnQLiteLibrary >> runner [
	
	"^ runner ifNil: [ runner := TFWorker named: 'UnQLite' ]"
	^ TFSameThreadRunner uniqueInstance
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> unixModuleName [
	^ (FileLocator imageDirectory / 'unqlite.so') fullName
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> win32LibraryName [
	self deprecated: 'use macModuleName'.
	^ (FileLocator imageDirectory / 'unqlite.dll') fullName
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> win32ModuleName [
	^ (FileLocator imageDirectory / 'unqlite.dll') fullName
]
