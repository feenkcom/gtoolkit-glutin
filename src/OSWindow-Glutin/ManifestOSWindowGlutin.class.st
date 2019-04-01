"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestOSWindowGlutin,
	#superclass : #PackageManifest,
	#category : #'OSWindow-Glutin-Manifest'
}

{ #category : #'code-critics' }
ManifestOSWindowGlutin class >> ruleRBLiteralArrayContainsCommaRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#'OSWindow-Winit')) #'2018-11-02T01:33:14.403386+01:00') )
]

{ #category : #'code-critics' }
ManifestOSWindowGlutin class >> ruleRBMissingTranslationsInMenusRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#'OSWindow-Winit')) #'2018-11-02T00:47:19.20429+01:00') )
]
