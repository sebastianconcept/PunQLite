Class {
	#name : #UnQLiteLibrary,
	#superclass : #FFILibrary,
	#category : 'PunQLite-Core-FFI'
}

{ #category : #'accessing platform' }
UnQLiteLibrary >> macModuleName [
	^ 'unqlite.dylib' asFileReference fullName
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> unixModuleName [
	^ 'unqlite.so' asFileReference fullName
]

{ #category : #'accessing platform' }
UnQLiteLibrary >> win32ModuleName [
	^ 'unqlite.dll' asFileReference fullName
]
