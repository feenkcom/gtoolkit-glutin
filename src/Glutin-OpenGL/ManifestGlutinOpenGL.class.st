"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser


"
Class {
	#name : #ManifestGlutinOpenGL,
	#superclass : #PackageManifest,
	#category : #'Glutin-OpenGL-Manifest'
}

{ #category : #'code-critics' }
ManifestGlutinOpenGL class >> ruleRBUncommonMessageSendRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#'Glutin-OpenGL')) #'2020-02-17T14:42:52.60582+01:00') )
]
