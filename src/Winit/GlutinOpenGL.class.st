Class {
	#name : #GlutinOpenGL,
	#superclass : #Object,
	#instVars : [
		'context'
	],
	#pools : [
		'GlutinOpenGLConstants',
		'GlutinOpenGLTypes'
	],
	#category : #'Winit-OpenGL'
}

{ #category : #'generated bindings' }
GlutinOpenGL >> accum_op: op value: value [
	^ self ffiCall: #( void glAccum ( GLenum op , GLfloat value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> accumxOES_op: op value: value [
	^ self ffiCall: #( void glAccumxOES ( GLenum op , GLfixed value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeProgramEXT: program [
	^ self ffiCall: #( void glActiveProgramEXT ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeShaderProgramEXT_pipeline: pipeline program: program [
	^ self ffiCall: #( void glActiveShaderProgramEXT ( GLuint pipeline , GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeShaderProgram_pipeline: pipeline program: program [
	^ self ffiCall: #( void glActiveShaderProgram ( GLuint pipeline , GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeStencilFaceEXT: face [
	^ self ffiCall: #( void glActiveStencilFaceEXT ( GLenum face ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeTexture: texture [
	^ self ffiCall: #( void glActiveTexture ( GLenum texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeTextureARB: texture [
	^ self ffiCall: #( void glActiveTextureARB ( GLenum texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> activeVaryingNV_program: program name: name [
	^ self ffiCall: #( void glActiveVaryingNV ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFragmentOp1ATI_op: op dst: dst dstMod: dstMod arg1: arg1 arg1Rep: arg1Rep arg1Mod: arg1Mod [
	^ self ffiCall: #( void glAlphaFragmentOp1ATI ( GLenum op , GLuint dst , GLuint dstMod , GLuint arg1 , GLuint arg1Rep , GLuint arg1Mod ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFragmentOp2ATI_op: op dst: dst dstMod: dstMod arg1: arg1 arg1Rep: arg1Rep arg1Mod: arg1Mod arg2: arg2 arg2Rep: arg2Rep arg2Mod: arg2Mod [
	^ self ffiCall: #( void glAlphaFragmentOp2ATI ( GLenum op , GLuint dst , GLuint dstMod , GLuint arg1 , GLuint arg1Rep , GLuint arg1Mod , GLuint arg2 , GLuint arg2Rep , GLuint arg2Mod ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFragmentOp3ATI_op: op dst: dst dstMod: dstMod arg1: arg1 arg1Rep: arg1Rep arg1Mod: arg1Mod arg2: arg2 arg2Rep: arg2Rep arg2Mod: arg2Mod arg3: arg3 arg3Rep: arg3Rep arg3Mod: arg3Mod [
	^ self ffiCall: #( void glAlphaFragmentOp3ATI ( GLenum op , GLuint dst , GLuint dstMod , GLuint arg1 , GLuint arg1Rep , GLuint arg1Mod , GLuint arg2 , GLuint arg2Rep , GLuint arg2Mod , GLuint arg3 , GLuint arg3Rep , GLuint arg3Mod ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFuncQCOM_func: func ref: ref [
	^ self ffiCall: #( void glAlphaFuncQCOM ( GLenum func , GLclampf ref ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFunc_func: func ref: ref [
	^ self ffiCall: #( void glAlphaFunc ( GLenum func , GLfloat ref ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFuncxOES_func: func ref: ref [
	^ self ffiCall: #( void glAlphaFuncxOES ( GLenum func , GLfixed ref ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> alphaFuncx_func: func ref: ref [
	^ self ffiCall: #( void glAlphaFuncx ( GLenum func , GLfixed ref ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> applyFramebufferAttachmentCMAAINTEL [
	^ self ffiCall: #( void glApplyFramebufferAttachmentCMAAINTEL ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> applyTextureEXT: mode [
	^ self ffiCall: #( void glApplyTextureEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> areProgramsResidentNV_n: n programs: programs residences: residences [
	^ self ffiCall: #( GLboolean glAreProgramsResidentNV ( GLsizei n , GLuint* programs , GLboolean* residences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> areTexturesResidentEXT_n: n textures: textures residences: residences [
	^ self ffiCall: #( GLboolean glAreTexturesResidentEXT ( GLsizei n , GLuint* textures , GLboolean* residences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> areTexturesResident_n: n textures: textures residences: residences [
	^ self ffiCall: #( GLboolean glAreTexturesResident ( GLsizei n , GLuint* textures , GLboolean* residences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> arrayElement: i [
	^ self ffiCall: #( void glArrayElement ( GLint i ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> arrayElementEXT: i [
	^ self ffiCall: #( void glArrayElementEXT ( GLint i ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> arrayObjectATI_array: array size: size type: type stride: stride buffer: buffer offset: offset [
	^ self ffiCall: #( void glArrayObjectATI ( GLenum array , GLint size , GLenum type , GLsizei stride , GLuint buffer , GLuint offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> asyncMarkerSGIX: marker [
	^ self ffiCall: #( void glAsyncMarkerSGIX ( GLuint marker ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> attachObjectARB_containerObj: containerObj obj: obj [
	^ self ffiCall: #( void glAttachObjectARB ( GLhandleARB containerObj , GLhandleARB obj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> attachShader_program: program shader: shader [
	^ self ffiCall: #( void glAttachShader ( GLuint program , GLuint shader ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> begin: mode [
	^ self ffiCall: #( void glBegin ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginConditionalRenderNVX: id [
	^ self ffiCall: #( void glBeginConditionalRenderNVX ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginConditionalRenderNV_id: id mode: mode [
	^ self ffiCall: #( void glBeginConditionalRenderNV ( GLuint id , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginConditionalRender_id: id mode: mode [
	^ self ffiCall: #( void glBeginConditionalRender ( GLuint id , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginFragmentShaderATI [
	^ self ffiCall: #( void glBeginFragmentShaderATI ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginOcclusionQueryNV: id [
	^ self ffiCall: #( void glBeginOcclusionQueryNV ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginPerfMonitorAMD: monitor [
	^ self ffiCall: #( void glBeginPerfMonitorAMD ( GLuint monitor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginPerfQueryINTEL: queryHandle [
	^ self ffiCall: #( void glBeginPerfQueryINTEL ( GLuint queryHandle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginQueryARB_target: target id: id [
	^ self ffiCall: #( void glBeginQueryARB ( GLenum target , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginQueryEXT_target: target id: id [
	^ self ffiCall: #( void glBeginQueryEXT ( GLenum target , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginQueryIndexed_target: target index: index id: id [
	^ self ffiCall: #( void glBeginQueryIndexed ( GLenum target , GLuint index , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginQuery_target: target id: id [
	^ self ffiCall: #( void glBeginQuery ( GLenum target , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginTransformFeedback: primitiveMode [
	^ self ffiCall: #( void glBeginTransformFeedback ( GLenum primitiveMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginTransformFeedbackEXT: primitiveMode [
	^ self ffiCall: #( void glBeginTransformFeedbackEXT ( GLenum primitiveMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginTransformFeedbackNV: primitiveMode [
	^ self ffiCall: #( void glBeginTransformFeedbackNV ( GLenum primitiveMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginVertexShaderEXT [
	^ self ffiCall: #( void glBeginVertexShaderEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> beginVideoCaptureNV: video_capture_slot [
	^ self ffiCall: #( void glBeginVideoCaptureNV ( GLuint video_capture_slot ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindAttribLocationARB_programObj: programObj index: index name: name [
	^ self ffiCall: #( void glBindAttribLocationARB ( GLhandleARB programObj , GLuint index , GLcharARB* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindAttribLocation_program: program index: index name: name [
	^ self ffiCall: #( void glBindAttribLocation ( GLuint program , GLuint index , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferARB_target: target buffer: buffer [
	^ self ffiCall: #( void glBindBufferARB ( GLenum target , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferBaseEXT_target: target index: index buffer: buffer [
	^ self ffiCall: #( void glBindBufferBaseEXT ( GLenum target , GLuint index , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferBaseNV_target: target index: index buffer: buffer [
	^ self ffiCall: #( void glBindBufferBaseNV ( GLenum target , GLuint index , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferBase_target: target index: index buffer: buffer [
	^ self ffiCall: #( void glBindBufferBase ( GLenum target , GLuint index , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferOffsetEXT_target: target index: index buffer: buffer offset: offset [
	^ self ffiCall: #( void glBindBufferOffsetEXT ( GLenum target , GLuint index , GLuint buffer , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferOffsetNV_target: target index: index buffer: buffer offset: offset [
	^ self ffiCall: #( void glBindBufferOffsetNV ( GLenum target , GLuint index , GLuint buffer , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferRangeEXT_target: target index: index buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glBindBufferRangeEXT ( GLenum target , GLuint index , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferRangeNV_target: target index: index buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glBindBufferRangeNV ( GLenum target , GLuint index , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBufferRange_target: target index: index buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glBindBufferRange ( GLenum target , GLuint index , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBuffer_target: target buffer: buffer [
	^ self ffiCall: #( void glBindBuffer ( GLenum target , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBuffersBase_target: target first: first count: count buffers: buffers [
	^ self ffiCall: #( void glBindBuffersBase ( GLenum target , GLuint first , GLsizei count , GLuint* buffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindBuffersRange_target: target first: first count: count buffers: buffers offsets: offsets sizes: sizes [
	^ self ffiCall: #( void glBindBuffersRange ( GLenum target , GLuint first , GLsizei count , GLuint* buffers , GLintptr* offsets , GLsizeiptr* sizes ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFragDataLocationEXT_program: program color: color name: name [
	^ self ffiCall: #( void glBindFragDataLocationEXT ( GLuint program , GLuint color , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFragDataLocationIndexedEXT_program: program colorNumber: colorNumber index: index name: name [
	^ self ffiCall: #( void glBindFragDataLocationIndexedEXT ( GLuint program , GLuint colorNumber , GLuint index , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFragDataLocationIndexed_program: program colorNumber: colorNumber index: index name: name [
	^ self ffiCall: #( void glBindFragDataLocationIndexed ( GLuint program , GLuint colorNumber , GLuint index , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFragDataLocation_program: program color: color name: name [
	^ self ffiCall: #( void glBindFragDataLocation ( GLuint program , GLuint color , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFragmentShaderATI: id [
	^ self ffiCall: #( void glBindFragmentShaderATI ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFramebufferEXT_target: target framebuffer: framebuffer [
	^ self ffiCall: #( void glBindFramebufferEXT ( GLenum target , GLuint framebuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFramebufferOES_target: target framebuffer: framebuffer [
	^ self ffiCall: #( void glBindFramebufferOES ( GLenum target , GLuint framebuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindFramebuffer_target: target framebuffer: framebuffer [
	^ self ffiCall: #( void glBindFramebuffer ( GLenum target , GLuint framebuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindImageTextureEXT_index: index texture: texture level: level layered: layered layer: layer access: access format: format [
	^ self ffiCall: #( void glBindImageTextureEXT ( GLuint index , GLuint texture , GLint level , GLboolean layered , GLint layer , GLenum access , GLint format ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindImageTexture_unit: unit texture: texture level: level layered: layered layer: layer access: access format: format [
	^ self ffiCall: #( void glBindImageTexture ( GLuint unit , GLuint texture , GLint level , GLboolean layered , GLint layer , GLenum access , GLenum format ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindImageTextures_first: first count: count textures: textures [
	^ self ffiCall: #( void glBindImageTextures ( GLuint first , GLsizei count , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindLightParameterEXT_light: light value: value [
	^ self ffiCall: #( GLuint glBindLightParameterEXT ( GLenum light , GLenum value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindMaterialParameterEXT_face: face value: value [
	^ self ffiCall: #( GLuint glBindMaterialParameterEXT ( GLenum face , GLenum value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindMultiTextureEXT_texunit: texunit target: target texture: texture [
	^ self ffiCall: #( void glBindMultiTextureEXT ( GLenum texunit , GLenum target , GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindParameterEXT: value [
	^ self ffiCall: #( GLuint glBindParameterEXT ( GLenum value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindProgramARB_target: target program: program [
	^ self ffiCall: #( void glBindProgramARB ( GLenum target , GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindProgramNV_target: target id: id [
	^ self ffiCall: #( void glBindProgramNV ( GLenum target , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindProgramPipeline: pipeline [
	^ self ffiCall: #( void glBindProgramPipeline ( GLuint pipeline ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindProgramPipelineEXT: pipeline [
	^ self ffiCall: #( void glBindProgramPipelineEXT ( GLuint pipeline ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindRenderbufferEXT_target: target renderbuffer: renderbuffer [
	^ self ffiCall: #( void glBindRenderbufferEXT ( GLenum target , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindRenderbufferOES_target: target renderbuffer: renderbuffer [
	^ self ffiCall: #( void glBindRenderbufferOES ( GLenum target , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindRenderbuffer_target: target renderbuffer: renderbuffer [
	^ self ffiCall: #( void glBindRenderbuffer ( GLenum target , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindSampler_unit: unit sampler: sampler [
	^ self ffiCall: #( void glBindSampler ( GLuint unit , GLuint sampler ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindSamplers_first: first count: count samplers: samplers [
	^ self ffiCall: #( void glBindSamplers ( GLuint first , GLsizei count , GLuint* samplers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTexGenParameterEXT_unit: unit coord: coord value: value [
	^ self ffiCall: #( GLuint glBindTexGenParameterEXT ( GLenum unit , GLenum coord , GLenum value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTextureEXT_target: target texture: texture [
	^ self ffiCall: #( void glBindTextureEXT ( GLenum target , GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTextureUnitParameterEXT_unit: unit value: value [
	^ self ffiCall: #( GLuint glBindTextureUnitParameterEXT ( GLenum unit , GLenum value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTextureUnit_unit: unit texture: texture [
	^ self ffiCall: #( void glBindTextureUnit ( GLuint unit , GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTexture_target: target texture: texture [
	^ self ffiCall: #( void glBindTexture ( GLenum target , GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTextures_first: first count: count textures: textures [
	^ self ffiCall: #( void glBindTextures ( GLuint first , GLsizei count , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTransformFeedbackNV_target: target id: id [
	^ self ffiCall: #( void glBindTransformFeedbackNV ( GLenum target , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindTransformFeedback_target: target id: id [
	^ self ffiCall: #( void glBindTransformFeedback ( GLenum target , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVertexArray: array [
	^ self ffiCall: #( void glBindVertexArray ( GLuint array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVertexArrayAPPLE: array [
	^ self ffiCall: #( void glBindVertexArrayAPPLE ( GLuint array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVertexArrayOES: array [
	^ self ffiCall: #( void glBindVertexArrayOES ( GLuint array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVertexBuffer_bindingindex: bindingindex buffer: buffer offset: offset stride: stride [
	^ self ffiCall: #( void glBindVertexBuffer ( GLuint bindingindex , GLuint buffer , GLintptr offset , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVertexBuffers_first: first count: count buffers: buffers offsets: offsets strides: strides [
	^ self ffiCall: #( void glBindVertexBuffers ( GLuint first , GLsizei count , GLuint* buffers , GLintptr* offsets , GLsizei* strides ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVertexShaderEXT: id [
	^ self ffiCall: #( void glBindVertexShaderEXT ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVideoCaptureStreamBufferNV_video_capture_slot: video_capture_slot stream: stream frame_region: frame_region offset: offset [
	^ self ffiCall: #( void glBindVideoCaptureStreamBufferNV ( GLuint video_capture_slot , GLuint stream , GLenum frame_region , GLintptrARB offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bindVideoCaptureStreamTextureNV_video_capture_slot: video_capture_slot stream: stream frame_region: frame_region target: target texture: texture [
	^ self ffiCall: #( void glBindVideoCaptureStreamTextureNV ( GLuint video_capture_slot , GLuint stream , GLenum frame_region , GLenum target , GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3bEXT_bx: bx by: by bz: bz [
	^ self ffiCall: #( void glBinormal3bEXT ( GLbyte bx , GLbyte by , GLbyte bz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3bvEXT: v [
	^ self ffiCall: #( void glBinormal3bvEXT ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3dEXT_bx: bx by: by bz: bz [
	^ self ffiCall: #( void glBinormal3dEXT ( GLdouble bx , GLdouble by , GLdouble bz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3dvEXT: v [
	^ self ffiCall: #( void glBinormal3dvEXT ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3fEXT_bx: bx by: by bz: bz [
	^ self ffiCall: #( void glBinormal3fEXT ( GLfloat bx , GLfloat by , GLfloat bz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3fvEXT: v [
	^ self ffiCall: #( void glBinormal3fvEXT ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3iEXT_bx: bx by: by bz: bz [
	^ self ffiCall: #( void glBinormal3iEXT ( GLint bx , GLint by , GLint bz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3ivEXT: v [
	^ self ffiCall: #( void glBinormal3ivEXT ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3sEXT_bx: bx by: by bz: bz [
	^ self ffiCall: #( void glBinormal3sEXT ( GLshort bx , GLshort by , GLshort bz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormal3svEXT: v [
	^ self ffiCall: #( void glBinormal3svEXT ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> binormalPointerEXT_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glBinormalPointerEXT ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bitmap_width: width height: height xorig: xorig yorig: yorig xmove: xmove ymove: ymove bitmap: bitmap [
	^ self ffiCall: #( void glBitmap ( GLsizei width , GLsizei height , GLfloat xorig , GLfloat yorig , GLfloat xmove , GLfloat ymove , GLubyte* bitmap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bitmapxOES_width: width height: height xorig: xorig yorig: yorig xmove: xmove ymove: ymove bitmap: bitmap [
	^ self ffiCall: #( void glBitmapxOES ( GLsizei width , GLsizei height , GLfixed xorig , GLfixed yorig , GLfixed xmove , GLfixed ymove , GLubyte* bitmap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendBarrier [
	^ self ffiCall: #( void glBlendBarrier ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendBarrierKHR [
	^ self ffiCall: #( void glBlendBarrierKHR ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendBarrierNV [
	^ self ffiCall: #( void glBlendBarrierNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendColorEXT_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glBlendColorEXT ( GLfloat red , GLfloat green , GLfloat blue , GLfloat alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendColor_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glBlendColor ( GLfloat red , GLfloat green , GLfloat blue , GLfloat alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendColorxOES_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glBlendColorxOES ( GLfixed red , GLfixed green , GLfixed blue , GLfixed alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquation: mode [
	^ self ffiCall: #( void glBlendEquation ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationEXT: mode [
	^ self ffiCall: #( void glBlendEquationEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationIndexedAMD_buf: buf mode: mode [
	^ self ffiCall: #( void glBlendEquationIndexedAMD ( GLuint buf , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationOES: mode [
	^ self ffiCall: #( void glBlendEquationOES ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparateEXT_modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparateEXT ( GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparateIndexedAMD_buf: buf modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparateIndexedAMD ( GLuint buf , GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparateOES_modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparateOES ( GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparate_modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparate ( GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparateiARB_buf: buf modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparateiARB ( GLuint buf , GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparateiEXT_buf: buf modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparateiEXT ( GLuint buf , GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparateiOES_buf: buf modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparateiOES ( GLuint buf , GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationSeparatei_buf: buf modeRGB: modeRGB modeAlpha: modeAlpha [
	^ self ffiCall: #( void glBlendEquationSeparatei ( GLuint buf , GLenum modeRGB , GLenum modeAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationiARB_buf: buf mode: mode [
	^ self ffiCall: #( void glBlendEquationiARB ( GLuint buf , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationiEXT_buf: buf mode: mode [
	^ self ffiCall: #( void glBlendEquationiEXT ( GLuint buf , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationiOES_buf: buf mode: mode [
	^ self ffiCall: #( void glBlendEquationiOES ( GLuint buf , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendEquationi_buf: buf mode: mode [
	^ self ffiCall: #( void glBlendEquationi ( GLuint buf , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncIndexedAMD_buf: buf src: src dst: dst [
	^ self ffiCall: #( void glBlendFuncIndexedAMD ( GLuint buf , GLenum src , GLenum dst ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateEXT_sfactorRGB: sfactorRGB dfactorRGB: dfactorRGB sfactorAlpha: sfactorAlpha dfactorAlpha: dfactorAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateEXT ( GLenum sfactorRGB , GLenum dfactorRGB , GLenum sfactorAlpha , GLenum dfactorAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateINGR_sfactorRGB: sfactorRGB dfactorRGB: dfactorRGB sfactorAlpha: sfactorAlpha dfactorAlpha: dfactorAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateINGR ( GLenum sfactorRGB , GLenum dfactorRGB , GLenum sfactorAlpha , GLenum dfactorAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateIndexedAMD_buf: buf srcRGB: srcRGB dstRGB: dstRGB srcAlpha: srcAlpha dstAlpha: dstAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateIndexedAMD ( GLuint buf , GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateOES_srcRGB: srcRGB dstRGB: dstRGB srcAlpha: srcAlpha dstAlpha: dstAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateOES ( GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparate_sfactorRGB: sfactorRGB dfactorRGB: dfactorRGB sfactorAlpha: sfactorAlpha dfactorAlpha: dfactorAlpha [
	^ self ffiCall: #( void glBlendFuncSeparate ( GLenum sfactorRGB , GLenum dfactorRGB , GLenum sfactorAlpha , GLenum dfactorAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateiARB_buf: buf srcRGB: srcRGB dstRGB: dstRGB srcAlpha: srcAlpha dstAlpha: dstAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateiARB ( GLuint buf , GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateiEXT_buf: buf srcRGB: srcRGB dstRGB: dstRGB srcAlpha: srcAlpha dstAlpha: dstAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateiEXT ( GLuint buf , GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparateiOES_buf: buf srcRGB: srcRGB dstRGB: dstRGB srcAlpha: srcAlpha dstAlpha: dstAlpha [
	^ self ffiCall: #( void glBlendFuncSeparateiOES ( GLuint buf , GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFuncSeparatei_buf: buf srcRGB: srcRGB dstRGB: dstRGB srcAlpha: srcAlpha dstAlpha: dstAlpha [
	^ self ffiCall: #( void glBlendFuncSeparatei ( GLuint buf , GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFunc_sfactor: sfactor dfactor: dfactor [
	^ self ffiCall: #( void glBlendFunc ( GLenum sfactor , GLenum dfactor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFunciARB_buf: buf src: src dst: dst [
	^ self ffiCall: #( void glBlendFunciARB ( GLuint buf , GLenum src , GLenum dst ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFunciEXT_buf: buf src: src dst: dst [
	^ self ffiCall: #( void glBlendFunciEXT ( GLuint buf , GLenum src , GLenum dst ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFunciOES_buf: buf src: src dst: dst [
	^ self ffiCall: #( void glBlendFunciOES ( GLuint buf , GLenum src , GLenum dst ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendFunci_buf: buf src: src dst: dst [
	^ self ffiCall: #( void glBlendFunci ( GLuint buf , GLenum src , GLenum dst ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blendParameteriNV_pname: pname value: value [
	^ self ffiCall: #( void glBlendParameteriNV ( GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blitFramebufferANGLE_srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( void glBlitFramebufferANGLE ( GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blitFramebufferEXT_srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( void glBlitFramebufferEXT ( GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blitFramebufferNV_srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( void glBlitFramebufferNV ( GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blitFramebuffer_srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( void glBlitFramebuffer ( GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> blitNamedFramebuffer_readFramebuffer: readFramebuffer drawFramebuffer: drawFramebuffer srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( void glBlitNamedFramebuffer ( GLuint readFramebuffer , GLuint drawFramebuffer , GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferAddressRangeNV_pname: pname index: index address: address length: length [
	^ self ffiCall: #( void glBufferAddressRangeNV ( GLenum pname , GLuint index , GLuint64EXT address , GLsizeiptr length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferDataARB_target: target size: size data: data usage: usage [
	^ self ffiCall: #( void glBufferDataARB ( GLenum target , GLsizeiptrARB size , void* data , GLenum usage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferData_target: target size: size data: data usage: usage [
	^ self ffiCall: #( void glBufferData ( GLenum target , GLsizeiptr size , void* data , GLenum usage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferPageCommitmentARB_target: target offset: offset size: size commit: commit [
	^ self ffiCall: #( void glBufferPageCommitmentARB ( GLenum target , GLintptr offset , GLsizeiptr size , GLboolean commit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferParameteriAPPLE_target: target pname: pname param: param [
	^ self ffiCall: #( void glBufferParameteriAPPLE ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferStorageEXT_target: target size: size data: data flags: flags [
	^ self ffiCall: #( void glBufferStorageEXT ( GLenum target , GLsizeiptr size , void* data , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferStorage_target: target size: size data: data flags: flags [
	^ self ffiCall: #( void glBufferStorage ( GLenum target , GLsizeiptr size , void* data , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferSubDataARB_target: target offset: offset size: size data: data [
	^ self ffiCall: #( void glBufferSubDataARB ( GLenum target , GLintptrARB offset , GLsizeiptrARB size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> bufferSubData_target: target offset: offset size: size data: data [
	^ self ffiCall: #( void glBufferSubData ( GLenum target , GLintptr offset , GLsizeiptr size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> callCommandListNV: list [
	^ self ffiCall: #( void glCallCommandListNV ( GLuint list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> callList: list [
	^ self ffiCall: #( void glCallList ( GLuint list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> callLists_n: n type: type lists: lists [
	^ self ffiCall: #( void glCallLists ( GLsizei n , GLenum type , void* lists ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> checkFramebufferStatus: target [
	^ self ffiCall: #( GLenum glCheckFramebufferStatus ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> checkFramebufferStatusEXT: target [
	^ self ffiCall: #( GLenum glCheckFramebufferStatusEXT ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> checkFramebufferStatusOES: target [
	^ self ffiCall: #( GLenum glCheckFramebufferStatusOES ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> checkNamedFramebufferStatusEXT_framebuffer: framebuffer target: target [
	^ self ffiCall: #( GLenum glCheckNamedFramebufferStatusEXT ( GLuint framebuffer , GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> checkNamedFramebufferStatus_framebuffer: framebuffer target: target [
	^ self ffiCall: #( GLenum glCheckNamedFramebufferStatus ( GLuint framebuffer , GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clampColorARB_target: target clamp: clamp [
	^ self ffiCall: #( void glClampColorARB ( GLenum target , GLenum clamp ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clampColor_target: target clamp: clamp [
	^ self ffiCall: #( void glClampColor ( GLenum target , GLenum clamp ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clear: mask [
	^ self ffiCall: #( void glClear ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearAccum_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearAccum ( GLfloat red , GLfloat green , GLfloat blue , GLfloat alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearAccumxOES_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearAccumxOES ( GLfixed red , GLfixed green , GLfixed blue , GLfixed alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearBufferData_target: target internalformat: internalformat format: format type: type data: data [
	^ self ffiCall: #( void glClearBufferData ( GLenum target , GLenum internalformat , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearBufferSubData_target: target internalformat: internalformat offset: offset size: size format: format type: type data: data [
	^ self ffiCall: #( void glClearBufferSubData ( GLenum target , GLenum internalformat , GLintptr offset , GLsizeiptr size , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearBufferfi_buffer: buffer drawbuffer: drawbuffer depth: depth stencil: stencil [
	^ self ffiCall: #( void glClearBufferfi ( GLenum buffer , GLint drawbuffer , GLfloat depth , GLint stencil ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearBufferfv_buffer: buffer drawbuffer: drawbuffer value: value [
	^ self ffiCall: #( void glClearBufferfv ( GLenum buffer , GLint drawbuffer , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearBufferiv_buffer: buffer drawbuffer: drawbuffer value: value [
	^ self ffiCall: #( void glClearBufferiv ( GLenum buffer , GLint drawbuffer , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearBufferuiv_buffer: buffer drawbuffer: drawbuffer value: value [
	^ self ffiCall: #( void glClearBufferuiv ( GLenum buffer , GLint drawbuffer , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearColorIiEXT_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearColorIiEXT ( GLint red , GLint green , GLint blue , GLint alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearColorIuiEXT_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearColorIuiEXT ( GLuint red , GLuint green , GLuint blue , GLuint alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearColor_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearColor ( GLfloat red , GLfloat green , GLfloat blue , GLfloat alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearColorxOES_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearColorxOES ( GLfixed red , GLfixed green , GLfixed blue , GLfixed alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearColorx_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glClearColorx ( GLfixed red , GLfixed green , GLfixed blue , GLfixed alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearDepth: depth [
	^ self ffiCall: #( void glClearDepth ( GLdouble depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearDepthdNV: depth [
	^ self ffiCall: #( void glClearDepthdNV ( GLdouble depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearDepthf: d [
	^ self ffiCall: #( void glClearDepthf ( GLfloat d ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearDepthfOES: depth [
	^ self ffiCall: #( void glClearDepthfOES ( GLclampf depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearDepthx: depth [
	^ self ffiCall: #( void glClearDepthx ( GLfixed depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearDepthxOES: depth [
	^ self ffiCall: #( void glClearDepthxOES ( GLfixed depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearIndex: c [
	^ self ffiCall: #( void glClearIndex ( GLfloat c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedBufferDataEXT_buffer: buffer internalformat: internalformat format: format type: type data: data [
	^ self ffiCall: #( void glClearNamedBufferDataEXT ( GLuint buffer , GLenum internalformat , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedBufferData_buffer: buffer internalformat: internalformat format: format type: type data: data [
	^ self ffiCall: #( void glClearNamedBufferData ( GLuint buffer , GLenum internalformat , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedBufferSubDataEXT_buffer: buffer internalformat: internalformat offset: offset size: size format: format type: type data: data [
	^ self ffiCall: #( void glClearNamedBufferSubDataEXT ( GLuint buffer , GLenum internalformat , GLsizeiptr offset , GLsizeiptr size , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedBufferSubData_buffer: buffer internalformat: internalformat offset: offset size: size format: format type: type data: data [
	^ self ffiCall: #( void glClearNamedBufferSubData ( GLuint buffer , GLenum internalformat , GLintptr offset , GLsizeiptr size , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedFramebufferfi_framebuffer: framebuffer buffer: buffer drawbuffer: drawbuffer depth: depth stencil: stencil [
	^ self ffiCall: #( void glClearNamedFramebufferfi ( GLuint framebuffer , GLenum buffer , GLint drawbuffer , GLfloat depth , GLint stencil ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedFramebufferfv_framebuffer: framebuffer buffer: buffer drawbuffer: drawbuffer value: value [
	^ self ffiCall: #( void glClearNamedFramebufferfv ( GLuint framebuffer , GLenum buffer , GLint drawbuffer , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedFramebufferiv_framebuffer: framebuffer buffer: buffer drawbuffer: drawbuffer value: value [
	^ self ffiCall: #( void glClearNamedFramebufferiv ( GLuint framebuffer , GLenum buffer , GLint drawbuffer , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearNamedFramebufferuiv_framebuffer: framebuffer buffer: buffer drawbuffer: drawbuffer value: value [
	^ self ffiCall: #( void glClearNamedFramebufferuiv ( GLuint framebuffer , GLenum buffer , GLint drawbuffer , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearPixelLocalStorageuiEXT_offset: offset n: n values: values [
	^ self ffiCall: #( void glClearPixelLocalStorageuiEXT ( GLsizei offset , GLsizei n , GLuint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearStencil: s [
	^ self ffiCall: #( void glClearStencil ( GLint s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearTexImage_texture: texture level: level format: format type: type data: data [
	^ self ffiCall: #( void glClearTexImage ( GLuint texture , GLint level , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clearTexSubImage_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type data: data [
	^ self ffiCall: #( void glClearTexSubImage ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clientActiveTexture: texture [
	^ self ffiCall: #( void glClientActiveTexture ( GLenum texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clientActiveTextureARB: texture [
	^ self ffiCall: #( void glClientActiveTextureARB ( GLenum texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clientActiveVertexStreamATI: stream [
	^ self ffiCall: #( void glClientActiveVertexStreamATI ( GLenum stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clientAttribDefaultEXT: mask [
	^ self ffiCall: #( void glClientAttribDefaultEXT ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clientWaitSyncAPPLE_sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( GLenum glClientWaitSyncAPPLE ( GLsync sync , GLbitfield flags , GLuint64 timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clientWaitSync_sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( GLenum glClientWaitSync ( GLsync sync , GLbitfield flags , GLuint64 timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipControl_origin: origin depth: depth [
	^ self ffiCall: #( void glClipControl ( GLenum origin , GLenum depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlane_plane: plane equation: equation [
	^ self ffiCall: #( void glClipPlane ( GLenum plane , GLdouble* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlanefIMG_p: p eqn: eqn [
	^ self ffiCall: #( void glClipPlanefIMG ( GLenum p , GLfloat* eqn ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlanefOES_plane: plane equation: equation [
	^ self ffiCall: #( void glClipPlanefOES ( GLenum plane , GLfloat* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlanef_p: p eqn: eqn [
	^ self ffiCall: #( void glClipPlanef ( GLenum p , GLfloat* eqn ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlanexIMG_p: p eqn: eqn [
	^ self ffiCall: #( void glClipPlanexIMG ( GLenum p , GLfixed* eqn ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlanexOES_plane: plane equation: equation [
	^ self ffiCall: #( void glClipPlanexOES ( GLenum plane , GLfixed* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> clipPlanex_plane: plane equation: equation [
	^ self ffiCall: #( void glClipPlanex ( GLenum plane , GLfixed* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3b_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3b ( GLbyte red , GLbyte green , GLbyte blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3bv: v [
	^ self ffiCall: #( void glColor3bv ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3d_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3d ( GLdouble red , GLdouble green , GLdouble blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3dv: v [
	^ self ffiCall: #( void glColor3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3fVertex3fSUN_r: r g: g b: b x: x y: y z: z [
	^ self ffiCall: #( void glColor3fVertex3fSUN ( GLfloat r , GLfloat g , GLfloat b , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3fVertex3fvSUN_c: c v: v [
	^ self ffiCall: #( void glColor3fVertex3fvSUN ( GLfloat* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3f_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3f ( GLfloat red , GLfloat green , GLfloat blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3fv: v [
	^ self ffiCall: #( void glColor3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3hNV_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3hNV ( GLhalfNV red , GLhalfNV green , GLhalfNV blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3hvNV: v [
	^ self ffiCall: #( void glColor3hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3i_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3i ( GLint red , GLint green , GLint blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3iv: v [
	^ self ffiCall: #( void glColor3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3s_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3s ( GLshort red , GLshort green , GLshort blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3sv: v [
	^ self ffiCall: #( void glColor3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3ub_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3ub ( GLubyte red , GLubyte green , GLubyte blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3ubv: v [
	^ self ffiCall: #( void glColor3ubv ( GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3ui_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3ui ( GLuint red , GLuint green , GLuint blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3uiv: v [
	^ self ffiCall: #( void glColor3uiv ( GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3us_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3us ( GLushort red , GLushort green , GLushort blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3usv: v [
	^ self ffiCall: #( void glColor3usv ( GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3xOES_red: red green: green blue: blue [
	^ self ffiCall: #( void glColor3xOES ( GLfixed red , GLfixed green , GLfixed blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color3xvOES: components [
	^ self ffiCall: #( void glColor3xvOES ( GLfixed* components ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4b_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4b ( GLbyte red , GLbyte green , GLbyte blue , GLbyte alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4bv: v [
	^ self ffiCall: #( void glColor4bv ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4d_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4d ( GLdouble red , GLdouble green , GLdouble blue , GLdouble alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4dv: v [
	^ self ffiCall: #( void glColor4dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4fNormal3fVertex3fSUN_r: r g: g b: b a: a nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glColor4fNormal3fVertex3fSUN ( GLfloat r , GLfloat g , GLfloat b , GLfloat a , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4fNormal3fVertex3fvSUN_c: c n: n v: v [
	^ self ffiCall: #( void glColor4fNormal3fVertex3fvSUN ( GLfloat* c , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4f_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4f ( GLfloat red , GLfloat green , GLfloat blue , GLfloat alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4fv: v [
	^ self ffiCall: #( void glColor4fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4hNV_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4hNV ( GLhalfNV red , GLhalfNV green , GLhalfNV blue , GLhalfNV alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4hvNV: v [
	^ self ffiCall: #( void glColor4hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4i_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4i ( GLint red , GLint green , GLint blue , GLint alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4iv: v [
	^ self ffiCall: #( void glColor4iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4s_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4s ( GLshort red , GLshort green , GLshort blue , GLshort alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4sv: v [
	^ self ffiCall: #( void glColor4sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ubVertex2fSUN_r: r g: g b: b a: a x: x y: y [
	^ self ffiCall: #( void glColor4ubVertex2fSUN ( GLubyte r , GLubyte g , GLubyte b , GLubyte a , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ubVertex2fvSUN_c: c v: v [
	^ self ffiCall: #( void glColor4ubVertex2fvSUN ( GLubyte* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ubVertex3fSUN_r: r g: g b: b a: a x: x y: y z: z [
	^ self ffiCall: #( void glColor4ubVertex3fSUN ( GLubyte r , GLubyte g , GLubyte b , GLubyte a , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ubVertex3fvSUN_c: c v: v [
	^ self ffiCall: #( void glColor4ubVertex3fvSUN ( GLubyte* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ub_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4ub ( GLubyte red , GLubyte green , GLubyte blue , GLubyte alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ubv: v [
	^ self ffiCall: #( void glColor4ubv ( GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4ui_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4ui ( GLuint red , GLuint green , GLuint blue , GLuint alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4uiv: v [
	^ self ffiCall: #( void glColor4uiv ( GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4us_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4us ( GLushort red , GLushort green , GLushort blue , GLushort alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4usv: v [
	^ self ffiCall: #( void glColor4usv ( GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4xOES_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4xOES ( GLfixed red , GLfixed green , GLfixed blue , GLfixed alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4x_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColor4x ( GLfixed red , GLfixed green , GLfixed blue , GLfixed alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> color4xvOES: components [
	^ self ffiCall: #( void glColor4xvOES ( GLfixed* components ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorFormatNV_size: size type: type stride: stride [
	^ self ffiCall: #( void glColorFormatNV ( GLint size , GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorFragmentOp1ATI_op: op dst: dst dstMask: dstMask dstMod: dstMod arg1: arg1 arg1Rep: arg1Rep arg1Mod: arg1Mod [
	^ self ffiCall: #( void glColorFragmentOp1ATI ( GLenum op , GLuint dst , GLuint dstMask , GLuint dstMod , GLuint arg1 , GLuint arg1Rep , GLuint arg1Mod ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorFragmentOp2ATI_op: op dst: dst dstMask: dstMask dstMod: dstMod arg1: arg1 arg1Rep: arg1Rep arg1Mod: arg1Mod arg2: arg2 arg2Rep: arg2Rep arg2Mod: arg2Mod [
	^ self ffiCall: #( void glColorFragmentOp2ATI ( GLenum op , GLuint dst , GLuint dstMask , GLuint dstMod , GLuint arg1 , GLuint arg1Rep , GLuint arg1Mod , GLuint arg2 , GLuint arg2Rep , GLuint arg2Mod ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorFragmentOp3ATI_op: op dst: dst dstMask: dstMask dstMod: dstMod arg1: arg1 arg1Rep: arg1Rep arg1Mod: arg1Mod arg2: arg2 arg2Rep: arg2Rep arg2Mod: arg2Mod arg3: arg3 arg3Rep: arg3Rep arg3Mod: arg3Mod [
	^ self ffiCall: #( void glColorFragmentOp3ATI ( GLenum op , GLuint dst , GLuint dstMask , GLuint dstMod , GLuint arg1 , GLuint arg1Rep , GLuint arg1Mod , GLuint arg2 , GLuint arg2Rep , GLuint arg2Mod , GLuint arg3 , GLuint arg3Rep , GLuint arg3Mod ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorMaskIndexedEXT_index: index r: r g: g b: b a: a [
	^ self ffiCall: #( void glColorMaskIndexedEXT ( GLuint index , GLboolean r , GLboolean g , GLboolean b , GLboolean a ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorMask_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glColorMask ( GLboolean red , GLboolean green , GLboolean blue , GLboolean alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorMaskiEXT_index: index r: r g: g b: b a: a [
	^ self ffiCall: #( void glColorMaskiEXT ( GLuint index , GLboolean r , GLboolean g , GLboolean b , GLboolean a ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorMaskiOES_index: index r: r g: g b: b a: a [
	^ self ffiCall: #( void glColorMaskiOES ( GLuint index , GLboolean r , GLboolean g , GLboolean b , GLboolean a ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorMaski_index: index r: r g: g b: b a: a [
	^ self ffiCall: #( void glColorMaski ( GLuint index , GLboolean r , GLboolean g , GLboolean b , GLboolean a ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorMaterial_face: face mode: mode [
	^ self ffiCall: #( void glColorMaterial ( GLenum face , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorP3ui_type: type color: color [
	^ self ffiCall: #( void glColorP3ui ( GLenum type , GLuint color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorP3uiv_type: type color: color [
	^ self ffiCall: #( void glColorP3uiv ( GLenum type , GLuint* color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorP4ui_type: type color: color [
	^ self ffiCall: #( void glColorP4ui ( GLenum type , GLuint color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorP4uiv_type: type color: color [
	^ self ffiCall: #( void glColorP4uiv ( GLenum type , GLuint* color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorPointerEXT_size: size type: type stride: stride count: count pointer: pointer [
	^ self ffiCall: #( void glColorPointerEXT ( GLint size , GLenum type , GLsizei stride , GLsizei count , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorPointerListIBM_size: size type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glColorPointerListIBM ( GLint size , GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorPointer_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glColorPointer ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorPointervINTEL_size: size type: type pointer: pointer [
	^ self ffiCall: #( void glColorPointervINTEL ( GLint size , GLenum type , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorSubTableEXT_target: target start: start count: count format: format type: type data: data [
	^ self ffiCall: #( void glColorSubTableEXT ( GLenum target , GLsizei start , GLsizei count , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorSubTable_target: target start: start count: count format: format type: type data: data [
	^ self ffiCall: #( void glColorSubTable ( GLenum target , GLsizei start , GLsizei count , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTableEXT_target: target internalFormat: internalFormat width: width format: format type: type table: table [
	^ self ffiCall: #( void glColorTableEXT ( GLenum target , GLenum internalFormat , GLsizei width , GLenum format , GLenum type , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTableParameterfvSGI_target: target pname: pname params: params [
	^ self ffiCall: #( void glColorTableParameterfvSGI ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTableParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glColorTableParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTableParameterivSGI_target: target pname: pname params: params [
	^ self ffiCall: #( void glColorTableParameterivSGI ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTableParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glColorTableParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTableSGI_target: target internalformat: internalformat width: width format: format type: type table: table [
	^ self ffiCall: #( void glColorTableSGI ( GLenum target , GLenum internalformat , GLsizei width , GLenum format , GLenum type , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> colorTable_target: target internalformat: internalformat width: width format: format type: type table: table [
	^ self ffiCall: #( void glColorTable ( GLenum target , GLenum internalformat , GLsizei width , GLenum format , GLenum type , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerInputNV_stage: stage portion: portion variable: variable input: input mapping: mapping componentUsage: componentUsage [
	^ self ffiCall: #( void glCombinerInputNV ( GLenum stage , GLenum portion , GLenum variable , GLenum input , GLenum mapping , GLenum componentUsage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerOutputNV_stage: stage portion: portion abOutput: abOutput cdOutput: cdOutput sumOutput: sumOutput scale: scale bias: bias abDotProduct: abDotProduct cdDotProduct: cdDotProduct muxSum: muxSum [
	^ self ffiCall: #( void glCombinerOutputNV ( GLenum stage , GLenum portion , GLenum abOutput , GLenum cdOutput , GLenum sumOutput , GLenum scale , GLenum bias , GLboolean abDotProduct , GLboolean cdDotProduct , GLboolean muxSum ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerParameterfNV_pname: pname param: param [
	^ self ffiCall: #( void glCombinerParameterfNV ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerParameterfvNV_pname: pname params: params [
	^ self ffiCall: #( void glCombinerParameterfvNV ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerParameteriNV_pname: pname param: param [
	^ self ffiCall: #( void glCombinerParameteriNV ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerParameterivNV_pname: pname params: params [
	^ self ffiCall: #( void glCombinerParameterivNV ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> combinerStageParameterfvNV_stage: stage pname: pname params: params [
	^ self ffiCall: #( void glCombinerStageParameterfvNV ( GLenum stage , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> commandListSegmentsNV_list: list segments: segments [
	^ self ffiCall: #( void glCommandListSegmentsNV ( GLuint list , GLuint segments ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compileCommandListNV: list [
	^ self ffiCall: #( void glCompileCommandListNV ( GLuint list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compileShader: shader [
	^ self ffiCall: #( void glCompileShader ( GLuint shader ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compileShaderARB: shaderObj [
	^ self ffiCall: #( void glCompileShaderARB ( GLhandleARB shaderObj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compileShaderIncludeARB_shader: shader count: count path: path length: length [
	^ self ffiCall: #( void glCompileShaderIncludeARB ( GLuint shader , GLsizei count , GLchar** path , GLint* length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedMultiTexImage1DEXT_texunit: texunit target: target level: level internalformat: internalformat width: width border: border imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedMultiTexImage1DEXT ( GLenum texunit , GLenum target , GLint level , GLenum internalformat , GLsizei width , GLint border , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedMultiTexImage2DEXT_texunit: texunit target: target level: level internalformat: internalformat width: width height: height border: border imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedMultiTexImage2DEXT ( GLenum texunit , GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLint border , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedMultiTexImage3DEXT_texunit: texunit target: target level: level internalformat: internalformat width: width height: height depth: depth border: border imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedMultiTexImage3DEXT ( GLenum texunit , GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedMultiTexSubImage1DEXT_texunit: texunit target: target level: level xoffset: xoffset width: width format: format imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedMultiTexSubImage1DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedMultiTexSubImage2DEXT_texunit: texunit target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedMultiTexSubImage2DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedMultiTexSubImage3DEXT_texunit: texunit target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedMultiTexSubImage3DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage1DARB_target: target level: level internalformat: internalformat width: width border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage1DARB ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage1D_target: target level: level internalformat: internalformat width: width border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage1D ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage2DARB_target: target level: level internalformat: internalformat width: width height: height border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage2DARB ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage2D_target: target level: level internalformat: internalformat width: width height: height border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage2D ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage3DARB_target: target level: level internalformat: internalformat width: width height: height depth: depth border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage3DARB ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage3DOES_target: target level: level internalformat: internalformat width: width height: height depth: depth border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage3DOES ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexImage3D_target: target level: level internalformat: internalformat width: width height: height depth: depth border: border imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexImage3D ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage1DARB_target: target level: level xoffset: xoffset width: width format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage1DARB ( GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage1D_target: target level: level xoffset: xoffset width: width format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage1D ( GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage2DARB_target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage2DARB ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage2D_target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage2D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage3DARB_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage3DARB ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage3DOES_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage3DOES ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTexSubImage3D_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTexSubImage3D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureImage1DEXT_texture: texture target: target level: level internalformat: internalformat width: width border: border imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedTextureImage1DEXT ( GLuint texture , GLenum target , GLint level , GLenum internalformat , GLsizei width , GLint border , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureImage2DEXT_texture: texture target: target level: level internalformat: internalformat width: width height: height border: border imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedTextureImage2DEXT ( GLuint texture , GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLint border , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureImage3DEXT_texture: texture target: target level: level internalformat: internalformat width: width height: height depth: depth border: border imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedTextureImage3DEXT ( GLuint texture , GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureSubImage1DEXT_texture: texture target: target level: level xoffset: xoffset width: width format: format imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedTextureSubImage1DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureSubImage1D_texture: texture level: level xoffset: xoffset width: width format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTextureSubImage1D ( GLuint texture , GLint level , GLint xoffset , GLsizei width , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureSubImage2DEXT_texture: texture target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedTextureSubImage2DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureSubImage2D_texture: texture level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTextureSubImage2D ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureSubImage3DEXT_texture: texture target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format imageSize: imageSize bits: bits [
	^ self ffiCall: #( void glCompressedTextureSubImage3DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , void* bits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> compressedTextureSubImage3D_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format imageSize: imageSize data: data [
	^ self ffiCall: #( void glCompressedTextureSubImage3D ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> conservativeRasterParameterfNV_pname: pname value: value [
	^ self ffiCall: #( void glConservativeRasterParameterfNV ( GLenum pname , GLfloat value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #accessing }
GlutinOpenGL >> context [
	^ context
]

{ #category : #accessing }
GlutinOpenGL >> context: anOpenGLContext [
	context := anOpenGLContext
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionFilter1DEXT_target: target internalformat: internalformat width: width format: format type: type image: image [
	^ self ffiCall: #( void glConvolutionFilter1DEXT ( GLenum target , GLenum internalformat , GLsizei width , GLenum format , GLenum type , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionFilter1D_target: target internalformat: internalformat width: width format: format type: type image: image [
	^ self ffiCall: #( void glConvolutionFilter1D ( GLenum target , GLenum internalformat , GLsizei width , GLenum format , GLenum type , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionFilter2DEXT_target: target internalformat: internalformat width: width height: height format: format type: type image: image [
	^ self ffiCall: #( void glConvolutionFilter2DEXT ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height , GLenum format , GLenum type , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionFilter2D_target: target internalformat: internalformat width: width height: height format: format type: type image: image [
	^ self ffiCall: #( void glConvolutionFilter2D ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height , GLenum format , GLenum type , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterfEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameterfEXT ( GLenum target , GLenum pname , GLfloat params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterf_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameterf ( GLenum target , GLenum pname , GLfloat params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameteriEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameteriEXT ( GLenum target , GLenum pname , GLint params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameteri_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameteri ( GLenum target , GLenum pname , GLint params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterxOES_target: target pname: pname param: param [
	^ self ffiCall: #( void glConvolutionParameterxOES ( GLenum target , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> convolutionParameterxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glConvolutionParameterxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyBufferSubDataNV_readTarget: readTarget writeTarget: writeTarget readOffset: readOffset writeOffset: writeOffset size: size [
	^ self ffiCall: #( void glCopyBufferSubDataNV ( GLenum readTarget , GLenum writeTarget , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyBufferSubData_readTarget: readTarget writeTarget: writeTarget readOffset: readOffset writeOffset: writeOffset size: size [
	^ self ffiCall: #( void glCopyBufferSubData ( GLenum readTarget , GLenum writeTarget , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyColorSubTableEXT_target: target start: start x: x y: y width: width [
	^ self ffiCall: #( void glCopyColorSubTableEXT ( GLenum target , GLsizei start , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyColorSubTable_target: target start: start x: x y: y width: width [
	^ self ffiCall: #( void glCopyColorSubTable ( GLenum target , GLsizei start , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyColorTableSGI_target: target internalformat: internalformat x: x y: y width: width [
	^ self ffiCall: #( void glCopyColorTableSGI ( GLenum target , GLenum internalformat , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyColorTable_target: target internalformat: internalformat x: x y: y width: width [
	^ self ffiCall: #( void glCopyColorTable ( GLenum target , GLenum internalformat , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyConvolutionFilter1DEXT_target: target internalformat: internalformat x: x y: y width: width [
	^ self ffiCall: #( void glCopyConvolutionFilter1DEXT ( GLenum target , GLenum internalformat , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyConvolutionFilter1D_target: target internalformat: internalformat x: x y: y width: width [
	^ self ffiCall: #( void glCopyConvolutionFilter1D ( GLenum target , GLenum internalformat , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyConvolutionFilter2DEXT_target: target internalformat: internalformat x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyConvolutionFilter2DEXT ( GLenum target , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyConvolutionFilter2D_target: target internalformat: internalformat x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyConvolutionFilter2D ( GLenum target , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyImageSubDataEXT_srcName: srcName srcTarget: srcTarget srcLevel: srcLevel srcX: srcX srcY: srcY srcZ: srcZ dstName: dstName dstTarget: dstTarget dstLevel: dstLevel dstX: dstX dstY: dstY dstZ: dstZ srcWidth: srcWidth srcHeight: srcHeight srcDepth: srcDepth [
	^ self ffiCall: #( void glCopyImageSubDataEXT ( GLuint srcName , GLenum srcTarget , GLint srcLevel , GLint srcX , GLint srcY , GLint srcZ , GLuint dstName , GLenum dstTarget , GLint dstLevel , GLint dstX , GLint dstY , GLint dstZ , GLsizei srcWidth , GLsizei srcHeight , GLsizei srcDepth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyImageSubDataNV_srcName: srcName srcTarget: srcTarget srcLevel: srcLevel srcX: srcX srcY: srcY srcZ: srcZ dstName: dstName dstTarget: dstTarget dstLevel: dstLevel dstX: dstX dstY: dstY dstZ: dstZ width: width height: height depth: depth [
	^ self ffiCall: #( void glCopyImageSubDataNV ( GLuint srcName , GLenum srcTarget , GLint srcLevel , GLint srcX , GLint srcY , GLint srcZ , GLuint dstName , GLenum dstTarget , GLint dstLevel , GLint dstX , GLint dstY , GLint dstZ , GLsizei width , GLsizei height , GLsizei depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyImageSubDataOES_srcName: srcName srcTarget: srcTarget srcLevel: srcLevel srcX: srcX srcY: srcY srcZ: srcZ dstName: dstName dstTarget: dstTarget dstLevel: dstLevel dstX: dstX dstY: dstY dstZ: dstZ srcWidth: srcWidth srcHeight: srcHeight srcDepth: srcDepth [
	^ self ffiCall: #( void glCopyImageSubDataOES ( GLuint srcName , GLenum srcTarget , GLint srcLevel , GLint srcX , GLint srcY , GLint srcZ , GLuint dstName , GLenum dstTarget , GLint dstLevel , GLint dstX , GLint dstY , GLint dstZ , GLsizei srcWidth , GLsizei srcHeight , GLsizei srcDepth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyImageSubData_srcName: srcName srcTarget: srcTarget srcLevel: srcLevel srcX: srcX srcY: srcY srcZ: srcZ dstName: dstName dstTarget: dstTarget dstLevel: dstLevel dstX: dstX dstY: dstY dstZ: dstZ srcWidth: srcWidth srcHeight: srcHeight srcDepth: srcDepth [
	^ self ffiCall: #( void glCopyImageSubData ( GLuint srcName , GLenum srcTarget , GLint srcLevel , GLint srcX , GLint srcY , GLint srcZ , GLuint dstName , GLenum dstTarget , GLint dstLevel , GLint dstX , GLint dstY , GLint dstZ , GLsizei srcWidth , GLsizei srcHeight , GLsizei srcDepth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyMultiTexImage1DEXT_texunit: texunit target: target level: level internalformat: internalformat x: x y: y width: width border: border [
	^ self ffiCall: #( void glCopyMultiTexImage1DEXT ( GLenum texunit , GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyMultiTexImage2DEXT_texunit: texunit target: target level: level internalformat: internalformat x: x y: y width: width height: height border: border [
	^ self ffiCall: #( void glCopyMultiTexImage2DEXT ( GLenum texunit , GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyMultiTexSubImage1DEXT_texunit: texunit target: target level: level xoffset: xoffset x: x y: y width: width [
	^ self ffiCall: #( void glCopyMultiTexSubImage1DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyMultiTexSubImage2DEXT_texunit: texunit target: target level: level xoffset: xoffset yoffset: yoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyMultiTexSubImage2DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyMultiTexSubImage3DEXT_texunit: texunit target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyMultiTexSubImage3DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyNamedBufferSubData_readBuffer: readBuffer writeBuffer: writeBuffer readOffset: readOffset writeOffset: writeOffset size: size [
	^ self ffiCall: #( void glCopyNamedBufferSubData ( GLuint readBuffer , GLuint writeBuffer , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyPathNV_resultPath: resultPath srcPath: srcPath [
	^ self ffiCall: #( void glCopyPathNV ( GLuint resultPath , GLuint srcPath ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyPixels_x: x y: y width: width height: height type: type [
	^ self ffiCall: #( void glCopyPixels ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum type ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexImage1DEXT_target: target level: level internalformat: internalformat x: x y: y width: width border: border [
	^ self ffiCall: #( void glCopyTexImage1DEXT ( GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexImage1D_target: target level: level internalformat: internalformat x: x y: y width: width border: border [
	^ self ffiCall: #( void glCopyTexImage1D ( GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexImage2DEXT_target: target level: level internalformat: internalformat x: x y: y width: width height: height border: border [
	^ self ffiCall: #( void glCopyTexImage2DEXT ( GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexImage2D_target: target level: level internalformat: internalformat x: x y: y width: width height: height border: border [
	^ self ffiCall: #( void glCopyTexImage2D ( GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage1DEXT_target: target level: level xoffset: xoffset x: x y: y width: width [
	^ self ffiCall: #( void glCopyTexSubImage1DEXT ( GLenum target , GLint level , GLint xoffset , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage1D_target: target level: level xoffset: xoffset x: x y: y width: width [
	^ self ffiCall: #( void glCopyTexSubImage1D ( GLenum target , GLint level , GLint xoffset , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage2DEXT_target: target level: level xoffset: xoffset yoffset: yoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTexSubImage2DEXT ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage2D_target: target level: level xoffset: xoffset yoffset: yoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTexSubImage2D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage3DEXT_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTexSubImage3DEXT ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage3DOES_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTexSubImage3DOES ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTexSubImage3D_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTexSubImage3D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureImage1DEXT_texture: texture target: target level: level internalformat: internalformat x: x y: y width: width border: border [
	^ self ffiCall: #( void glCopyTextureImage1DEXT ( GLuint texture , GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureImage2DEXT_texture: texture target: target level: level internalformat: internalformat x: x y: y width: width height: height border: border [
	^ self ffiCall: #( void glCopyTextureImage2DEXT ( GLuint texture , GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height , GLint border ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureLevelsAPPLE_destinationTexture: destinationTexture sourceTexture: sourceTexture sourceBaseLevel: sourceBaseLevel sourceLevelCount: sourceLevelCount [
	^ self ffiCall: #( void glCopyTextureLevelsAPPLE ( GLuint destinationTexture , GLuint sourceTexture , GLint sourceBaseLevel , GLsizei sourceLevelCount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureSubImage1DEXT_texture: texture target: target level: level xoffset: xoffset x: x y: y width: width [
	^ self ffiCall: #( void glCopyTextureSubImage1DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureSubImage1D_texture: texture level: level xoffset: xoffset x: x y: y width: width [
	^ self ffiCall: #( void glCopyTextureSubImage1D ( GLuint texture , GLint level , GLint xoffset , GLint x , GLint y , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureSubImage2DEXT_texture: texture target: target level: level xoffset: xoffset yoffset: yoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTextureSubImage2DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureSubImage2D_texture: texture level: level xoffset: xoffset yoffset: yoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTextureSubImage2D ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureSubImage3DEXT_texture: texture target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTextureSubImage3DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> copyTextureSubImage3D_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset x: x y: y width: width height: height [
	^ self ffiCall: #( void glCopyTextureSubImage3D ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverFillPathInstancedNV_numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase coverMode: coverMode transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glCoverFillPathInstancedNV ( GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLenum coverMode , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverFillPathNV_path: path coverMode: coverMode [
	^ self ffiCall: #( void glCoverFillPathNV ( GLuint path , GLenum coverMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverStrokePathInstancedNV_numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase coverMode: coverMode transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glCoverStrokePathInstancedNV ( GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLenum coverMode , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverStrokePathNV_path: path coverMode: coverMode [
	^ self ffiCall: #( void glCoverStrokePathNV ( GLuint path , GLenum coverMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverageMaskNV: mask [
	^ self ffiCall: #( void glCoverageMaskNV ( GLboolean mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverageModulationNV: components [
	^ self ffiCall: #( void glCoverageModulationNV ( GLenum components ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverageModulationTableNV_n: n v: v [
	^ self ffiCall: #( void glCoverageModulationTableNV ( GLsizei n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> coverageOperationNV: operation [
	^ self ffiCall: #( void glCoverageOperationNV ( GLenum operation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createBuffers_n: n buffers: buffers [
	^ self ffiCall: #( void glCreateBuffers ( GLsizei n , GLuint* buffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createCommandListsNV_n: n lists: lists [
	^ self ffiCall: #( void glCreateCommandListsNV ( GLsizei n , GLuint* lists ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createFramebuffers_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glCreateFramebuffers ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createPerfQueryINTEL_queryId: queryId queryHandle: queryHandle [
	^ self ffiCall: #( void glCreatePerfQueryINTEL ( GLuint queryId , GLuint* queryHandle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createProgram [
	^ self ffiCall: #( GLuint glCreateProgram ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createProgramObjectARB [
	^ self ffiCall: #( GLhandleARB glCreateProgramObjectARB ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createProgramPipelines_n: n pipelines: pipelines [
	^ self ffiCall: #( void glCreateProgramPipelines ( GLsizei n , GLuint* pipelines ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createQueries_target: target n: n ids: ids [
	^ self ffiCall: #( void glCreateQueries ( GLenum target , GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createRenderbuffers_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glCreateRenderbuffers ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createSamplers_n: n samplers: samplers [
	^ self ffiCall: #( void glCreateSamplers ( GLsizei n , GLuint* samplers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createShader: type [
	^ self ffiCall: #( GLuint glCreateShader ( GLenum type ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createShaderObjectARB: shaderType [
	^ self ffiCall: #( GLhandleARB glCreateShaderObjectARB ( GLenum shaderType ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createShaderProgramEXT_type: type string: string [
	^ self ffiCall: #( GLuint glCreateShaderProgramEXT ( GLenum type , GLchar* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createShaderProgramvEXT_type: type count: count strings: strings [
	^ self ffiCall: #( GLuint glCreateShaderProgramvEXT ( GLenum type , GLsizei count , GLchar** strings ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createShaderProgramv_type: type count: count strings: strings [
	^ self ffiCall: #( GLuint glCreateShaderProgramv ( GLenum type , GLsizei count , GLchar** strings ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createStatesNV_n: n states: states [
	^ self ffiCall: #( void glCreateStatesNV ( GLsizei n , GLuint* states ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createSyncFromCLeventARB_context: context event: event flags: flags [
	^ self ffiCall: #( GLsync glCreateSyncFromCLeventARB ( struct _cl_context* context , struct _cl_event* event , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createTextures_target: target n: n textures: textures [
	^ self ffiCall: #( void glCreateTextures ( GLenum target , GLsizei n , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createTransformFeedbacks_n: n ids: ids [
	^ self ffiCall: #( void glCreateTransformFeedbacks ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> createVertexArrays_n: n arrays: arrays [
	^ self ffiCall: #( void glCreateVertexArrays ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> cullFace: mode [
	^ self ffiCall: #( void glCullFace ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> cullParameterdvEXT_pname: pname params: params [
	^ self ffiCall: #( void glCullParameterdvEXT ( GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> cullParameterfvEXT_pname: pname params: params [
	^ self ffiCall: #( void glCullParameterfvEXT ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> currentPaletteMatrixARB: index [
	^ self ffiCall: #( void glCurrentPaletteMatrixARB ( GLint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> currentPaletteMatrixOES: matrixpaletteindex [
	^ self ffiCall: #( void glCurrentPaletteMatrixOES ( GLuint matrixpaletteindex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageCallbackAMD_callback: callback userParam: userParam [
	^ self ffiCall: #( void glDebugMessageCallbackAMD ( GLDEBUGPROCAMD callback , void* userParam ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageCallbackARB_callback: callback userParam: userParam [
	^ self ffiCall: #( void glDebugMessageCallbackARB ( GLDEBUGPROCARB callback , void* userParam ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageCallbackKHR_callback: callback userParam: userParam [
	^ self ffiCall: #( void glDebugMessageCallbackKHR ( GLDEBUGPROCKHR callback , void* userParam ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageCallback_callback: callback userParam: userParam [
	^ self ffiCall: #( void glDebugMessageCallback ( GLDEBUGPROC callback , void* userParam ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageControlARB_source: source type: type severity: severity count: count ids: ids enabled: enabled [
	^ self ffiCall: #( void glDebugMessageControlARB ( GLenum source , GLenum type , GLenum severity , GLsizei count , GLuint* ids , GLboolean enabled ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageControlKHR_source: source type: type severity: severity count: count ids: ids enabled: enabled [
	^ self ffiCall: #( void glDebugMessageControlKHR ( GLenum source , GLenum type , GLenum severity , GLsizei count , GLuint* ids , GLboolean enabled ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageControl_source: source type: type severity: severity count: count ids: ids enabled: enabled [
	^ self ffiCall: #( void glDebugMessageControl ( GLenum source , GLenum type , GLenum severity , GLsizei count , GLuint* ids , GLboolean enabled ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageEnableAMD_category: category severity: severity count: count ids: ids enabled: enabled [
	^ self ffiCall: #( void glDebugMessageEnableAMD ( GLenum category , GLenum severity , GLsizei count , GLuint* ids , GLboolean enabled ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageInsertAMD_category: category severity: severity id: id length: length buf: buf [
	^ self ffiCall: #( void glDebugMessageInsertAMD ( GLenum category , GLenum severity , GLuint id , GLsizei length , GLchar* buf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageInsertARB_source: source type: type id: id severity: severity length: length buf: buf [
	^ self ffiCall: #( void glDebugMessageInsertARB ( GLenum source , GLenum type , GLuint id , GLenum severity , GLsizei length , GLchar* buf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageInsertKHR_source: source type: type id: id severity: severity length: length buf: buf [
	^ self ffiCall: #( void glDebugMessageInsertKHR ( GLenum source , GLenum type , GLuint id , GLenum severity , GLsizei length , GLchar* buf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> debugMessageInsert_source: source type: type id: id severity: severity length: length buf: buf [
	^ self ffiCall: #( void glDebugMessageInsert ( GLenum source , GLenum type , GLuint id , GLenum severity , GLsizei length , GLchar* buf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deformSGIX: mask [
	^ self ffiCall: #( void glDeformSGIX ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deformationMap3dSGIX_target: target u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder w1: w1 w2: w2 wstride: wstride worder: worder points: points [
	^ self ffiCall: #( void glDeformationMap3dSGIX ( GLenum target , GLdouble u1 , GLdouble u2 , GLint ustride , GLint uorder , GLdouble v1 , GLdouble v2 , GLint vstride , GLint vorder , GLdouble w1 , GLdouble w2 , GLint wstride , GLint worder , GLdouble* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deformationMap3fSGIX_target: target u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder w1: w1 w2: w2 wstride: wstride worder: worder points: points [
	^ self ffiCall: #( void glDeformationMap3fSGIX ( GLenum target , GLfloat u1 , GLfloat u2 , GLint ustride , GLint uorder , GLfloat v1 , GLfloat v2 , GLint vstride , GLint vorder , GLfloat w1 , GLfloat w2 , GLint wstride , GLint worder , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteAsyncMarkersSGIX_marker: marker range: range [
	^ self ffiCall: #( void glDeleteAsyncMarkersSGIX ( GLuint marker , GLsizei range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteBuffersARB_n: n buffers: buffers [
	^ self ffiCall: #( void glDeleteBuffersARB ( GLsizei n , GLuint* buffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteBuffers_n: n buffers: buffers [
	^ self ffiCall: #( void glDeleteBuffers ( GLsizei n , GLuint* buffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteCommandListsNV_n: n lists: lists [
	^ self ffiCall: #( void glDeleteCommandListsNV ( GLsizei n , GLuint* lists ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteFencesAPPLE_n: n fences: fences [
	^ self ffiCall: #( void glDeleteFencesAPPLE ( GLsizei n , GLuint* fences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteFencesNV_n: n fences: fences [
	^ self ffiCall: #( void glDeleteFencesNV ( GLsizei n , GLuint* fences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteFragmentShaderATI: id [
	^ self ffiCall: #( void glDeleteFragmentShaderATI ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteFramebuffersEXT_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glDeleteFramebuffersEXT ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteFramebuffersOES_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glDeleteFramebuffersOES ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteFramebuffers_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glDeleteFramebuffers ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteLists_list: list range: range [
	^ self ffiCall: #( void glDeleteLists ( GLuint list , GLsizei range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteNamedStringARB_namelen: namelen name: name [
	^ self ffiCall: #( void glDeleteNamedStringARB ( GLint namelen , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteNamesAMD_identifier: identifier num: num names: names [
	^ self ffiCall: #( void glDeleteNamesAMD ( GLenum identifier , GLuint num , GLuint* names ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteObjectARB: obj [
	^ self ffiCall: #( void glDeleteObjectARB ( GLhandleARB obj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteOcclusionQueriesNV_n: n ids: ids [
	^ self ffiCall: #( void glDeleteOcclusionQueriesNV ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deletePathsNV_path: path range: range [
	^ self ffiCall: #( void glDeletePathsNV ( GLuint path , GLsizei range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deletePerfMonitorsAMD_n: n monitors: monitors [
	^ self ffiCall: #( void glDeletePerfMonitorsAMD ( GLsizei n , GLuint* monitors ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deletePerfQueryINTEL: queryHandle [
	^ self ffiCall: #( void glDeletePerfQueryINTEL ( GLuint queryHandle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteProgram: program [
	^ self ffiCall: #( void glDeleteProgram ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteProgramPipelinesEXT_n: n pipelines: pipelines [
	^ self ffiCall: #( void glDeleteProgramPipelinesEXT ( GLsizei n , GLuint* pipelines ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteProgramPipelines_n: n pipelines: pipelines [
	^ self ffiCall: #( void glDeleteProgramPipelines ( GLsizei n , GLuint* pipelines ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteProgramsARB_n: n programs: programs [
	^ self ffiCall: #( void glDeleteProgramsARB ( GLsizei n , GLuint* programs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteProgramsNV_n: n programs: programs [
	^ self ffiCall: #( void glDeleteProgramsNV ( GLsizei n , GLuint* programs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteQueriesARB_n: n ids: ids [
	^ self ffiCall: #( void glDeleteQueriesARB ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteQueriesEXT_n: n ids: ids [
	^ self ffiCall: #( void glDeleteQueriesEXT ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteQueries_n: n ids: ids [
	^ self ffiCall: #( void glDeleteQueries ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteRenderbuffersEXT_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glDeleteRenderbuffersEXT ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteRenderbuffersOES_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glDeleteRenderbuffersOES ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteRenderbuffers_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glDeleteRenderbuffers ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteSamplers_count: count samplers: samplers [
	^ self ffiCall: #( void glDeleteSamplers ( GLsizei count , GLuint* samplers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteShader: shader [
	^ self ffiCall: #( void glDeleteShader ( GLuint shader ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteStatesNV_n: n states: states [
	^ self ffiCall: #( void glDeleteStatesNV ( GLsizei n , GLuint* states ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteSync: sync [
	^ self ffiCall: #( void glDeleteSync ( GLsync sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteSyncAPPLE: sync [
	^ self ffiCall: #( void glDeleteSyncAPPLE ( GLsync sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteTexturesEXT_n: n textures: textures [
	^ self ffiCall: #( void glDeleteTexturesEXT ( GLsizei n , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteTextures_n: n textures: textures [
	^ self ffiCall: #( void glDeleteTextures ( GLsizei n , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteTransformFeedbacksNV_n: n ids: ids [
	^ self ffiCall: #( void glDeleteTransformFeedbacksNV ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteTransformFeedbacks_n: n ids: ids [
	^ self ffiCall: #( void glDeleteTransformFeedbacks ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteVertexArraysAPPLE_n: n arrays: arrays [
	^ self ffiCall: #( void glDeleteVertexArraysAPPLE ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteVertexArraysOES_n: n arrays: arrays [
	^ self ffiCall: #( void glDeleteVertexArraysOES ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteVertexArrays_n: n arrays: arrays [
	^ self ffiCall: #( void glDeleteVertexArrays ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> deleteVertexShaderEXT: id [
	^ self ffiCall: #( void glDeleteVertexShaderEXT ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthBoundsEXT_zmin: zmin zmax: zmax [
	^ self ffiCall: #( void glDepthBoundsEXT ( GLclampd zmin , GLclampd zmax ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthBoundsdNV_zmin: zmin zmax: zmax [
	^ self ffiCall: #( void glDepthBoundsdNV ( GLdouble zmin , GLdouble zmax ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthFunc: func [
	^ self ffiCall: #( void glDepthFunc ( GLenum func ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthMask: flag [
	^ self ffiCall: #( void glDepthMask ( GLboolean flag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangeArrayfvNV_first: first count: count v: v [
	^ self ffiCall: #( void glDepthRangeArrayfvNV ( GLuint first , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangeArrayv_first: first count: count v: v [
	^ self ffiCall: #( void glDepthRangeArrayv ( GLuint first , GLsizei count , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangeIndexed_index: index n: n f: f [
	^ self ffiCall: #( void glDepthRangeIndexed ( GLuint index , GLdouble n , GLdouble f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangeIndexedfNV_index: index n: n f: f [
	^ self ffiCall: #( void glDepthRangeIndexedfNV ( GLuint index , GLfloat n , GLfloat f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRange_near: near far: far [
	^ self ffiCall: #( void glDepthRange ( GLdouble near , GLdouble far ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangedNV_zNear: zNear zFar: zFar [
	^ self ffiCall: #( void glDepthRangedNV ( GLdouble zNear , GLdouble zFar ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangefOES_n: n f: f [
	^ self ffiCall: #( void glDepthRangefOES ( GLclampf n , GLclampf f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangef_n: n f: f [
	^ self ffiCall: #( void glDepthRangef ( GLfloat n , GLfloat f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangexOES_n: n f: f [
	^ self ffiCall: #( void glDepthRangexOES ( GLfixed n , GLfixed f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> depthRangex_n: n f: f [
	^ self ffiCall: #( void glDepthRangex ( GLfixed n , GLfixed f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> detachObjectARB_containerObj: containerObj attachedObj: attachedObj [
	^ self ffiCall: #( void glDetachObjectARB ( GLhandleARB containerObj , GLhandleARB attachedObj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> detachShader_program: program shader: shader [
	^ self ffiCall: #( void glDetachShader ( GLuint program , GLuint shader ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> detailTexFuncSGIS_target: target n: n points: points [
	^ self ffiCall: #( void glDetailTexFuncSGIS ( GLenum target , GLsizei n , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disable: cap [
	^ self ffiCall: #( void glDisable ( GLenum cap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableClientState: array [
	^ self ffiCall: #( void glDisableClientState ( GLenum array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableClientStateIndexedEXT_array: array index: index [
	^ self ffiCall: #( void glDisableClientStateIndexedEXT ( GLenum array , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableClientStateiEXT_array: array index: index [
	^ self ffiCall: #( void glDisableClientStateiEXT ( GLenum array , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableDriverControlQCOM: driverControl [
	^ self ffiCall: #( void glDisableDriverControlQCOM ( GLuint driverControl ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableIndexedEXT_target: target index: index [
	^ self ffiCall: #( void glDisableIndexedEXT ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVariantClientStateEXT: id [
	^ self ffiCall: #( void glDisableVariantClientStateEXT ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVertexArrayAttribEXT_vaobj: vaobj index: index [
	^ self ffiCall: #( void glDisableVertexArrayAttribEXT ( GLuint vaobj , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVertexArrayAttrib_vaobj: vaobj index: index [
	^ self ffiCall: #( void glDisableVertexArrayAttrib ( GLuint vaobj , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVertexArrayEXT_vaobj: vaobj array: array [
	^ self ffiCall: #( void glDisableVertexArrayEXT ( GLuint vaobj , GLenum array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVertexAttribAPPLE_index: index pname: pname [
	^ self ffiCall: #( void glDisableVertexAttribAPPLE ( GLuint index , GLenum pname ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVertexAttribArray: index [
	^ self ffiCall: #( void glDisableVertexAttribArray ( GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableVertexAttribArrayARB: index [
	^ self ffiCall: #( void glDisableVertexAttribArrayARB ( GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableiEXT_target: target index: index [
	^ self ffiCall: #( void glDisableiEXT ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableiNV_target: target index: index [
	^ self ffiCall: #( void glDisableiNV ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disableiOES_target: target index: index [
	^ self ffiCall: #( void glDisableiOES ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> disablei_target: target index: index [
	^ self ffiCall: #( void glDisablei ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> discardFramebufferEXT_target: target numAttachments: numAttachments attachments: attachments [
	^ self ffiCall: #( void glDiscardFramebufferEXT ( GLenum target , GLsizei numAttachments , GLenum* attachments ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> dispatchComputeGroupSizeARB_num_groups_x: num_groups_x num_groups_y: num_groups_y num_groups_z: num_groups_z group_size_x: group_size_x group_size_y: group_size_y group_size_z: group_size_z [
	^ self ffiCall: #( void glDispatchComputeGroupSizeARB ( GLuint num_groups_x , GLuint num_groups_y , GLuint num_groups_z , GLuint group_size_x , GLuint group_size_y , GLuint group_size_z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> dispatchComputeIndirect: indirect [
	^ self ffiCall: #( void glDispatchComputeIndirect ( GLintptr indirect ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> dispatchCompute_num_groups_x: num_groups_x num_groups_y: num_groups_y num_groups_z: num_groups_z [
	^ self ffiCall: #( void glDispatchCompute ( GLuint num_groups_x , GLuint num_groups_y , GLuint num_groups_z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysEXT_mode: mode first: first count: count [
	^ self ffiCall: #( void glDrawArraysEXT ( GLenum mode , GLint first , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysIndirect_mode: mode indirect: indirect [
	^ self ffiCall: #( void glDrawArraysIndirect ( GLenum mode , void* indirect ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstancedANGLE_mode: mode first: first count: count primcount: primcount [
	^ self ffiCall: #( void glDrawArraysInstancedANGLE ( GLenum mode , GLint first , GLsizei count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstancedARB_mode: mode first: first count: count primcount: primcount [
	^ self ffiCall: #( void glDrawArraysInstancedARB ( GLenum mode , GLint first , GLsizei count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstancedBaseInstanceEXT_mode: mode first: first count: count instancecount: instancecount baseinstance: baseinstance [
	^ self ffiCall: #( void glDrawArraysInstancedBaseInstanceEXT ( GLenum mode , GLint first , GLsizei count , GLsizei instancecount , GLuint baseinstance ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstancedBaseInstance_mode: mode first: first count: count instancecount: instancecount baseinstance: baseinstance [
	^ self ffiCall: #( void glDrawArraysInstancedBaseInstance ( GLenum mode , GLint first , GLsizei count , GLsizei instancecount , GLuint baseinstance ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstancedEXT_mode: mode start: start count: count primcount: primcount [
	^ self ffiCall: #( void glDrawArraysInstancedEXT ( GLenum mode , GLint start , GLsizei count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstancedNV_mode: mode first: first count: count primcount: primcount [
	^ self ffiCall: #( void glDrawArraysInstancedNV ( GLenum mode , GLint first , GLsizei count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArraysInstanced_mode: mode first: first count: count instancecount: instancecount [
	^ self ffiCall: #( void glDrawArraysInstanced ( GLenum mode , GLint first , GLsizei count , GLsizei instancecount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawArrays_mode: mode first: first count: count [
	^ self ffiCall: #( void glDrawArrays ( GLenum mode , GLint first , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffer: buf [
	^ self ffiCall: #( void glDrawBuffer ( GLenum buf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffersARB_n: n bufs: bufs [
	^ self ffiCall: #( void glDrawBuffersARB ( GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffersATI_n: n bufs: bufs [
	^ self ffiCall: #( void glDrawBuffersATI ( GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffersEXT_n: n bufs: bufs [
	^ self ffiCall: #( void glDrawBuffersEXT ( GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffersIndexedEXT_n: n location: location indices: indices [
	^ self ffiCall: #( void glDrawBuffersIndexedEXT ( GLint n , GLenum* location , GLint* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffersNV_n: n bufs: bufs [
	^ self ffiCall: #( void glDrawBuffersNV ( GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawBuffers_n: n bufs: bufs [
	^ self ffiCall: #( void glDrawBuffers ( GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawCommandsAddressNV_primitiveMode: primitiveMode indirects: indirects sizes: sizes count: count [
	^ self ffiCall: #( void glDrawCommandsAddressNV ( GLenum primitiveMode , GLuint64* indirects , GLsizei* sizes , GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawCommandsNV_primitiveMode: primitiveMode buffer: buffer indirects: indirects sizes: sizes count: count [
	^ self ffiCall: #( void glDrawCommandsNV ( GLenum primitiveMode , GLuint buffer , GLintptr* indirects , GLsizei* sizes , GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawCommandsStatesAddressNV_indirects: indirects sizes: sizes states: states fbos: fbos count: count [
	^ self ffiCall: #( void glDrawCommandsStatesAddressNV ( GLuint64* indirects , GLsizei* sizes , GLuint* states , GLuint* fbos , GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawCommandsStatesNV_buffer: buffer indirects: indirects sizes: sizes states: states fbos: fbos count: count [
	^ self ffiCall: #( void glDrawCommandsStatesNV ( GLuint buffer , GLintptr* indirects , GLsizei* sizes , GLuint* states , GLuint* fbos , GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementArrayAPPLE_mode: mode first: first count: count [
	^ self ffiCall: #( void glDrawElementArrayAPPLE ( GLenum mode , GLint first , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementArrayATI_mode: mode count: count [
	^ self ffiCall: #( void glDrawElementArrayATI ( GLenum mode , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsBaseVertexEXT_mode: mode count: count type: type indices: indices basevertex: basevertex [
	^ self ffiCall: #( void glDrawElementsBaseVertexEXT ( GLenum mode , GLsizei count , GLenum type , void* indices , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsBaseVertexOES_mode: mode count: count type: type indices: indices basevertex: basevertex [
	^ self ffiCall: #( void glDrawElementsBaseVertexOES ( GLenum mode , GLsizei count , GLenum type , void* indices , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsBaseVertex_mode: mode count: count type: type indices: indices basevertex: basevertex [
	^ self ffiCall: #( void glDrawElementsBaseVertex ( GLenum mode , GLsizei count , GLenum type , void* indices , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsIndirect_mode: mode type: type indirect: indirect [
	^ self ffiCall: #( void glDrawElementsIndirect ( GLenum mode , GLenum type , void* indirect ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedANGLE_mode: mode count: count type: type indices: indices primcount: primcount [
	^ self ffiCall: #( void glDrawElementsInstancedANGLE ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedARB_mode: mode count: count type: type indices: indices primcount: primcount [
	^ self ffiCall: #( void glDrawElementsInstancedARB ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseInstanceEXT_mode: mode count: count type: type indices: indices instancecount: instancecount baseinstance: baseinstance [
	^ self ffiCall: #( void glDrawElementsInstancedBaseInstanceEXT ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLuint baseinstance ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseInstance_mode: mode count: count type: type indices: indices instancecount: instancecount baseinstance: baseinstance [
	^ self ffiCall: #( void glDrawElementsInstancedBaseInstance ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLuint baseinstance ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseVertexBaseInstanceEXT_mode: mode count: count type: type indices: indices instancecount: instancecount basevertex: basevertex baseinstance: baseinstance [
	^ self ffiCall: #( void glDrawElementsInstancedBaseVertexBaseInstanceEXT ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLint basevertex , GLuint baseinstance ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseVertexBaseInstance_mode: mode count: count type: type indices: indices instancecount: instancecount basevertex: basevertex baseinstance: baseinstance [
	^ self ffiCall: #( void glDrawElementsInstancedBaseVertexBaseInstance ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLint basevertex , GLuint baseinstance ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseVertexEXT_mode: mode count: count type: type indices: indices instancecount: instancecount basevertex: basevertex [
	^ self ffiCall: #( void glDrawElementsInstancedBaseVertexEXT ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseVertexOES_mode: mode count: count type: type indices: indices instancecount: instancecount basevertex: basevertex [
	^ self ffiCall: #( void glDrawElementsInstancedBaseVertexOES ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedBaseVertex_mode: mode count: count type: type indices: indices instancecount: instancecount basevertex: basevertex [
	^ self ffiCall: #( void glDrawElementsInstancedBaseVertex ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedEXT_mode: mode count: count type: type indices: indices primcount: primcount [
	^ self ffiCall: #( void glDrawElementsInstancedEXT ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstancedNV_mode: mode count: count type: type indices: indices primcount: primcount [
	^ self ffiCall: #( void glDrawElementsInstancedNV ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElementsInstanced_mode: mode count: count type: type indices: indices instancecount: instancecount [
	^ self ffiCall: #( void glDrawElementsInstanced ( GLenum mode , GLsizei count , GLenum type , void* indices , GLsizei instancecount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawElements_mode: mode count: count type: type indices: indices [
	^ self ffiCall: #( void glDrawElements ( GLenum mode , GLsizei count , GLenum type , void* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawMeshArraysSUN_mode: mode first: first count: count width: width [
	^ self ffiCall: #( void glDrawMeshArraysSUN ( GLenum mode , GLint first , GLsizei count , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawPixels_width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glDrawPixels ( GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElementArrayAPPLE_mode: mode start: start end: end first: first count: count [
	^ self ffiCall: #( void glDrawRangeElementArrayAPPLE ( GLenum mode , GLuint start , GLuint end , GLint first , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElementArrayATI_mode: mode start: start end: end count: count [
	^ self ffiCall: #( void glDrawRangeElementArrayATI ( GLenum mode , GLuint start , GLuint end , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElementsBaseVertexEXT_mode: mode start: start end: end count: count type: type indices: indices basevertex: basevertex [
	^ self ffiCall: #( void glDrawRangeElementsBaseVertexEXT ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , void* indices , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElementsBaseVertexOES_mode: mode start: start end: end count: count type: type indices: indices basevertex: basevertex [
	^ self ffiCall: #( void glDrawRangeElementsBaseVertexOES ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , void* indices , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElementsBaseVertex_mode: mode start: start end: end count: count type: type indices: indices basevertex: basevertex [
	^ self ffiCall: #( void glDrawRangeElementsBaseVertex ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , void* indices , GLint basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElementsEXT_mode: mode start: start end: end count: count type: type indices: indices [
	^ self ffiCall: #( void glDrawRangeElementsEXT ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , void* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawRangeElements_mode: mode start: start end: end count: count type: type indices: indices [
	^ self ffiCall: #( void glDrawRangeElements ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , void* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexfOES_x: x y: y z: z width: width height: height [
	^ self ffiCall: #( void glDrawTexfOES ( GLfloat x , GLfloat y , GLfloat z , GLfloat width , GLfloat height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexfvOES: coords [
	^ self ffiCall: #( void glDrawTexfvOES ( GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexiOES_x: x y: y z: z width: width height: height [
	^ self ffiCall: #( void glDrawTexiOES ( GLint x , GLint y , GLint z , GLint width , GLint height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexivOES: coords [
	^ self ffiCall: #( void glDrawTexivOES ( GLint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexsOES_x: x y: y z: z width: width height: height [
	^ self ffiCall: #( void glDrawTexsOES ( GLshort x , GLshort y , GLshort z , GLshort width , GLshort height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexsvOES: coords [
	^ self ffiCall: #( void glDrawTexsvOES ( GLshort* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTextureNV_texture: texture sampler: sampler x0: x0 y0: y0 x1: x1 y1: y1 z: z s0: s0 t0: t0 s1: s1 t1: t1 [
	^ self ffiCall: #( void glDrawTextureNV ( GLuint texture , GLuint sampler , GLfloat x0 , GLfloat y0 , GLfloat x1 , GLfloat y1 , GLfloat z , GLfloat s0 , GLfloat t0 , GLfloat s1 , GLfloat t1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexxOES_x: x y: y z: z width: width height: height [
	^ self ffiCall: #( void glDrawTexxOES ( GLfixed x , GLfixed y , GLfixed z , GLfixed width , GLfixed height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTexxvOES: coords [
	^ self ffiCall: #( void glDrawTexxvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTransformFeedbackInstanced_mode: mode id: id instancecount: instancecount [
	^ self ffiCall: #( void glDrawTransformFeedbackInstanced ( GLenum mode , GLuint id , GLsizei instancecount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTransformFeedbackNV_mode: mode id: id [
	^ self ffiCall: #( void glDrawTransformFeedbackNV ( GLenum mode , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTransformFeedbackStreamInstanced_mode: mode id: id stream: stream instancecount: instancecount [
	^ self ffiCall: #( void glDrawTransformFeedbackStreamInstanced ( GLenum mode , GLuint id , GLuint stream , GLsizei instancecount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTransformFeedbackStream_mode: mode id: id stream: stream [
	^ self ffiCall: #( void glDrawTransformFeedbackStream ( GLenum mode , GLuint id , GLuint stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> drawTransformFeedback_mode: mode id: id [
	^ self ffiCall: #( void glDrawTransformFeedback ( GLenum mode , GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> eGLImageTargetRenderbufferStorageOES_target: target image: image [
	^ self ffiCall: #( void glEGLImageTargetRenderbufferStorageOES ( GLenum target , GLeglImageOES image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> eGLImageTargetTexture2DOES_target: target image: image [
	^ self ffiCall: #( void glEGLImageTargetTexture2DOES ( GLenum target , GLeglImageOES image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> edgeFlag: flag [
	^ self ffiCall: #( void glEdgeFlag ( GLboolean flag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> edgeFlagFormatNV: stride [
	^ self ffiCall: #( void glEdgeFlagFormatNV ( GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> edgeFlagPointerEXT_stride: stride count: count pointer: pointer [
	^ self ffiCall: #( void glEdgeFlagPointerEXT ( GLsizei stride , GLsizei count , GLboolean* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> edgeFlagPointerListIBM_stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glEdgeFlagPointerListIBM ( GLint stride , GLboolean** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> edgeFlagPointer_stride: stride pointer: pointer [
	^ self ffiCall: #( void glEdgeFlagPointer ( GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> edgeFlagv: flag [
	^ self ffiCall: #( void glEdgeFlagv ( GLboolean* flag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> elementPointerAPPLE_type: type pointer: pointer [
	^ self ffiCall: #( void glElementPointerAPPLE ( GLenum type , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> elementPointerATI_type: type pointer: pointer [
	^ self ffiCall: #( void glElementPointerATI ( GLenum type , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enable: cap [
	^ self ffiCall: #( void glEnable ( GLenum cap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableClientState: array [
	^ self ffiCall: #( void glEnableClientState ( GLenum array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableClientStateIndexedEXT_array: array index: index [
	^ self ffiCall: #( void glEnableClientStateIndexedEXT ( GLenum array , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableClientStateiEXT_array: array index: index [
	^ self ffiCall: #( void glEnableClientStateiEXT ( GLenum array , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableDriverControlQCOM: driverControl [
	^ self ffiCall: #( void glEnableDriverControlQCOM ( GLuint driverControl ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableIndexedEXT_target: target index: index [
	^ self ffiCall: #( void glEnableIndexedEXT ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVariantClientStateEXT: id [
	^ self ffiCall: #( void glEnableVariantClientStateEXT ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVertexArrayAttribEXT_vaobj: vaobj index: index [
	^ self ffiCall: #( void glEnableVertexArrayAttribEXT ( GLuint vaobj , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVertexArrayAttrib_vaobj: vaobj index: index [
	^ self ffiCall: #( void glEnableVertexArrayAttrib ( GLuint vaobj , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVertexArrayEXT_vaobj: vaobj array: array [
	^ self ffiCall: #( void glEnableVertexArrayEXT ( GLuint vaobj , GLenum array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVertexAttribAPPLE_index: index pname: pname [
	^ self ffiCall: #( void glEnableVertexAttribAPPLE ( GLuint index , GLenum pname ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVertexAttribArray: index [
	^ self ffiCall: #( void glEnableVertexAttribArray ( GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableVertexAttribArrayARB: index [
	^ self ffiCall: #( void glEnableVertexAttribArrayARB ( GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableiEXT_target: target index: index [
	^ self ffiCall: #( void glEnableiEXT ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableiNV_target: target index: index [
	^ self ffiCall: #( void glEnableiNV ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enableiOES_target: target index: index [
	^ self ffiCall: #( void glEnableiOES ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> enablei_target: target index: index [
	^ self ffiCall: #( void glEnablei ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> end [
	^ self ffiCall: #( void glEnd ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endConditionalRender [
	^ self ffiCall: #( void glEndConditionalRender ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endConditionalRenderNV [
	^ self ffiCall: #( void glEndConditionalRenderNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endConditionalRenderNVX [
	^ self ffiCall: #( void glEndConditionalRenderNVX ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endFragmentShaderATI [
	^ self ffiCall: #( void glEndFragmentShaderATI ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endList [
	^ self ffiCall: #( void glEndList ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endOcclusionQueryNV [
	^ self ffiCall: #( void glEndOcclusionQueryNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endPerfMonitorAMD: monitor [
	^ self ffiCall: #( void glEndPerfMonitorAMD ( GLuint monitor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endPerfQueryINTEL: queryHandle [
	^ self ffiCall: #( void glEndPerfQueryINTEL ( GLuint queryHandle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endQuery: target [
	^ self ffiCall: #( void glEndQuery ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endQueryARB: target [
	^ self ffiCall: #( void glEndQueryARB ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endQueryEXT: target [
	^ self ffiCall: #( void glEndQueryEXT ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endQueryIndexed_target: target index: index [
	^ self ffiCall: #( void glEndQueryIndexed ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endTilingQCOM: preserveMask [
	^ self ffiCall: #( void glEndTilingQCOM ( GLbitfield preserveMask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endTransformFeedback [
	^ self ffiCall: #( void glEndTransformFeedback ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endTransformFeedbackEXT [
	^ self ffiCall: #( void glEndTransformFeedbackEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endTransformFeedbackNV [
	^ self ffiCall: #( void glEndTransformFeedbackNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endVertexShaderEXT [
	^ self ffiCall: #( void glEndVertexShaderEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> endVideoCaptureNV: video_capture_slot [
	^ self ffiCall: #( void glEndVideoCaptureNV ( GLuint video_capture_slot ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord1d: u [
	^ self ffiCall: #( void glEvalCoord1d ( GLdouble u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord1dv: u [
	^ self ffiCall: #( void glEvalCoord1dv ( GLdouble* u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord1f: u [
	^ self ffiCall: #( void glEvalCoord1f ( GLfloat u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord1fv: u [
	^ self ffiCall: #( void glEvalCoord1fv ( GLfloat* u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord1xOES: u [
	^ self ffiCall: #( void glEvalCoord1xOES ( GLfixed u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord1xvOES: coords [
	^ self ffiCall: #( void glEvalCoord1xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord2d_u: u v: v [
	^ self ffiCall: #( void glEvalCoord2d ( GLdouble u , GLdouble v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord2dv: u [
	^ self ffiCall: #( void glEvalCoord2dv ( GLdouble* u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord2f_u: u v: v [
	^ self ffiCall: #( void glEvalCoord2f ( GLfloat u , GLfloat v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord2fv: u [
	^ self ffiCall: #( void glEvalCoord2fv ( GLfloat* u ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord2xOES_u: u v: v [
	^ self ffiCall: #( void glEvalCoord2xOES ( GLfixed u , GLfixed v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalCoord2xvOES: coords [
	^ self ffiCall: #( void glEvalCoord2xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalMapsNV_target: target mode: mode [
	^ self ffiCall: #( void glEvalMapsNV ( GLenum target , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalMesh1_mode: mode i1: i1 i2: i2 [
	^ self ffiCall: #( void glEvalMesh1 ( GLenum mode , GLint i1 , GLint i2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalMesh2_mode: mode i1: i1 i2: i2 j1: j1 j2: j2 [
	^ self ffiCall: #( void glEvalMesh2 ( GLenum mode , GLint i1 , GLint i2 , GLint j1 , GLint j2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalPoint1: i [
	^ self ffiCall: #( void glEvalPoint1 ( GLint i ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evalPoint2_i: i j: j [
	^ self ffiCall: #( void glEvalPoint2 ( GLint i , GLint j ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> evaluateDepthValuesARB [
	^ self ffiCall: #( void glEvaluateDepthValuesARB ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> executeProgramNV_target: target id: id params: params [
	^ self ffiCall: #( void glExecuteProgramNV ( GLenum target , GLuint id , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetBufferPointervQCOM_target: target params: params [
	^ self ffiCall: #( void glExtGetBufferPointervQCOM ( GLenum target , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetBuffersQCOM_buffers: buffers maxBuffers: maxBuffers numBuffers: numBuffers [
	^ self ffiCall: #( void glExtGetBuffersQCOM ( GLuint* buffers , GLint maxBuffers , GLint* numBuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetFramebuffersQCOM_framebuffers: framebuffers maxFramebuffers: maxFramebuffers numFramebuffers: numFramebuffers [
	^ self ffiCall: #( void glExtGetFramebuffersQCOM ( GLuint* framebuffers , GLint maxFramebuffers , GLint* numFramebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetProgramBinarySourceQCOM_program: program shadertype: shadertype source: source length: length [
	^ self ffiCall: #( void glExtGetProgramBinarySourceQCOM ( GLuint program , GLenum shadertype , GLchar* source , GLint* length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetProgramsQCOM_programs: programs maxPrograms: maxPrograms numPrograms: numPrograms [
	^ self ffiCall: #( void glExtGetProgramsQCOM ( GLuint* programs , GLint maxPrograms , GLint* numPrograms ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetRenderbuffersQCOM_renderbuffers: renderbuffers maxRenderbuffers: maxRenderbuffers numRenderbuffers: numRenderbuffers [
	^ self ffiCall: #( void glExtGetRenderbuffersQCOM ( GLuint* renderbuffers , GLint maxRenderbuffers , GLint* numRenderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetShadersQCOM_shaders: shaders maxShaders: maxShaders numShaders: numShaders [
	^ self ffiCall: #( void glExtGetShadersQCOM ( GLuint* shaders , GLint maxShaders , GLint* numShaders ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetTexLevelParameterivQCOM_texture: texture face: face level: level pname: pname params: params [
	^ self ffiCall: #( void glExtGetTexLevelParameterivQCOM ( GLuint texture , GLenum face , GLint level , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetTexSubImageQCOM_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type texels: texels [
	^ self ffiCall: #( void glExtGetTexSubImageQCOM ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* texels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extGetTexturesQCOM_textures: textures maxTextures: maxTextures numTextures: numTextures [
	^ self ffiCall: #( void glExtGetTexturesQCOM ( GLuint* textures , GLint maxTextures , GLint* numTextures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extIsProgramBinaryQCOM: program [
	^ self ffiCall: #( GLboolean glExtIsProgramBinaryQCOM ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extTexObjectStateOverrideiQCOM_target: target pname: pname param: param [
	^ self ffiCall: #( void glExtTexObjectStateOverrideiQCOM ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> extractComponentEXT_res: res src: src num: num [
	^ self ffiCall: #( void glExtractComponentEXT ( GLuint res , GLuint src , GLuint num ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> feedbackBuffer_size: size type: type buffer: buffer [
	^ self ffiCall: #( void glFeedbackBuffer ( GLsizei size , GLenum type , GLfloat* buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> feedbackBufferxOES_n: n type: type buffer: buffer [
	^ self ffiCall: #( void glFeedbackBufferxOES ( GLsizei n , GLenum type , GLfixed* buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fenceSyncAPPLE_condition: condition flags: flags [
	^ self ffiCall: #( GLsync glFenceSyncAPPLE ( GLenum condition , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fenceSync_condition: condition flags: flags [
	^ self ffiCall: #( GLsync glFenceSync ( GLenum condition , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #accessing }
GlutinOpenGL >> ffiCalloutIn: aContext [
	^ (GlutinOpenGLCalloutApi inContext: aContext) gl: self
]

{ #category : #'library path' }
GlutinOpenGL >> ffiLibraryName [
	^ 'dummy'
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finalCombinerInputNV_variable: variable input: input mapping: mapping componentUsage: componentUsage [
	^ self ffiCall: #( void glFinalCombinerInputNV ( GLenum variable , GLenum input , GLenum mapping , GLenum componentUsage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finish [
	^ self ffiCall: #( void glFinish ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finishAsyncSGIX: markerp [
	^ self ffiCall: #( GLint glFinishAsyncSGIX ( GLuint* markerp ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finishFenceAPPLE: fence [
	^ self ffiCall: #( void glFinishFenceAPPLE ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finishFenceNV: fence [
	^ self ffiCall: #( void glFinishFenceNV ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finishObjectAPPLE_object: object name: name [
	^ self ffiCall: #( void glFinishObjectAPPLE ( GLenum object , GLint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> finishTextureSUNX [
	^ self ffiCall: #( void glFinishTextureSUNX ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flush [
	^ self ffiCall: #( void glFlush ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushMappedBufferRangeAPPLE_target: target offset: offset size: size [
	^ self ffiCall: #( void glFlushMappedBufferRangeAPPLE ( GLenum target , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushMappedBufferRangeEXT_target: target offset: offset length: length [
	^ self ffiCall: #( void glFlushMappedBufferRangeEXT ( GLenum target , GLintptr offset , GLsizeiptr length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushMappedBufferRange_target: target offset: offset length: length [
	^ self ffiCall: #( void glFlushMappedBufferRange ( GLenum target , GLintptr offset , GLsizeiptr length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushMappedNamedBufferRangeEXT_buffer: buffer offset: offset length: length [
	^ self ffiCall: #( void glFlushMappedNamedBufferRangeEXT ( GLuint buffer , GLintptr offset , GLsizeiptr length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushMappedNamedBufferRange_buffer: buffer offset: offset length: length [
	^ self ffiCall: #( void glFlushMappedNamedBufferRange ( GLuint buffer , GLintptr offset , GLsizeiptr length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushPixelDataRangeNV: target [
	^ self ffiCall: #( void glFlushPixelDataRangeNV ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushRasterSGIX [
	^ self ffiCall: #( void glFlushRasterSGIX ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushStaticDataIBM: target [
	^ self ffiCall: #( void glFlushStaticDataIBM ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushVertexArrayRangeAPPLE_length: length pointer: pointer [
	^ self ffiCall: #( void glFlushVertexArrayRangeAPPLE ( GLsizei length , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> flushVertexArrayRangeNV [
	^ self ffiCall: #( void glFlushVertexArrayRangeNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordFormatNV_type: type stride: stride [
	^ self ffiCall: #( void glFogCoordFormatNV ( GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordPointerEXT_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glFogCoordPointerEXT ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordPointerListIBM_type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glFogCoordPointerListIBM ( GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordPointer_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glFogCoordPointer ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordd: coord [
	^ self ffiCall: #( void glFogCoordd ( GLdouble coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoorddEXT: coord [
	^ self ffiCall: #( void glFogCoorddEXT ( GLdouble coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoorddv: coord [
	^ self ffiCall: #( void glFogCoorddv ( GLdouble* coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoorddvEXT: coord [
	^ self ffiCall: #( void glFogCoorddvEXT ( GLdouble* coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordf: coord [
	^ self ffiCall: #( void glFogCoordf ( GLfloat coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordfEXT: coord [
	^ self ffiCall: #( void glFogCoordfEXT ( GLfloat coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordfv: coord [
	^ self ffiCall: #( void glFogCoordfv ( GLfloat* coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordfvEXT: coord [
	^ self ffiCall: #( void glFogCoordfvEXT ( GLfloat* coord ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordhNV: fog [
	^ self ffiCall: #( void glFogCoordhNV ( GLhalfNV fog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogCoordhvNV: fog [
	^ self ffiCall: #( void glFogCoordhvNV ( GLhalfNV* fog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogFuncSGIS_n: n points: points [
	^ self ffiCall: #( void glFogFuncSGIS ( GLsizei n , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogf_pname: pname param: param [
	^ self ffiCall: #( void glFogf ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogfv_pname: pname params: params [
	^ self ffiCall: #( void glFogfv ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogi_pname: pname param: param [
	^ self ffiCall: #( void glFogi ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogiv_pname: pname params: params [
	^ self ffiCall: #( void glFogiv ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogxOES_pname: pname param: param [
	^ self ffiCall: #( void glFogxOES ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogx_pname: pname param: param [
	^ self ffiCall: #( void glFogx ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogxvOES_pname: pname param: param [
	^ self ffiCall: #( void glFogxvOES ( GLenum pname , GLfixed* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fogxv_pname: pname param: param [
	^ self ffiCall: #( void glFogxv ( GLenum pname , GLfixed* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentColorMaterialSGIX_face: face mode: mode [
	^ self ffiCall: #( void glFragmentColorMaterialSGIX ( GLenum face , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentCoverageColorNV: color [
	^ self ffiCall: #( void glFragmentCoverageColorNV ( GLuint color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightModelfSGIX_pname: pname param: param [
	^ self ffiCall: #( void glFragmentLightModelfSGIX ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightModelfvSGIX_pname: pname params: params [
	^ self ffiCall: #( void glFragmentLightModelfvSGIX ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightModeliSGIX_pname: pname param: param [
	^ self ffiCall: #( void glFragmentLightModeliSGIX ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightModelivSGIX_pname: pname params: params [
	^ self ffiCall: #( void glFragmentLightModelivSGIX ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightfSGIX_light: light pname: pname param: param [
	^ self ffiCall: #( void glFragmentLightfSGIX ( GLenum light , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightfvSGIX_light: light pname: pname params: params [
	^ self ffiCall: #( void glFragmentLightfvSGIX ( GLenum light , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightiSGIX_light: light pname: pname param: param [
	^ self ffiCall: #( void glFragmentLightiSGIX ( GLenum light , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentLightivSGIX_light: light pname: pname params: params [
	^ self ffiCall: #( void glFragmentLightivSGIX ( GLenum light , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentMaterialfSGIX_face: face pname: pname param: param [
	^ self ffiCall: #( void glFragmentMaterialfSGIX ( GLenum face , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentMaterialfvSGIX_face: face pname: pname params: params [
	^ self ffiCall: #( void glFragmentMaterialfvSGIX ( GLenum face , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentMaterialiSGIX_face: face pname: pname param: param [
	^ self ffiCall: #( void glFragmentMaterialiSGIX ( GLenum face , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> fragmentMaterialivSGIX_face: face pname: pname params: params [
	^ self ffiCall: #( void glFragmentMaterialivSGIX ( GLenum face , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frameTerminatorGREMEDY [
	^ self ffiCall: #( void glFrameTerminatorGREMEDY ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frameZoomSGIX: factor [
	^ self ffiCall: #( void glFrameZoomSGIX ( GLint factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferDrawBufferEXT_framebuffer: framebuffer mode: mode [
	^ self ffiCall: #( void glFramebufferDrawBufferEXT ( GLuint framebuffer , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferDrawBuffersEXT_framebuffer: framebuffer n: n bufs: bufs [
	^ self ffiCall: #( void glFramebufferDrawBuffersEXT ( GLuint framebuffer , GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferParameteri_target: target pname: pname param: param [
	^ self ffiCall: #( void glFramebufferParameteri ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferPixelLocalStorageSizeEXT_target: target size: size [
	^ self ffiCall: #( void glFramebufferPixelLocalStorageSizeEXT ( GLuint target , GLsizei size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferReadBufferEXT_framebuffer: framebuffer mode: mode [
	^ self ffiCall: #( void glFramebufferReadBufferEXT ( GLuint framebuffer , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferRenderbufferEXT_target: target attachment: attachment renderbuffertarget: renderbuffertarget renderbuffer: renderbuffer [
	^ self ffiCall: #( void glFramebufferRenderbufferEXT ( GLenum target , GLenum attachment , GLenum renderbuffertarget , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferRenderbufferOES_target: target attachment: attachment renderbuffertarget: renderbuffertarget renderbuffer: renderbuffer [
	^ self ffiCall: #( void glFramebufferRenderbufferOES ( GLenum target , GLenum attachment , GLenum renderbuffertarget , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferRenderbuffer_target: target attachment: attachment renderbuffertarget: renderbuffertarget renderbuffer: renderbuffer [
	^ self ffiCall: #( void glFramebufferRenderbuffer ( GLenum target , GLenum attachment , GLenum renderbuffertarget , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferSampleLocationsfvARB_target: target start: start count: count v: v [
	^ self ffiCall: #( void glFramebufferSampleLocationsfvARB ( GLenum target , GLuint start , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferSampleLocationsfvNV_target: target start: start count: count v: v [
	^ self ffiCall: #( void glFramebufferSampleLocationsfvNV ( GLenum target , GLuint start , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture1DEXT_target: target attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTexture1DEXT ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture1D_target: target attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTexture1D ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture2DDownsampleIMG_target: target attachment: attachment textarget: textarget texture: texture level: level xscale: xscale yscale: yscale [
	^ self ffiCall: #( void glFramebufferTexture2DDownsampleIMG ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLint xscale , GLint yscale ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture2DEXT_target: target attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTexture2DEXT ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture2DMultisampleEXT_target: target attachment: attachment textarget: textarget texture: texture level: level samples: samples [
	^ self ffiCall: #( void glFramebufferTexture2DMultisampleEXT ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLsizei samples ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture2DMultisampleIMG_target: target attachment: attachment textarget: textarget texture: texture level: level samples: samples [
	^ self ffiCall: #( void glFramebufferTexture2DMultisampleIMG ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLsizei samples ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture2DOES_target: target attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTexture2DOES ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture2D_target: target attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTexture2D ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture3DEXT_target: target attachment: attachment textarget: textarget texture: texture level: level zoffset: zoffset [
	^ self ffiCall: #( void glFramebufferTexture3DEXT ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLint zoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture3DOES_target: target attachment: attachment textarget: textarget texture: texture level: level zoffset: zoffset [
	^ self ffiCall: #( void glFramebufferTexture3DOES ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLint zoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture3D_target: target attachment: attachment textarget: textarget texture: texture level: level zoffset: zoffset [
	^ self ffiCall: #( void glFramebufferTexture3D ( GLenum target , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLint zoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureARB_target: target attachment: attachment texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTextureARB ( GLenum target , GLenum attachment , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureEXT_target: target attachment: attachment texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTextureEXT ( GLenum target , GLenum attachment , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureFaceARB_target: target attachment: attachment texture: texture level: level face: face [
	^ self ffiCall: #( void glFramebufferTextureFaceARB ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLenum face ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureFaceEXT_target: target attachment: attachment texture: texture level: level face: face [
	^ self ffiCall: #( void glFramebufferTextureFaceEXT ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLenum face ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureLayerARB_target: target attachment: attachment texture: texture level: level layer: layer [
	^ self ffiCall: #( void glFramebufferTextureLayerARB ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLint layer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureLayerDownsampleIMG_target: target attachment: attachment texture: texture level: level layer: layer xscale: xscale yscale: yscale [
	^ self ffiCall: #( void glFramebufferTextureLayerDownsampleIMG ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLint layer , GLint xscale , GLint yscale ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureLayerEXT_target: target attachment: attachment texture: texture level: level layer: layer [
	^ self ffiCall: #( void glFramebufferTextureLayerEXT ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLint layer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureLayer_target: target attachment: attachment texture: texture level: level layer: layer [
	^ self ffiCall: #( void glFramebufferTextureLayer ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLint layer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureMultisampleMultiviewOVR_target: target attachment: attachment texture: texture level: level samples: samples baseViewIndex: baseViewIndex numViews: numViews [
	^ self ffiCall: #( void glFramebufferTextureMultisampleMultiviewOVR ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLsizei samples , GLint baseViewIndex , GLsizei numViews ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureMultiviewOVR_target: target attachment: attachment texture: texture level: level baseViewIndex: baseViewIndex numViews: numViews [
	^ self ffiCall: #( void glFramebufferTextureMultiviewOVR ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLint baseViewIndex , GLsizei numViews ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTextureOES_target: target attachment: attachment texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTextureOES ( GLenum target , GLenum attachment , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> framebufferTexture_target: target attachment: attachment texture: texture level: level [
	^ self ffiCall: #( void glFramebufferTexture ( GLenum target , GLenum attachment , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> freeObjectBufferATI: buffer [
	^ self ffiCall: #( void glFreeObjectBufferATI ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frontFace: mode [
	^ self ffiCall: #( void glFrontFace ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frustum_left: left right: right bottom: bottom top: top zNear: zNear zFar: zFar [
	^ self ffiCall: #( void glFrustum ( GLdouble left , GLdouble right , GLdouble bottom , GLdouble top , GLdouble zNear , GLdouble zFar ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frustumfOES_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glFrustumfOES ( GLfloat l , GLfloat r , GLfloat b , GLfloat t , GLfloat n , GLfloat f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frustumf_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glFrustumf ( GLfloat l , GLfloat r , GLfloat b , GLfloat t , GLfloat n , GLfloat f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frustumxOES_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glFrustumxOES ( GLfixed l , GLfixed r , GLfixed b , GLfixed t , GLfixed n , GLfixed f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> frustumx_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glFrustumx ( GLfixed l , GLfixed r , GLfixed b , GLfixed t , GLfixed n , GLfixed f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genAsyncMarkersSGIX: range [
	^ self ffiCall: #( GLuint glGenAsyncMarkersSGIX ( GLsizei range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genBuffersARB_n: n buffers: buffers [
	^ self ffiCall: #( void glGenBuffersARB ( GLsizei n , GLuint* buffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genBuffers_n: n buffers: buffers [
	^ self ffiCall: #( void glGenBuffers ( GLsizei n , GLuint* buffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genFencesAPPLE_n: n fences: fences [
	^ self ffiCall: #( void glGenFencesAPPLE ( GLsizei n , GLuint* fences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genFencesNV_n: n fences: fences [
	^ self ffiCall: #( void glGenFencesNV ( GLsizei n , GLuint* fences ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genFragmentShadersATI: range [
	^ self ffiCall: #( GLuint glGenFragmentShadersATI ( GLuint range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genFramebuffersEXT_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glGenFramebuffersEXT ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genFramebuffersOES_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glGenFramebuffersOES ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genFramebuffers_n: n framebuffers: framebuffers [
	^ self ffiCall: #( void glGenFramebuffers ( GLsizei n , GLuint* framebuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genLists: range [
	^ self ffiCall: #( GLuint glGenLists ( GLsizei range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genNamesAMD_identifier: identifier num: num names: names [
	^ self ffiCall: #( void glGenNamesAMD ( GLenum identifier , GLuint num , GLuint* names ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genOcclusionQueriesNV_n: n ids: ids [
	^ self ffiCall: #( void glGenOcclusionQueriesNV ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genPathsNV: range [
	^ self ffiCall: #( GLuint glGenPathsNV ( GLsizei range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genPerfMonitorsAMD_n: n monitors: monitors [
	^ self ffiCall: #( void glGenPerfMonitorsAMD ( GLsizei n , GLuint* monitors ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genProgramPipelinesEXT_n: n pipelines: pipelines [
	^ self ffiCall: #( void glGenProgramPipelinesEXT ( GLsizei n , GLuint* pipelines ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genProgramPipelines_n: n pipelines: pipelines [
	^ self ffiCall: #( void glGenProgramPipelines ( GLsizei n , GLuint* pipelines ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genProgramsARB_n: n programs: programs [
	^ self ffiCall: #( void glGenProgramsARB ( GLsizei n , GLuint* programs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genProgramsNV_n: n programs: programs [
	^ self ffiCall: #( void glGenProgramsNV ( GLsizei n , GLuint* programs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genQueriesARB_n: n ids: ids [
	^ self ffiCall: #( void glGenQueriesARB ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genQueriesEXT_n: n ids: ids [
	^ self ffiCall: #( void glGenQueriesEXT ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genQueries_n: n ids: ids [
	^ self ffiCall: #( void glGenQueries ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genRenderbuffersEXT_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glGenRenderbuffersEXT ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genRenderbuffersOES_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glGenRenderbuffersOES ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genRenderbuffers_n: n renderbuffers: renderbuffers [
	^ self ffiCall: #( void glGenRenderbuffers ( GLsizei n , GLuint* renderbuffers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genSamplers_count: count samplers: samplers [
	^ self ffiCall: #( void glGenSamplers ( GLsizei count , GLuint* samplers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genSymbolsEXT_datatype: datatype storagetype: storagetype range: range components: components [
	^ self ffiCall: #( GLuint glGenSymbolsEXT ( GLenum datatype , GLenum storagetype , GLenum range , GLuint components ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genTexturesEXT_n: n textures: textures [
	^ self ffiCall: #( void glGenTexturesEXT ( GLsizei n , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genTextures_n: n textures: textures [
	^ self ffiCall: #( void glGenTextures ( GLsizei n , GLuint* textures ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genTransformFeedbacksNV_n: n ids: ids [
	^ self ffiCall: #( void glGenTransformFeedbacksNV ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genTransformFeedbacks_n: n ids: ids [
	^ self ffiCall: #( void glGenTransformFeedbacks ( GLsizei n , GLuint* ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genVertexArraysAPPLE_n: n arrays: arrays [
	^ self ffiCall: #( void glGenVertexArraysAPPLE ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genVertexArraysOES_n: n arrays: arrays [
	^ self ffiCall: #( void glGenVertexArraysOES ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genVertexArrays_n: n arrays: arrays [
	^ self ffiCall: #( void glGenVertexArrays ( GLsizei n , GLuint* arrays ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> genVertexShadersEXT: range [
	^ self ffiCall: #( GLuint glGenVertexShadersEXT ( GLuint range ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> generateMipmap: target [
	^ self ffiCall: #( void glGenerateMipmap ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> generateMipmapEXT: target [
	^ self ffiCall: #( void glGenerateMipmapEXT ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> generateMipmapOES: target [
	^ self ffiCall: #( void glGenerateMipmapOES ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> generateMultiTexMipmapEXT_texunit: texunit target: target [
	^ self ffiCall: #( void glGenerateMultiTexMipmapEXT ( GLenum texunit , GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> generateTextureMipmap: texture [
	^ self ffiCall: #( void glGenerateTextureMipmap ( GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> generateTextureMipmapEXT_texture: texture target: target [
	^ self ffiCall: #( void glGenerateTextureMipmapEXT ( GLuint texture , GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveAtomicCounterBufferiv_program: program bufferIndex: bufferIndex pname: pname params: params [
	^ self ffiCall: #( void glGetActiveAtomicCounterBufferiv ( GLuint program , GLuint bufferIndex , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveAttribARB_programObj: programObj index: index maxLength: maxLength length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetActiveAttribARB ( GLhandleARB programObj , GLuint index , GLsizei maxLength , GLsizei* length , GLint* size , GLenum* type , GLcharARB* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveAttrib_program: program index: index bufSize: bufSize length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetActiveAttrib ( GLuint program , GLuint index , GLsizei bufSize , GLsizei* length , GLint* size , GLenum* type , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveSubroutineName_program: program shadertype: shadertype index: index bufsize: bufsize length: length name: name [
	^ self ffiCall: #( void glGetActiveSubroutineName ( GLuint program , GLenum shadertype , GLuint index , GLsizei bufsize , GLsizei* length , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveSubroutineUniformName_program: program shadertype: shadertype index: index bufsize: bufsize length: length name: name [
	^ self ffiCall: #( void glGetActiveSubroutineUniformName ( GLuint program , GLenum shadertype , GLuint index , GLsizei bufsize , GLsizei* length , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveSubroutineUniformiv_program: program shadertype: shadertype index: index pname: pname values: values [
	^ self ffiCall: #( void glGetActiveSubroutineUniformiv ( GLuint program , GLenum shadertype , GLuint index , GLenum pname , GLint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveUniformARB_programObj: programObj index: index maxLength: maxLength length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetActiveUniformARB ( GLhandleARB programObj , GLuint index , GLsizei maxLength , GLsizei* length , GLint* size , GLenum* type , GLcharARB* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveUniformBlockName_program: program uniformBlockIndex: uniformBlockIndex bufSize: bufSize length: length uniformBlockName: uniformBlockName [
	^ self ffiCall: #( void glGetActiveUniformBlockName ( GLuint program , GLuint uniformBlockIndex , GLsizei bufSize , GLsizei* length , GLchar* uniformBlockName ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveUniformBlockiv_program: program uniformBlockIndex: uniformBlockIndex pname: pname params: params [
	^ self ffiCall: #( void glGetActiveUniformBlockiv ( GLuint program , GLuint uniformBlockIndex , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveUniformName_program: program uniformIndex: uniformIndex bufSize: bufSize length: length uniformName: uniformName [
	^ self ffiCall: #( void glGetActiveUniformName ( GLuint program , GLuint uniformIndex , GLsizei bufSize , GLsizei* length , GLchar* uniformName ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveUniform_program: program index: index bufSize: bufSize length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetActiveUniform ( GLuint program , GLuint index , GLsizei bufSize , GLsizei* length , GLint* size , GLenum* type , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveUniformsiv_program: program uniformCount: uniformCount uniformIndices: uniformIndices pname: pname params: params [
	^ self ffiCall: #( void glGetActiveUniformsiv ( GLuint program , GLsizei uniformCount , GLuint* uniformIndices , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getActiveVaryingNV_program: program index: index bufSize: bufSize length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetActiveVaryingNV ( GLuint program , GLuint index , GLsizei bufSize , GLsizei* length , GLsizei* size , GLenum* type , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getArrayObjectfvATI_array: array pname: pname params: params [
	^ self ffiCall: #( void glGetArrayObjectfvATI ( GLenum array , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getArrayObjectivATI_array: array pname: pname params: params [
	^ self ffiCall: #( void glGetArrayObjectivATI ( GLenum array , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getAttachedObjectsARB_containerObj: containerObj maxCount: maxCount count: count obj: obj [
	^ self ffiCall: #( void glGetAttachedObjectsARB ( GLhandleARB containerObj , GLsizei maxCount , GLsizei* count , GLhandleARB* obj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getAttachedShaders_program: program maxCount: maxCount count: count shaders: shaders [
	^ self ffiCall: #( void glGetAttachedShaders ( GLuint program , GLsizei maxCount , GLsizei* count , GLuint* shaders ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getAttribLocationARB_programObj: programObj name: name [
	^ self ffiCall: #( GLint glGetAttribLocationARB ( GLhandleARB programObj , GLcharARB* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getAttribLocation_program: program name: name [
	^ self ffiCall: #( GLint glGetAttribLocation ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBooleanIndexedvEXT_target: target index: index data: data [
	^ self ffiCall: #( void glGetBooleanIndexedvEXT ( GLenum target , GLuint index , GLboolean* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBooleani_v_target: target index: index data: data [
	^ self ffiCall: #( void glGetBooleani_v ( GLenum target , GLuint index , GLboolean* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBooleanv_pname: pname data: data [
	^ self ffiCall: #( void glGetBooleanv ( GLenum pname , GLboolean* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferParameteri64v_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferParameteri64v ( GLenum target , GLenum pname , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferParameterivARB_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferParameterivARB ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferParameterui64vNV_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferParameterui64vNV ( GLenum target , GLenum pname , GLuint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferPointervARB_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferPointervARB ( GLenum target , GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferPointervOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferPointervOES ( GLenum target , GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferPointerv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetBufferPointerv ( GLenum target , GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferSubDataARB_target: target offset: offset size: size data: data [
	^ self ffiCall: #( void glGetBufferSubDataARB ( GLenum target , GLintptrARB offset , GLsizeiptrARB size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getBufferSubData_target: target offset: offset size: size data: data [
	^ self ffiCall: #( void glGetBufferSubData ( GLenum target , GLintptr offset , GLsizeiptr size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getClipPlane_plane: plane equation: equation [
	^ self ffiCall: #( void glGetClipPlane ( GLenum plane , GLdouble* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getClipPlanefOES_plane: plane equation: equation [
	^ self ffiCall: #( void glGetClipPlanefOES ( GLenum plane , GLfloat* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getClipPlanef_plane: plane equation: equation [
	^ self ffiCall: #( void glGetClipPlanef ( GLenum plane , GLfloat* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getClipPlanexOES_plane: plane equation: equation [
	^ self ffiCall: #( void glGetClipPlanexOES ( GLenum plane , GLfixed* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getClipPlanex_plane: plane equation: equation [
	^ self ffiCall: #( void glGetClipPlanex ( GLenum plane , GLfixed* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableEXT_target: target format: format type: type data: data [
	^ self ffiCall: #( void glGetColorTableEXT ( GLenum target , GLenum format , GLenum type , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetColorTableParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableParameterfvSGI_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetColorTableParameterfvSGI ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetColorTableParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetColorTableParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableParameterivSGI_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetColorTableParameterivSGI ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetColorTableParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTableSGI_target: target format: format type: type table: table [
	^ self ffiCall: #( void glGetColorTableSGI ( GLenum target , GLenum format , GLenum type , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getColorTable_target: target format: format type: type table: table [
	^ self ffiCall: #( void glGetColorTable ( GLenum target , GLenum format , GLenum type , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCombinerInputParameterfvNV_stage: stage portion: portion variable: variable pname: pname params: params [
	^ self ffiCall: #( void glGetCombinerInputParameterfvNV ( GLenum stage , GLenum portion , GLenum variable , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCombinerInputParameterivNV_stage: stage portion: portion variable: variable pname: pname params: params [
	^ self ffiCall: #( void glGetCombinerInputParameterivNV ( GLenum stage , GLenum portion , GLenum variable , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCombinerOutputParameterfvNV_stage: stage portion: portion pname: pname params: params [
	^ self ffiCall: #( void glGetCombinerOutputParameterfvNV ( GLenum stage , GLenum portion , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCombinerOutputParameterivNV_stage: stage portion: portion pname: pname params: params [
	^ self ffiCall: #( void glGetCombinerOutputParameterivNV ( GLenum stage , GLenum portion , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCombinerStageParameterfvNV_stage: stage pname: pname params: params [
	^ self ffiCall: #( void glGetCombinerStageParameterfvNV ( GLenum stage , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCommandHeaderNV_tokenID: tokenID size: size [
	^ self ffiCall: #( GLuint glGetCommandHeaderNV ( GLenum tokenID , GLuint size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCompressedMultiTexImageEXT_texunit: texunit target: target lod: lod img: img [
	^ self ffiCall: #( void glGetCompressedMultiTexImageEXT ( GLenum texunit , GLenum target , GLint lod , void* img ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCompressedTexImageARB_target: target level: level img: img [
	^ self ffiCall: #( void glGetCompressedTexImageARB ( GLenum target , GLint level , void* img ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCompressedTexImage_target: target level: level img: img [
	^ self ffiCall: #( void glGetCompressedTexImage ( GLenum target , GLint level , void* img ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCompressedTextureImageEXT_texture: texture target: target lod: lod img: img [
	^ self ffiCall: #( void glGetCompressedTextureImageEXT ( GLuint texture , GLenum target , GLint lod , void* img ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCompressedTextureImage_texture: texture level: level bufSize: bufSize pixels: pixels [
	^ self ffiCall: #( void glGetCompressedTextureImage ( GLuint texture , GLint level , GLsizei bufSize , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCompressedTextureSubImage_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth bufSize: bufSize pixels: pixels [
	^ self ffiCall: #( void glGetCompressedTextureSubImage ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLsizei bufSize , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionFilterEXT_target: target format: format type: type image: image [
	^ self ffiCall: #( void glGetConvolutionFilterEXT ( GLenum target , GLenum format , GLenum type , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionFilter_target: target format: format type: type image: image [
	^ self ffiCall: #( void glGetConvolutionFilter ( GLenum target , GLenum format , GLenum type , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetConvolutionParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetConvolutionParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetConvolutionParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetConvolutionParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getConvolutionParameterxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetConvolutionParameterxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getCoverageModulationTableNV_bufsize: bufsize v: v [
	^ self ffiCall: #( void glGetCoverageModulationTableNV ( GLsizei bufsize , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDebugMessageLogAMD_count: count bufsize: bufsize categories: categories severities: severities ids: ids lengths: lengths message: message [
	^ self ffiCall: #( GLuint glGetDebugMessageLogAMD ( GLuint count , GLsizei bufsize , GLenum* categories , GLuint* severities , GLuint* ids , GLsizei* lengths , GLchar* message ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDebugMessageLogARB_count: count bufSize: bufSize sources: sources types: types ids: ids severities: severities lengths: lengths messageLog: messageLog [
	^ self ffiCall: #( GLuint glGetDebugMessageLogARB ( GLuint count , GLsizei bufSize , GLenum* sources , GLenum* types , GLuint* ids , GLenum* severities , GLsizei* lengths , GLchar* messageLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDebugMessageLogKHR_count: count bufSize: bufSize sources: sources types: types ids: ids severities: severities lengths: lengths messageLog: messageLog [
	^ self ffiCall: #( GLuint glGetDebugMessageLogKHR ( GLuint count , GLsizei bufSize , GLenum* sources , GLenum* types , GLuint* ids , GLenum* severities , GLsizei* lengths , GLchar* messageLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDebugMessageLog_count: count bufSize: bufSize sources: sources types: types ids: ids severities: severities lengths: lengths messageLog: messageLog [
	^ self ffiCall: #( GLuint glGetDebugMessageLog ( GLuint count , GLsizei bufSize , GLenum* sources , GLenum* types , GLuint* ids , GLenum* severities , GLsizei* lengths , GLchar* messageLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDetailTexFuncSGIS_target: target points: points [
	^ self ffiCall: #( void glGetDetailTexFuncSGIS ( GLenum target , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDoubleIndexedvEXT_target: target index: index data: data [
	^ self ffiCall: #( void glGetDoubleIndexedvEXT ( GLenum target , GLuint index , GLdouble* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDoublei_vEXT_pname: pname index: index params: params [
	^ self ffiCall: #( void glGetDoublei_vEXT ( GLenum pname , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDoublei_v_target: target index: index data: data [
	^ self ffiCall: #( void glGetDoublei_v ( GLenum target , GLuint index , GLdouble* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDoublev_pname: pname data: data [
	^ self ffiCall: #( void glGetDoublev ( GLenum pname , GLdouble* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDriverControlStringQCOM_driverControl: driverControl bufSize: bufSize length: length driverControlString: driverControlString [
	^ self ffiCall: #( void glGetDriverControlStringQCOM ( GLuint driverControl , GLsizei bufSize , GLsizei* length , GLchar* driverControlString ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getDriverControlsQCOM_num: num size: size driverControls: driverControls [
	^ self ffiCall: #( void glGetDriverControlsQCOM ( GLint* num , GLsizei size , GLuint* driverControls ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getError [
	^ self ffiCall: #( GLenum glGetError ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFenceivNV_fence: fence pname: pname params: params [
	^ self ffiCall: #( void glGetFenceivNV ( GLuint fence , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFinalCombinerInputParameterfvNV_variable: variable pname: pname params: params [
	^ self ffiCall: #( void glGetFinalCombinerInputParameterfvNV ( GLenum variable , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFinalCombinerInputParameterivNV_variable: variable pname: pname params: params [
	^ self ffiCall: #( void glGetFinalCombinerInputParameterivNV ( GLenum variable , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFirstPerfQueryIdINTEL: queryId [
	^ self ffiCall: #( void glGetFirstPerfQueryIdINTEL ( GLuint* queryId ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFixedvOES_pname: pname params: params [
	^ self ffiCall: #( void glGetFixedvOES ( GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFixedv_pname: pname params: params [
	^ self ffiCall: #( void glGetFixedv ( GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFloatIndexedvEXT_target: target index: index data: data [
	^ self ffiCall: #( void glGetFloatIndexedvEXT ( GLenum target , GLuint index , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFloati_vEXT_pname: pname index: index params: params [
	^ self ffiCall: #( void glGetFloati_vEXT ( GLenum pname , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFloati_vNV_target: target index: index data: data [
	^ self ffiCall: #( void glGetFloati_vNV ( GLenum target , GLuint index , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFloati_v_target: target index: index data: data [
	^ self ffiCall: #( void glGetFloati_v ( GLenum target , GLuint index , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFloatv_pname: pname data: data [
	^ self ffiCall: #( void glGetFloatv ( GLenum pname , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFogFuncSGIS: points [
	^ self ffiCall: #( void glGetFogFuncSGIS ( GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragDataIndexEXT_program: program name: name [
	^ self ffiCall: #( GLint glGetFragDataIndexEXT ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragDataIndex_program: program name: name [
	^ self ffiCall: #( GLint glGetFragDataIndex ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragDataLocationEXT_program: program name: name [
	^ self ffiCall: #( GLint glGetFragDataLocationEXT ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragDataLocation_program: program name: name [
	^ self ffiCall: #( GLint glGetFragDataLocation ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragmentLightfvSGIX_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetFragmentLightfvSGIX ( GLenum light , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragmentLightivSGIX_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetFragmentLightivSGIX ( GLenum light , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragmentMaterialfvSGIX_face: face pname: pname params: params [
	^ self ffiCall: #( void glGetFragmentMaterialfvSGIX ( GLenum face , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFragmentMaterialivSGIX_face: face pname: pname params: params [
	^ self ffiCall: #( void glGetFragmentMaterialivSGIX ( GLenum face , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFramebufferAttachmentParameterivEXT_target: target attachment: attachment pname: pname params: params [
	^ self ffiCall: #( void glGetFramebufferAttachmentParameterivEXT ( GLenum target , GLenum attachment , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFramebufferAttachmentParameterivOES_target: target attachment: attachment pname: pname params: params [
	^ self ffiCall: #( void glGetFramebufferAttachmentParameterivOES ( GLenum target , GLenum attachment , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFramebufferAttachmentParameteriv_target: target attachment: attachment pname: pname params: params [
	^ self ffiCall: #( void glGetFramebufferAttachmentParameteriv ( GLenum target , GLenum attachment , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFramebufferParameterivEXT_framebuffer: framebuffer pname: pname params: params [
	^ self ffiCall: #( void glGetFramebufferParameterivEXT ( GLuint framebuffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFramebufferParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetFramebufferParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getFramebufferPixelLocalStorageSizeEXT: target [
	^ self ffiCall: #( GLsizei glGetFramebufferPixelLocalStorageSizeEXT ( GLuint target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getGraphicsResetStatus [
	^ self ffiCall: #( GLenum glGetGraphicsResetStatus ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getGraphicsResetStatusARB [
	^ self ffiCall: #( GLenum glGetGraphicsResetStatusARB ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getGraphicsResetStatusEXT [
	^ self ffiCall: #( GLenum glGetGraphicsResetStatusEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getGraphicsResetStatusKHR [
	^ self ffiCall: #( GLenum glGetGraphicsResetStatusKHR ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHandleARB: pname [
	^ self ffiCall: #( GLhandleARB glGetHandleARB ( GLenum pname ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogramEXT_target: target reset: reset format: format type: type values: values [
	^ self ffiCall: #( void glGetHistogramEXT ( GLenum target , GLboolean reset , GLenum format , GLenum type , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogramParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetHistogramParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogramParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetHistogramParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogramParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetHistogramParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogramParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetHistogramParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogramParameterxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetHistogramParameterxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getHistogram_target: target reset: reset format: format type: type values: values [
	^ self ffiCall: #( void glGetHistogram ( GLenum target , GLboolean reset , GLenum format , GLenum type , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getImageHandleARB_texture: texture level: level layered: layered layer: layer format: format [
	^ self ffiCall: #( GLuint64 glGetImageHandleARB ( GLuint texture , GLint level , GLboolean layered , GLint layer , GLenum format ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getImageHandleNV_texture: texture level: level layered: layered layer: layer format: format [
	^ self ffiCall: #( GLuint64 glGetImageHandleNV ( GLuint texture , GLint level , GLboolean layered , GLint layer , GLenum format ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getImageTransformParameterfvHP_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetImageTransformParameterfvHP ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getImageTransformParameterivHP_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetImageTransformParameterivHP ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInfoLogARB_obj: obj maxLength: maxLength length: length infoLog: infoLog [
	^ self ffiCall: #( void glGetInfoLogARB ( GLhandleARB obj , GLsizei maxLength , GLsizei* length , GLcharARB* infoLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInstrumentsSGIX [
	^ self ffiCall: #( GLint glGetInstrumentsSGIX ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInteger64i_v_target: target index: index data: data [
	^ self ffiCall: #( void glGetInteger64i_v ( GLenum target , GLuint index , GLint64* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInteger64vAPPLE_pname: pname params: params [
	^ self ffiCall: #( void glGetInteger64vAPPLE ( GLenum pname , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInteger64v_pname: pname data: data [
	^ self ffiCall: #( void glGetInteger64v ( GLenum pname , GLint64* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getIntegerIndexedvEXT_target: target index: index data: data [
	^ self ffiCall: #( void glGetIntegerIndexedvEXT ( GLenum target , GLuint index , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getIntegeri_vEXT_target: target index: index data: data [
	^ self ffiCall: #( void glGetIntegeri_vEXT ( GLenum target , GLuint index , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getIntegeri_v_target: target index: index data: data [
	^ self ffiCall: #( void glGetIntegeri_v ( GLenum target , GLuint index , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getIntegerui64i_vNV_value: value index: index result: result [
	^ self ffiCall: #( void glGetIntegerui64i_vNV ( GLenum value , GLuint index , GLuint64EXT* result ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getIntegerui64vNV_value: value result: result [
	^ self ffiCall: #( void glGetIntegerui64vNV ( GLenum value , GLuint64EXT* result ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getIntegerv_pname: pname data: data [
	^ self ffiCall: #( void glGetIntegerv ( GLenum pname , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInternalformatSampleivNV_target: target internalformat: internalformat samples: samples pname: pname bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetInternalformatSampleivNV ( GLenum target , GLenum internalformat , GLsizei samples , GLenum pname , GLsizei bufSize , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInternalformati64v_target: target internalformat: internalformat pname: pname bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetInternalformati64v ( GLenum target , GLenum internalformat , GLenum pname , GLsizei bufSize , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInternalformativ_target: target internalformat: internalformat pname: pname bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetInternalformativ ( GLenum target , GLenum internalformat , GLenum pname , GLsizei bufSize , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInvariantBooleanvEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetInvariantBooleanvEXT ( GLuint id , GLenum value , GLboolean* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInvariantFloatvEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetInvariantFloatvEXT ( GLuint id , GLenum value , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getInvariantIntegervEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetInvariantIntegervEXT ( GLuint id , GLenum value , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLightfv_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetLightfv ( GLenum light , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLightiv_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetLightiv ( GLenum light , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLightxOES_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetLightxOES ( GLenum light , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLightxvOES_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetLightxvOES ( GLenum light , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLightxv_light: light pname: pname params: params [
	^ self ffiCall: #( void glGetLightxv ( GLenum light , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getListParameterfvSGIX_list: list pname: pname params: params [
	^ self ffiCall: #( void glGetListParameterfvSGIX ( GLuint list , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getListParameterivSGIX_list: list pname: pname params: params [
	^ self ffiCall: #( void glGetListParameterivSGIX ( GLuint list , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLocalConstantBooleanvEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetLocalConstantBooleanvEXT ( GLuint id , GLenum value , GLboolean* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLocalConstantFloatvEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetLocalConstantFloatvEXT ( GLuint id , GLenum value , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getLocalConstantIntegervEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetLocalConstantIntegervEXT ( GLuint id , GLenum value , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapAttribParameterfvNV_target: target index: index pname: pname params: params [
	^ self ffiCall: #( void glGetMapAttribParameterfvNV ( GLenum target , GLuint index , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapAttribParameterivNV_target: target index: index pname: pname params: params [
	^ self ffiCall: #( void glGetMapAttribParameterivNV ( GLenum target , GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapControlPointsNV_target: target index: index type: type ustride: ustride vstride: vstride packed: packed points: points [
	^ self ffiCall: #( void glGetMapControlPointsNV ( GLenum target , GLuint index , GLenum type , GLsizei ustride , GLsizei vstride , GLboolean packed , void* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapParameterfvNV_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMapParameterfvNV ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapParameterivNV_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMapParameterivNV ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapdv_target: target query: query v: v [
	^ self ffiCall: #( void glGetMapdv ( GLenum target , GLenum query , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapfv_target: target query: query v: v [
	^ self ffiCall: #( void glGetMapfv ( GLenum target , GLenum query , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapiv_target: target query: query v: v [
	^ self ffiCall: #( void glGetMapiv ( GLenum target , GLenum query , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMapxvOES_target: target query: query v: v [
	^ self ffiCall: #( void glGetMapxvOES ( GLenum target , GLenum query , GLfixed* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMaterialfv_face: face pname: pname params: params [
	^ self ffiCall: #( void glGetMaterialfv ( GLenum face , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMaterialiv_face: face pname: pname params: params [
	^ self ffiCall: #( void glGetMaterialiv ( GLenum face , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMaterialxOES_face: face pname: pname param: param [
	^ self ffiCall: #( void glGetMaterialxOES ( GLenum face , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMaterialxvOES_face: face pname: pname params: params [
	^ self ffiCall: #( void glGetMaterialxvOES ( GLenum face , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMaterialxv_face: face pname: pname params: params [
	^ self ffiCall: #( void glGetMaterialxv ( GLenum face , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMinmaxEXT_target: target reset: reset format: format type: type values: values [
	^ self ffiCall: #( void glGetMinmaxEXT ( GLenum target , GLboolean reset , GLenum format , GLenum type , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMinmaxParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMinmaxParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMinmaxParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMinmaxParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMinmaxParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMinmaxParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMinmaxParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMinmaxParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMinmax_target: target reset: reset format: format type: type values: values [
	^ self ffiCall: #( void glGetMinmax ( GLenum target , GLboolean reset , GLenum format , GLenum type , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexEnvfvEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexEnvfvEXT ( GLenum texunit , GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexEnvivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexEnvivEXT ( GLenum texunit , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexGendvEXT_texunit: texunit coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexGendvEXT ( GLenum texunit , GLenum coord , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexGenfvEXT_texunit: texunit coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexGenfvEXT ( GLenum texunit , GLenum coord , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexGenivEXT_texunit: texunit coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexGenivEXT ( GLenum texunit , GLenum coord , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexImageEXT_texunit: texunit target: target level: level format: format type: type pixels: pixels [
	^ self ffiCall: #( void glGetMultiTexImageEXT ( GLenum texunit , GLenum target , GLint level , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexLevelParameterfvEXT_texunit: texunit target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexLevelParameterfvEXT ( GLenum texunit , GLenum target , GLint level , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexLevelParameterivEXT_texunit: texunit target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexLevelParameterivEXT ( GLenum texunit , GLenum target , GLint level , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexParameterIivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexParameterIivEXT ( GLenum texunit , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexParameterIuivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexParameterIuivEXT ( GLenum texunit , GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexParameterfvEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexParameterfvEXT ( GLenum texunit , GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultiTexParameterivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glGetMultiTexParameterivEXT ( GLenum texunit , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultisamplefvNV_pname: pname index: index val: val [
	^ self ffiCall: #( void glGetMultisamplefvNV ( GLenum pname , GLuint index , GLfloat* val ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getMultisamplefv_pname: pname index: index val: val [
	^ self ffiCall: #( void glGetMultisamplefv ( GLenum pname , GLuint index , GLfloat* val ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferParameteri64v_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedBufferParameteri64v ( GLuint buffer , GLenum pname , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferParameterivEXT_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedBufferParameterivEXT ( GLuint buffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferParameteriv_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedBufferParameteriv ( GLuint buffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferParameterui64vNV_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedBufferParameterui64vNV ( GLuint buffer , GLenum pname , GLuint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferPointervEXT_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedBufferPointervEXT ( GLuint buffer , GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferPointerv_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedBufferPointerv ( GLuint buffer , GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferSubDataEXT_buffer: buffer offset: offset size: size data: data [
	^ self ffiCall: #( void glGetNamedBufferSubDataEXT ( GLuint buffer , GLintptr offset , GLsizeiptr size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedBufferSubData_buffer: buffer offset: offset size: size data: data [
	^ self ffiCall: #( void glGetNamedBufferSubData ( GLuint buffer , GLintptr offset , GLsizeiptr size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedFramebufferAttachmentParameterivEXT_framebuffer: framebuffer attachment: attachment pname: pname params: params [
	^ self ffiCall: #( void glGetNamedFramebufferAttachmentParameterivEXT ( GLuint framebuffer , GLenum attachment , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedFramebufferAttachmentParameteriv_framebuffer: framebuffer attachment: attachment pname: pname params: params [
	^ self ffiCall: #( void glGetNamedFramebufferAttachmentParameteriv ( GLuint framebuffer , GLenum attachment , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedFramebufferParameterivEXT_framebuffer: framebuffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedFramebufferParameterivEXT ( GLuint framebuffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedFramebufferParameteriv_framebuffer: framebuffer pname: pname param: param [
	^ self ffiCall: #( void glGetNamedFramebufferParameteriv ( GLuint framebuffer , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedProgramLocalParameterIivEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glGetNamedProgramLocalParameterIivEXT ( GLuint program , GLenum target , GLuint index , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedProgramLocalParameterIuivEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glGetNamedProgramLocalParameterIuivEXT ( GLuint program , GLenum target , GLuint index , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedProgramLocalParameterdvEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glGetNamedProgramLocalParameterdvEXT ( GLuint program , GLenum target , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedProgramLocalParameterfvEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glGetNamedProgramLocalParameterfvEXT ( GLuint program , GLenum target , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedProgramStringEXT_program: program target: target pname: pname string: string [
	^ self ffiCall: #( void glGetNamedProgramStringEXT ( GLuint program , GLenum target , GLenum pname , void* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedProgramivEXT_program: program target: target pname: pname params: params [
	^ self ffiCall: #( void glGetNamedProgramivEXT ( GLuint program , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedRenderbufferParameterivEXT_renderbuffer: renderbuffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedRenderbufferParameterivEXT ( GLuint renderbuffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedRenderbufferParameteriv_renderbuffer: renderbuffer pname: pname params: params [
	^ self ffiCall: #( void glGetNamedRenderbufferParameteriv ( GLuint renderbuffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedStringARB_namelen: namelen name: name bufSize: bufSize stringlen: stringlen string: string [
	^ self ffiCall: #( void glGetNamedStringARB ( GLint namelen , GLchar* name , GLsizei bufSize , GLint* stringlen , GLchar* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNamedStringivARB_namelen: namelen name: name pname: pname params: params [
	^ self ffiCall: #( void glGetNamedStringivARB ( GLint namelen , GLchar* name , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getNextPerfQueryIdINTEL_queryId: queryId nextQueryId: nextQueryId [
	^ self ffiCall: #( void glGetNextPerfQueryIdINTEL ( GLuint queryId , GLuint* nextQueryId ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectBufferfvATI_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetObjectBufferfvATI ( GLuint buffer , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectBufferivATI_buffer: buffer pname: pname params: params [
	^ self ffiCall: #( void glGetObjectBufferivATI ( GLuint buffer , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectLabelEXT_type: type object: object bufSize: bufSize length: length label: label [
	^ self ffiCall: #( void glGetObjectLabelEXT ( GLenum type , GLuint object , GLsizei bufSize , GLsizei* length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectLabelKHR_identifier: identifier name: name bufSize: bufSize length: length label: label [
	^ self ffiCall: #( void glGetObjectLabelKHR ( GLenum identifier , GLuint name , GLsizei bufSize , GLsizei* length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectLabel_identifier: identifier name: name bufSize: bufSize length: length label: label [
	^ self ffiCall: #( void glGetObjectLabel ( GLenum identifier , GLuint name , GLsizei bufSize , GLsizei* length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectParameterfvARB_obj: obj pname: pname params: params [
	^ self ffiCall: #( void glGetObjectParameterfvARB ( GLhandleARB obj , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectParameterivAPPLE_objectType: objectType name: name pname: pname params: params [
	^ self ffiCall: #( void glGetObjectParameterivAPPLE ( GLenum objectType , GLuint name , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectParameterivARB_obj: obj pname: pname params: params [
	^ self ffiCall: #( void glGetObjectParameterivARB ( GLhandleARB obj , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectPtrLabelKHR_ptr: ptr bufSize: bufSize length: length label: label [
	^ self ffiCall: #( void glGetObjectPtrLabelKHR ( void* ptr , GLsizei bufSize , GLsizei* length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getObjectPtrLabel_ptr: ptr bufSize: bufSize length: length label: label [
	^ self ffiCall: #( void glGetObjectPtrLabel ( void* ptr , GLsizei bufSize , GLsizei* length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getOcclusionQueryivNV_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetOcclusionQueryivNV ( GLuint id , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getOcclusionQueryuivNV_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetOcclusionQueryuivNV ( GLuint id , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathColorGenfvNV_color: color pname: pname value: value [
	^ self ffiCall: #( void glGetPathColorGenfvNV ( GLenum color , GLenum pname , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathColorGenivNV_color: color pname: pname value: value [
	^ self ffiCall: #( void glGetPathColorGenivNV ( GLenum color , GLenum pname , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathCommandsNV_path: path commands: commands [
	^ self ffiCall: #( void glGetPathCommandsNV ( GLuint path , GLubyte* commands ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathCoordsNV_path: path coords: coords [
	^ self ffiCall: #( void glGetPathCoordsNV ( GLuint path , GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathDashArrayNV_path: path dashArray: dashArray [
	^ self ffiCall: #( void glGetPathDashArrayNV ( GLuint path , GLfloat* dashArray ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathLengthNV_path: path startSegment: startSegment numSegments: numSegments [
	^ self ffiCall: #( GLfloat glGetPathLengthNV ( GLuint path , GLsizei startSegment , GLsizei numSegments ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathMetricRangeNV_metricQueryMask: metricQueryMask firstPathName: firstPathName numPaths: numPaths stride: stride metrics: metrics [
	^ self ffiCall: #( void glGetPathMetricRangeNV ( GLbitfield metricQueryMask , GLuint firstPathName , GLsizei numPaths , GLsizei stride , GLfloat* metrics ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathMetricsNV_metricQueryMask: metricQueryMask numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase stride: stride metrics: metrics [
	^ self ffiCall: #( void glGetPathMetricsNV ( GLbitfield metricQueryMask , GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLsizei stride , GLfloat* metrics ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathParameterfvNV_path: path pname: pname value: value [
	^ self ffiCall: #( void glGetPathParameterfvNV ( GLuint path , GLenum pname , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathParameterivNV_path: path pname: pname value: value [
	^ self ffiCall: #( void glGetPathParameterivNV ( GLuint path , GLenum pname , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathSpacingNV_pathListMode: pathListMode numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase advanceScale: advanceScale kerningScale: kerningScale transformType: transformType returnedSpacing: returnedSpacing [
	^ self ffiCall: #( void glGetPathSpacingNV ( GLenum pathListMode , GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLfloat advanceScale , GLfloat kerningScale , GLenum transformType , GLfloat* returnedSpacing ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathTexGenfvNV_texCoordSet: texCoordSet pname: pname value: value [
	^ self ffiCall: #( void glGetPathTexGenfvNV ( GLenum texCoordSet , GLenum pname , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPathTexGenivNV_texCoordSet: texCoordSet pname: pname value: value [
	^ self ffiCall: #( void glGetPathTexGenivNV ( GLenum texCoordSet , GLenum pname , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfCounterInfoINTEL_queryId: queryId counterId: counterId counterNameLength: counterNameLength counterName: counterName counterDescLength: counterDescLength counterDesc: counterDesc counterOffset: counterOffset counterDataSize: counterDataSize counterTypeEnum: counterTypeEnum counterDataTypeEnum: counterDataTypeEnum rawCounterMaxValue: rawCounterMaxValue [
	^ self ffiCall: #( void glGetPerfCounterInfoINTEL ( GLuint queryId , GLuint counterId , GLuint counterNameLength , GLchar* counterName , GLuint counterDescLength , GLchar* counterDesc , GLuint* counterOffset , GLuint* counterDataSize , GLuint* counterTypeEnum , GLuint* counterDataTypeEnum , GLuint64* rawCounterMaxValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfMonitorCounterDataAMD_monitor: monitor pname: pname dataSize: dataSize data: data bytesWritten: bytesWritten [
	^ self ffiCall: #( void glGetPerfMonitorCounterDataAMD ( GLuint monitor , GLenum pname , GLsizei dataSize , GLuint* data , GLint* bytesWritten ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfMonitorCounterInfoAMD_group: group counter: counter pname: pname data: data [
	^ self ffiCall: #( void glGetPerfMonitorCounterInfoAMD ( GLuint group , GLuint counter , GLenum pname , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfMonitorCounterStringAMD_group: group counter: counter bufSize: bufSize length: length counterString: counterString [
	^ self ffiCall: #( void glGetPerfMonitorCounterStringAMD ( GLuint group , GLuint counter , GLsizei bufSize , GLsizei* length , GLchar* counterString ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfMonitorCountersAMD_group: group numCounters: numCounters maxActiveCounters: maxActiveCounters counterSize: counterSize counters: counters [
	^ self ffiCall: #( void glGetPerfMonitorCountersAMD ( GLuint group , GLint* numCounters , GLint* maxActiveCounters , GLsizei counterSize , GLuint* counters ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfMonitorGroupStringAMD_group: group bufSize: bufSize length: length groupString: groupString [
	^ self ffiCall: #( void glGetPerfMonitorGroupStringAMD ( GLuint group , GLsizei bufSize , GLsizei* length , GLchar* groupString ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfMonitorGroupsAMD_numGroups: numGroups groupsSize: groupsSize groups: groups [
	^ self ffiCall: #( void glGetPerfMonitorGroupsAMD ( GLint* numGroups , GLsizei groupsSize , GLuint* groups ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfQueryDataINTEL_queryHandle: queryHandle flags: flags dataSize: dataSize data: data bytesWritten: bytesWritten [
	^ self ffiCall: #( void glGetPerfQueryDataINTEL ( GLuint queryHandle , GLuint flags , GLsizei dataSize , GLvoid* data , GLuint* bytesWritten ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfQueryIdByNameINTEL_queryName: queryName queryId: queryId [
	^ self ffiCall: #( void glGetPerfQueryIdByNameINTEL ( GLchar* queryName , GLuint* queryId ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPerfQueryInfoINTEL_queryId: queryId queryNameLength: queryNameLength queryName: queryName dataSize: dataSize noCounters: noCounters noInstances: noInstances capsMask: capsMask [
	^ self ffiCall: #( void glGetPerfQueryInfoINTEL ( GLuint queryId , GLuint queryNameLength , GLchar* queryName , GLuint* dataSize , GLuint* noCounters , GLuint* noInstances , GLuint* capsMask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelMapfv_map: map values: values [
	^ self ffiCall: #( void glGetPixelMapfv ( GLenum map , GLfloat* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelMapuiv_map: map values: values [
	^ self ffiCall: #( void glGetPixelMapuiv ( GLenum map , GLuint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelMapusv_map: map values: values [
	^ self ffiCall: #( void glGetPixelMapusv ( GLenum map , GLushort* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelMapxv_map: map size: size values: values [
	^ self ffiCall: #( void glGetPixelMapxv ( GLenum map , GLint size , GLfixed* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelTexGenParameterfvSGIS_pname: pname params: params [
	^ self ffiCall: #( void glGetPixelTexGenParameterfvSGIS ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelTexGenParameterivSGIS_pname: pname params: params [
	^ self ffiCall: #( void glGetPixelTexGenParameterivSGIS ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelTransformParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetPixelTransformParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPixelTransformParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetPixelTransformParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPointerIndexedvEXT_target: target index: index data: data [
	^ self ffiCall: #( void glGetPointerIndexedvEXT ( GLenum target , GLuint index , void** data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPointeri_vEXT_pname: pname index: index params: params [
	^ self ffiCall: #( void glGetPointeri_vEXT ( GLenum pname , GLuint index , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPointervEXT_pname: pname params: params [
	^ self ffiCall: #( void glGetPointervEXT ( GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPointervKHR_pname: pname params: params [
	^ self ffiCall: #( void glGetPointervKHR ( GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPointerv_pname: pname params: params [
	^ self ffiCall: #( void glGetPointerv ( GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getPolygonStipple: mask [
	^ self ffiCall: #( void glGetPolygonStipple ( GLubyte* mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #accessing }
GlutinOpenGL >> getProcAddress: aString [
	^ self context getProcAddress: aString
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramBinaryOES_program: program bufSize: bufSize length: length binaryFormat: binaryFormat binary: binary [
	^ self ffiCall: #( void glGetProgramBinaryOES ( GLuint program , GLsizei bufSize , GLsizei* length , GLenum* binaryFormat , void* binary ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramBinary_program: program bufSize: bufSize length: length binaryFormat: binaryFormat binary: binary [
	^ self ffiCall: #( void glGetProgramBinary ( GLuint program , GLsizei bufSize , GLsizei* length , GLenum* binaryFormat , void* binary ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramEnvParameterIivNV_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramEnvParameterIivNV ( GLenum target , GLuint index , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramEnvParameterIuivNV_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramEnvParameterIuivNV ( GLenum target , GLuint index , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramEnvParameterdvARB_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramEnvParameterdvARB ( GLenum target , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramEnvParameterfvARB_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramEnvParameterfvARB ( GLenum target , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramInfoLog_program: program bufSize: bufSize length: length infoLog: infoLog [
	^ self ffiCall: #( void glGetProgramInfoLog ( GLuint program , GLsizei bufSize , GLsizei* length , GLchar* infoLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramInterfaceiv_program: program programInterface: programInterface pname: pname params: params [
	^ self ffiCall: #( void glGetProgramInterfaceiv ( GLuint program , GLenum programInterface , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramLocalParameterIivNV_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramLocalParameterIivNV ( GLenum target , GLuint index , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramLocalParameterIuivNV_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramLocalParameterIuivNV ( GLenum target , GLuint index , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramLocalParameterdvARB_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramLocalParameterdvARB ( GLenum target , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramLocalParameterfvARB_target: target index: index params: params [
	^ self ffiCall: #( void glGetProgramLocalParameterfvARB ( GLenum target , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramNamedParameterdvNV_id: id len: len name: name params: params [
	^ self ffiCall: #( void glGetProgramNamedParameterdvNV ( GLuint id , GLsizei len , GLubyte* name , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramNamedParameterfvNV_id: id len: len name: name params: params [
	^ self ffiCall: #( void glGetProgramNamedParameterfvNV ( GLuint id , GLsizei len , GLubyte* name , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramParameterdvNV_target: target index: index pname: pname params: params [
	^ self ffiCall: #( void glGetProgramParameterdvNV ( GLenum target , GLuint index , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramParameterfvNV_target: target index: index pname: pname params: params [
	^ self ffiCall: #( void glGetProgramParameterfvNV ( GLenum target , GLuint index , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramPipelineInfoLogEXT_pipeline: pipeline bufSize: bufSize length: length infoLog: infoLog [
	^ self ffiCall: #( void glGetProgramPipelineInfoLogEXT ( GLuint pipeline , GLsizei bufSize , GLsizei* length , GLchar* infoLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramPipelineInfoLog_pipeline: pipeline bufSize: bufSize length: length infoLog: infoLog [
	^ self ffiCall: #( void glGetProgramPipelineInfoLog ( GLuint pipeline , GLsizei bufSize , GLsizei* length , GLchar* infoLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramPipelineivEXT_pipeline: pipeline pname: pname params: params [
	^ self ffiCall: #( void glGetProgramPipelineivEXT ( GLuint pipeline , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramPipelineiv_pipeline: pipeline pname: pname params: params [
	^ self ffiCall: #( void glGetProgramPipelineiv ( GLuint pipeline , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourceIndex_program: program programInterface: programInterface name: name [
	^ self ffiCall: #( GLuint glGetProgramResourceIndex ( GLuint program , GLenum programInterface , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourceLocationIndexEXT_program: program programInterface: programInterface name: name [
	^ self ffiCall: #( GLint glGetProgramResourceLocationIndexEXT ( GLuint program , GLenum programInterface , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourceLocationIndex_program: program programInterface: programInterface name: name [
	^ self ffiCall: #( GLint glGetProgramResourceLocationIndex ( GLuint program , GLenum programInterface , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourceLocation_program: program programInterface: programInterface name: name [
	^ self ffiCall: #( GLint glGetProgramResourceLocation ( GLuint program , GLenum programInterface , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourceName_program: program programInterface: programInterface index: index bufSize: bufSize length: length name: name [
	^ self ffiCall: #( void glGetProgramResourceName ( GLuint program , GLenum programInterface , GLuint index , GLsizei bufSize , GLsizei* length , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourcefvNV_program: program programInterface: programInterface index: index propCount: propCount props: props bufSize: bufSize length: length params: params [
	^ self ffiCall: #( void glGetProgramResourcefvNV ( GLuint program , GLenum programInterface , GLuint index , GLsizei propCount , GLenum* props , GLsizei bufSize , GLsizei* length , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramResourceiv_program: program programInterface: programInterface index: index propCount: propCount props: props bufSize: bufSize length: length params: params [
	^ self ffiCall: #( void glGetProgramResourceiv ( GLuint program , GLenum programInterface , GLuint index , GLsizei propCount , GLenum* props , GLsizei bufSize , GLsizei* length , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramStageiv_program: program shadertype: shadertype pname: pname values: values [
	^ self ffiCall: #( void glGetProgramStageiv ( GLuint program , GLenum shadertype , GLenum pname , GLint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramStringARB_target: target pname: pname string: string [
	^ self ffiCall: #( void glGetProgramStringARB ( GLenum target , GLenum pname , void* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramStringNV_id: id pname: pname program: program [
	^ self ffiCall: #( void glGetProgramStringNV ( GLuint id , GLenum pname , GLubyte* program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramSubroutineParameteruivNV_target: target index: index param: param [
	^ self ffiCall: #( void glGetProgramSubroutineParameteruivNV ( GLenum target , GLuint index , GLuint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramivARB_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetProgramivARB ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramivNV_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetProgramivNV ( GLuint id , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getProgramiv_program: program pname: pname params: params [
	^ self ffiCall: #( void glGetProgramiv ( GLuint program , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryBufferObjecti64v_id: id buffer: buffer pname: pname offset: offset [
	^ self ffiCall: #( void glGetQueryBufferObjecti64v ( GLuint id , GLuint buffer , GLenum pname , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryBufferObjectiv_id: id buffer: buffer pname: pname offset: offset [
	^ self ffiCall: #( void glGetQueryBufferObjectiv ( GLuint id , GLuint buffer , GLenum pname , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryBufferObjectui64v_id: id buffer: buffer pname: pname offset: offset [
	^ self ffiCall: #( void glGetQueryBufferObjectui64v ( GLuint id , GLuint buffer , GLenum pname , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryBufferObjectuiv_id: id buffer: buffer pname: pname offset: offset [
	^ self ffiCall: #( void glGetQueryBufferObjectuiv ( GLuint id , GLuint buffer , GLenum pname , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryIndexediv_target: target index: index pname: pname params: params [
	^ self ffiCall: #( void glGetQueryIndexediv ( GLenum target , GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjecti64vEXT_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjecti64vEXT ( GLuint id , GLenum pname , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjecti64v_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjecti64v ( GLuint id , GLenum pname , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectivARB_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectivARB ( GLuint id , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectivEXT_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectivEXT ( GLuint id , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectiv_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectiv ( GLuint id , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectui64vEXT_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectui64vEXT ( GLuint id , GLenum pname , GLuint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectui64v_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectui64v ( GLuint id , GLenum pname , GLuint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectuivARB_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectuivARB ( GLuint id , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectuivEXT_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectuivEXT ( GLuint id , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryObjectuiv_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetQueryObjectuiv ( GLuint id , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryivARB_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetQueryivARB ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetQueryivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getQueryiv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetQueryiv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getRenderbufferParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetRenderbufferParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getRenderbufferParameterivOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetRenderbufferParameterivOES ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getRenderbufferParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetRenderbufferParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterIivEXT_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterIivEXT ( GLuint sampler , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterIivOES_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterIivOES ( GLuint sampler , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterIiv_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterIiv ( GLuint sampler , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterIuivEXT_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterIuivEXT ( GLuint sampler , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterIuivOES_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterIuivOES ( GLuint sampler , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterIuiv_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterIuiv ( GLuint sampler , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameterfv_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameterfv ( GLuint sampler , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSamplerParameteriv_sampler: sampler pname: pname params: params [
	^ self ffiCall: #( void glGetSamplerParameteriv ( GLuint sampler , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSeparableFilterEXT_target: target format: format type: type row: row column: column span: span [
	^ self ffiCall: #( void glGetSeparableFilterEXT ( GLenum target , GLenum format , GLenum type , void* row , void* column , void* span ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSeparableFilter_target: target format: format type: type row: row column: column span: span [
	^ self ffiCall: #( void glGetSeparableFilter ( GLenum target , GLenum format , GLenum type , void* row , void* column , void* span ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getShaderInfoLog_shader: shader bufSize: bufSize length: length infoLog: infoLog [
	^ self ffiCall: #( void glGetShaderInfoLog ( GLuint shader , GLsizei bufSize , GLsizei* length , GLchar* infoLog ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getShaderPrecisionFormat_shadertype: shadertype precisiontype: precisiontype range: range precision: precision [
	^ self ffiCall: #( void glGetShaderPrecisionFormat ( GLenum shadertype , GLenum precisiontype , GLint* range , GLint* precision ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getShaderSourceARB_obj: obj maxLength: maxLength length: length source: source [
	^ self ffiCall: #( void glGetShaderSourceARB ( GLhandleARB obj , GLsizei maxLength , GLsizei* length , GLcharARB* source ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getShaderSource_shader: shader bufSize: bufSize length: length source: source [
	^ self ffiCall: #( void glGetShaderSource ( GLuint shader , GLsizei bufSize , GLsizei* length , GLchar* source ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getShaderiv_shader: shader pname: pname params: params [
	^ self ffiCall: #( void glGetShaderiv ( GLuint shader , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSharpenTexFuncSGIS_target: target points: points [
	^ self ffiCall: #( void glGetSharpenTexFuncSGIS ( GLenum target , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getStageIndexNV: shadertype [
	^ self ffiCall: #( GLushort glGetStageIndexNV ( GLenum shadertype ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getString: name [
	^ self ffiCall: #( GLubyte* glGetString ( GLenum name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getStringi_name: name index: index [
	^ self ffiCall: #( GLubyte* glGetStringi ( GLenum name , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSubroutineIndex_program: program shadertype: shadertype name: name [
	^ self ffiCall: #( GLuint glGetSubroutineIndex ( GLuint program , GLenum shadertype , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSubroutineUniformLocation_program: program shadertype: shadertype name: name [
	^ self ffiCall: #( GLint glGetSubroutineUniformLocation ( GLuint program , GLenum shadertype , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSyncivAPPLE_sync: sync pname: pname bufSize: bufSize length: length values: values [
	^ self ffiCall: #( void glGetSyncivAPPLE ( GLsync sync , GLenum pname , GLsizei bufSize , GLsizei* length , GLint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getSynciv_sync: sync pname: pname bufSize: bufSize length: length values: values [
	^ self ffiCall: #( void glGetSynciv ( GLsync sync , GLenum pname , GLsizei bufSize , GLsizei* length , GLint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexBumpParameterfvATI_pname: pname param: param [
	^ self ffiCall: #( void glGetTexBumpParameterfvATI ( GLenum pname , GLfloat* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexBumpParameterivATI_pname: pname param: param [
	^ self ffiCall: #( void glGetTexBumpParameterivATI ( GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexEnvfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexEnvfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexEnviv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexEnviv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexEnvxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexEnvxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexEnvxv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexEnvxv ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexFilterFuncSGIS_target: target filter: filter weights: weights [
	^ self ffiCall: #( void glGetTexFilterFuncSGIS ( GLenum target , GLenum filter , GLfloat* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexGendv_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetTexGendv ( GLenum coord , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexGenfvOES_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetTexGenfvOES ( GLenum coord , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexGenfv_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetTexGenfv ( GLenum coord , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexGenivOES_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetTexGenivOES ( GLenum coord , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexGeniv_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetTexGeniv ( GLenum coord , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexGenxvOES_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glGetTexGenxvOES ( GLenum coord , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexImage_target: target level: level format: format type: type pixels: pixels [
	^ self ffiCall: #( void glGetTexImage ( GLenum target , GLint level , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexLevelParameterfv_target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTexLevelParameterfv ( GLenum target , GLint level , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexLevelParameteriv_target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTexLevelParameteriv ( GLenum target , GLint level , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexLevelParameterxvOES_target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTexLevelParameterxvOES ( GLenum target , GLint level , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterIivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterIivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterIivOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterIivOES ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterIiv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterIiv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterIuivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterIuivEXT ( GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterIuivOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterIuivOES ( GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterIuiv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterIuiv ( GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterPointervAPPLE_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterPointervAPPLE ( GLenum target , GLenum pname , void** params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTexParameterxv_target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTexParameterxv ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureHandleARB: texture [
	^ self ffiCall: #( GLuint64 glGetTextureHandleARB ( GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureHandleNV: texture [
	^ self ffiCall: #( GLuint64 glGetTextureHandleNV ( GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureImageEXT_texture: texture target: target level: level format: format type: type pixels: pixels [
	^ self ffiCall: #( void glGetTextureImageEXT ( GLuint texture , GLenum target , GLint level , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureImage_texture: texture level: level format: format type: type bufSize: bufSize pixels: pixels [
	^ self ffiCall: #( void glGetTextureImage ( GLuint texture , GLint level , GLenum format , GLenum type , GLsizei bufSize , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureLevelParameterfvEXT_texture: texture target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTextureLevelParameterfvEXT ( GLuint texture , GLenum target , GLint level , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureLevelParameterfv_texture: texture level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTextureLevelParameterfv ( GLuint texture , GLint level , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureLevelParameterivEXT_texture: texture target: target level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTextureLevelParameterivEXT ( GLuint texture , GLenum target , GLint level , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureLevelParameteriv_texture: texture level: level pname: pname params: params [
	^ self ffiCall: #( void glGetTextureLevelParameteriv ( GLuint texture , GLint level , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterIivEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterIivEXT ( GLuint texture , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterIiv_texture: texture pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterIiv ( GLuint texture , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterIuivEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterIuivEXT ( GLuint texture , GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterIuiv_texture: texture pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterIuiv ( GLuint texture , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterfvEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterfvEXT ( GLuint texture , GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterfv_texture: texture pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterfv ( GLuint texture , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameterivEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameterivEXT ( GLuint texture , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureParameteriv_texture: texture pname: pname params: params [
	^ self ffiCall: #( void glGetTextureParameteriv ( GLuint texture , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureSamplerHandleARB_texture: texture sampler: sampler [
	^ self ffiCall: #( GLuint64 glGetTextureSamplerHandleARB ( GLuint texture , GLuint sampler ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureSamplerHandleNV_texture: texture sampler: sampler [
	^ self ffiCall: #( GLuint64 glGetTextureSamplerHandleNV ( GLuint texture , GLuint sampler ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTextureSubImage_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type bufSize: bufSize pixels: pixels [
	^ self ffiCall: #( void glGetTextureSubImage ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , GLsizei bufSize , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTrackMatrixivNV_target: target address: address pname: pname params: params [
	^ self ffiCall: #( void glGetTrackMatrixivNV ( GLenum target , GLuint address , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTransformFeedbackVaryingEXT_program: program index: index bufSize: bufSize length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetTransformFeedbackVaryingEXT ( GLuint program , GLuint index , GLsizei bufSize , GLsizei* length , GLsizei* size , GLenum* type , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTransformFeedbackVaryingNV_program: program index: index location: location [
	^ self ffiCall: #( void glGetTransformFeedbackVaryingNV ( GLuint program , GLuint index , GLint* location ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTransformFeedbackVarying_program: program index: index bufSize: bufSize length: length size: size type: type name: name [
	^ self ffiCall: #( void glGetTransformFeedbackVarying ( GLuint program , GLuint index , GLsizei bufSize , GLsizei* length , GLsizei* size , GLenum* type , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTransformFeedbacki64_v_xfb: xfb pname: pname index: index param: param [
	^ self ffiCall: #( void glGetTransformFeedbacki64_v ( GLuint xfb , GLenum pname , GLuint index , GLint64* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTransformFeedbacki_v_xfb: xfb pname: pname index: index param: param [
	^ self ffiCall: #( void glGetTransformFeedbacki_v ( GLuint xfb , GLenum pname , GLuint index , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTransformFeedbackiv_xfb: xfb pname: pname param: param [
	^ self ffiCall: #( void glGetTransformFeedbackiv ( GLuint xfb , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getTranslatedShaderSourceANGLE_shader: shader bufsize: bufsize length: length source: source [
	^ self ffiCall: #( void glGetTranslatedShaderSourceANGLE ( GLuint shader , GLsizei bufsize , GLsizei* length , GLchar* source ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformBlockIndex_program: program uniformBlockName: uniformBlockName [
	^ self ffiCall: #( GLuint glGetUniformBlockIndex ( GLuint program , GLchar* uniformBlockName ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformBufferSizeEXT_program: program location: location [
	^ self ffiCall: #( GLint glGetUniformBufferSizeEXT ( GLuint program , GLint location ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformIndices_program: program uniformCount: uniformCount uniformNames: uniformNames uniformIndices: uniformIndices [
	^ self ffiCall: #( void glGetUniformIndices ( GLuint program , GLsizei uniformCount , GLchar** uniformNames , GLuint* uniformIndices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformLocationARB_programObj: programObj name: name [
	^ self ffiCall: #( GLint glGetUniformLocationARB ( GLhandleARB programObj , GLcharARB* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformLocation_program: program name: name [
	^ self ffiCall: #( GLint glGetUniformLocation ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformOffsetEXT_program: program location: location [
	^ self ffiCall: #( GLintptr glGetUniformOffsetEXT ( GLuint program , GLint location ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformSubroutineuiv_shadertype: shadertype location: location params: params [
	^ self ffiCall: #( void glGetUniformSubroutineuiv ( GLenum shadertype , GLint location , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformdv_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformdv ( GLuint program , GLint location , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformfvARB_programObj: programObj location: location params: params [
	^ self ffiCall: #( void glGetUniformfvARB ( GLhandleARB programObj , GLint location , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformfv_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformfv ( GLuint program , GLint location , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformi64vARB_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformi64vARB ( GLuint program , GLint location , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformi64vNV_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformi64vNV ( GLuint program , GLint location , GLint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformivARB_programObj: programObj location: location params: params [
	^ self ffiCall: #( void glGetUniformivARB ( GLhandleARB programObj , GLint location , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformiv_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformiv ( GLuint program , GLint location , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformui64vARB_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformui64vARB ( GLuint program , GLint location , GLuint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformui64vNV_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformui64vNV ( GLuint program , GLint location , GLuint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformuivEXT_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformuivEXT ( GLuint program , GLint location , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getUniformuiv_program: program location: location params: params [
	^ self ffiCall: #( void glGetUniformuiv ( GLuint program , GLint location , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVariantArrayObjectfvATI_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetVariantArrayObjectfvATI ( GLuint id , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVariantArrayObjectivATI_id: id pname: pname params: params [
	^ self ffiCall: #( void glGetVariantArrayObjectivATI ( GLuint id , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVariantBooleanvEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetVariantBooleanvEXT ( GLuint id , GLenum value , GLboolean* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVariantFloatvEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetVariantFloatvEXT ( GLuint id , GLenum value , GLfloat* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVariantIntegervEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetVariantIntegervEXT ( GLuint id , GLenum value , GLint* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVariantPointervEXT_id: id value: value data: data [
	^ self ffiCall: #( void glGetVariantPointervEXT ( GLuint id , GLenum value , void** data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVaryingLocationNV_program: program name: name [
	^ self ffiCall: #( GLint glGetVaryingLocationNV ( GLuint program , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayIndexed64iv_vaobj: vaobj index: index pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayIndexed64iv ( GLuint vaobj , GLuint index , GLenum pname , GLint64* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayIndexediv_vaobj: vaobj index: index pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayIndexediv ( GLuint vaobj , GLuint index , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayIntegeri_vEXT_vaobj: vaobj index: index pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayIntegeri_vEXT ( GLuint vaobj , GLuint index , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayIntegervEXT_vaobj: vaobj pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayIntegervEXT ( GLuint vaobj , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayPointeri_vEXT_vaobj: vaobj index: index pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayPointeri_vEXT ( GLuint vaobj , GLuint index , GLenum pname , void** param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayPointervEXT_vaobj: vaobj pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayPointervEXT ( GLuint vaobj , GLenum pname , void** param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexArrayiv_vaobj: vaobj pname: pname param: param [
	^ self ffiCall: #( void glGetVertexArrayiv ( GLuint vaobj , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribArrayObjectfvATI_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribArrayObjectfvATI ( GLuint index , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribArrayObjectivATI_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribArrayObjectivATI ( GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribIivEXT_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribIivEXT ( GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribIiv_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribIiv ( GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribIuivEXT_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribIuivEXT ( GLuint index , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribIuiv_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribIuiv ( GLuint index , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribLdvEXT_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribLdvEXT ( GLuint index , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribLdv_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribLdv ( GLuint index , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribLi64vNV_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribLi64vNV ( GLuint index , GLenum pname , GLint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribLui64vARB_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribLui64vARB ( GLuint index , GLenum pname , GLuint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribLui64vNV_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribLui64vNV ( GLuint index , GLenum pname , GLuint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribPointervARB_index: index pname: pname pointer: pointer [
	^ self ffiCall: #( void glGetVertexAttribPointervARB ( GLuint index , GLenum pname , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribPointervNV_index: index pname: pname pointer: pointer [
	^ self ffiCall: #( void glGetVertexAttribPointervNV ( GLuint index , GLenum pname , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribPointerv_index: index pname: pname pointer: pointer [
	^ self ffiCall: #( void glGetVertexAttribPointerv ( GLuint index , GLenum pname , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribdvARB_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribdvARB ( GLuint index , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribdvNV_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribdvNV ( GLuint index , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribdv_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribdv ( GLuint index , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribfvARB_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribfvARB ( GLuint index , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribfvNV_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribfvNV ( GLuint index , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribfv_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribfv ( GLuint index , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribivARB_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribivARB ( GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribivNV_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribivNV ( GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVertexAttribiv_index: index pname: pname params: params [
	^ self ffiCall: #( void glGetVertexAttribiv ( GLuint index , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoCaptureStreamdvNV_video_capture_slot: video_capture_slot stream: stream pname: pname params: params [
	^ self ffiCall: #( void glGetVideoCaptureStreamdvNV ( GLuint video_capture_slot , GLuint stream , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoCaptureStreamfvNV_video_capture_slot: video_capture_slot stream: stream pname: pname params: params [
	^ self ffiCall: #( void glGetVideoCaptureStreamfvNV ( GLuint video_capture_slot , GLuint stream , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoCaptureStreamivNV_video_capture_slot: video_capture_slot stream: stream pname: pname params: params [
	^ self ffiCall: #( void glGetVideoCaptureStreamivNV ( GLuint video_capture_slot , GLuint stream , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoCaptureivNV_video_capture_slot: video_capture_slot pname: pname params: params [
	^ self ffiCall: #( void glGetVideoCaptureivNV ( GLuint video_capture_slot , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoi64vNV_video_slot: video_slot pname: pname params: params [
	^ self ffiCall: #( void glGetVideoi64vNV ( GLuint video_slot , GLenum pname , GLint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoivNV_video_slot: video_slot pname: pname params: params [
	^ self ffiCall: #( void glGetVideoivNV ( GLuint video_slot , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideoui64vNV_video_slot: video_slot pname: pname params: params [
	^ self ffiCall: #( void glGetVideoui64vNV ( GLuint video_slot , GLenum pname , GLuint64EXT* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getVideouivNV_video_slot: video_slot pname: pname params: params [
	^ self ffiCall: #( void glGetVideouivNV ( GLuint video_slot , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnColorTableARB_target: target format: format type: type bufSize: bufSize table: table [
	^ self ffiCall: #( void glGetnColorTableARB ( GLenum target , GLenum format , GLenum type , GLsizei bufSize , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnColorTable_target: target format: format type: type bufSize: bufSize table: table [
	^ self ffiCall: #( void glGetnColorTable ( GLenum target , GLenum format , GLenum type , GLsizei bufSize , void* table ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnCompressedTexImageARB_target: target lod: lod bufSize: bufSize img: img [
	^ self ffiCall: #( void glGetnCompressedTexImageARB ( GLenum target , GLint lod , GLsizei bufSize , void* img ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnCompressedTexImage_target: target lod: lod bufSize: bufSize pixels: pixels [
	^ self ffiCall: #( void glGetnCompressedTexImage ( GLenum target , GLint lod , GLsizei bufSize , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnConvolutionFilterARB_target: target format: format type: type bufSize: bufSize image: image [
	^ self ffiCall: #( void glGetnConvolutionFilterARB ( GLenum target , GLenum format , GLenum type , GLsizei bufSize , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnConvolutionFilter_target: target format: format type: type bufSize: bufSize image: image [
	^ self ffiCall: #( void glGetnConvolutionFilter ( GLenum target , GLenum format , GLenum type , GLsizei bufSize , void* image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnHistogramARB_target: target reset: reset format: format type: type bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnHistogramARB ( GLenum target , GLboolean reset , GLenum format , GLenum type , GLsizei bufSize , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnHistogram_target: target reset: reset format: format type: type bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnHistogram ( GLenum target , GLboolean reset , GLenum format , GLenum type , GLsizei bufSize , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMapdvARB_target: target query: query bufSize: bufSize v: v [
	^ self ffiCall: #( void glGetnMapdvARB ( GLenum target , GLenum query , GLsizei bufSize , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMapdv_target: target query: query bufSize: bufSize v: v [
	^ self ffiCall: #( void glGetnMapdv ( GLenum target , GLenum query , GLsizei bufSize , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMapfvARB_target: target query: query bufSize: bufSize v: v [
	^ self ffiCall: #( void glGetnMapfvARB ( GLenum target , GLenum query , GLsizei bufSize , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMapfv_target: target query: query bufSize: bufSize v: v [
	^ self ffiCall: #( void glGetnMapfv ( GLenum target , GLenum query , GLsizei bufSize , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMapivARB_target: target query: query bufSize: bufSize v: v [
	^ self ffiCall: #( void glGetnMapivARB ( GLenum target , GLenum query , GLsizei bufSize , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMapiv_target: target query: query bufSize: bufSize v: v [
	^ self ffiCall: #( void glGetnMapiv ( GLenum target , GLenum query , GLsizei bufSize , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMinmaxARB_target: target reset: reset format: format type: type bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnMinmaxARB ( GLenum target , GLboolean reset , GLenum format , GLenum type , GLsizei bufSize , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnMinmax_target: target reset: reset format: format type: type bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnMinmax ( GLenum target , GLboolean reset , GLenum format , GLenum type , GLsizei bufSize , void* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPixelMapfvARB_map: map bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnPixelMapfvARB ( GLenum map , GLsizei bufSize , GLfloat* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPixelMapfv_map: map bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnPixelMapfv ( GLenum map , GLsizei bufSize , GLfloat* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPixelMapuivARB_map: map bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnPixelMapuivARB ( GLenum map , GLsizei bufSize , GLuint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPixelMapuiv_map: map bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnPixelMapuiv ( GLenum map , GLsizei bufSize , GLuint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPixelMapusvARB_map: map bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnPixelMapusvARB ( GLenum map , GLsizei bufSize , GLushort* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPixelMapusv_map: map bufSize: bufSize values: values [
	^ self ffiCall: #( void glGetnPixelMapusv ( GLenum map , GLsizei bufSize , GLushort* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPolygonStippleARB_bufSize: bufSize pattern: pattern [
	^ self ffiCall: #( void glGetnPolygonStippleARB ( GLsizei bufSize , GLubyte* pattern ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnPolygonStipple_bufSize: bufSize pattern: pattern [
	^ self ffiCall: #( void glGetnPolygonStipple ( GLsizei bufSize , GLubyte* pattern ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnSeparableFilterARB_target: target format: format type: type rowBufSize: rowBufSize row: row columnBufSize: columnBufSize column: column span: span [
	^ self ffiCall: #( void glGetnSeparableFilterARB ( GLenum target , GLenum format , GLenum type , GLsizei rowBufSize , void* row , GLsizei columnBufSize , void* column , void* span ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnSeparableFilter_target: target format: format type: type rowBufSize: rowBufSize row: row columnBufSize: columnBufSize column: column span: span [
	^ self ffiCall: #( void glGetnSeparableFilter ( GLenum target , GLenum format , GLenum type , GLsizei rowBufSize , void* row , GLsizei columnBufSize , void* column , void* span ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnTexImageARB_target: target level: level format: format type: type bufSize: bufSize img: img [
	^ self ffiCall: #( void glGetnTexImageARB ( GLenum target , GLint level , GLenum format , GLenum type , GLsizei bufSize , void* img ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnTexImage_target: target level: level format: format type: type bufSize: bufSize pixels: pixels [
	^ self ffiCall: #( void glGetnTexImage ( GLenum target , GLint level , GLenum format , GLenum type , GLsizei bufSize , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformdvARB_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformdvARB ( GLuint program , GLint location , GLsizei bufSize , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformdv_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformdv ( GLuint program , GLint location , GLsizei bufSize , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformfvARB_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformfvARB ( GLuint program , GLint location , GLsizei bufSize , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformfvEXT_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformfvEXT ( GLuint program , GLint location , GLsizei bufSize , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformfvKHR_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformfvKHR ( GLuint program , GLint location , GLsizei bufSize , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformfv_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformfv ( GLuint program , GLint location , GLsizei bufSize , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformi64vARB_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformi64vARB ( GLuint program , GLint location , GLsizei bufSize , GLint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformivARB_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformivARB ( GLuint program , GLint location , GLsizei bufSize , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformivEXT_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformivEXT ( GLuint program , GLint location , GLsizei bufSize , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformivKHR_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformivKHR ( GLuint program , GLint location , GLsizei bufSize , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformiv_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformiv ( GLuint program , GLint location , GLsizei bufSize , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformui64vARB_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformui64vARB ( GLuint program , GLint location , GLsizei bufSize , GLuint64* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformuivARB_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformuivARB ( GLuint program , GLint location , GLsizei bufSize , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformuivKHR_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformuivKHR ( GLuint program , GLint location , GLsizei bufSize , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> getnUniformuiv_program: program location: location bufSize: bufSize params: params [
	^ self ffiCall: #( void glGetnUniformuiv ( GLuint program , GLint location , GLsizei bufSize , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactorbSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactorbSUN ( GLbyte factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactordSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactordSUN ( GLdouble factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactorfSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactorfSUN ( GLfloat factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactoriSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactoriSUN ( GLint factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactorsSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactorsSUN ( GLshort factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactorubSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactorubSUN ( GLubyte factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactoruiSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactoruiSUN ( GLuint factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> globalAlphaFactorusSUN: factor [
	^ self ffiCall: #( void glGlobalAlphaFactorusSUN ( GLushort factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> hintPGI_target: target mode: mode [
	^ self ffiCall: #( void glHintPGI ( GLenum target , GLint mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> hint_target: target mode: mode [
	^ self ffiCall: #( void glHint ( GLenum target , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> histogramEXT_target: target width: width internalformat: internalformat sink: sink [
	^ self ffiCall: #( void glHistogramEXT ( GLenum target , GLsizei width , GLenum internalformat , GLboolean sink ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> histogram_target: target width: width internalformat: internalformat sink: sink [
	^ self ffiCall: #( void glHistogram ( GLenum target , GLsizei width , GLenum internalformat , GLboolean sink ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> iglooInterfaceSGIX_pname: pname params: params [
	^ self ffiCall: #( void glIglooInterfaceSGIX ( GLenum pname , void* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> imageTransformParameterfHP_target: target pname: pname param: param [
	^ self ffiCall: #( void glImageTransformParameterfHP ( GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> imageTransformParameterfvHP_target: target pname: pname params: params [
	^ self ffiCall: #( void glImageTransformParameterfvHP ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> imageTransformParameteriHP_target: target pname: pname param: param [
	^ self ffiCall: #( void glImageTransformParameteriHP ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> imageTransformParameterivHP_target: target pname: pname params: params [
	^ self ffiCall: #( void glImageTransformParameterivHP ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> importSyncEXT_external_sync_type: external_sync_type external_sync: external_sync flags: flags [
	^ self ffiCall: #( GLsync glImportSyncEXT ( GLenum external_sync_type , GLintptr external_sync , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexFormatNV_type: type stride: stride [
	^ self ffiCall: #( void glIndexFormatNV ( GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexFuncEXT_func: func ref: ref [
	^ self ffiCall: #( void glIndexFuncEXT ( GLenum func , GLclampf ref ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexMask: mask [
	^ self ffiCall: #( void glIndexMask ( GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexMaterialEXT_face: face mode: mode [
	^ self ffiCall: #( void glIndexMaterialEXT ( GLenum face , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexPointerEXT_type: type stride: stride count: count pointer: pointer [
	^ self ffiCall: #( void glIndexPointerEXT ( GLenum type , GLsizei stride , GLsizei count , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexPointerListIBM_type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glIndexPointerListIBM ( GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexPointer_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glIndexPointer ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexd: c [
	^ self ffiCall: #( void glIndexd ( GLdouble c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexdv: c [
	^ self ffiCall: #( void glIndexdv ( GLdouble* c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexf: c [
	^ self ffiCall: #( void glIndexf ( GLfloat c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexfv: c [
	^ self ffiCall: #( void glIndexfv ( GLfloat* c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexi: c [
	^ self ffiCall: #( void glIndexi ( GLint c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexiv: c [
	^ self ffiCall: #( void glIndexiv ( GLint* c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexs: c [
	^ self ffiCall: #( void glIndexs ( GLshort c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexsv: c [
	^ self ffiCall: #( void glIndexsv ( GLshort* c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexub: c [
	^ self ffiCall: #( void glIndexub ( GLubyte c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexubv: c [
	^ self ffiCall: #( void glIndexubv ( GLubyte* c ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexxOES: component [
	^ self ffiCall: #( void glIndexxOES ( GLfixed component ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> indexxvOES: component [
	^ self ffiCall: #( void glIndexxvOES ( GLfixed* component ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> initNames [
	^ self ffiCall: #( void glInitNames ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> insertComponentEXT_res: res src: src num: num [
	^ self ffiCall: #( void glInsertComponentEXT ( GLuint res , GLuint src , GLuint num ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> insertEventMarkerEXT_length: length marker: marker [
	^ self ffiCall: #( void glInsertEventMarkerEXT ( GLsizei length , GLchar* marker ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> instrumentsBufferSGIX_size: size buffer: buffer [
	^ self ffiCall: #( void glInstrumentsBufferSGIX ( GLsizei size , GLint* buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> interleavedArrays_format: format stride: stride pointer: pointer [
	^ self ffiCall: #( void glInterleavedArrays ( GLenum format , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> interpolatePathsNV_resultPath: resultPath pathA: pathA pathB: pathB weight: weight [
	^ self ffiCall: #( void glInterpolatePathsNV ( GLuint resultPath , GLuint pathA , GLuint pathB , GLfloat weight ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateBufferData: buffer [
	^ self ffiCall: #( void glInvalidateBufferData ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateBufferSubData_buffer: buffer offset: offset length: length [
	^ self ffiCall: #( void glInvalidateBufferSubData ( GLuint buffer , GLintptr offset , GLsizeiptr length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateFramebuffer_target: target numAttachments: numAttachments attachments: attachments [
	^ self ffiCall: #( void glInvalidateFramebuffer ( GLenum target , GLsizei numAttachments , GLenum* attachments ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateNamedFramebufferData_framebuffer: framebuffer numAttachments: numAttachments attachments: attachments [
	^ self ffiCall: #( void glInvalidateNamedFramebufferData ( GLuint framebuffer , GLsizei numAttachments , GLenum* attachments ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateNamedFramebufferSubData_framebuffer: framebuffer numAttachments: numAttachments attachments: attachments x: x y: y width: width height: height [
	^ self ffiCall: #( void glInvalidateNamedFramebufferSubData ( GLuint framebuffer , GLsizei numAttachments , GLenum* attachments , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateSubFramebuffer_target: target numAttachments: numAttachments attachments: attachments x: x y: y width: width height: height [
	^ self ffiCall: #( void glInvalidateSubFramebuffer ( GLenum target , GLsizei numAttachments , GLenum* attachments , GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateTexImage_texture: texture level: level [
	^ self ffiCall: #( void glInvalidateTexImage ( GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> invalidateTexSubImage_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth [
	^ self ffiCall: #( void glInvalidateTexSubImage ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isAsyncMarkerSGIX: marker [
	^ self ffiCall: #( GLboolean glIsAsyncMarkerSGIX ( GLuint marker ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isBuffer: buffer [
	^ self ffiCall: #( GLboolean glIsBuffer ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isBufferARB: buffer [
	^ self ffiCall: #( GLboolean glIsBufferARB ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isBufferResidentNV: target [
	^ self ffiCall: #( GLboolean glIsBufferResidentNV ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isCommandListNV: list [
	^ self ffiCall: #( GLboolean glIsCommandListNV ( GLuint list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isEnabled: cap [
	^ self ffiCall: #( GLboolean glIsEnabled ( GLenum cap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isEnabledIndexedEXT_target: target index: index [
	^ self ffiCall: #( GLboolean glIsEnabledIndexedEXT ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isEnablediEXT_target: target index: index [
	^ self ffiCall: #( GLboolean glIsEnablediEXT ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isEnablediNV_target: target index: index [
	^ self ffiCall: #( GLboolean glIsEnablediNV ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isEnablediOES_target: target index: index [
	^ self ffiCall: #( GLboolean glIsEnablediOES ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isEnabledi_target: target index: index [
	^ self ffiCall: #( GLboolean glIsEnabledi ( GLenum target , GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isFenceAPPLE: fence [
	^ self ffiCall: #( GLboolean glIsFenceAPPLE ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isFenceNV: fence [
	^ self ffiCall: #( GLboolean glIsFenceNV ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isFramebuffer: framebuffer [
	^ self ffiCall: #( GLboolean glIsFramebuffer ( GLuint framebuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isFramebufferEXT: framebuffer [
	^ self ffiCall: #( GLboolean glIsFramebufferEXT ( GLuint framebuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isFramebufferOES: framebuffer [
	^ self ffiCall: #( GLboolean glIsFramebufferOES ( GLuint framebuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isImageHandleResidentARB: handle [
	^ self ffiCall: #( GLboolean glIsImageHandleResidentARB ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isImageHandleResidentNV: handle [
	^ self ffiCall: #( GLboolean glIsImageHandleResidentNV ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isList: list [
	^ self ffiCall: #( GLboolean glIsList ( GLuint list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isNameAMD_identifier: identifier name: name [
	^ self ffiCall: #( GLboolean glIsNameAMD ( GLenum identifier , GLuint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isNamedBufferResidentNV: buffer [
	^ self ffiCall: #( GLboolean glIsNamedBufferResidentNV ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isNamedStringARB_namelen: namelen name: name [
	^ self ffiCall: #( GLboolean glIsNamedStringARB ( GLint namelen , GLchar* name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isObjectBufferATI: buffer [
	^ self ffiCall: #( GLboolean glIsObjectBufferATI ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isOcclusionQueryNV: id [
	^ self ffiCall: #( GLboolean glIsOcclusionQueryNV ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isPathNV: path [
	^ self ffiCall: #( GLboolean glIsPathNV ( GLuint path ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isPointInFillPathNV_path: path mask: mask x: x y: y [
	^ self ffiCall: #( GLboolean glIsPointInFillPathNV ( GLuint path , GLuint mask , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isPointInStrokePathNV_path: path x: x y: y [
	^ self ffiCall: #( GLboolean glIsPointInStrokePathNV ( GLuint path , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isProgram: program [
	^ self ffiCall: #( GLboolean glIsProgram ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isProgramARB: program [
	^ self ffiCall: #( GLboolean glIsProgramARB ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isProgramNV: id [
	^ self ffiCall: #( GLboolean glIsProgramNV ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isProgramPipeline: pipeline [
	^ self ffiCall: #( GLboolean glIsProgramPipeline ( GLuint pipeline ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isProgramPipelineEXT: pipeline [
	^ self ffiCall: #( GLboolean glIsProgramPipelineEXT ( GLuint pipeline ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isQuery: id [
	^ self ffiCall: #( GLboolean glIsQuery ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isQueryARB: id [
	^ self ffiCall: #( GLboolean glIsQueryARB ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isQueryEXT: id [
	^ self ffiCall: #( GLboolean glIsQueryEXT ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isRenderbuffer: renderbuffer [
	^ self ffiCall: #( GLboolean glIsRenderbuffer ( GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isRenderbufferEXT: renderbuffer [
	^ self ffiCall: #( GLboolean glIsRenderbufferEXT ( GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isRenderbufferOES: renderbuffer [
	^ self ffiCall: #( GLboolean glIsRenderbufferOES ( GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isSampler: sampler [
	^ self ffiCall: #( GLboolean glIsSampler ( GLuint sampler ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isShader: shader [
	^ self ffiCall: #( GLboolean glIsShader ( GLuint shader ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isStateNV: state [
	^ self ffiCall: #( GLboolean glIsStateNV ( GLuint state ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isSync: sync [
	^ self ffiCall: #( GLboolean glIsSync ( GLsync sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isSyncAPPLE: sync [
	^ self ffiCall: #( GLboolean glIsSyncAPPLE ( GLsync sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isTexture: texture [
	^ self ffiCall: #( GLboolean glIsTexture ( GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isTextureEXT: texture [
	^ self ffiCall: #( GLboolean glIsTextureEXT ( GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isTextureHandleResidentARB: handle [
	^ self ffiCall: #( GLboolean glIsTextureHandleResidentARB ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isTextureHandleResidentNV: handle [
	^ self ffiCall: #( GLboolean glIsTextureHandleResidentNV ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isTransformFeedback: id [
	^ self ffiCall: #( GLboolean glIsTransformFeedback ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isTransformFeedbackNV: id [
	^ self ffiCall: #( GLboolean glIsTransformFeedbackNV ( GLuint id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isVariantEnabledEXT_id: id cap: cap [
	^ self ffiCall: #( GLboolean glIsVariantEnabledEXT ( GLuint id , GLenum cap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isVertexArray: array [
	^ self ffiCall: #( GLboolean glIsVertexArray ( GLuint array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isVertexArrayAPPLE: array [
	^ self ffiCall: #( GLboolean glIsVertexArrayAPPLE ( GLuint array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isVertexArrayOES: array [
	^ self ffiCall: #( GLboolean glIsVertexArrayOES ( GLuint array ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> isVertexAttribEnabledAPPLE_index: index pname: pname [
	^ self ffiCall: #( GLboolean glIsVertexAttribEnabledAPPLE ( GLuint index , GLenum pname ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> labelObjectEXT_type: type object: object length: length label: label [
	^ self ffiCall: #( void glLabelObjectEXT ( GLenum type , GLuint object , GLsizei length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightEnviSGIX_pname: pname param: param [
	^ self ffiCall: #( void glLightEnviSGIX ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModelf_pname: pname param: param [
	^ self ffiCall: #( void glLightModelf ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModelfv_pname: pname params: params [
	^ self ffiCall: #( void glLightModelfv ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModeli_pname: pname param: param [
	^ self ffiCall: #( void glLightModeli ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModeliv_pname: pname params: params [
	^ self ffiCall: #( void glLightModeliv ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModelxOES_pname: pname param: param [
	^ self ffiCall: #( void glLightModelxOES ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModelx_pname: pname param: param [
	^ self ffiCall: #( void glLightModelx ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModelxvOES_pname: pname param: param [
	^ self ffiCall: #( void glLightModelxvOES ( GLenum pname , GLfixed* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightModelxv_pname: pname param: param [
	^ self ffiCall: #( void glLightModelxv ( GLenum pname , GLfixed* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightf_light: light pname: pname param: param [
	^ self ffiCall: #( void glLightf ( GLenum light , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightfv_light: light pname: pname params: params [
	^ self ffiCall: #( void glLightfv ( GLenum light , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lighti_light: light pname: pname param: param [
	^ self ffiCall: #( void glLighti ( GLenum light , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightiv_light: light pname: pname params: params [
	^ self ffiCall: #( void glLightiv ( GLenum light , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightxOES_light: light pname: pname param: param [
	^ self ffiCall: #( void glLightxOES ( GLenum light , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightx_light: light pname: pname param: param [
	^ self ffiCall: #( void glLightx ( GLenum light , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightxvOES_light: light pname: pname params: params [
	^ self ffiCall: #( void glLightxvOES ( GLenum light , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lightxv_light: light pname: pname params: params [
	^ self ffiCall: #( void glLightxv ( GLenum light , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lineStipple_factor: factor pattern: pattern [
	^ self ffiCall: #( void glLineStipple ( GLint factor , GLushort pattern ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lineWidth: width [
	^ self ffiCall: #( void glLineWidth ( GLfloat width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lineWidthx: width [
	^ self ffiCall: #( void glLineWidthx ( GLfixed width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lineWidthxOES: width [
	^ self ffiCall: #( void glLineWidthxOES ( GLfixed width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> linkProgram: program [
	^ self ffiCall: #( void glLinkProgram ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> linkProgramARB: programObj [
	^ self ffiCall: #( void glLinkProgramARB ( GLhandleARB programObj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> listBase: base [
	^ self ffiCall: #( void glListBase ( GLuint base ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> listDrawCommandsStatesClientNV_list: list segment: segment indirects: indirects sizes: sizes states: states fbos: fbos count: count [
	^ self ffiCall: #( void glListDrawCommandsStatesClientNV ( GLuint list , GLuint segment , void** indirects , GLsizei* sizes , GLuint* states , GLuint* fbos , GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> listParameterfSGIX_list: list pname: pname param: param [
	^ self ffiCall: #( void glListParameterfSGIX ( GLuint list , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> listParameterfvSGIX_list: list pname: pname params: params [
	^ self ffiCall: #( void glListParameterfvSGIX ( GLuint list , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> listParameteriSGIX_list: list pname: pname param: param [
	^ self ffiCall: #( void glListParameteriSGIX ( GLuint list , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> listParameterivSGIX_list: list pname: pname params: params [
	^ self ffiCall: #( void glListParameterivSGIX ( GLuint list , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadIdentity [
	^ self ffiCall: #( void glLoadIdentity ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadIdentityDeformationMapSGIX: mask [
	^ self ffiCall: #( void glLoadIdentityDeformationMapSGIX ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadMatrixd: m [
	^ self ffiCall: #( void glLoadMatrixd ( GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadMatrixf: m [
	^ self ffiCall: #( void glLoadMatrixf ( GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadMatrixx: m [
	^ self ffiCall: #( void glLoadMatrixx ( GLfixed* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadMatrixxOES: m [
	^ self ffiCall: #( void glLoadMatrixxOES ( GLfixed* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadName: name [
	^ self ffiCall: #( void glLoadName ( GLuint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadPaletteFromModelViewMatrixOES [
	^ self ffiCall: #( void glLoadPaletteFromModelViewMatrixOES ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadProgramNV_target: target id: id len: len program: program [
	^ self ffiCall: #( void glLoadProgramNV ( GLenum target , GLuint id , GLsizei len , GLubyte* program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadTransposeMatrixd: m [
	^ self ffiCall: #( void glLoadTransposeMatrixd ( GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadTransposeMatrixdARB: m [
	^ self ffiCall: #( void glLoadTransposeMatrixdARB ( GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadTransposeMatrixf: m [
	^ self ffiCall: #( void glLoadTransposeMatrixf ( GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadTransposeMatrixfARB: m [
	^ self ffiCall: #( void glLoadTransposeMatrixfARB ( GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> loadTransposeMatrixxOES: m [
	^ self ffiCall: #( void glLoadTransposeMatrixxOES ( GLfixed* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> lockArraysEXT_first: first count: count [
	^ self ffiCall: #( void glLockArraysEXT ( GLint first , GLsizei count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> logicOp: opcode [
	^ self ffiCall: #( void glLogicOp ( GLenum opcode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeBufferNonResidentNV: target [
	^ self ffiCall: #( void glMakeBufferNonResidentNV ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeBufferResidentNV_target: target access: access [
	^ self ffiCall: #( void glMakeBufferResidentNV ( GLenum target , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeImageHandleNonResidentARB: handle [
	^ self ffiCall: #( void glMakeImageHandleNonResidentARB ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeImageHandleNonResidentNV: handle [
	^ self ffiCall: #( void glMakeImageHandleNonResidentNV ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeImageHandleResidentARB_handle: handle access: access [
	^ self ffiCall: #( void glMakeImageHandleResidentARB ( GLuint64 handle , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeImageHandleResidentNV_handle: handle access: access [
	^ self ffiCall: #( void glMakeImageHandleResidentNV ( GLuint64 handle , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeNamedBufferNonResidentNV: buffer [
	^ self ffiCall: #( void glMakeNamedBufferNonResidentNV ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeNamedBufferResidentNV_buffer: buffer access: access [
	^ self ffiCall: #( void glMakeNamedBufferResidentNV ( GLuint buffer , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeTextureHandleNonResidentARB: handle [
	^ self ffiCall: #( void glMakeTextureHandleNonResidentARB ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeTextureHandleNonResidentNV: handle [
	^ self ffiCall: #( void glMakeTextureHandleNonResidentNV ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeTextureHandleResidentARB: handle [
	^ self ffiCall: #( void glMakeTextureHandleResidentARB ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> makeTextureHandleResidentNV: handle [
	^ self ffiCall: #( void glMakeTextureHandleResidentNV ( GLuint64 handle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> map1d_target: target u1: u1 u2: u2 stride: stride order: order points: points [
	^ self ffiCall: #( void glMap1d ( GLenum target , GLdouble u1 , GLdouble u2 , GLint stride , GLint order , GLdouble* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> map1f_target: target u1: u1 u2: u2 stride: stride order: order points: points [
	^ self ffiCall: #( void glMap1f ( GLenum target , GLfloat u1 , GLfloat u2 , GLint stride , GLint order , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> map1xOES_target: target u1: u1 u2: u2 stride: stride order: order points: points [
	^ self ffiCall: #( void glMap1xOES ( GLenum target , GLfixed u1 , GLfixed u2 , GLint stride , GLint order , GLfixed points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> map2d_target: target u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder points: points [
	^ self ffiCall: #( void glMap2d ( GLenum target , GLdouble u1 , GLdouble u2 , GLint ustride , GLint uorder , GLdouble v1 , GLdouble v2 , GLint vstride , GLint vorder , GLdouble* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> map2f_target: target u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder points: points [
	^ self ffiCall: #( void glMap2f ( GLenum target , GLfloat u1 , GLfloat u2 , GLint ustride , GLint uorder , GLfloat v1 , GLfloat v2 , GLint vstride , GLint vorder , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> map2xOES_target: target u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder points: points [
	^ self ffiCall: #( void glMap2xOES ( GLenum target , GLfixed u1 , GLfixed u2 , GLint ustride , GLint uorder , GLfixed v1 , GLfixed v2 , GLint vstride , GLint vorder , GLfixed points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapBufferARB_target: target access: access [
	^ self ffiCall: #( void* glMapBufferARB ( GLenum target , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapBufferOES_target: target access: access [
	^ self ffiCall: #( void* glMapBufferOES ( GLenum target , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapBufferRangeEXT_target: target offset: offset length: length access: access [
	^ self ffiCall: #( void* glMapBufferRangeEXT ( GLenum target , GLintptr offset , GLsizeiptr length , GLbitfield access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapBufferRange_target: target offset: offset length: length access: access [
	^ self ffiCall: #( void* glMapBufferRange ( GLenum target , GLintptr offset , GLsizeiptr length , GLbitfield access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapBuffer_target: target access: access [
	^ self ffiCall: #( void* glMapBuffer ( GLenum target , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapControlPointsNV_target: target index: index type: type ustride: ustride vstride: vstride uorder: uorder vorder: vorder packed: packed points: points [
	^ self ffiCall: #( void glMapControlPointsNV ( GLenum target , GLuint index , GLenum type , GLsizei ustride , GLsizei vstride , GLint uorder , GLint vorder , GLboolean packed , void* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapGrid1d_un: un u1: u1 u2: u2 [
	^ self ffiCall: #( void glMapGrid1d ( GLint un , GLdouble u1 , GLdouble u2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapGrid1f_un: un u1: u1 u2: u2 [
	^ self ffiCall: #( void glMapGrid1f ( GLint un , GLfloat u1 , GLfloat u2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapGrid1xOES_n: n u1: u1 u2: u2 [
	^ self ffiCall: #( void glMapGrid1xOES ( GLint n , GLfixed u1 , GLfixed u2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapGrid2d_un: un u1: u1 u2: u2 vn: vn v1: v1 v2: v2 [
	^ self ffiCall: #( void glMapGrid2d ( GLint un , GLdouble u1 , GLdouble u2 , GLint vn , GLdouble v1 , GLdouble v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapGrid2f_un: un u1: u1 u2: u2 vn: vn v1: v1 v2: v2 [
	^ self ffiCall: #( void glMapGrid2f ( GLint un , GLfloat u1 , GLfloat u2 , GLint vn , GLfloat v1 , GLfloat v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapGrid2xOES_n: n u1: u1 u2: u2 v1: v1 v2: v2 [
	^ self ffiCall: #( void glMapGrid2xOES ( GLint n , GLfixed u1 , GLfixed u2 , GLfixed v1 , GLfixed v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapNamedBufferEXT_buffer: buffer access: access [
	^ self ffiCall: #( void* glMapNamedBufferEXT ( GLuint buffer , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapNamedBufferRangeEXT_buffer: buffer offset: offset length: length access: access [
	^ self ffiCall: #( void* glMapNamedBufferRangeEXT ( GLuint buffer , GLintptr offset , GLsizeiptr length , GLbitfield access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapNamedBufferRange_buffer: buffer offset: offset length: length access: access [
	^ self ffiCall: #( void* glMapNamedBufferRange ( GLuint buffer , GLintptr offset , GLsizeiptr length , GLbitfield access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapNamedBuffer_buffer: buffer access: access [
	^ self ffiCall: #( void* glMapNamedBuffer ( GLuint buffer , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapObjectBufferATI: buffer [
	^ self ffiCall: #( void* glMapObjectBufferATI ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapParameterfvNV_target: target pname: pname params: params [
	^ self ffiCall: #( void glMapParameterfvNV ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapParameterivNV_target: target pname: pname params: params [
	^ self ffiCall: #( void glMapParameterivNV ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapTexture2DINTEL_texture: texture level: level access: access stride: stride layout: layout [
	^ self ffiCall: #( void* glMapTexture2DINTEL ( GLuint texture , GLint level , GLbitfield access , GLint* stride , GLenum* layout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapVertexAttrib1dAPPLE_index: index size: size u1: u1 u2: u2 stride: stride order: order points: points [
	^ self ffiCall: #( void glMapVertexAttrib1dAPPLE ( GLuint index , GLuint size , GLdouble u1 , GLdouble u2 , GLint stride , GLint order , GLdouble* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapVertexAttrib1fAPPLE_index: index size: size u1: u1 u2: u2 stride: stride order: order points: points [
	^ self ffiCall: #( void glMapVertexAttrib1fAPPLE ( GLuint index , GLuint size , GLfloat u1 , GLfloat u2 , GLint stride , GLint order , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapVertexAttrib2dAPPLE_index: index size: size u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder points: points [
	^ self ffiCall: #( void glMapVertexAttrib2dAPPLE ( GLuint index , GLuint size , GLdouble u1 , GLdouble u2 , GLint ustride , GLint uorder , GLdouble v1 , GLdouble v2 , GLint vstride , GLint vorder , GLdouble* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> mapVertexAttrib2fAPPLE_index: index size: size u1: u1 u2: u2 ustride: ustride uorder: uorder v1: v1 v2: v2 vstride: vstride vorder: vorder points: points [
	^ self ffiCall: #( void glMapVertexAttrib2fAPPLE ( GLuint index , GLuint size , GLfloat u1 , GLfloat u2 , GLint ustride , GLint uorder , GLfloat v1 , GLfloat v2 , GLint vstride , GLint vorder , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialf_face: face pname: pname param: param [
	^ self ffiCall: #( void glMaterialf ( GLenum face , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialfv_face: face pname: pname params: params [
	^ self ffiCall: #( void glMaterialfv ( GLenum face , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materiali_face: face pname: pname param: param [
	^ self ffiCall: #( void glMateriali ( GLenum face , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialiv_face: face pname: pname params: params [
	^ self ffiCall: #( void glMaterialiv ( GLenum face , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialxOES_face: face pname: pname param: param [
	^ self ffiCall: #( void glMaterialxOES ( GLenum face , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialx_face: face pname: pname param: param [
	^ self ffiCall: #( void glMaterialx ( GLenum face , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialxvOES_face: face pname: pname param: param [
	^ self ffiCall: #( void glMaterialxvOES ( GLenum face , GLenum pname , GLfixed* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> materialxv_face: face pname: pname param: param [
	^ self ffiCall: #( void glMaterialxv ( GLenum face , GLenum pname , GLfixed* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixFrustumEXT_mode: mode left: left right: right bottom: bottom top: top zNear: zNear zFar: zFar [
	^ self ffiCall: #( void glMatrixFrustumEXT ( GLenum mode , GLdouble left , GLdouble right , GLdouble bottom , GLdouble top , GLdouble zNear , GLdouble zFar ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixIndexPointerARB_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glMatrixIndexPointerARB ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixIndexPointerOES_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glMatrixIndexPointerOES ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixIndexubvARB_size: size indices: indices [
	^ self ffiCall: #( void glMatrixIndexubvARB ( GLint size , GLubyte* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixIndexuivARB_size: size indices: indices [
	^ self ffiCall: #( void glMatrixIndexuivARB ( GLint size , GLuint* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixIndexusvARB_size: size indices: indices [
	^ self ffiCall: #( void glMatrixIndexusvARB ( GLint size , GLushort* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoad3x2fNV_matrixMode: matrixMode m: m [
	^ self ffiCall: #( void glMatrixLoad3x2fNV ( GLenum matrixMode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoad3x3fNV_matrixMode: matrixMode m: m [
	^ self ffiCall: #( void glMatrixLoad3x3fNV ( GLenum matrixMode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoadIdentityEXT: mode [
	^ self ffiCall: #( void glMatrixLoadIdentityEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoadTranspose3x3fNV_matrixMode: matrixMode m: m [
	^ self ffiCall: #( void glMatrixLoadTranspose3x3fNV ( GLenum matrixMode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoadTransposedEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixLoadTransposedEXT ( GLenum mode , GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoadTransposefEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixLoadTransposefEXT ( GLenum mode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoaddEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixLoaddEXT ( GLenum mode , GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixLoadfEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixLoadfEXT ( GLenum mode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMode: mode [
	^ self ffiCall: #( void glMatrixMode ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMult3x2fNV_matrixMode: matrixMode m: m [
	^ self ffiCall: #( void glMatrixMult3x2fNV ( GLenum matrixMode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMult3x3fNV_matrixMode: matrixMode m: m [
	^ self ffiCall: #( void glMatrixMult3x3fNV ( GLenum matrixMode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMultTranspose3x3fNV_matrixMode: matrixMode m: m [
	^ self ffiCall: #( void glMatrixMultTranspose3x3fNV ( GLenum matrixMode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMultTransposedEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixMultTransposedEXT ( GLenum mode , GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMultTransposefEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixMultTransposefEXT ( GLenum mode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMultdEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixMultdEXT ( GLenum mode , GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixMultfEXT_mode: mode m: m [
	^ self ffiCall: #( void glMatrixMultfEXT ( GLenum mode , GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixOrthoEXT_mode: mode left: left right: right bottom: bottom top: top zNear: zNear zFar: zFar [
	^ self ffiCall: #( void glMatrixOrthoEXT ( GLenum mode , GLdouble left , GLdouble right , GLdouble bottom , GLdouble top , GLdouble zNear , GLdouble zFar ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixPopEXT: mode [
	^ self ffiCall: #( void glMatrixPopEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixPushEXT: mode [
	^ self ffiCall: #( void glMatrixPushEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixRotatedEXT_mode: mode angle: angle x: x y: y z: z [
	^ self ffiCall: #( void glMatrixRotatedEXT ( GLenum mode , GLdouble angle , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixRotatefEXT_mode: mode angle: angle x: x y: y z: z [
	^ self ffiCall: #( void glMatrixRotatefEXT ( GLenum mode , GLfloat angle , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixScaledEXT_mode: mode x: x y: y z: z [
	^ self ffiCall: #( void glMatrixScaledEXT ( GLenum mode , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixScalefEXT_mode: mode x: x y: y z: z [
	^ self ffiCall: #( void glMatrixScalefEXT ( GLenum mode , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixTranslatedEXT_mode: mode x: x y: y z: z [
	^ self ffiCall: #( void glMatrixTranslatedEXT ( GLenum mode , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> matrixTranslatefEXT_mode: mode x: x y: y z: z [
	^ self ffiCall: #( void glMatrixTranslatefEXT ( GLenum mode , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> maxShaderCompilerThreadsARB: count [
	^ self ffiCall: #( void glMaxShaderCompilerThreadsARB ( GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> memoryBarrier: barriers [
	^ self ffiCall: #( void glMemoryBarrier ( GLbitfield barriers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> memoryBarrierByRegion: barriers [
	^ self ffiCall: #( void glMemoryBarrierByRegion ( GLbitfield barriers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> memoryBarrierEXT: barriers [
	^ self ffiCall: #( void glMemoryBarrierEXT ( GLbitfield barriers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> minSampleShading: value [
	^ self ffiCall: #( void glMinSampleShading ( GLfloat value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> minSampleShadingARB: value [
	^ self ffiCall: #( void glMinSampleShadingARB ( GLfloat value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> minSampleShadingOES: value [
	^ self ffiCall: #( void glMinSampleShadingOES ( GLfloat value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> minmaxEXT_target: target internalformat: internalformat sink: sink [
	^ self ffiCall: #( void glMinmaxEXT ( GLenum target , GLenum internalformat , GLboolean sink ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> minmax_target: target internalformat: internalformat sink: sink [
	^ self ffiCall: #( void glMinmax ( GLenum target , GLenum internalformat , GLboolean sink ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multMatrixd: m [
	^ self ffiCall: #( void glMultMatrixd ( GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multMatrixf: m [
	^ self ffiCall: #( void glMultMatrixf ( GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multMatrixx: m [
	^ self ffiCall: #( void glMultMatrixx ( GLfixed* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multMatrixxOES: m [
	^ self ffiCall: #( void glMultMatrixxOES ( GLfixed* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multTransposeMatrixd: m [
	^ self ffiCall: #( void glMultTransposeMatrixd ( GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multTransposeMatrixdARB: m [
	^ self ffiCall: #( void glMultTransposeMatrixdARB ( GLdouble* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multTransposeMatrixf: m [
	^ self ffiCall: #( void glMultTransposeMatrixf ( GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multTransposeMatrixfARB: m [
	^ self ffiCall: #( void glMultTransposeMatrixfARB ( GLfloat* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multTransposeMatrixxOES: m [
	^ self ffiCall: #( void glMultTransposeMatrixxOES ( GLfixed* m ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysEXT_mode: mode first: first count: count primcount: primcount [
	^ self ffiCall: #( void glMultiDrawArraysEXT ( GLenum mode , GLint* first , GLsizei* count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysIndirectAMD_mode: mode indirect: indirect primcount: primcount stride: stride [
	^ self ffiCall: #( void glMultiDrawArraysIndirectAMD ( GLenum mode , void* indirect , GLsizei primcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysIndirectBindlessCountNV_mode: mode indirect: indirect drawCount: drawCount maxDrawCount: maxDrawCount stride: stride vertexBufferCount: vertexBufferCount [
	^ self ffiCall: #( void glMultiDrawArraysIndirectBindlessCountNV ( GLenum mode , void* indirect , GLsizei drawCount , GLsizei maxDrawCount , GLsizei stride , GLint vertexBufferCount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysIndirectBindlessNV_mode: mode indirect: indirect drawCount: drawCount stride: stride vertexBufferCount: vertexBufferCount [
	^ self ffiCall: #( void glMultiDrawArraysIndirectBindlessNV ( GLenum mode , void* indirect , GLsizei drawCount , GLsizei stride , GLint vertexBufferCount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysIndirectCountARB_mode: mode indirect: indirect drawcount: drawcount maxdrawcount: maxdrawcount stride: stride [
	^ self ffiCall: #( void glMultiDrawArraysIndirectCountARB ( GLenum mode , GLintptr indirect , GLintptr drawcount , GLsizei maxdrawcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysIndirectEXT_mode: mode indirect: indirect drawcount: drawcount stride: stride [
	^ self ffiCall: #( void glMultiDrawArraysIndirectEXT ( GLenum mode , void* indirect , GLsizei drawcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArraysIndirect_mode: mode indirect: indirect drawcount: drawcount stride: stride [
	^ self ffiCall: #( void glMultiDrawArraysIndirect ( GLenum mode , void* indirect , GLsizei drawcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawArrays_mode: mode first: first count: count drawcount: drawcount [
	^ self ffiCall: #( void glMultiDrawArrays ( GLenum mode , GLint* first , GLsizei* count , GLsizei drawcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementArrayAPPLE_mode: mode first: first count: count primcount: primcount [
	^ self ffiCall: #( void glMultiDrawElementArrayAPPLE ( GLenum mode , GLint* first , GLsizei* count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsBaseVertexEXT_mode: mode count: count type: type indices: indices primcount: primcount basevertex: basevertex [
	^ self ffiCall: #( void glMultiDrawElementsBaseVertexEXT ( GLenum mode , GLsizei* count , GLenum type , void** indices , GLsizei primcount , GLint* basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsBaseVertexOES_mode: mode count: count type: type indices: indices primcount: primcount basevertex: basevertex [
	^ self ffiCall: #( void glMultiDrawElementsBaseVertexOES ( GLenum mode , GLsizei* count , GLenum type , void** indices , GLsizei primcount , GLint* basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsBaseVertex_mode: mode count: count type: type indices: indices drawcount: drawcount basevertex: basevertex [
	^ self ffiCall: #( void glMultiDrawElementsBaseVertex ( GLenum mode , GLsizei* count , GLenum type , void** indices , GLsizei drawcount , GLint* basevertex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsEXT_mode: mode count: count type: type indices: indices primcount: primcount [
	^ self ffiCall: #( void glMultiDrawElementsEXT ( GLenum mode , GLsizei* count , GLenum type , void** indices , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsIndirectAMD_mode: mode type: type indirect: indirect primcount: primcount stride: stride [
	^ self ffiCall: #( void glMultiDrawElementsIndirectAMD ( GLenum mode , GLenum type , void* indirect , GLsizei primcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsIndirectBindlessCountNV_mode: mode type: type indirect: indirect drawCount: drawCount maxDrawCount: maxDrawCount stride: stride vertexBufferCount: vertexBufferCount [
	^ self ffiCall: #( void glMultiDrawElementsIndirectBindlessCountNV ( GLenum mode , GLenum type , void* indirect , GLsizei drawCount , GLsizei maxDrawCount , GLsizei stride , GLint vertexBufferCount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsIndirectBindlessNV_mode: mode type: type indirect: indirect drawCount: drawCount stride: stride vertexBufferCount: vertexBufferCount [
	^ self ffiCall: #( void glMultiDrawElementsIndirectBindlessNV ( GLenum mode , GLenum type , void* indirect , GLsizei drawCount , GLsizei stride , GLint vertexBufferCount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsIndirectCountARB_mode: mode type: type indirect: indirect drawcount: drawcount maxdrawcount: maxdrawcount stride: stride [
	^ self ffiCall: #( void glMultiDrawElementsIndirectCountARB ( GLenum mode , GLenum type , GLintptr indirect , GLintptr drawcount , GLsizei maxdrawcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsIndirectEXT_mode: mode type: type indirect: indirect drawcount: drawcount stride: stride [
	^ self ffiCall: #( void glMultiDrawElementsIndirectEXT ( GLenum mode , GLenum type , void* indirect , GLsizei drawcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElementsIndirect_mode: mode type: type indirect: indirect drawcount: drawcount stride: stride [
	^ self ffiCall: #( void glMultiDrawElementsIndirect ( GLenum mode , GLenum type , void* indirect , GLsizei drawcount , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawElements_mode: mode count: count type: type indices: indices drawcount: drawcount [
	^ self ffiCall: #( void glMultiDrawElements ( GLenum mode , GLsizei* count , GLenum type , void** indices , GLsizei drawcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiDrawRangeElementArrayAPPLE_mode: mode start: start end: end first: first count: count primcount: primcount [
	^ self ffiCall: #( void glMultiDrawRangeElementArrayAPPLE ( GLenum mode , GLuint start , GLuint end , GLint* first , GLsizei* count , GLsizei primcount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiModeDrawArraysIBM_mode: mode first: first count: count primcount: primcount modestride: modestride [
	^ self ffiCall: #( void glMultiModeDrawArraysIBM ( GLenum* mode , GLint* first , GLsizei* count , GLsizei primcount , GLint modestride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiModeDrawElementsIBM_mode: mode count: count type: type indices: indices primcount: primcount modestride: modestride [
	^ self ffiCall: #( void glMultiModeDrawElementsIBM ( GLenum* mode , GLsizei* count , GLenum type , void** indices , GLsizei primcount , GLint modestride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexBufferEXT_texunit: texunit target: target internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glMultiTexBufferEXT ( GLenum texunit , GLenum target , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1bOES_texture: texture s: s [
	^ self ffiCall: #( void glMultiTexCoord1bOES ( GLenum texture , GLbyte s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1bvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord1bvOES ( GLenum texture , GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1dARB_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1dARB ( GLenum target , GLdouble s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1d_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1d ( GLenum target , GLdouble s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1dvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1dvARB ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1dv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1dv ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1fARB_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1fARB ( GLenum target , GLfloat s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1f_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1f ( GLenum target , GLfloat s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1fvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1fvARB ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1fv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1fv ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1hNV_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1hNV ( GLenum target , GLhalfNV s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1hvNV_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1hvNV ( GLenum target , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1iARB_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1iARB ( GLenum target , GLint s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1i_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1i ( GLenum target , GLint s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1ivARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1ivARB ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1iv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1iv ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1sARB_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1sARB ( GLenum target , GLshort s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1s_target: target s: s [
	^ self ffiCall: #( void glMultiTexCoord1s ( GLenum target , GLshort s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1svARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1svARB ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1sv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord1sv ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1xOES_texture: texture s: s [
	^ self ffiCall: #( void glMultiTexCoord1xOES ( GLenum texture , GLfixed s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord1xvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord1xvOES ( GLenum texture , GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2bOES_texture: texture s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2bOES ( GLenum texture , GLbyte s , GLbyte t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2bvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord2bvOES ( GLenum texture , GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2dARB_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2dARB ( GLenum target , GLdouble s , GLdouble t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2d_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2d ( GLenum target , GLdouble s , GLdouble t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2dvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2dvARB ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2dv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2dv ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2fARB_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2fARB ( GLenum target , GLfloat s , GLfloat t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2f_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2f ( GLenum target , GLfloat s , GLfloat t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2fvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2fvARB ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2fv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2fv ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2hNV_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2hNV ( GLenum target , GLhalfNV s , GLhalfNV t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2hvNV_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2hvNV ( GLenum target , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2iARB_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2iARB ( GLenum target , GLint s , GLint t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2i_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2i ( GLenum target , GLint s , GLint t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2ivARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2ivARB ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2iv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2iv ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2sARB_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2sARB ( GLenum target , GLshort s , GLshort t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2s_target: target s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2s ( GLenum target , GLshort s , GLshort t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2svARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2svARB ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2sv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord2sv ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2xOES_texture: texture s: s t: t [
	^ self ffiCall: #( void glMultiTexCoord2xOES ( GLenum texture , GLfixed s , GLfixed t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord2xvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord2xvOES ( GLenum texture , GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3bOES_texture: texture s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3bOES ( GLenum texture , GLbyte s , GLbyte t , GLbyte r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3bvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord3bvOES ( GLenum texture , GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3dARB_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3dARB ( GLenum target , GLdouble s , GLdouble t , GLdouble r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3d_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3d ( GLenum target , GLdouble s , GLdouble t , GLdouble r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3dvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3dvARB ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3dv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3dv ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3fARB_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3fARB ( GLenum target , GLfloat s , GLfloat t , GLfloat r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3f_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3f ( GLenum target , GLfloat s , GLfloat t , GLfloat r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3fvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3fvARB ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3fv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3fv ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3hNV_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3hNV ( GLenum target , GLhalfNV s , GLhalfNV t , GLhalfNV r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3hvNV_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3hvNV ( GLenum target , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3iARB_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3iARB ( GLenum target , GLint s , GLint t , GLint r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3i_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3i ( GLenum target , GLint s , GLint t , GLint r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3ivARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3ivARB ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3iv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3iv ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3sARB_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3sARB ( GLenum target , GLshort s , GLshort t , GLshort r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3s_target: target s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3s ( GLenum target , GLshort s , GLshort t , GLshort r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3svARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3svARB ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3sv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord3sv ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3xOES_texture: texture s: s t: t r: r [
	^ self ffiCall: #( void glMultiTexCoord3xOES ( GLenum texture , GLfixed s , GLfixed t , GLfixed r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord3xvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord3xvOES ( GLenum texture , GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4bOES_texture: texture s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4bOES ( GLenum texture , GLbyte s , GLbyte t , GLbyte r , GLbyte q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4bvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord4bvOES ( GLenum texture , GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4dARB_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4dARB ( GLenum target , GLdouble s , GLdouble t , GLdouble r , GLdouble q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4d_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4d ( GLenum target , GLdouble s , GLdouble t , GLdouble r , GLdouble q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4dvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4dvARB ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4dv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4dv ( GLenum target , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4fARB_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4fARB ( GLenum target , GLfloat s , GLfloat t , GLfloat r , GLfloat q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4f_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4f ( GLenum target , GLfloat s , GLfloat t , GLfloat r , GLfloat q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4fvARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4fvARB ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4fv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4fv ( GLenum target , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4hNV_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4hNV ( GLenum target , GLhalfNV s , GLhalfNV t , GLhalfNV r , GLhalfNV q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4hvNV_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4hvNV ( GLenum target , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4iARB_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4iARB ( GLenum target , GLint s , GLint t , GLint r , GLint q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4i_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4i ( GLenum target , GLint s , GLint t , GLint r , GLint q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4ivARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4ivARB ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4iv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4iv ( GLenum target , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4sARB_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4sARB ( GLenum target , GLshort s , GLshort t , GLshort r , GLshort q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4s_target: target s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4s ( GLenum target , GLshort s , GLshort t , GLshort r , GLshort q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4svARB_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4svARB ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4sv_target: target v: v [
	^ self ffiCall: #( void glMultiTexCoord4sv ( GLenum target , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4xOES_texture: texture s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4xOES ( GLenum texture , GLfixed s , GLfixed t , GLfixed r , GLfixed q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4x_texture: texture s: s t: t r: r q: q [
	^ self ffiCall: #( void glMultiTexCoord4x ( GLenum texture , GLfixed s , GLfixed t , GLfixed r , GLfixed q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoord4xvOES_texture: texture coords: coords [
	^ self ffiCall: #( void glMultiTexCoord4xvOES ( GLenum texture , GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP1ui_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP1ui ( GLenum texture , GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP1uiv_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP1uiv ( GLenum texture , GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP2ui_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP2ui ( GLenum texture , GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP2uiv_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP2uiv ( GLenum texture , GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP3ui_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP3ui ( GLenum texture , GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP3uiv_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP3uiv ( GLenum texture , GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP4ui_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP4ui ( GLenum texture , GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordP4uiv_texture: texture type: type coords: coords [
	^ self ffiCall: #( void glMultiTexCoordP4uiv ( GLenum texture , GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexCoordPointerEXT_texunit: texunit size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glMultiTexCoordPointerEXT ( GLenum texunit , GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexEnvfEXT_texunit: texunit target: target pname: pname param: param [
	^ self ffiCall: #( void glMultiTexEnvfEXT ( GLenum texunit , GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexEnvfvEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glMultiTexEnvfvEXT ( GLenum texunit , GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexEnviEXT_texunit: texunit target: target pname: pname param: param [
	^ self ffiCall: #( void glMultiTexEnviEXT ( GLenum texunit , GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexEnvivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glMultiTexEnvivEXT ( GLenum texunit , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexGendEXT_texunit: texunit coord: coord pname: pname param: param [
	^ self ffiCall: #( void glMultiTexGendEXT ( GLenum texunit , GLenum coord , GLenum pname , GLdouble param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexGendvEXT_texunit: texunit coord: coord pname: pname params: params [
	^ self ffiCall: #( void glMultiTexGendvEXT ( GLenum texunit , GLenum coord , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexGenfEXT_texunit: texunit coord: coord pname: pname param: param [
	^ self ffiCall: #( void glMultiTexGenfEXT ( GLenum texunit , GLenum coord , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexGenfvEXT_texunit: texunit coord: coord pname: pname params: params [
	^ self ffiCall: #( void glMultiTexGenfvEXT ( GLenum texunit , GLenum coord , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexGeniEXT_texunit: texunit coord: coord pname: pname param: param [
	^ self ffiCall: #( void glMultiTexGeniEXT ( GLenum texunit , GLenum coord , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexGenivEXT_texunit: texunit coord: coord pname: pname params: params [
	^ self ffiCall: #( void glMultiTexGenivEXT ( GLenum texunit , GLenum coord , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexImage1DEXT_texunit: texunit target: target level: level internalformat: internalformat width: width border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glMultiTexImage1DEXT ( GLenum texunit , GLenum target , GLint level , GLint internalformat , GLsizei width , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexImage2DEXT_texunit: texunit target: target level: level internalformat: internalformat width: width height: height border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glMultiTexImage2DEXT ( GLenum texunit , GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexImage3DEXT_texunit: texunit target: target level: level internalformat: internalformat width: width height: height depth: depth border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glMultiTexImage3DEXT ( GLenum texunit , GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexParameterIivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glMultiTexParameterIivEXT ( GLenum texunit , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexParameterIuivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glMultiTexParameterIuivEXT ( GLenum texunit , GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexParameterfEXT_texunit: texunit target: target pname: pname param: param [
	^ self ffiCall: #( void glMultiTexParameterfEXT ( GLenum texunit , GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexParameterfvEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glMultiTexParameterfvEXT ( GLenum texunit , GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexParameteriEXT_texunit: texunit target: target pname: pname param: param [
	^ self ffiCall: #( void glMultiTexParameteriEXT ( GLenum texunit , GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexParameterivEXT_texunit: texunit target: target pname: pname params: params [
	^ self ffiCall: #( void glMultiTexParameterivEXT ( GLenum texunit , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexRenderbufferEXT_texunit: texunit target: target renderbuffer: renderbuffer [
	^ self ffiCall: #( void glMultiTexRenderbufferEXT ( GLenum texunit , GLenum target , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexSubImage1DEXT_texunit: texunit target: target level: level xoffset: xoffset width: width format: format type: type pixels: pixels [
	^ self ffiCall: #( void glMultiTexSubImage1DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexSubImage2DEXT_texunit: texunit target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glMultiTexSubImage2DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> multiTexSubImage3DEXT_texunit: texunit target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type pixels: pixels [
	^ self ffiCall: #( void glMultiTexSubImage3DEXT ( GLenum texunit , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferDataEXT_buffer: buffer size: size data: data usage: usage [
	^ self ffiCall: #( void glNamedBufferDataEXT ( GLuint buffer , GLsizeiptr size , void* data , GLenum usage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferData_buffer: buffer size: size data: data usage: usage [
	^ self ffiCall: #( void glNamedBufferData ( GLuint buffer , GLsizeiptr size , void* data , GLenum usage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferPageCommitmentARB_buffer: buffer offset: offset size: size commit: commit [
	^ self ffiCall: #( void glNamedBufferPageCommitmentARB ( GLuint buffer , GLintptr offset , GLsizeiptr size , GLboolean commit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferPageCommitmentEXT_buffer: buffer offset: offset size: size commit: commit [
	^ self ffiCall: #( void glNamedBufferPageCommitmentEXT ( GLuint buffer , GLintptr offset , GLsizeiptr size , GLboolean commit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferStorageEXT_buffer: buffer size: size data: data flags: flags [
	^ self ffiCall: #( void glNamedBufferStorageEXT ( GLuint buffer , GLsizeiptr size , void* data , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferStorage_buffer: buffer size: size data: data flags: flags [
	^ self ffiCall: #( void glNamedBufferStorage ( GLuint buffer , GLsizeiptr size , void* data , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferSubDataEXT_buffer: buffer offset: offset size: size data: data [
	^ self ffiCall: #( void glNamedBufferSubDataEXT ( GLuint buffer , GLintptr offset , GLsizeiptr size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedBufferSubData_buffer: buffer offset: offset size: size data: data [
	^ self ffiCall: #( void glNamedBufferSubData ( GLuint buffer , GLintptr offset , GLsizeiptr size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedCopyBufferSubDataEXT_readBuffer: readBuffer writeBuffer: writeBuffer readOffset: readOffset writeOffset: writeOffset size: size [
	^ self ffiCall: #( void glNamedCopyBufferSubDataEXT ( GLuint readBuffer , GLuint writeBuffer , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferDrawBuffer_framebuffer: framebuffer buf: buf [
	^ self ffiCall: #( void glNamedFramebufferDrawBuffer ( GLuint framebuffer , GLenum buf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferDrawBuffers_framebuffer: framebuffer n: n bufs: bufs [
	^ self ffiCall: #( void glNamedFramebufferDrawBuffers ( GLuint framebuffer , GLsizei n , GLenum* bufs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferParameteriEXT_framebuffer: framebuffer pname: pname param: param [
	^ self ffiCall: #( void glNamedFramebufferParameteriEXT ( GLuint framebuffer , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferParameteri_framebuffer: framebuffer pname: pname param: param [
	^ self ffiCall: #( void glNamedFramebufferParameteri ( GLuint framebuffer , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferReadBuffer_framebuffer: framebuffer src: src [
	^ self ffiCall: #( void glNamedFramebufferReadBuffer ( GLuint framebuffer , GLenum src ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferRenderbufferEXT_framebuffer: framebuffer attachment: attachment renderbuffertarget: renderbuffertarget renderbuffer: renderbuffer [
	^ self ffiCall: #( void glNamedFramebufferRenderbufferEXT ( GLuint framebuffer , GLenum attachment , GLenum renderbuffertarget , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferRenderbuffer_framebuffer: framebuffer attachment: attachment renderbuffertarget: renderbuffertarget renderbuffer: renderbuffer [
	^ self ffiCall: #( void glNamedFramebufferRenderbuffer ( GLuint framebuffer , GLenum attachment , GLenum renderbuffertarget , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferSampleLocationsfvARB_framebuffer: framebuffer start: start count: count v: v [
	^ self ffiCall: #( void glNamedFramebufferSampleLocationsfvARB ( GLuint framebuffer , GLuint start , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferSampleLocationsfvNV_framebuffer: framebuffer start: start count: count v: v [
	^ self ffiCall: #( void glNamedFramebufferSampleLocationsfvNV ( GLuint framebuffer , GLuint start , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTexture1DEXT_framebuffer: framebuffer attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glNamedFramebufferTexture1DEXT ( GLuint framebuffer , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTexture2DEXT_framebuffer: framebuffer attachment: attachment textarget: textarget texture: texture level: level [
	^ self ffiCall: #( void glNamedFramebufferTexture2DEXT ( GLuint framebuffer , GLenum attachment , GLenum textarget , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTexture3DEXT_framebuffer: framebuffer attachment: attachment textarget: textarget texture: texture level: level zoffset: zoffset [
	^ self ffiCall: #( void glNamedFramebufferTexture3DEXT ( GLuint framebuffer , GLenum attachment , GLenum textarget , GLuint texture , GLint level , GLint zoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTextureEXT_framebuffer: framebuffer attachment: attachment texture: texture level: level [
	^ self ffiCall: #( void glNamedFramebufferTextureEXT ( GLuint framebuffer , GLenum attachment , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTextureFaceEXT_framebuffer: framebuffer attachment: attachment texture: texture level: level face: face [
	^ self ffiCall: #( void glNamedFramebufferTextureFaceEXT ( GLuint framebuffer , GLenum attachment , GLuint texture , GLint level , GLenum face ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTextureLayerEXT_framebuffer: framebuffer attachment: attachment texture: texture level: level layer: layer [
	^ self ffiCall: #( void glNamedFramebufferTextureLayerEXT ( GLuint framebuffer , GLenum attachment , GLuint texture , GLint level , GLint layer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTextureLayer_framebuffer: framebuffer attachment: attachment texture: texture level: level layer: layer [
	^ self ffiCall: #( void glNamedFramebufferTextureLayer ( GLuint framebuffer , GLenum attachment , GLuint texture , GLint level , GLint layer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedFramebufferTexture_framebuffer: framebuffer attachment: attachment texture: texture level: level [
	^ self ffiCall: #( void glNamedFramebufferTexture ( GLuint framebuffer , GLenum attachment , GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameter4dEXT_program: program target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glNamedProgramLocalParameter4dEXT ( GLuint program , GLenum target , GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameter4dvEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glNamedProgramLocalParameter4dvEXT ( GLuint program , GLenum target , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameter4fEXT_program: program target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glNamedProgramLocalParameter4fEXT ( GLuint program , GLenum target , GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameter4fvEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glNamedProgramLocalParameter4fvEXT ( GLuint program , GLenum target , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameterI4iEXT_program: program target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glNamedProgramLocalParameterI4iEXT ( GLuint program , GLenum target , GLuint index , GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameterI4ivEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glNamedProgramLocalParameterI4ivEXT ( GLuint program , GLenum target , GLuint index , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameterI4uiEXT_program: program target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glNamedProgramLocalParameterI4uiEXT ( GLuint program , GLenum target , GLuint index , GLuint x , GLuint y , GLuint z , GLuint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameterI4uivEXT_program: program target: target index: index params: params [
	^ self ffiCall: #( void glNamedProgramLocalParameterI4uivEXT ( GLuint program , GLenum target , GLuint index , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParameters4fvEXT_program: program target: target index: index count: count params: params [
	^ self ffiCall: #( void glNamedProgramLocalParameters4fvEXT ( GLuint program , GLenum target , GLuint index , GLsizei count , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParametersI4ivEXT_program: program target: target index: index count: count params: params [
	^ self ffiCall: #( void glNamedProgramLocalParametersI4ivEXT ( GLuint program , GLenum target , GLuint index , GLsizei count , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramLocalParametersI4uivEXT_program: program target: target index: index count: count params: params [
	^ self ffiCall: #( void glNamedProgramLocalParametersI4uivEXT ( GLuint program , GLenum target , GLuint index , GLsizei count , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedProgramStringEXT_program: program target: target format: format len: len string: string [
	^ self ffiCall: #( void glNamedProgramStringEXT ( GLuint program , GLenum target , GLenum format , GLsizei len , void* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedRenderbufferStorageEXT_renderbuffer: renderbuffer internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glNamedRenderbufferStorageEXT ( GLuint renderbuffer , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedRenderbufferStorageMultisampleCoverageEXT_renderbuffer: renderbuffer coverageSamples: coverageSamples colorSamples: colorSamples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glNamedRenderbufferStorageMultisampleCoverageEXT ( GLuint renderbuffer , GLsizei coverageSamples , GLsizei colorSamples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedRenderbufferStorageMultisampleEXT_renderbuffer: renderbuffer samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glNamedRenderbufferStorageMultisampleEXT ( GLuint renderbuffer , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedRenderbufferStorageMultisample_renderbuffer: renderbuffer samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glNamedRenderbufferStorageMultisample ( GLuint renderbuffer , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedRenderbufferStorage_renderbuffer: renderbuffer internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glNamedRenderbufferStorage ( GLuint renderbuffer , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> namedStringARB_type: type namelen: namelen name: name stringlen: stringlen string: string [
	^ self ffiCall: #( void glNamedStringARB ( GLenum type , GLint namelen , GLchar* name , GLint stringlen , GLchar* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> newList_list: list mode: mode [
	^ self ffiCall: #( void glNewList ( GLuint list , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> newObjectBufferATI_size: size pointer: pointer usage: usage [
	^ self ffiCall: #( GLuint glNewObjectBufferATI ( GLsizei size , void* pointer , GLenum usage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3b_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3b ( GLbyte nx , GLbyte ny , GLbyte nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3bv: v [
	^ self ffiCall: #( void glNormal3bv ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3d_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3d ( GLdouble nx , GLdouble ny , GLdouble nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3dv: v [
	^ self ffiCall: #( void glNormal3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3fVertex3fSUN_nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glNormal3fVertex3fSUN ( GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3fVertex3fvSUN_n: n v: v [
	^ self ffiCall: #( void glNormal3fVertex3fvSUN ( GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3f_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3f ( GLfloat nx , GLfloat ny , GLfloat nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3fv: v [
	^ self ffiCall: #( void glNormal3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3hNV_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3hNV ( GLhalfNV nx , GLhalfNV ny , GLhalfNV nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3hvNV: v [
	^ self ffiCall: #( void glNormal3hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3i_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3i ( GLint nx , GLint ny , GLint nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3iv: v [
	^ self ffiCall: #( void glNormal3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3s_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3s ( GLshort nx , GLshort ny , GLshort nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3sv: v [
	^ self ffiCall: #( void glNormal3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3xOES_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3xOES ( GLfixed nx , GLfixed ny , GLfixed nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3x_nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormal3x ( GLfixed nx , GLfixed ny , GLfixed nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normal3xvOES: coords [
	^ self ffiCall: #( void glNormal3xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalFormatNV_type: type stride: stride [
	^ self ffiCall: #( void glNormalFormatNV ( GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalP3ui_type: type coords: coords [
	^ self ffiCall: #( void glNormalP3ui ( GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalP3uiv_type: type coords: coords [
	^ self ffiCall: #( void glNormalP3uiv ( GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalPointerEXT_type: type stride: stride count: count pointer: pointer [
	^ self ffiCall: #( void glNormalPointerEXT ( GLenum type , GLsizei stride , GLsizei count , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalPointerListIBM_type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glNormalPointerListIBM ( GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalPointer_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glNormalPointer ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalPointervINTEL_type: type pointer: pointer [
	^ self ffiCall: #( void glNormalPointervINTEL ( GLenum type , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3bATI_stream: stream nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormalStream3bATI ( GLenum stream , GLbyte nx , GLbyte ny , GLbyte nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3bvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glNormalStream3bvATI ( GLenum stream , GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3dATI_stream: stream nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormalStream3dATI ( GLenum stream , GLdouble nx , GLdouble ny , GLdouble nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3dvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glNormalStream3dvATI ( GLenum stream , GLdouble* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3fATI_stream: stream nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormalStream3fATI ( GLenum stream , GLfloat nx , GLfloat ny , GLfloat nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3fvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glNormalStream3fvATI ( GLenum stream , GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3iATI_stream: stream nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormalStream3iATI ( GLenum stream , GLint nx , GLint ny , GLint nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3ivATI_stream: stream coords: coords [
	^ self ffiCall: #( void glNormalStream3ivATI ( GLenum stream , GLint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3sATI_stream: stream nx: nx ny: ny nz: nz [
	^ self ffiCall: #( void glNormalStream3sATI ( GLenum stream , GLshort nx , GLshort ny , GLshort nz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> normalStream3svATI_stream: stream coords: coords [
	^ self ffiCall: #( void glNormalStream3svATI ( GLenum stream , GLshort* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> objectLabelKHR_identifier: identifier name: name length: length label: label [
	^ self ffiCall: #( void glObjectLabelKHR ( GLenum identifier , GLuint name , GLsizei length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> objectLabel_identifier: identifier name: name length: length label: label [
	^ self ffiCall: #( void glObjectLabel ( GLenum identifier , GLuint name , GLsizei length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> objectPtrLabelKHR_ptr: ptr length: length label: label [
	^ self ffiCall: #( void glObjectPtrLabelKHR ( void* ptr , GLsizei length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> objectPtrLabel_ptr: ptr length: length label: label [
	^ self ffiCall: #( void glObjectPtrLabel ( void* ptr , GLsizei length , GLchar* label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> objectPurgeableAPPLE_objectType: objectType name: name option: option [
	^ self ffiCall: #( GLenum glObjectPurgeableAPPLE ( GLenum objectType , GLuint name , GLenum option ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> objectUnpurgeableAPPLE_objectType: objectType name: name option: option [
	^ self ffiCall: #( GLenum glObjectUnpurgeableAPPLE ( GLenum objectType , GLuint name , GLenum option ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> ortho_left: left right: right bottom: bottom top: top zNear: zNear zFar: zFar [
	^ self ffiCall: #( void glOrtho ( GLdouble left , GLdouble right , GLdouble bottom , GLdouble top , GLdouble zNear , GLdouble zFar ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> orthofOES_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glOrthofOES ( GLfloat l , GLfloat r , GLfloat b , GLfloat t , GLfloat n , GLfloat f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> orthof_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glOrthof ( GLfloat l , GLfloat r , GLfloat b , GLfloat t , GLfloat n , GLfloat f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> orthoxOES_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glOrthoxOES ( GLfixed l , GLfixed r , GLfixed b , GLfixed t , GLfixed n , GLfixed f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> orthox_l: l r: r b: b t: t n: n f: f [
	^ self ffiCall: #( void glOrthox ( GLfixed l , GLfixed r , GLfixed b , GLfixed t , GLfixed n , GLfixed f ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pNTrianglesfATI_pname: pname param: param [
	^ self ffiCall: #( void glPNTrianglesfATI ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pNTrianglesiATI_pname: pname param: param [
	^ self ffiCall: #( void glPNTrianglesiATI ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> passTexCoordATI_dst: dst coord: coord swizzle: swizzle [
	^ self ffiCall: #( void glPassTexCoordATI ( GLuint dst , GLuint coord , GLenum swizzle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> passThrough: token [
	^ self ffiCall: #( void glPassThrough ( GLfloat token ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> passThroughxOES: token [
	^ self ffiCall: #( void glPassThroughxOES ( GLfixed token ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> patchParameterfv_pname: pname values: values [
	^ self ffiCall: #( void glPatchParameterfv ( GLenum pname , GLfloat* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> patchParameteriEXT_pname: pname value: value [
	^ self ffiCall: #( void glPatchParameteriEXT ( GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> patchParameteriOES_pname: pname value: value [
	^ self ffiCall: #( void glPatchParameteriOES ( GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> patchParameteri_pname: pname value: value [
	^ self ffiCall: #( void glPatchParameteri ( GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathColorGenNV_color: color genMode: genMode colorFormat: colorFormat coeffs: coeffs [
	^ self ffiCall: #( void glPathColorGenNV ( GLenum color , GLenum genMode , GLenum colorFormat , GLfloat* coeffs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathCommandsNV_path: path numCommands: numCommands commands: commands numCoords: numCoords coordType: coordType coords: coords [
	^ self ffiCall: #( void glPathCommandsNV ( GLuint path , GLsizei numCommands , GLubyte* commands , GLsizei numCoords , GLenum coordType , void* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathCoordsNV_path: path numCoords: numCoords coordType: coordType coords: coords [
	^ self ffiCall: #( void glPathCoordsNV ( GLuint path , GLsizei numCoords , GLenum coordType , void* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathCoverDepthFuncNV: func [
	^ self ffiCall: #( void glPathCoverDepthFuncNV ( GLenum func ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathDashArrayNV_path: path dashCount: dashCount dashArray: dashArray [
	^ self ffiCall: #( void glPathDashArrayNV ( GLuint path , GLsizei dashCount , GLfloat* dashArray ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathFogGenNV: genMode [
	^ self ffiCall: #( void glPathFogGenNV ( GLenum genMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathGlyphIndexArrayNV_firstPathName: firstPathName fontTarget: fontTarget fontName: fontName fontStyle: fontStyle firstGlyphIndex: firstGlyphIndex numGlyphs: numGlyphs pathParameterTemplate: pathParameterTemplate emScale: emScale [
	^ self ffiCall: #( GLenum glPathGlyphIndexArrayNV ( GLuint firstPathName , GLenum fontTarget , void* fontName , GLbitfield fontStyle , GLuint firstGlyphIndex , GLsizei numGlyphs , GLuint pathParameterTemplate , GLfloat emScale ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathGlyphIndexRangeNV_fontTarget: fontTarget fontName: fontName fontStyle: fontStyle pathParameterTemplate: pathParameterTemplate emScale: emScale baseAndCount: baseAndCount [
	^ self ffiCall: #( GLenum glPathGlyphIndexRangeNV ( GLenum fontTarget , void* fontName , GLbitfield fontStyle , GLuint pathParameterTemplate , GLfloat emScale , GLuint[2] baseAndCount ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathGlyphRangeNV_firstPathName: firstPathName fontTarget: fontTarget fontName: fontName fontStyle: fontStyle firstGlyph: firstGlyph numGlyphs: numGlyphs handleMissingGlyphs: handleMissingGlyphs pathParameterTemplate: pathParameterTemplate emScale: emScale [
	^ self ffiCall: #( void glPathGlyphRangeNV ( GLuint firstPathName , GLenum fontTarget , void* fontName , GLbitfield fontStyle , GLuint firstGlyph , GLsizei numGlyphs , GLenum handleMissingGlyphs , GLuint pathParameterTemplate , GLfloat emScale ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathGlyphsNV_firstPathName: firstPathName fontTarget: fontTarget fontName: fontName fontStyle: fontStyle numGlyphs: numGlyphs type: type charcodes: charcodes handleMissingGlyphs: handleMissingGlyphs pathParameterTemplate: pathParameterTemplate emScale: emScale [
	^ self ffiCall: #( void glPathGlyphsNV ( GLuint firstPathName , GLenum fontTarget , void* fontName , GLbitfield fontStyle , GLsizei numGlyphs , GLenum type , void* charcodes , GLenum handleMissingGlyphs , GLuint pathParameterTemplate , GLfloat emScale ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathMemoryGlyphIndexArrayNV_firstPathName: firstPathName fontTarget: fontTarget fontSize: fontSize fontData: fontData faceIndex: faceIndex firstGlyphIndex: firstGlyphIndex numGlyphs: numGlyphs pathParameterTemplate: pathParameterTemplate emScale: emScale [
	^ self ffiCall: #( GLenum glPathMemoryGlyphIndexArrayNV ( GLuint firstPathName , GLenum fontTarget , GLsizeiptr fontSize , void* fontData , GLsizei faceIndex , GLuint firstGlyphIndex , GLsizei numGlyphs , GLuint pathParameterTemplate , GLfloat emScale ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathParameterfNV_path: path pname: pname value: value [
	^ self ffiCall: #( void glPathParameterfNV ( GLuint path , GLenum pname , GLfloat value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathParameterfvNV_path: path pname: pname value: value [
	^ self ffiCall: #( void glPathParameterfvNV ( GLuint path , GLenum pname , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathParameteriNV_path: path pname: pname value: value [
	^ self ffiCall: #( void glPathParameteriNV ( GLuint path , GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathParameterivNV_path: path pname: pname value: value [
	^ self ffiCall: #( void glPathParameterivNV ( GLuint path , GLenum pname , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathStencilDepthOffsetNV_factor: factor units: units [
	^ self ffiCall: #( void glPathStencilDepthOffsetNV ( GLfloat factor , GLfloat units ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathStencilFuncNV_func: func ref: ref mask: mask [
	^ self ffiCall: #( void glPathStencilFuncNV ( GLenum func , GLint ref , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathStringNV_path: path format: format length: length pathString: pathString [
	^ self ffiCall: #( void glPathStringNV ( GLuint path , GLenum format , GLsizei length , void* pathString ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathSubCommandsNV_path: path commandStart: commandStart commandsToDelete: commandsToDelete numCommands: numCommands commands: commands numCoords: numCoords coordType: coordType coords: coords [
	^ self ffiCall: #( void glPathSubCommandsNV ( GLuint path , GLsizei commandStart , GLsizei commandsToDelete , GLsizei numCommands , GLubyte* commands , GLsizei numCoords , GLenum coordType , void* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathSubCoordsNV_path: path coordStart: coordStart numCoords: numCoords coordType: coordType coords: coords [
	^ self ffiCall: #( void glPathSubCoordsNV ( GLuint path , GLsizei coordStart , GLsizei numCoords , GLenum coordType , void* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pathTexGenNV_texCoordSet: texCoordSet genMode: genMode components: components coeffs: coeffs [
	^ self ffiCall: #( void glPathTexGenNV ( GLenum texCoordSet , GLenum genMode , GLint components , GLfloat* coeffs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pauseTransformFeedback [
	^ self ffiCall: #( void glPauseTransformFeedback ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pauseTransformFeedbackNV [
	^ self ffiCall: #( void glPauseTransformFeedbackNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelDataRangeNV_target: target length: length pointer: pointer [
	^ self ffiCall: #( void glPixelDataRangeNV ( GLenum target , GLsizei length , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelMapfv_map: map mapsize: mapsize values: values [
	^ self ffiCall: #( void glPixelMapfv ( GLenum map , GLsizei mapsize , GLfloat* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelMapuiv_map: map mapsize: mapsize values: values [
	^ self ffiCall: #( void glPixelMapuiv ( GLenum map , GLsizei mapsize , GLuint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelMapusv_map: map mapsize: mapsize values: values [
	^ self ffiCall: #( void glPixelMapusv ( GLenum map , GLsizei mapsize , GLushort* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelMapx_map: map size: size values: values [
	^ self ffiCall: #( void glPixelMapx ( GLenum map , GLint size , GLfixed* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelStoref_pname: pname param: param [
	^ self ffiCall: #( void glPixelStoref ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelStorei_pname: pname param: param [
	^ self ffiCall: #( void glPixelStorei ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelStorex_pname: pname param: param [
	^ self ffiCall: #( void glPixelStorex ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTexGenParameterfSGIS_pname: pname param: param [
	^ self ffiCall: #( void glPixelTexGenParameterfSGIS ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTexGenParameterfvSGIS_pname: pname params: params [
	^ self ffiCall: #( void glPixelTexGenParameterfvSGIS ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTexGenParameteriSGIS_pname: pname param: param [
	^ self ffiCall: #( void glPixelTexGenParameteriSGIS ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTexGenParameterivSGIS_pname: pname params: params [
	^ self ffiCall: #( void glPixelTexGenParameterivSGIS ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTexGenSGIX: mode [
	^ self ffiCall: #( void glPixelTexGenSGIX ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransferf_pname: pname param: param [
	^ self ffiCall: #( void glPixelTransferf ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransferi_pname: pname param: param [
	^ self ffiCall: #( void glPixelTransferi ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransferxOES_pname: pname param: param [
	^ self ffiCall: #( void glPixelTransferxOES ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransformParameterfEXT_target: target pname: pname param: param [
	^ self ffiCall: #( void glPixelTransformParameterfEXT ( GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransformParameterfvEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glPixelTransformParameterfvEXT ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransformParameteriEXT_target: target pname: pname param: param [
	^ self ffiCall: #( void glPixelTransformParameteriEXT ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelTransformParameterivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glPixelTransformParameterivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelZoom_xfactor: xfactor yfactor: yfactor [
	^ self ffiCall: #( void glPixelZoom ( GLfloat xfactor , GLfloat yfactor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pixelZoomxOES_xfactor: xfactor yfactor: yfactor [
	^ self ffiCall: #( void glPixelZoomxOES ( GLfixed xfactor , GLfixed yfactor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointAlongPathNV_path: path startSegment: startSegment numSegments: numSegments distance: distance x: x y: y tangentX: tangentX tangentY: tangentY [
	^ self ffiCall: #( GLboolean glPointAlongPathNV ( GLuint path , GLsizei startSegment , GLsizei numSegments , GLfloat distance , GLfloat* x , GLfloat* y , GLfloat* tangentX , GLfloat* tangentY ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfARB_pname: pname param: param [
	^ self ffiCall: #( void glPointParameterfARB ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfEXT_pname: pname param: param [
	^ self ffiCall: #( void glPointParameterfEXT ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfSGIS_pname: pname param: param [
	^ self ffiCall: #( void glPointParameterfSGIS ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterf_pname: pname param: param [
	^ self ffiCall: #( void glPointParameterf ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfvARB_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterfvARB ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfvEXT_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterfvEXT ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfvSGIS_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterfvSGIS ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterfv_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterfv ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameteriNV_pname: pname param: param [
	^ self ffiCall: #( void glPointParameteriNV ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameteri_pname: pname param: param [
	^ self ffiCall: #( void glPointParameteri ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterivNV_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterivNV ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameteriv_pname: pname params: params [
	^ self ffiCall: #( void glPointParameteriv ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterxOES_pname: pname param: param [
	^ self ffiCall: #( void glPointParameterxOES ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterx_pname: pname param: param [
	^ self ffiCall: #( void glPointParameterx ( GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterxvOES_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterxvOES ( GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointParameterxv_pname: pname params: params [
	^ self ffiCall: #( void glPointParameterxv ( GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointSize: size [
	^ self ffiCall: #( void glPointSize ( GLfloat size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointSizePointerOES_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glPointSizePointerOES ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointSizex: size [
	^ self ffiCall: #( void glPointSizex ( GLfixed size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pointSizexOES: size [
	^ self ffiCall: #( void glPointSizexOES ( GLfixed size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pollAsyncSGIX: markerp [
	^ self ffiCall: #( GLint glPollAsyncSGIX ( GLuint* markerp ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pollInstrumentsSGIX: marker_p [
	^ self ffiCall: #( GLint glPollInstrumentsSGIX ( GLint* marker_p ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonModeNV_face: face mode: mode [
	^ self ffiCall: #( void glPolygonModeNV ( GLenum face , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonMode_face: face mode: mode [
	^ self ffiCall: #( void glPolygonMode ( GLenum face , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonOffsetClampEXT_factor: factor units: units clamp: clamp [
	^ self ffiCall: #( void glPolygonOffsetClampEXT ( GLfloat factor , GLfloat units , GLfloat clamp ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonOffsetEXT_factor: factor bias: bias [
	^ self ffiCall: #( void glPolygonOffsetEXT ( GLfloat factor , GLfloat bias ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonOffset_factor: factor units: units [
	^ self ffiCall: #( void glPolygonOffset ( GLfloat factor , GLfloat units ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonOffsetxOES_factor: factor units: units [
	^ self ffiCall: #( void glPolygonOffsetxOES ( GLfixed factor , GLfixed units ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonOffsetx_factor: factor units: units [
	^ self ffiCall: #( void glPolygonOffsetx ( GLfixed factor , GLfixed units ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> polygonStipple: mask [
	^ self ffiCall: #( void glPolygonStipple ( GLubyte* mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popAttrib [
	^ self ffiCall: #( void glPopAttrib ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popClientAttrib [
	^ self ffiCall: #( void glPopClientAttrib ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popDebugGroup [
	^ self ffiCall: #( void glPopDebugGroup ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popDebugGroupKHR [
	^ self ffiCall: #( void glPopDebugGroupKHR ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popGroupMarkerEXT [
	^ self ffiCall: #( void glPopGroupMarkerEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popMatrix [
	^ self ffiCall: #( void glPopMatrix ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> popName [
	^ self ffiCall: #( void glPopName ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> presentFrameDualFillNV_video_slot: video_slot minPresentTime: minPresentTime beginPresentTimeId: beginPresentTimeId presentDurationId: presentDurationId type: type target0: target0 fill0: fill0 target1: target1 fill1: fill1 target2: target2 fill2: fill2 target3: target3 fill3: fill3 [
	^ self ffiCall: #( void glPresentFrameDualFillNV ( GLuint video_slot , GLuint64EXT minPresentTime , GLuint beginPresentTimeId , GLuint presentDurationId , GLenum type , GLenum target0 , GLuint fill0 , GLenum target1 , GLuint fill1 , GLenum target2 , GLuint fill2 , GLenum target3 , GLuint fill3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> presentFrameKeyedNV_video_slot: video_slot minPresentTime: minPresentTime beginPresentTimeId: beginPresentTimeId presentDurationId: presentDurationId type: type target0: target0 fill0: fill0 key0: key0 target1: target1 fill1: fill1 key1: key1 [
	^ self ffiCall: #( void glPresentFrameKeyedNV ( GLuint video_slot , GLuint64EXT minPresentTime , GLuint beginPresentTimeId , GLuint presentDurationId , GLenum type , GLenum target0 , GLuint fill0 , GLuint key0 , GLenum target1 , GLuint fill1 , GLuint key1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveBoundingBoxARB_minX: minX minY: minY minZ: minZ minW: minW maxX: maxX maxY: maxY maxZ: maxZ maxW: maxW [
	^ self ffiCall: #( void glPrimitiveBoundingBoxARB ( GLfloat minX , GLfloat minY , GLfloat minZ , GLfloat minW , GLfloat maxX , GLfloat maxY , GLfloat maxZ , GLfloat maxW ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveBoundingBoxEXT_minX: minX minY: minY minZ: minZ minW: minW maxX: maxX maxY: maxY maxZ: maxZ maxW: maxW [
	^ self ffiCall: #( void glPrimitiveBoundingBoxEXT ( GLfloat minX , GLfloat minY , GLfloat minZ , GLfloat minW , GLfloat maxX , GLfloat maxY , GLfloat maxZ , GLfloat maxW ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveBoundingBoxOES_minX: minX minY: minY minZ: minZ minW: minW maxX: maxX maxY: maxY maxZ: maxZ maxW: maxW [
	^ self ffiCall: #( void glPrimitiveBoundingBoxOES ( GLfloat minX , GLfloat minY , GLfloat minZ , GLfloat minW , GLfloat maxX , GLfloat maxY , GLfloat maxZ , GLfloat maxW ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveBoundingBox_minX: minX minY: minY minZ: minZ minW: minW maxX: maxX maxY: maxY maxZ: maxZ maxW: maxW [
	^ self ffiCall: #( void glPrimitiveBoundingBox ( GLfloat minX , GLfloat minY , GLfloat minZ , GLfloat minW , GLfloat maxX , GLfloat maxY , GLfloat maxZ , GLfloat maxW ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveRestartIndex: index [
	^ self ffiCall: #( void glPrimitiveRestartIndex ( GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveRestartIndexNV: index [
	^ self ffiCall: #( void glPrimitiveRestartIndexNV ( GLuint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> primitiveRestartNV [
	^ self ffiCall: #( void glPrimitiveRestartNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> prioritizeTexturesEXT_n: n textures: textures priorities: priorities [
	^ self ffiCall: #( void glPrioritizeTexturesEXT ( GLsizei n , GLuint* textures , GLclampf* priorities ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> prioritizeTextures_n: n textures: textures priorities: priorities [
	^ self ffiCall: #( void glPrioritizeTextures ( GLsizei n , GLuint* textures , GLfloat* priorities ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> prioritizeTexturesxOES_n: n textures: textures priorities: priorities [
	^ self ffiCall: #( void glPrioritizeTexturesxOES ( GLsizei n , GLuint* textures , GLfixed* priorities ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programBinaryOES_program: program binaryFormat: binaryFormat binary: binary length: length [
	^ self ffiCall: #( void glProgramBinaryOES ( GLuint program , GLenum binaryFormat , void* binary , GLint length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programBinary_program: program binaryFormat: binaryFormat binary: binary length: length [
	^ self ffiCall: #( void glProgramBinary ( GLuint program , GLenum binaryFormat , void* binary , GLsizei length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programBufferParametersIivNV_target: target bindingIndex: bindingIndex wordIndex: wordIndex count: count params: params [
	^ self ffiCall: #( void glProgramBufferParametersIivNV ( GLenum target , GLuint bindingIndex , GLuint wordIndex , GLsizei count , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programBufferParametersIuivNV_target: target bindingIndex: bindingIndex wordIndex: wordIndex count: count params: params [
	^ self ffiCall: #( void glProgramBufferParametersIuivNV ( GLenum target , GLuint bindingIndex , GLuint wordIndex , GLsizei count , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programBufferParametersfvNV_target: target bindingIndex: bindingIndex wordIndex: wordIndex count: count params: params [
	^ self ffiCall: #( void glProgramBufferParametersfvNV ( GLenum target , GLuint bindingIndex , GLuint wordIndex , GLsizei count , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameter4dARB_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramEnvParameter4dARB ( GLenum target , GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameter4dvARB_target: target index: index params: params [
	^ self ffiCall: #( void glProgramEnvParameter4dvARB ( GLenum target , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameter4fARB_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramEnvParameter4fARB ( GLenum target , GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameter4fvARB_target: target index: index params: params [
	^ self ffiCall: #( void glProgramEnvParameter4fvARB ( GLenum target , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameterI4iNV_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramEnvParameterI4iNV ( GLenum target , GLuint index , GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameterI4ivNV_target: target index: index params: params [
	^ self ffiCall: #( void glProgramEnvParameterI4ivNV ( GLenum target , GLuint index , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameterI4uiNV_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramEnvParameterI4uiNV ( GLenum target , GLuint index , GLuint x , GLuint y , GLuint z , GLuint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameterI4uivNV_target: target index: index params: params [
	^ self ffiCall: #( void glProgramEnvParameterI4uivNV ( GLenum target , GLuint index , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParameters4fvEXT_target: target index: index count: count params: params [
	^ self ffiCall: #( void glProgramEnvParameters4fvEXT ( GLenum target , GLuint index , GLsizei count , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParametersI4ivNV_target: target index: index count: count params: params [
	^ self ffiCall: #( void glProgramEnvParametersI4ivNV ( GLenum target , GLuint index , GLsizei count , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programEnvParametersI4uivNV_target: target index: index count: count params: params [
	^ self ffiCall: #( void glProgramEnvParametersI4uivNV ( GLenum target , GLuint index , GLsizei count , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameter4dARB_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramLocalParameter4dARB ( GLenum target , GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameter4dvARB_target: target index: index params: params [
	^ self ffiCall: #( void glProgramLocalParameter4dvARB ( GLenum target , GLuint index , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameter4fARB_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramLocalParameter4fARB ( GLenum target , GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameter4fvARB_target: target index: index params: params [
	^ self ffiCall: #( void glProgramLocalParameter4fvARB ( GLenum target , GLuint index , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameterI4iNV_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramLocalParameterI4iNV ( GLenum target , GLuint index , GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameterI4ivNV_target: target index: index params: params [
	^ self ffiCall: #( void glProgramLocalParameterI4ivNV ( GLenum target , GLuint index , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameterI4uiNV_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramLocalParameterI4uiNV ( GLenum target , GLuint index , GLuint x , GLuint y , GLuint z , GLuint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameterI4uivNV_target: target index: index params: params [
	^ self ffiCall: #( void glProgramLocalParameterI4uivNV ( GLenum target , GLuint index , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParameters4fvEXT_target: target index: index count: count params: params [
	^ self ffiCall: #( void glProgramLocalParameters4fvEXT ( GLenum target , GLuint index , GLsizei count , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParametersI4ivNV_target: target index: index count: count params: params [
	^ self ffiCall: #( void glProgramLocalParametersI4ivNV ( GLenum target , GLuint index , GLsizei count , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programLocalParametersI4uivNV_target: target index: index count: count params: params [
	^ self ffiCall: #( void glProgramLocalParametersI4uivNV ( GLenum target , GLuint index , GLsizei count , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programNamedParameter4dNV_id: id len: len name: name x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramNamedParameter4dNV ( GLuint id , GLsizei len , GLubyte* name , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programNamedParameter4dvNV_id: id len: len name: name v: v [
	^ self ffiCall: #( void glProgramNamedParameter4dvNV ( GLuint id , GLsizei len , GLubyte* name , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programNamedParameter4fNV_id: id len: len name: name x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramNamedParameter4fNV ( GLuint id , GLsizei len , GLubyte* name , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programNamedParameter4fvNV_id: id len: len name: name v: v [
	^ self ffiCall: #( void glProgramNamedParameter4fvNV ( GLuint id , GLsizei len , GLubyte* name , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameter4dNV_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramParameter4dNV ( GLenum target , GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameter4dvNV_target: target index: index v: v [
	^ self ffiCall: #( void glProgramParameter4dvNV ( GLenum target , GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameter4fNV_target: target index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramParameter4fNV ( GLenum target , GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameter4fvNV_target: target index: index v: v [
	^ self ffiCall: #( void glProgramParameter4fvNV ( GLenum target , GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameteriARB_program: program pname: pname value: value [
	^ self ffiCall: #( void glProgramParameteriARB ( GLuint program , GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameteriEXT_program: program pname: pname value: value [
	^ self ffiCall: #( void glProgramParameteriEXT ( GLuint program , GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameteri_program: program pname: pname value: value [
	^ self ffiCall: #( void glProgramParameteri ( GLuint program , GLenum pname , GLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameters4dvNV_target: target index: index count: count v: v [
	^ self ffiCall: #( void glProgramParameters4dvNV ( GLenum target , GLuint index , GLsizei count , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programParameters4fvNV_target: target index: index count: count v: v [
	^ self ffiCall: #( void glProgramParameters4fvNV ( GLenum target , GLuint index , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programPathFragmentInputGenNV_program: program location: location genMode: genMode components: components coeffs: coeffs [
	^ self ffiCall: #( void glProgramPathFragmentInputGenNV ( GLuint program , GLint location , GLenum genMode , GLint components , GLfloat* coeffs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programStringARB_target: target format: format len: len string: string [
	^ self ffiCall: #( void glProgramStringARB ( GLenum target , GLenum format , GLsizei len , void* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programSubroutineParametersuivNV_target: target count: count params: params [
	^ self ffiCall: #( void glProgramSubroutineParametersuivNV ( GLenum target , GLsizei count , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1dEXT_program: program location: location x: x [
	^ self ffiCall: #( void glProgramUniform1dEXT ( GLuint program , GLint location , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1d_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1d ( GLuint program , GLint location , GLdouble v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1dvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1dvEXT ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1dv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1dv ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1fEXT_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1fEXT ( GLuint program , GLint location , GLfloat v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1f_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1f ( GLuint program , GLint location , GLfloat v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1fvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1fvEXT ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1fv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1fv ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1i64ARB_program: program location: location x: x [
	^ self ffiCall: #( void glProgramUniform1i64ARB ( GLuint program , GLint location , GLint64 x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1i64NV_program: program location: location x: x [
	^ self ffiCall: #( void glProgramUniform1i64NV ( GLuint program , GLint location , GLint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1i64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1i64vARB ( GLuint program , GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1i64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1i64vNV ( GLuint program , GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1iEXT_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1iEXT ( GLuint program , GLint location , GLint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1i_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1i ( GLuint program , GLint location , GLint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1ivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1ivEXT ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1iv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1iv ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1ui64ARB_program: program location: location x: x [
	^ self ffiCall: #( void glProgramUniform1ui64ARB ( GLuint program , GLint location , GLuint64 x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1ui64NV_program: program location: location x: x [
	^ self ffiCall: #( void glProgramUniform1ui64NV ( GLuint program , GLint location , GLuint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1ui64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1ui64vARB ( GLuint program , GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1ui64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1ui64vNV ( GLuint program , GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1uiEXT_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1uiEXT ( GLuint program , GLint location , GLuint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1ui_program: program location: location v0: v0 [
	^ self ffiCall: #( void glProgramUniform1ui ( GLuint program , GLint location , GLuint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1uivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1uivEXT ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform1uiv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform1uiv ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2dEXT_program: program location: location x: x y: y [
	^ self ffiCall: #( void glProgramUniform2dEXT ( GLuint program , GLint location , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2d_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2d ( GLuint program , GLint location , GLdouble v0 , GLdouble v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2dvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2dvEXT ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2dv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2dv ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2fEXT_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2fEXT ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2f_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2f ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2fvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2fvEXT ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2fv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2fv ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2i64ARB_program: program location: location x: x y: y [
	^ self ffiCall: #( void glProgramUniform2i64ARB ( GLuint program , GLint location , GLint64 x , GLint64 y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2i64NV_program: program location: location x: x y: y [
	^ self ffiCall: #( void glProgramUniform2i64NV ( GLuint program , GLint location , GLint64EXT x , GLint64EXT y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2i64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2i64vARB ( GLuint program , GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2i64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2i64vNV ( GLuint program , GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2iEXT_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2iEXT ( GLuint program , GLint location , GLint v0 , GLint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2i_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2i ( GLuint program , GLint location , GLint v0 , GLint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2ivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2ivEXT ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2iv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2iv ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2ui64ARB_program: program location: location x: x y: y [
	^ self ffiCall: #( void glProgramUniform2ui64ARB ( GLuint program , GLint location , GLuint64 x , GLuint64 y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2ui64NV_program: program location: location x: x y: y [
	^ self ffiCall: #( void glProgramUniform2ui64NV ( GLuint program , GLint location , GLuint64EXT x , GLuint64EXT y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2ui64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2ui64vARB ( GLuint program , GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2ui64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2ui64vNV ( GLuint program , GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2uiEXT_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2uiEXT ( GLuint program , GLint location , GLuint v0 , GLuint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2ui_program: program location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glProgramUniform2ui ( GLuint program , GLint location , GLuint v0 , GLuint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2uivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2uivEXT ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform2uiv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform2uiv ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3dEXT_program: program location: location x: x y: y z: z [
	^ self ffiCall: #( void glProgramUniform3dEXT ( GLuint program , GLint location , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3d_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3d ( GLuint program , GLint location , GLdouble v0 , GLdouble v1 , GLdouble v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3dvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3dvEXT ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3dv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3dv ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3fEXT_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3fEXT ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3f_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3f ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3fvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3fvEXT ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3fv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3fv ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3i64ARB_program: program location: location x: x y: y z: z [
	^ self ffiCall: #( void glProgramUniform3i64ARB ( GLuint program , GLint location , GLint64 x , GLint64 y , GLint64 z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3i64NV_program: program location: location x: x y: y z: z [
	^ self ffiCall: #( void glProgramUniform3i64NV ( GLuint program , GLint location , GLint64EXT x , GLint64EXT y , GLint64EXT z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3i64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3i64vARB ( GLuint program , GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3i64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3i64vNV ( GLuint program , GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3iEXT_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3iEXT ( GLuint program , GLint location , GLint v0 , GLint v1 , GLint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3i_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3i ( GLuint program , GLint location , GLint v0 , GLint v1 , GLint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3ivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3ivEXT ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3iv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3iv ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3ui64ARB_program: program location: location x: x y: y z: z [
	^ self ffiCall: #( void glProgramUniform3ui64ARB ( GLuint program , GLint location , GLuint64 x , GLuint64 y , GLuint64 z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3ui64NV_program: program location: location x: x y: y z: z [
	^ self ffiCall: #( void glProgramUniform3ui64NV ( GLuint program , GLint location , GLuint64EXT x , GLuint64EXT y , GLuint64EXT z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3ui64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3ui64vARB ( GLuint program , GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3ui64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3ui64vNV ( GLuint program , GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3uiEXT_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3uiEXT ( GLuint program , GLint location , GLuint v0 , GLuint v1 , GLuint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3ui_program: program location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glProgramUniform3ui ( GLuint program , GLint location , GLuint v0 , GLuint v1 , GLuint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3uivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3uivEXT ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform3uiv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform3uiv ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4dEXT_program: program location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramUniform4dEXT ( GLuint program , GLint location , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4d_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4d ( GLuint program , GLint location , GLdouble v0 , GLdouble v1 , GLdouble v2 , GLdouble v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4dvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4dvEXT ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4dv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4dv ( GLuint program , GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4fEXT_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4fEXT ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 , GLfloat v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4f_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4f ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 , GLfloat v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4fvEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4fvEXT ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4fv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4fv ( GLuint program , GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4i64ARB_program: program location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramUniform4i64ARB ( GLuint program , GLint location , GLint64 x , GLint64 y , GLint64 z , GLint64 w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4i64NV_program: program location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramUniform4i64NV ( GLuint program , GLint location , GLint64EXT x , GLint64EXT y , GLint64EXT z , GLint64EXT w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4i64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4i64vARB ( GLuint program , GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4i64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4i64vNV ( GLuint program , GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4iEXT_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4iEXT ( GLuint program , GLint location , GLint v0 , GLint v1 , GLint v2 , GLint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4i_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4i ( GLuint program , GLint location , GLint v0 , GLint v1 , GLint v2 , GLint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4ivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4ivEXT ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4iv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4iv ( GLuint program , GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4ui64ARB_program: program location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramUniform4ui64ARB ( GLuint program , GLint location , GLuint64 x , GLuint64 y , GLuint64 z , GLuint64 w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4ui64NV_program: program location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glProgramUniform4ui64NV ( GLuint program , GLint location , GLuint64EXT x , GLuint64EXT y , GLuint64EXT z , GLuint64EXT w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4ui64vARB_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4ui64vARB ( GLuint program , GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4ui64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4ui64vNV ( GLuint program , GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4uiEXT_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4uiEXT ( GLuint program , GLint location , GLuint v0 , GLuint v1 , GLuint v2 , GLuint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4ui_program: program location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glProgramUniform4ui ( GLuint program , GLint location , GLuint v0 , GLuint v1 , GLuint v2 , GLuint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4uivEXT_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4uivEXT ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniform4uiv_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniform4uiv ( GLuint program , GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformHandleui64ARB_program: program location: location value: value [
	^ self ffiCall: #( void glProgramUniformHandleui64ARB ( GLuint program , GLint location , GLuint64 value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformHandleui64NV_program: program location: location value: value [
	^ self ffiCall: #( void glProgramUniformHandleui64NV ( GLuint program , GLint location , GLuint64 value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformHandleui64vARB_program: program location: location count: count values: values [
	^ self ffiCall: #( void glProgramUniformHandleui64vARB ( GLuint program , GLint location , GLsizei count , GLuint64* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformHandleui64vNV_program: program location: location count: count values: values [
	^ self ffiCall: #( void glProgramUniformHandleui64vNV ( GLuint program , GLint location , GLsizei count , GLuint64* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x3dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x3dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x3dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x3dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x3fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x3fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x3fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x3fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x4dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x4dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x4dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x4dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x4fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x4fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix2x4fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix2x4fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x2dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x2dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x2dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x2dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x2fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x2fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x2fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x2fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x4dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x4dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x4dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x4dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x4fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x4fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix3x4fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix3x4fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x2dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x2dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x2dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x2dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x2fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x2fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x2fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x2fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x3dvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x3dvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x3dv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x3dv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x3fvEXT_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x3fvEXT ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformMatrix4x3fv_program: program location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glProgramUniformMatrix4x3fv ( GLuint program , GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformui64NV_program: program location: location value: value [
	^ self ffiCall: #( void glProgramUniformui64NV ( GLuint program , GLint location , GLuint64EXT value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programUniformui64vNV_program: program location: location count: count value: value [
	^ self ffiCall: #( void glProgramUniformui64vNV ( GLuint program , GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> programVertexLimitNV_target: target limit: limit [
	^ self ffiCall: #( void glProgramVertexLimitNV ( GLenum target , GLint limit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> provokingVertex: mode [
	^ self ffiCall: #( void glProvokingVertex ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> provokingVertexEXT: mode [
	^ self ffiCall: #( void glProvokingVertexEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushAttrib: mask [
	^ self ffiCall: #( void glPushAttrib ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushClientAttrib: mask [
	^ self ffiCall: #( void glPushClientAttrib ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushClientAttribDefaultEXT: mask [
	^ self ffiCall: #( void glPushClientAttribDefaultEXT ( GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushDebugGroupKHR_source: source id: id length: length message: message [
	^ self ffiCall: #( void glPushDebugGroupKHR ( GLenum source , GLuint id , GLsizei length , GLchar* message ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushDebugGroup_source: source id: id length: length message: message [
	^ self ffiCall: #( void glPushDebugGroup ( GLenum source , GLuint id , GLsizei length , GLchar* message ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushGroupMarkerEXT_length: length marker: marker [
	^ self ffiCall: #( void glPushGroupMarkerEXT ( GLsizei length , GLchar* marker ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushMatrix [
	^ self ffiCall: #( void glPushMatrix ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> pushName: name [
	^ self ffiCall: #( void glPushName ( GLuint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> queryCounterEXT_id: id target: target [
	^ self ffiCall: #( void glQueryCounterEXT ( GLuint id , GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> queryCounter_id: id target: target [
	^ self ffiCall: #( void glQueryCounter ( GLuint id , GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> queryMatrixxOES_mantissa: mantissa exponent: exponent [
	^ self ffiCall: #( GLbitfield glQueryMatrixxOES ( GLfixed* mantissa , GLint* exponent ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> queryObjectParameteruiAMD_target: target id: id pname: pname param: param [
	^ self ffiCall: #( void glQueryObjectParameteruiAMD ( GLenum target , GLuint id , GLenum pname , GLuint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2d_x: x y: y [
	^ self ffiCall: #( void glRasterPos2d ( GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2dv: v [
	^ self ffiCall: #( void glRasterPos2dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2f_x: x y: y [
	^ self ffiCall: #( void glRasterPos2f ( GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2fv: v [
	^ self ffiCall: #( void glRasterPos2fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2i_x: x y: y [
	^ self ffiCall: #( void glRasterPos2i ( GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2iv: v [
	^ self ffiCall: #( void glRasterPos2iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2s_x: x y: y [
	^ self ffiCall: #( void glRasterPos2s ( GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2sv: v [
	^ self ffiCall: #( void glRasterPos2sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2xOES_x: x y: y [
	^ self ffiCall: #( void glRasterPos2xOES ( GLfixed x , GLfixed y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos2xvOES: coords [
	^ self ffiCall: #( void glRasterPos2xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3d_x: x y: y z: z [
	^ self ffiCall: #( void glRasterPos3d ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3dv: v [
	^ self ffiCall: #( void glRasterPos3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3f_x: x y: y z: z [
	^ self ffiCall: #( void glRasterPos3f ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3fv: v [
	^ self ffiCall: #( void glRasterPos3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3i_x: x y: y z: z [
	^ self ffiCall: #( void glRasterPos3i ( GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3iv: v [
	^ self ffiCall: #( void glRasterPos3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3s_x: x y: y z: z [
	^ self ffiCall: #( void glRasterPos3s ( GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3sv: v [
	^ self ffiCall: #( void glRasterPos3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3xOES_x: x y: y z: z [
	^ self ffiCall: #( void glRasterPos3xOES ( GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos3xvOES: coords [
	^ self ffiCall: #( void glRasterPos3xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4d_x: x y: y z: z w: w [
	^ self ffiCall: #( void glRasterPos4d ( GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4dv: v [
	^ self ffiCall: #( void glRasterPos4dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4f_x: x y: y z: z w: w [
	^ self ffiCall: #( void glRasterPos4f ( GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4fv: v [
	^ self ffiCall: #( void glRasterPos4fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4i_x: x y: y z: z w: w [
	^ self ffiCall: #( void glRasterPos4i ( GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4iv: v [
	^ self ffiCall: #( void glRasterPos4iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4s_x: x y: y z: z w: w [
	^ self ffiCall: #( void glRasterPos4s ( GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4sv: v [
	^ self ffiCall: #( void glRasterPos4sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4xOES_x: x y: y z: z w: w [
	^ self ffiCall: #( void glRasterPos4xOES ( GLfixed x , GLfixed y , GLfixed z , GLfixed w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterPos4xvOES: coords [
	^ self ffiCall: #( void glRasterPos4xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rasterSamplesEXT_samples: samples fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glRasterSamplesEXT ( GLuint samples , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readBuffer: src [
	^ self ffiCall: #( void glReadBuffer ( GLenum src ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readBufferIndexedEXT_src: src index: index [
	^ self ffiCall: #( void glReadBufferIndexedEXT ( GLenum src , GLint index ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readBufferNV: mode [
	^ self ffiCall: #( void glReadBufferNV ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readInstrumentsSGIX: marker [
	^ self ffiCall: #( void glReadInstrumentsSGIX ( GLint marker ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readPixels_x: x y: y width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glReadPixels ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readnPixelsARB_x: x y: y width: width height: height format: format type: type bufSize: bufSize data: data [
	^ self ffiCall: #( void glReadnPixelsARB ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , GLsizei bufSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readnPixelsEXT_x: x y: y width: width height: height format: format type: type bufSize: bufSize data: data [
	^ self ffiCall: #( void glReadnPixelsEXT ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , GLsizei bufSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readnPixelsKHR_x: x y: y width: width height: height format: format type: type bufSize: bufSize data: data [
	^ self ffiCall: #( void glReadnPixelsKHR ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , GLsizei bufSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> readnPixels_x: x y: y width: width height: height format: format type: type bufSize: bufSize data: data [
	^ self ffiCall: #( void glReadnPixels ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , GLsizei bufSize , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectd_x1: x1 y1: y1 x2: x2 y2: y2 [
	^ self ffiCall: #( void glRectd ( GLdouble x1 , GLdouble y1 , GLdouble x2 , GLdouble y2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectdv_v1: v1 v2: v2 [
	^ self ffiCall: #( void glRectdv ( GLdouble* v1 , GLdouble* v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectf_x1: x1 y1: y1 x2: x2 y2: y2 [
	^ self ffiCall: #( void glRectf ( GLfloat x1 , GLfloat y1 , GLfloat x2 , GLfloat y2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectfv_v1: v1 v2: v2 [
	^ self ffiCall: #( void glRectfv ( GLfloat* v1 , GLfloat* v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> recti_x1: x1 y1: y1 x2: x2 y2: y2 [
	^ self ffiCall: #( void glRecti ( GLint x1 , GLint y1 , GLint x2 , GLint y2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectiv_v1: v1 v2: v2 [
	^ self ffiCall: #( void glRectiv ( GLint* v1 , GLint* v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rects_x1: x1 y1: y1 x2: x2 y2: y2 [
	^ self ffiCall: #( void glRects ( GLshort x1 , GLshort y1 , GLshort x2 , GLshort y2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectsv_v1: v1 v2: v2 [
	^ self ffiCall: #( void glRectsv ( GLshort* v1 , GLshort* v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectxOES_x1: x1 y1: y1 x2: x2 y2: y2 [
	^ self ffiCall: #( void glRectxOES ( GLfixed x1 , GLfixed y1 , GLfixed x2 , GLfixed y2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rectxvOES_v1: v1 v2: v2 [
	^ self ffiCall: #( void glRectxvOES ( GLfixed* v1 , GLfixed* v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> referencePlaneSGIX: equation [
	^ self ffiCall: #( void glReferencePlaneSGIX ( GLdouble* equation ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> releaseShaderCompiler [
	^ self ffiCall: #( void glReleaseShaderCompiler ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderMode: mode [
	^ self ffiCall: #( GLint glRenderMode ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageEXT_target: target internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageEXT ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisampleANGLE_target: target samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisampleANGLE ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisampleAPPLE_target: target samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisampleAPPLE ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisampleCoverageNV_target: target coverageSamples: coverageSamples colorSamples: colorSamples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisampleCoverageNV ( GLenum target , GLsizei coverageSamples , GLsizei colorSamples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisampleEXT_target: target samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisampleEXT ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisampleIMG_target: target samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisampleIMG ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisampleNV_target: target samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisampleNV ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageMultisample_target: target samples: samples internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageMultisample ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorageOES_target: target internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorageOES ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> renderbufferStorage_target: target internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glRenderbufferStorage ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodePointerSUN_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glReplacementCodePointerSUN ( GLenum type , GLsizei stride , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeubSUN: code [
	^ self ffiCall: #( void glReplacementCodeubSUN ( GLubyte code ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeubvSUN: code [
	^ self ffiCall: #( void glReplacementCodeubvSUN ( GLubyte* code ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiColor3fVertex3fSUN_rc: rc r: r g: g b: b x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiColor3fVertex3fSUN ( GLuint rc , GLfloat r , GLfloat g , GLfloat b , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiColor3fVertex3fvSUN_rc: rc c: c v: v [
	^ self ffiCall: #( void glReplacementCodeuiColor3fVertex3fvSUN ( GLuint* rc , GLfloat* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiColor4fNormal3fVertex3fSUN_rc: rc r: r g: g b: b a: a nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiColor4fNormal3fVertex3fSUN ( GLuint rc , GLfloat r , GLfloat g , GLfloat b , GLfloat a , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiColor4fNormal3fVertex3fvSUN_rc: rc c: c n: n v: v [
	^ self ffiCall: #( void glReplacementCodeuiColor4fNormal3fVertex3fvSUN ( GLuint* rc , GLfloat* c , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiColor4ubVertex3fSUN_rc: rc r: r g: g b: b a: a x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiColor4ubVertex3fSUN ( GLuint rc , GLubyte r , GLubyte g , GLubyte b , GLubyte a , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiColor4ubVertex3fvSUN_rc: rc c: c v: v [
	^ self ffiCall: #( void glReplacementCodeuiColor4ubVertex3fvSUN ( GLuint* rc , GLubyte* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiNormal3fVertex3fSUN_rc: rc nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiNormal3fVertex3fSUN ( GLuint rc , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiNormal3fVertex3fvSUN_rc: rc n: n v: v [
	^ self ffiCall: #( void glReplacementCodeuiNormal3fVertex3fvSUN ( GLuint* rc , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiSUN: code [
	^ self ffiCall: #( void glReplacementCodeuiSUN ( GLuint code ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN_rc: rc s: s t: t r: r g: g b: b a: a nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN ( GLuint rc , GLfloat s , GLfloat t , GLfloat r , GLfloat g , GLfloat b , GLfloat a , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN_rc: rc tc: tc c: c n: n v: v [
	^ self ffiCall: #( void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN ( GLuint* rc , GLfloat* tc , GLfloat* c , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiTexCoord2fNormal3fVertex3fSUN_rc: rc s: s t: t nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN ( GLuint rc , GLfloat s , GLfloat t , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiTexCoord2fNormal3fVertex3fvSUN_rc: rc tc: tc n: n v: v [
	^ self ffiCall: #( void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN ( GLuint* rc , GLfloat* tc , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiTexCoord2fVertex3fSUN_rc: rc s: s t: t x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiTexCoord2fVertex3fSUN ( GLuint rc , GLfloat s , GLfloat t , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiTexCoord2fVertex3fvSUN_rc: rc tc: tc v: v [
	^ self ffiCall: #( void glReplacementCodeuiTexCoord2fVertex3fvSUN ( GLuint* rc , GLfloat* tc , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiVertex3fSUN_rc: rc x: x y: y z: z [
	^ self ffiCall: #( void glReplacementCodeuiVertex3fSUN ( GLuint rc , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuiVertex3fvSUN_rc: rc v: v [
	^ self ffiCall: #( void glReplacementCodeuiVertex3fvSUN ( GLuint* rc , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeuivSUN: code [
	^ self ffiCall: #( void glReplacementCodeuivSUN ( GLuint* code ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeusSUN: code [
	^ self ffiCall: #( void glReplacementCodeusSUN ( GLushort code ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> replacementCodeusvSUN: code [
	^ self ffiCall: #( void glReplacementCodeusvSUN ( GLushort* code ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> requestResidentProgramsNV_n: n programs: programs [
	^ self ffiCall: #( void glRequestResidentProgramsNV ( GLsizei n , GLuint* programs ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resetHistogram: target [
	^ self ffiCall: #( void glResetHistogram ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resetHistogramEXT: target [
	^ self ffiCall: #( void glResetHistogramEXT ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resetMinmax: target [
	^ self ffiCall: #( void glResetMinmax ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resetMinmaxEXT: target [
	^ self ffiCall: #( void glResetMinmaxEXT ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resizeBuffersMESA [
	^ self ffiCall: #( void glResizeBuffersMESA ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resolveDepthValuesNV [
	^ self ffiCall: #( void glResolveDepthValuesNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resolveMultisampleFramebufferAPPLE [
	^ self ffiCall: #( void glResolveMultisampleFramebufferAPPLE ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resumeTransformFeedback [
	^ self ffiCall: #( void glResumeTransformFeedback ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> resumeTransformFeedbackNV [
	^ self ffiCall: #( void glResumeTransformFeedbackNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rotated_angle: angle x: x y: y z: z [
	^ self ffiCall: #( void glRotated ( GLdouble angle , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rotatef_angle: angle x: x y: y z: z [
	^ self ffiCall: #( void glRotatef ( GLfloat angle , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rotatexOES_angle: angle x: x y: y z: z [
	^ self ffiCall: #( void glRotatexOES ( GLfixed angle , GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> rotatex_angle: angle x: x y: y z: z [
	^ self ffiCall: #( void glRotatex ( GLfixed angle , GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleCoverageARB_value: value invert: invert [
	^ self ffiCall: #( void glSampleCoverageARB ( GLfloat value , GLboolean invert ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleCoverage_value: value invert: invert [
	^ self ffiCall: #( void glSampleCoverage ( GLfloat value , GLboolean invert ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleCoveragexOES_value: value invert: invert [
	^ self ffiCall: #( void glSampleCoveragexOES ( GLclampx value , GLboolean invert ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleCoveragex_value: value invert: invert [
	^ self ffiCall: #( void glSampleCoveragex ( GLclampx value , GLboolean invert ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleMapATI_dst: dst interp: interp swizzle: swizzle [
	^ self ffiCall: #( void glSampleMapATI ( GLuint dst , GLuint interp , GLenum swizzle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleMaskEXT_value: value invert: invert [
	^ self ffiCall: #( void glSampleMaskEXT ( GLclampf value , GLboolean invert ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleMaskIndexedNV_index: index mask: mask [
	^ self ffiCall: #( void glSampleMaskIndexedNV ( GLuint index , GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleMaskSGIS_value: value invert: invert [
	^ self ffiCall: #( void glSampleMaskSGIS ( GLclampf value , GLboolean invert ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sampleMaski_maskNumber: maskNumber mask: mask [
	^ self ffiCall: #( void glSampleMaski ( GLuint maskNumber , GLbitfield mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplePatternEXT: pattern [
	^ self ffiCall: #( void glSamplePatternEXT ( GLenum pattern ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplePatternSGIS: pattern [
	^ self ffiCall: #( void glSamplePatternSGIS ( GLenum pattern ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterIivEXT_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterIivEXT ( GLuint sampler , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterIivOES_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterIivOES ( GLuint sampler , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterIiv_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterIiv ( GLuint sampler , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterIuivEXT_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterIuivEXT ( GLuint sampler , GLenum pname , GLuint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterIuivOES_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterIuivOES ( GLuint sampler , GLenum pname , GLuint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterIuiv_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterIuiv ( GLuint sampler , GLenum pname , GLuint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterf_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterf ( GLuint sampler , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameterfv_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameterfv ( GLuint sampler , GLenum pname , GLfloat* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameteri_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameteri ( GLuint sampler , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> samplerParameteriv_sampler: sampler pname: pname param: param [
	^ self ffiCall: #( void glSamplerParameteriv ( GLuint sampler , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scaled_x: x y: y z: z [
	^ self ffiCall: #( void glScaled ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scalef_x: x y: y z: z [
	^ self ffiCall: #( void glScalef ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scalexOES_x: x y: y z: z [
	^ self ffiCall: #( void glScalexOES ( GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scalex_x: x y: y z: z [
	^ self ffiCall: #( void glScalex ( GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissorArrayvNV_first: first count: count v: v [
	^ self ffiCall: #( void glScissorArrayvNV ( GLuint first , GLsizei count , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissorArrayv_first: first count: count v: v [
	^ self ffiCall: #( void glScissorArrayv ( GLuint first , GLsizei count , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissorIndexedNV_index: index left: left bottom: bottom width: width height: height [
	^ self ffiCall: #( void glScissorIndexedNV ( GLuint index , GLint left , GLint bottom , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissorIndexed_index: index left: left bottom: bottom width: width height: height [
	^ self ffiCall: #( void glScissorIndexed ( GLuint index , GLint left , GLint bottom , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissorIndexedvNV_index: index v: v [
	^ self ffiCall: #( void glScissorIndexedvNV ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissorIndexedv_index: index v: v [
	^ self ffiCall: #( void glScissorIndexedv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> scissor_x: x y: y width: width height: height [
	^ self ffiCall: #( void glScissor ( GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3bEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3bEXT ( GLbyte red , GLbyte green , GLbyte blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3b_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3b ( GLbyte red , GLbyte green , GLbyte blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3bv: v [
	^ self ffiCall: #( void glSecondaryColor3bv ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3bvEXT: v [
	^ self ffiCall: #( void glSecondaryColor3bvEXT ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3dEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3dEXT ( GLdouble red , GLdouble green , GLdouble blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3d_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3d ( GLdouble red , GLdouble green , GLdouble blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3dv: v [
	^ self ffiCall: #( void glSecondaryColor3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3dvEXT: v [
	^ self ffiCall: #( void glSecondaryColor3dvEXT ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3fEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3fEXT ( GLfloat red , GLfloat green , GLfloat blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3f_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3f ( GLfloat red , GLfloat green , GLfloat blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3fv: v [
	^ self ffiCall: #( void glSecondaryColor3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3fvEXT: v [
	^ self ffiCall: #( void glSecondaryColor3fvEXT ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3hNV_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3hNV ( GLhalfNV red , GLhalfNV green , GLhalfNV blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3hvNV: v [
	^ self ffiCall: #( void glSecondaryColor3hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3iEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3iEXT ( GLint red , GLint green , GLint blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3i_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3i ( GLint red , GLint green , GLint blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3iv: v [
	^ self ffiCall: #( void glSecondaryColor3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3ivEXT: v [
	^ self ffiCall: #( void glSecondaryColor3ivEXT ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3sEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3sEXT ( GLshort red , GLshort green , GLshort blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3s_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3s ( GLshort red , GLshort green , GLshort blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3sv: v [
	^ self ffiCall: #( void glSecondaryColor3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3svEXT: v [
	^ self ffiCall: #( void glSecondaryColor3svEXT ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3ubEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3ubEXT ( GLubyte red , GLubyte green , GLubyte blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3ub_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3ub ( GLubyte red , GLubyte green , GLubyte blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3ubv: v [
	^ self ffiCall: #( void glSecondaryColor3ubv ( GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3ubvEXT: v [
	^ self ffiCall: #( void glSecondaryColor3ubvEXT ( GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3uiEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3uiEXT ( GLuint red , GLuint green , GLuint blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3ui_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3ui ( GLuint red , GLuint green , GLuint blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3uiv: v [
	^ self ffiCall: #( void glSecondaryColor3uiv ( GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3uivEXT: v [
	^ self ffiCall: #( void glSecondaryColor3uivEXT ( GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3usEXT_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3usEXT ( GLushort red , GLushort green , GLushort blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3us_red: red green: green blue: blue [
	^ self ffiCall: #( void glSecondaryColor3us ( GLushort red , GLushort green , GLushort blue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3usv: v [
	^ self ffiCall: #( void glSecondaryColor3usv ( GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColor3usvEXT: v [
	^ self ffiCall: #( void glSecondaryColor3usvEXT ( GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColorFormatNV_size: size type: type stride: stride [
	^ self ffiCall: #( void glSecondaryColorFormatNV ( GLint size , GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColorP3ui_type: type color: color [
	^ self ffiCall: #( void glSecondaryColorP3ui ( GLenum type , GLuint color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColorP3uiv_type: type color: color [
	^ self ffiCall: #( void glSecondaryColorP3uiv ( GLenum type , GLuint* color ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColorPointerEXT_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glSecondaryColorPointerEXT ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColorPointerListIBM_size: size type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glSecondaryColorPointerListIBM ( GLint size , GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> secondaryColorPointer_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glSecondaryColorPointer ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> selectBuffer_size: size buffer: buffer [
	^ self ffiCall: #( void glSelectBuffer ( GLsizei size , GLuint* buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> selectPerfMonitorCountersAMD_monitor: monitor enable: enable group: group numCounters: numCounters counterList: counterList [
	^ self ffiCall: #( void glSelectPerfMonitorCountersAMD ( GLuint monitor , GLboolean enable , GLuint group , GLint numCounters , GLuint* counterList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> separableFilter2DEXT_target: target internalformat: internalformat width: width height: height format: format type: type row: row column: column [
	^ self ffiCall: #( void glSeparableFilter2DEXT ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height , GLenum format , GLenum type , void* row , void* column ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> separableFilter2D_target: target internalformat: internalformat width: width height: height format: format type: type row: row column: column [
	^ self ffiCall: #( void glSeparableFilter2D ( GLenum target , GLenum internalformat , GLsizei width , GLsizei height , GLenum format , GLenum type , void* row , void* column ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> setFenceAPPLE: fence [
	^ self ffiCall: #( void glSetFenceAPPLE ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> setFenceNV_fence: fence condition: condition [
	^ self ffiCall: #( void glSetFenceNV ( GLuint fence , GLenum condition ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> setFragmentShaderConstantATI_dst: dst value: value [
	^ self ffiCall: #( void glSetFragmentShaderConstantATI ( GLuint dst , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> setInvariantEXT_id: id type: type addr: addr [
	^ self ffiCall: #( void glSetInvariantEXT ( GLuint id , GLenum type , void* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> setLocalConstantEXT_id: id type: type addr: addr [
	^ self ffiCall: #( void glSetLocalConstantEXT ( GLuint id , GLenum type , void* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> setMultisamplefvAMD_pname: pname index: index val: val [
	^ self ffiCall: #( void glSetMultisamplefvAMD ( GLenum pname , GLuint index , GLfloat* val ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shadeModel: mode [
	^ self ffiCall: #( void glShadeModel ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderBinary_count: count shaders: shaders binaryformat: binaryformat binary: binary length: length [
	^ self ffiCall: #( void glShaderBinary ( GLsizei count , GLuint* shaders , GLenum binaryformat , void* binary , GLsizei length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderOp1EXT_op: op res: res arg1: arg1 [
	^ self ffiCall: #( void glShaderOp1EXT ( GLenum op , GLuint res , GLuint arg1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderOp2EXT_op: op res: res arg1: arg1 arg2: arg2 [
	^ self ffiCall: #( void glShaderOp2EXT ( GLenum op , GLuint res , GLuint arg1 , GLuint arg2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderOp3EXT_op: op res: res arg1: arg1 arg2: arg2 arg3: arg3 [
	^ self ffiCall: #( void glShaderOp3EXT ( GLenum op , GLuint res , GLuint arg1 , GLuint arg2 , GLuint arg3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderSourceARB_shaderObj: shaderObj count: count string: string length: length [
	^ self ffiCall: #( void glShaderSourceARB ( GLhandleARB shaderObj , GLsizei count , GLcharARB** string , GLint* length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderSource_shader: shader count: count string: string length: length [
	^ self ffiCall: #( void glShaderSource ( GLuint shader , GLsizei count , GLchar** string , GLint* length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> shaderStorageBlockBinding_program: program storageBlockIndex: storageBlockIndex storageBlockBinding: storageBlockBinding [
	^ self ffiCall: #( void glShaderStorageBlockBinding ( GLuint program , GLuint storageBlockIndex , GLuint storageBlockBinding ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> sharpenTexFuncSGIS_target: target n: n points: points [
	^ self ffiCall: #( void glSharpenTexFuncSGIS ( GLenum target , GLsizei n , GLfloat* points ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> spriteParameterfSGIX_pname: pname param: param [
	^ self ffiCall: #( void glSpriteParameterfSGIX ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> spriteParameterfvSGIX_pname: pname params: params [
	^ self ffiCall: #( void glSpriteParameterfvSGIX ( GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> spriteParameteriSGIX_pname: pname param: param [
	^ self ffiCall: #( void glSpriteParameteriSGIX ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> spriteParameterivSGIX_pname: pname params: params [
	^ self ffiCall: #( void glSpriteParameterivSGIX ( GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> startInstrumentsSGIX [
	^ self ffiCall: #( void glStartInstrumentsSGIX ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> startTilingQCOM_x: x y: y width: width height: height preserveMask: preserveMask [
	^ self ffiCall: #( void glStartTilingQCOM ( GLuint x , GLuint y , GLuint width , GLuint height , GLbitfield preserveMask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stateCaptureNV_state: state mode: mode [
	^ self ffiCall: #( void glStateCaptureNV ( GLuint state , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilClearTagEXT_stencilTagBits: stencilTagBits stencilClearTag: stencilClearTag [
	^ self ffiCall: #( void glStencilClearTagEXT ( GLsizei stencilTagBits , GLuint stencilClearTag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilFillPathInstancedNV_numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase fillMode: fillMode mask: mask transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glStencilFillPathInstancedNV ( GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLenum fillMode , GLuint mask , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilFillPathNV_path: path fillMode: fillMode mask: mask [
	^ self ffiCall: #( void glStencilFillPathNV ( GLuint path , GLenum fillMode , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilFuncSeparateATI_frontfunc: frontfunc backfunc: backfunc ref: ref mask: mask [
	^ self ffiCall: #( void glStencilFuncSeparateATI ( GLenum frontfunc , GLenum backfunc , GLint ref , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilFuncSeparate_face: face func: func ref: ref mask: mask [
	^ self ffiCall: #( void glStencilFuncSeparate ( GLenum face , GLenum func , GLint ref , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilFunc_func: func ref: ref mask: mask [
	^ self ffiCall: #( void glStencilFunc ( GLenum func , GLint ref , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilMask: mask [
	^ self ffiCall: #( void glStencilMask ( GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilMaskSeparate_face: face mask: mask [
	^ self ffiCall: #( void glStencilMaskSeparate ( GLenum face , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilOpSeparateATI_face: face sfail: sfail dpfail: dpfail dppass: dppass [
	^ self ffiCall: #( void glStencilOpSeparateATI ( GLenum face , GLenum sfail , GLenum dpfail , GLenum dppass ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilOpSeparate_face: face sfail: sfail dpfail: dpfail dppass: dppass [
	^ self ffiCall: #( void glStencilOpSeparate ( GLenum face , GLenum sfail , GLenum dpfail , GLenum dppass ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilOpValueAMD_face: face value: value [
	^ self ffiCall: #( void glStencilOpValueAMD ( GLenum face , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilOp_fail: fail zfail: zfail zpass: zpass [
	^ self ffiCall: #( void glStencilOp ( GLenum fail , GLenum zfail , GLenum zpass ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilStrokePathInstancedNV_numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase reference: reference mask: mask transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glStencilStrokePathInstancedNV ( GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLint reference , GLuint mask , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilStrokePathNV_path: path reference: reference mask: mask [
	^ self ffiCall: #( void glStencilStrokePathNV ( GLuint path , GLint reference , GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilThenCoverFillPathInstancedNV_numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase fillMode: fillMode mask: mask coverMode: coverMode transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glStencilThenCoverFillPathInstancedNV ( GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLenum fillMode , GLuint mask , GLenum coverMode , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilThenCoverFillPathNV_path: path fillMode: fillMode mask: mask coverMode: coverMode [
	^ self ffiCall: #( void glStencilThenCoverFillPathNV ( GLuint path , GLenum fillMode , GLuint mask , GLenum coverMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilThenCoverStrokePathInstancedNV_numPaths: numPaths pathNameType: pathNameType paths: paths pathBase: pathBase reference: reference mask: mask coverMode: coverMode transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glStencilThenCoverStrokePathInstancedNV ( GLsizei numPaths , GLenum pathNameType , void* paths , GLuint pathBase , GLint reference , GLuint mask , GLenum coverMode , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stencilThenCoverStrokePathNV_path: path reference: reference mask: mask coverMode: coverMode [
	^ self ffiCall: #( void glStencilThenCoverStrokePathNV ( GLuint path , GLint reference , GLuint mask , GLenum coverMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stopInstrumentsSGIX: marker [
	^ self ffiCall: #( void glStopInstrumentsSGIX ( GLint marker ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> stringMarkerGREMEDY_len: len string: string [
	^ self ffiCall: #( void glStringMarkerGREMEDY ( GLsizei len , void* string ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> subpixelPrecisionBiasNV_xbits: xbits ybits: ybits [
	^ self ffiCall: #( void glSubpixelPrecisionBiasNV ( GLuint xbits , GLuint ybits ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> swizzleEXT_res: res in: in outX: outX outY: outY outZ: outZ outW: outW [
	^ self ffiCall: #( void glSwizzleEXT ( GLuint res , GLuint in , GLenum outX , GLenum outY , GLenum outZ , GLenum outW ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> syncTextureINTEL: texture [
	^ self ffiCall: #( void glSyncTextureINTEL ( GLuint texture ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tagSampleBufferSGIX [
	^ self ffiCall: #( void glTagSampleBufferSGIX ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3bEXT_tx: tx ty: ty tz: tz [
	^ self ffiCall: #( void glTangent3bEXT ( GLbyte tx , GLbyte ty , GLbyte tz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3bvEXT: v [
	^ self ffiCall: #( void glTangent3bvEXT ( GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3dEXT_tx: tx ty: ty tz: tz [
	^ self ffiCall: #( void glTangent3dEXT ( GLdouble tx , GLdouble ty , GLdouble tz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3dvEXT: v [
	^ self ffiCall: #( void glTangent3dvEXT ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3fEXT_tx: tx ty: ty tz: tz [
	^ self ffiCall: #( void glTangent3fEXT ( GLfloat tx , GLfloat ty , GLfloat tz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3fvEXT: v [
	^ self ffiCall: #( void glTangent3fvEXT ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3iEXT_tx: tx ty: ty tz: tz [
	^ self ffiCall: #( void glTangent3iEXT ( GLint tx , GLint ty , GLint tz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3ivEXT: v [
	^ self ffiCall: #( void glTangent3ivEXT ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3sEXT_tx: tx ty: ty tz: tz [
	^ self ffiCall: #( void glTangent3sEXT ( GLshort tx , GLshort ty , GLshort tz ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangent3svEXT: v [
	^ self ffiCall: #( void glTangent3svEXT ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tangentPointerEXT_type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glTangentPointerEXT ( GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tbufferMask3DFX: mask [
	^ self ffiCall: #( void glTbufferMask3DFX ( GLuint mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tessellationFactorAMD: factor [
	^ self ffiCall: #( void glTessellationFactorAMD ( GLfloat factor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> tessellationModeAMD: mode [
	^ self ffiCall: #( void glTessellationModeAMD ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> testFenceAPPLE: fence [
	^ self ffiCall: #( GLboolean glTestFenceAPPLE ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> testFenceNV: fence [
	^ self ffiCall: #( GLboolean glTestFenceNV ( GLuint fence ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> testObjectAPPLE_object: object name: name [
	^ self ffiCall: #( GLboolean glTestObjectAPPLE ( GLenum object , GLuint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBufferARB_target: target internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glTexBufferARB ( GLenum target , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBufferEXT_target: target internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glTexBufferEXT ( GLenum target , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBufferOES_target: target internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glTexBufferOES ( GLenum target , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBufferRangeEXT_target: target internalformat: internalformat buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glTexBufferRangeEXT ( GLenum target , GLenum internalformat , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBufferRangeOES_target: target internalformat: internalformat buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glTexBufferRangeOES ( GLenum target , GLenum internalformat , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBufferRange_target: target internalformat: internalformat buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glTexBufferRange ( GLenum target , GLenum internalformat , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBuffer_target: target internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glTexBuffer ( GLenum target , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBumpParameterfvATI_pname: pname param: param [
	^ self ffiCall: #( void glTexBumpParameterfvATI ( GLenum pname , GLfloat* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texBumpParameterivATI_pname: pname param: param [
	^ self ffiCall: #( void glTexBumpParameterivATI ( GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1bOES: s [
	^ self ffiCall: #( void glTexCoord1bOES ( GLbyte s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1bvOES: coords [
	^ self ffiCall: #( void glTexCoord1bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1d: s [
	^ self ffiCall: #( void glTexCoord1d ( GLdouble s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1dv: v [
	^ self ffiCall: #( void glTexCoord1dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1f: s [
	^ self ffiCall: #( void glTexCoord1f ( GLfloat s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1fv: v [
	^ self ffiCall: #( void glTexCoord1fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1hNV: s [
	^ self ffiCall: #( void glTexCoord1hNV ( GLhalfNV s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1hvNV: v [
	^ self ffiCall: #( void glTexCoord1hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1i: s [
	^ self ffiCall: #( void glTexCoord1i ( GLint s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1iv: v [
	^ self ffiCall: #( void glTexCoord1iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1s: s [
	^ self ffiCall: #( void glTexCoord1s ( GLshort s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1sv: v [
	^ self ffiCall: #( void glTexCoord1sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1xOES: s [
	^ self ffiCall: #( void glTexCoord1xOES ( GLfixed s ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord1xvOES: coords [
	^ self ffiCall: #( void glTexCoord1xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2bOES_s: s t: t [
	^ self ffiCall: #( void glTexCoord2bOES ( GLbyte s , GLbyte t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2bvOES: coords [
	^ self ffiCall: #( void glTexCoord2bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2d_s: s t: t [
	^ self ffiCall: #( void glTexCoord2d ( GLdouble s , GLdouble t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2dv: v [
	^ self ffiCall: #( void glTexCoord2dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fColor3fVertex3fSUN_s: s t: t r: r g: g b: b x: x y: y z: z [
	^ self ffiCall: #( void glTexCoord2fColor3fVertex3fSUN ( GLfloat s , GLfloat t , GLfloat r , GLfloat g , GLfloat b , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fColor3fVertex3fvSUN_tc: tc c: c v: v [
	^ self ffiCall: #( void glTexCoord2fColor3fVertex3fvSUN ( GLfloat* tc , GLfloat* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fColor4fNormal3fVertex3fSUN_s: s t: t r: r g: g b: b a: a nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glTexCoord2fColor4fNormal3fVertex3fSUN ( GLfloat s , GLfloat t , GLfloat r , GLfloat g , GLfloat b , GLfloat a , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fColor4fNormal3fVertex3fvSUN_tc: tc c: c n: n v: v [
	^ self ffiCall: #( void glTexCoord2fColor4fNormal3fVertex3fvSUN ( GLfloat* tc , GLfloat* c , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fColor4ubVertex3fSUN_s: s t: t r: r g: g b: b a: a x: x y: y z: z [
	^ self ffiCall: #( void glTexCoord2fColor4ubVertex3fSUN ( GLfloat s , GLfloat t , GLubyte r , GLubyte g , GLubyte b , GLubyte a , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fColor4ubVertex3fvSUN_tc: tc c: c v: v [
	^ self ffiCall: #( void glTexCoord2fColor4ubVertex3fvSUN ( GLfloat* tc , GLubyte* c , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fNormal3fVertex3fSUN_s: s t: t nx: nx ny: ny nz: nz x: x y: y z: z [
	^ self ffiCall: #( void glTexCoord2fNormal3fVertex3fSUN ( GLfloat s , GLfloat t , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fNormal3fVertex3fvSUN_tc: tc n: n v: v [
	^ self ffiCall: #( void glTexCoord2fNormal3fVertex3fvSUN ( GLfloat* tc , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fVertex3fSUN_s: s t: t x: x y: y z: z [
	^ self ffiCall: #( void glTexCoord2fVertex3fSUN ( GLfloat s , GLfloat t , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fVertex3fvSUN_tc: tc v: v [
	^ self ffiCall: #( void glTexCoord2fVertex3fvSUN ( GLfloat* tc , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2f_s: s t: t [
	^ self ffiCall: #( void glTexCoord2f ( GLfloat s , GLfloat t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2fv: v [
	^ self ffiCall: #( void glTexCoord2fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2hNV_s: s t: t [
	^ self ffiCall: #( void glTexCoord2hNV ( GLhalfNV s , GLhalfNV t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2hvNV: v [
	^ self ffiCall: #( void glTexCoord2hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2i_s: s t: t [
	^ self ffiCall: #( void glTexCoord2i ( GLint s , GLint t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2iv: v [
	^ self ffiCall: #( void glTexCoord2iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2s_s: s t: t [
	^ self ffiCall: #( void glTexCoord2s ( GLshort s , GLshort t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2sv: v [
	^ self ffiCall: #( void glTexCoord2sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2xOES_s: s t: t [
	^ self ffiCall: #( void glTexCoord2xOES ( GLfixed s , GLfixed t ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord2xvOES: coords [
	^ self ffiCall: #( void glTexCoord2xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3bOES_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3bOES ( GLbyte s , GLbyte t , GLbyte r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3bvOES: coords [
	^ self ffiCall: #( void glTexCoord3bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3d_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3d ( GLdouble s , GLdouble t , GLdouble r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3dv: v [
	^ self ffiCall: #( void glTexCoord3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3f_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3f ( GLfloat s , GLfloat t , GLfloat r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3fv: v [
	^ self ffiCall: #( void glTexCoord3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3hNV_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3hNV ( GLhalfNV s , GLhalfNV t , GLhalfNV r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3hvNV: v [
	^ self ffiCall: #( void glTexCoord3hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3i_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3i ( GLint s , GLint t , GLint r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3iv: v [
	^ self ffiCall: #( void glTexCoord3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3s_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3s ( GLshort s , GLshort t , GLshort r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3sv: v [
	^ self ffiCall: #( void glTexCoord3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3xOES_s: s t: t r: r [
	^ self ffiCall: #( void glTexCoord3xOES ( GLfixed s , GLfixed t , GLfixed r ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord3xvOES: coords [
	^ self ffiCall: #( void glTexCoord3xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4bOES_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4bOES ( GLbyte s , GLbyte t , GLbyte r , GLbyte q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4bvOES: coords [
	^ self ffiCall: #( void glTexCoord4bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4d_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4d ( GLdouble s , GLdouble t , GLdouble r , GLdouble q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4dv: v [
	^ self ffiCall: #( void glTexCoord4dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4fColor4fNormal3fVertex4fSUN_s: s t: t p: p q: q r: r g: g b: b a: a nx: nx ny: ny nz: nz x: x y: y z: z w: w [
	^ self ffiCall: #( void glTexCoord4fColor4fNormal3fVertex4fSUN ( GLfloat s , GLfloat t , GLfloat p , GLfloat q , GLfloat r , GLfloat g , GLfloat b , GLfloat a , GLfloat nx , GLfloat ny , GLfloat nz , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4fColor4fNormal3fVertex4fvSUN_tc: tc c: c n: n v: v [
	^ self ffiCall: #( void glTexCoord4fColor4fNormal3fVertex4fvSUN ( GLfloat* tc , GLfloat* c , GLfloat* n , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4fVertex4fSUN_s: s t: t p: p q: q x: x y: y z: z w: w [
	^ self ffiCall: #( void glTexCoord4fVertex4fSUN ( GLfloat s , GLfloat t , GLfloat p , GLfloat q , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4fVertex4fvSUN_tc: tc v: v [
	^ self ffiCall: #( void glTexCoord4fVertex4fvSUN ( GLfloat* tc , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4f_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4f ( GLfloat s , GLfloat t , GLfloat r , GLfloat q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4fv: v [
	^ self ffiCall: #( void glTexCoord4fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4hNV_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4hNV ( GLhalfNV s , GLhalfNV t , GLhalfNV r , GLhalfNV q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4hvNV: v [
	^ self ffiCall: #( void glTexCoord4hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4i_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4i ( GLint s , GLint t , GLint r , GLint q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4iv: v [
	^ self ffiCall: #( void glTexCoord4iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4s_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4s ( GLshort s , GLshort t , GLshort r , GLshort q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4sv: v [
	^ self ffiCall: #( void glTexCoord4sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4xOES_s: s t: t r: r q: q [
	^ self ffiCall: #( void glTexCoord4xOES ( GLfixed s , GLfixed t , GLfixed r , GLfixed q ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoord4xvOES: coords [
	^ self ffiCall: #( void glTexCoord4xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordFormatNV_size: size type: type stride: stride [
	^ self ffiCall: #( void glTexCoordFormatNV ( GLint size , GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP1ui_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP1ui ( GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP1uiv_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP1uiv ( GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP2ui_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP2ui ( GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP2uiv_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP2uiv ( GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP3ui_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP3ui ( GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP3uiv_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP3uiv ( GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP4ui_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP4ui ( GLenum type , GLuint coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordP4uiv_type: type coords: coords [
	^ self ffiCall: #( void glTexCoordP4uiv ( GLenum type , GLuint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordPointerEXT_size: size type: type stride: stride count: count pointer: pointer [
	^ self ffiCall: #( void glTexCoordPointerEXT ( GLint size , GLenum type , GLsizei stride , GLsizei count , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordPointerListIBM_size: size type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glTexCoordPointerListIBM ( GLint size , GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordPointer_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glTexCoordPointer ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texCoordPointervINTEL_size: size type: type pointer: pointer [
	^ self ffiCall: #( void glTexCoordPointervINTEL ( GLint size , GLenum type , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvf_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexEnvf ( GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexEnvfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvi_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexEnvi ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnviv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexEnviv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvxOES_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexEnvxOES ( GLenum target , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvx_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexEnvx ( GLenum target , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexEnvxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texEnvxv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexEnvxv ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texFilterFuncSGIS_target: target filter: filter n: n weights: weights [
	^ self ffiCall: #( void glTexFilterFuncSGIS ( GLenum target , GLenum filter , GLsizei n , GLfloat* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGend_coord: coord pname: pname param: param [
	^ self ffiCall: #( void glTexGend ( GLenum coord , GLenum pname , GLdouble param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGendv_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glTexGendv ( GLenum coord , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenfOES_coord: coord pname: pname param: param [
	^ self ffiCall: #( void glTexGenfOES ( GLenum coord , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenf_coord: coord pname: pname param: param [
	^ self ffiCall: #( void glTexGenf ( GLenum coord , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenfvOES_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glTexGenfvOES ( GLenum coord , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenfv_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glTexGenfv ( GLenum coord , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGeniOES_coord: coord pname: pname param: param [
	^ self ffiCall: #( void glTexGeniOES ( GLenum coord , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGeni_coord: coord pname: pname param: param [
	^ self ffiCall: #( void glTexGeni ( GLenum coord , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenivOES_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glTexGenivOES ( GLenum coord , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGeniv_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glTexGeniv ( GLenum coord , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenxOES_coord: coord pname: pname param: param [
	^ self ffiCall: #( void glTexGenxOES ( GLenum coord , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texGenxvOES_coord: coord pname: pname params: params [
	^ self ffiCall: #( void glTexGenxvOES ( GLenum coord , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage1D_target: target level: level internalformat: internalformat width: width border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexImage1D ( GLenum target , GLint level , GLint internalformat , GLsizei width , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage2DMultisampleCoverageNV_target: target coverageSamples: coverageSamples colorSamples: colorSamples internalFormat: internalFormat width: width height: height fixedSampleLocations: fixedSampleLocations [
	^ self ffiCall: #( void glTexImage2DMultisampleCoverageNV ( GLenum target , GLsizei coverageSamples , GLsizei colorSamples , GLint internalFormat , GLsizei width , GLsizei height , GLboolean fixedSampleLocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage2DMultisample_target: target samples: samples internalformat: internalformat width: width height: height fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTexImage2DMultisample ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage2D_target: target level: level internalformat: internalformat width: width height: height border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexImage2D ( GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage3DEXT_target: target level: level internalformat: internalformat width: width height: height depth: depth border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexImage3DEXT ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage3DMultisampleCoverageNV_target: target coverageSamples: coverageSamples colorSamples: colorSamples internalFormat: internalFormat width: width height: height depth: depth fixedSampleLocations: fixedSampleLocations [
	^ self ffiCall: #( void glTexImage3DMultisampleCoverageNV ( GLenum target , GLsizei coverageSamples , GLsizei colorSamples , GLint internalFormat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedSampleLocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage3DMultisample_target: target samples: samples internalformat: internalformat width: width height: height depth: depth fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTexImage3DMultisample ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage3DOES_target: target level: level internalformat: internalformat width: width height: height depth: depth border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexImage3DOES ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage3D_target: target level: level internalformat: internalformat width: width height: height depth: depth border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexImage3D ( GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texImage4DSGIS_target: target level: level internalformat: internalformat width: width height: height depth: depth size4d: size4d border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexImage4DSGIS ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLsizei size4d , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texPageCommitmentARB_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth commit: commit [
	^ self ffiCall: #( void glTexPageCommitmentARB ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLboolean commit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texPageCommitmentEXT_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth commit: commit [
	^ self ffiCall: #( void glTexPageCommitmentEXT ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLboolean commit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterIivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterIivEXT ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterIivOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterIivOES ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterIiv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterIiv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterIuivEXT_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterIuivEXT ( GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterIuivOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterIuivOES ( GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterIuiv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterIuiv ( GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterf_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexParameterf ( GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterfv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterfv ( GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameteri_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexParameteri ( GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameteriv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameteriv ( GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterxOES_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexParameterxOES ( GLenum target , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterx_target: target pname: pname param: param [
	^ self ffiCall: #( void glTexParameterx ( GLenum target , GLenum pname , GLfixed param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterxvOES_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterxvOES ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texParameterxv_target: target pname: pname params: params [
	^ self ffiCall: #( void glTexParameterxv ( GLenum target , GLenum pname , GLfixed* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texRenderbufferNV_target: target renderbuffer: renderbuffer [
	^ self ffiCall: #( void glTexRenderbufferNV ( GLenum target , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage1DEXT_target: target levels: levels internalformat: internalformat width: width [
	^ self ffiCall: #( void glTexStorage1DEXT ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage1D_target: target levels: levels internalformat: internalformat width: width [
	^ self ffiCall: #( void glTexStorage1D ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage2DEXT_target: target levels: levels internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glTexStorage2DEXT ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage2DMultisample_target: target samples: samples internalformat: internalformat width: width height: height fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTexStorage2DMultisample ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage2D_target: target levels: levels internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glTexStorage2D ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage3DEXT_target: target levels: levels internalformat: internalformat width: width height: height depth: depth [
	^ self ffiCall: #( void glTexStorage3DEXT ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage3DMultisampleOES_target: target samples: samples internalformat: internalformat width: width height: height depth: depth fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTexStorage3DMultisampleOES ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage3DMultisample_target: target samples: samples internalformat: internalformat width: width height: height depth: depth fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTexStorage3DMultisample ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorage3D_target: target levels: levels internalformat: internalformat width: width height: height depth: depth [
	^ self ffiCall: #( void glTexStorage3D ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texStorageSparseAMD_target: target internalFormat: internalFormat width: width height: height depth: depth layers: layers flags: flags [
	^ self ffiCall: #( void glTexStorageSparseAMD ( GLenum target , GLenum internalFormat , GLsizei width , GLsizei height , GLsizei depth , GLsizei layers , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage1DEXT_target: target level: level xoffset: xoffset width: width format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage1DEXT ( GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage1D_target: target level: level xoffset: xoffset width: width format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage1D ( GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage2DEXT_target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage2DEXT ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage2D_target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage2D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage3DEXT_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage3DEXT ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage3DOES_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage3DOES ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage3D_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage3D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texSubImage4DSGIS_target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset woffset: woffset width: width height: height depth: depth size4d: size4d format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTexSubImage4DSGIS ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint woffset , GLsizei width , GLsizei height , GLsizei depth , GLsizei size4d , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureBarrier [
	^ self ffiCall: #( void glTextureBarrier ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureBarrierNV [
	^ self ffiCall: #( void glTextureBarrierNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureBufferEXT_texture: texture target: target internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glTextureBufferEXT ( GLuint texture , GLenum target , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureBufferRangeEXT_texture: texture target: target internalformat: internalformat buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glTextureBufferRangeEXT ( GLuint texture , GLenum target , GLenum internalformat , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureBufferRange_texture: texture internalformat: internalformat buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glTextureBufferRange ( GLuint texture , GLenum internalformat , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureBuffer_texture: texture internalformat: internalformat buffer: buffer [
	^ self ffiCall: #( void glTextureBuffer ( GLuint texture , GLenum internalformat , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureColorMaskSGIS_red: red green: green blue: blue alpha: alpha [
	^ self ffiCall: #( void glTextureColorMaskSGIS ( GLboolean red , GLboolean green , GLboolean blue , GLboolean alpha ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage1DEXT_texture: texture target: target level: level internalformat: internalformat width: width border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureImage1DEXT ( GLuint texture , GLenum target , GLint level , GLint internalformat , GLsizei width , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage2DEXT_texture: texture target: target level: level internalformat: internalformat width: width height: height border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureImage2DEXT ( GLuint texture , GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage2DMultisampleCoverageNV_texture: texture target: target coverageSamples: coverageSamples colorSamples: colorSamples internalFormat: internalFormat width: width height: height fixedSampleLocations: fixedSampleLocations [
	^ self ffiCall: #( void glTextureImage2DMultisampleCoverageNV ( GLuint texture , GLenum target , GLsizei coverageSamples , GLsizei colorSamples , GLint internalFormat , GLsizei width , GLsizei height , GLboolean fixedSampleLocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage2DMultisampleNV_texture: texture target: target samples: samples internalFormat: internalFormat width: width height: height fixedSampleLocations: fixedSampleLocations [
	^ self ffiCall: #( void glTextureImage2DMultisampleNV ( GLuint texture , GLenum target , GLsizei samples , GLint internalFormat , GLsizei width , GLsizei height , GLboolean fixedSampleLocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage3DEXT_texture: texture target: target level: level internalformat: internalformat width: width height: height depth: depth border: border format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureImage3DEXT ( GLuint texture , GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage3DMultisampleCoverageNV_texture: texture target: target coverageSamples: coverageSamples colorSamples: colorSamples internalFormat: internalFormat width: width height: height depth: depth fixedSampleLocations: fixedSampleLocations [
	^ self ffiCall: #( void glTextureImage3DMultisampleCoverageNV ( GLuint texture , GLenum target , GLsizei coverageSamples , GLsizei colorSamples , GLint internalFormat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedSampleLocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureImage3DMultisampleNV_texture: texture target: target samples: samples internalFormat: internalFormat width: width height: height depth: depth fixedSampleLocations: fixedSampleLocations [
	^ self ffiCall: #( void glTextureImage3DMultisampleNV ( GLuint texture , GLenum target , GLsizei samples , GLint internalFormat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedSampleLocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureLightEXT: pname [
	^ self ffiCall: #( void glTextureLightEXT ( GLenum pname ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureMaterialEXT_face: face mode: mode [
	^ self ffiCall: #( void glTextureMaterialEXT ( GLenum face , GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureNormalEXT: mode [
	^ self ffiCall: #( void glTextureNormalEXT ( GLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> texturePageCommitmentEXT_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth commit: commit [
	^ self ffiCall: #( void glTexturePageCommitmentEXT ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLboolean commit ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterIivEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glTextureParameterIivEXT ( GLuint texture , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterIiv_texture: texture pname: pname params: params [
	^ self ffiCall: #( void glTextureParameterIiv ( GLuint texture , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterIuivEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glTextureParameterIuivEXT ( GLuint texture , GLenum target , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterIuiv_texture: texture pname: pname params: params [
	^ self ffiCall: #( void glTextureParameterIuiv ( GLuint texture , GLenum pname , GLuint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterfEXT_texture: texture target: target pname: pname param: param [
	^ self ffiCall: #( void glTextureParameterfEXT ( GLuint texture , GLenum target , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterf_texture: texture pname: pname param: param [
	^ self ffiCall: #( void glTextureParameterf ( GLuint texture , GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterfvEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glTextureParameterfvEXT ( GLuint texture , GLenum target , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterfv_texture: texture pname: pname param: param [
	^ self ffiCall: #( void glTextureParameterfv ( GLuint texture , GLenum pname , GLfloat* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameteriEXT_texture: texture target: target pname: pname param: param [
	^ self ffiCall: #( void glTextureParameteriEXT ( GLuint texture , GLenum target , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameteri_texture: texture pname: pname param: param [
	^ self ffiCall: #( void glTextureParameteri ( GLuint texture , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameterivEXT_texture: texture target: target pname: pname params: params [
	^ self ffiCall: #( void glTextureParameterivEXT ( GLuint texture , GLenum target , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureParameteriv_texture: texture pname: pname param: param [
	^ self ffiCall: #( void glTextureParameteriv ( GLuint texture , GLenum pname , GLint* param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureRangeAPPLE_target: target length: length pointer: pointer [
	^ self ffiCall: #( void glTextureRangeAPPLE ( GLenum target , GLsizei length , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureRenderbufferEXT_texture: texture target: target renderbuffer: renderbuffer [
	^ self ffiCall: #( void glTextureRenderbufferEXT ( GLuint texture , GLenum target , GLuint renderbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage1DEXT_texture: texture target: target levels: levels internalformat: internalformat width: width [
	^ self ffiCall: #( void glTextureStorage1DEXT ( GLuint texture , GLenum target , GLsizei levels , GLenum internalformat , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage1D_texture: texture levels: levels internalformat: internalformat width: width [
	^ self ffiCall: #( void glTextureStorage1D ( GLuint texture , GLsizei levels , GLenum internalformat , GLsizei width ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage2DEXT_texture: texture target: target levels: levels internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glTextureStorage2DEXT ( GLuint texture , GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage2DMultisampleEXT_texture: texture target: target samples: samples internalformat: internalformat width: width height: height fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTextureStorage2DMultisampleEXT ( GLuint texture , GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage2DMultisample_texture: texture samples: samples internalformat: internalformat width: width height: height fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTextureStorage2DMultisample ( GLuint texture , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage2D_texture: texture levels: levels internalformat: internalformat width: width height: height [
	^ self ffiCall: #( void glTextureStorage2D ( GLuint texture , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage3DEXT_texture: texture target: target levels: levels internalformat: internalformat width: width height: height depth: depth [
	^ self ffiCall: #( void glTextureStorage3DEXT ( GLuint texture , GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage3DMultisampleEXT_texture: texture target: target samples: samples internalformat: internalformat width: width height: height depth: depth fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTextureStorage3DMultisampleEXT ( GLuint texture , GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage3DMultisample_texture: texture samples: samples internalformat: internalformat width: width height: height depth: depth fixedsamplelocations: fixedsamplelocations [
	^ self ffiCall: #( void glTextureStorage3DMultisample ( GLuint texture , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedsamplelocations ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorage3D_texture: texture levels: levels internalformat: internalformat width: width height: height depth: depth [
	^ self ffiCall: #( void glTextureStorage3D ( GLuint texture , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureStorageSparseAMD_texture: texture target: target internalFormat: internalFormat width: width height: height depth: depth layers: layers flags: flags [
	^ self ffiCall: #( void glTextureStorageSparseAMD ( GLuint texture , GLenum target , GLenum internalFormat , GLsizei width , GLsizei height , GLsizei depth , GLsizei layers , GLbitfield flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureSubImage1DEXT_texture: texture target: target level: level xoffset: xoffset width: width format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureSubImage1DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureSubImage1D_texture: texture level: level xoffset: xoffset width: width format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureSubImage1D ( GLuint texture , GLint level , GLint xoffset , GLsizei width , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureSubImage2DEXT_texture: texture target: target level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureSubImage2DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureSubImage2D_texture: texture level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureSubImage2D ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureSubImage3DEXT_texture: texture target: target level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureSubImage3DEXT ( GLuint texture , GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureSubImage3D_texture: texture level: level xoffset: xoffset yoffset: yoffset zoffset: zoffset width: width height: height depth: depth format: format type: type pixels: pixels [
	^ self ffiCall: #( void glTextureSubImage3D ( GLuint texture , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , void* pixels ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureViewEXT_texture: texture target: target origtexture: origtexture internalformat: internalformat minlevel: minlevel numlevels: numlevels minlayer: minlayer numlayers: numlayers [
	^ self ffiCall: #( void glTextureViewEXT ( GLuint texture , GLenum target , GLuint origtexture , GLenum internalformat , GLuint minlevel , GLuint numlevels , GLuint minlayer , GLuint numlayers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureViewOES_texture: texture target: target origtexture: origtexture internalformat: internalformat minlevel: minlevel numlevels: numlevels minlayer: minlayer numlayers: numlayers [
	^ self ffiCall: #( void glTextureViewOES ( GLuint texture , GLenum target , GLuint origtexture , GLenum internalformat , GLuint minlevel , GLuint numlevels , GLuint minlayer , GLuint numlayers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> textureView_texture: texture target: target origtexture: origtexture internalformat: internalformat minlevel: minlevel numlevels: numlevels minlayer: minlayer numlayers: numlayers [
	^ self ffiCall: #( void glTextureView ( GLuint texture , GLenum target , GLuint origtexture , GLenum internalformat , GLuint minlevel , GLuint numlevels , GLuint minlayer , GLuint numlayers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> trackMatrixNV_target: target address: address matrix: matrix transform: transform [
	^ self ffiCall: #( void glTrackMatrixNV ( GLenum target , GLuint address , GLenum matrix , GLenum transform ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackAttribsNV_count: count attribs: attribs bufferMode: bufferMode [
	^ self ffiCall: #( void glTransformFeedbackAttribsNV ( GLsizei count , GLint* attribs , GLenum bufferMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackBufferBase_xfb: xfb index: index buffer: buffer [
	^ self ffiCall: #( void glTransformFeedbackBufferBase ( GLuint xfb , GLuint index , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackBufferRange_xfb: xfb index: index buffer: buffer offset: offset size: size [
	^ self ffiCall: #( void glTransformFeedbackBufferRange ( GLuint xfb , GLuint index , GLuint buffer , GLintptr offset , GLsizeiptr size ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackStreamAttribsNV_count: count attribs: attribs nbuffers: nbuffers bufstreams: bufstreams bufferMode: bufferMode [
	^ self ffiCall: #( void glTransformFeedbackStreamAttribsNV ( GLsizei count , GLint* attribs , GLsizei nbuffers , GLint* bufstreams , GLenum bufferMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackVaryingsEXT_program: program count: count varyings: varyings bufferMode: bufferMode [
	^ self ffiCall: #( void glTransformFeedbackVaryingsEXT ( GLuint program , GLsizei count , GLchar** varyings , GLenum bufferMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackVaryingsNV_program: program count: count locations: locations bufferMode: bufferMode [
	^ self ffiCall: #( void glTransformFeedbackVaryingsNV ( GLuint program , GLsizei count , GLint* locations , GLenum bufferMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformFeedbackVaryings_program: program count: count varyings: varyings bufferMode: bufferMode [
	^ self ffiCall: #( void glTransformFeedbackVaryings ( GLuint program , GLsizei count , GLchar** varyings , GLenum bufferMode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> transformPathNV_resultPath: resultPath srcPath: srcPath transformType: transformType transformValues: transformValues [
	^ self ffiCall: #( void glTransformPathNV ( GLuint resultPath , GLuint srcPath , GLenum transformType , GLfloat* transformValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> translated_x: x y: y z: z [
	^ self ffiCall: #( void glTranslated ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> translatef_x: x y: y z: z [
	^ self ffiCall: #( void glTranslatef ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> translatexOES_x: x y: y z: z [
	^ self ffiCall: #( void glTranslatexOES ( GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> translatex_x: x y: y z: z [
	^ self ffiCall: #( void glTranslatex ( GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1d_location: location x: x [
	^ self ffiCall: #( void glUniform1d ( GLint location , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1dv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1dv ( GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1fARB_location: location v0: v0 [
	^ self ffiCall: #( void glUniform1fARB ( GLint location , GLfloat v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1f_location: location v0: v0 [
	^ self ffiCall: #( void glUniform1f ( GLint location , GLfloat v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1fvARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1fvARB ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1fv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1fv ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1i64ARB_location: location x: x [
	^ self ffiCall: #( void glUniform1i64ARB ( GLint location , GLint64 x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1i64NV_location: location x: x [
	^ self ffiCall: #( void glUniform1i64NV ( GLint location , GLint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1i64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1i64vARB ( GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1i64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1i64vNV ( GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1iARB_location: location v0: v0 [
	^ self ffiCall: #( void glUniform1iARB ( GLint location , GLint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1i_location: location v0: v0 [
	^ self ffiCall: #( void glUniform1i ( GLint location , GLint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1ivARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1ivARB ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1iv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1iv ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1ui64ARB_location: location x: x [
	^ self ffiCall: #( void glUniform1ui64ARB ( GLint location , GLuint64 x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1ui64NV_location: location x: x [
	^ self ffiCall: #( void glUniform1ui64NV ( GLint location , GLuint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1ui64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1ui64vARB ( GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1ui64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1ui64vNV ( GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1uiEXT_location: location v0: v0 [
	^ self ffiCall: #( void glUniform1uiEXT ( GLint location , GLuint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1ui_location: location v0: v0 [
	^ self ffiCall: #( void glUniform1ui ( GLint location , GLuint v0 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1uivEXT_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1uivEXT ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform1uiv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform1uiv ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2d_location: location x: x y: y [
	^ self ffiCall: #( void glUniform2d ( GLint location , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2dv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2dv ( GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2fARB_location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glUniform2fARB ( GLint location , GLfloat v0 , GLfloat v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2f_location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glUniform2f ( GLint location , GLfloat v0 , GLfloat v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2fvARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2fvARB ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2fv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2fv ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2i64ARB_location: location x: x y: y [
	^ self ffiCall: #( void glUniform2i64ARB ( GLint location , GLint64 x , GLint64 y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2i64NV_location: location x: x y: y [
	^ self ffiCall: #( void glUniform2i64NV ( GLint location , GLint64EXT x , GLint64EXT y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2i64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2i64vARB ( GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2i64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2i64vNV ( GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2iARB_location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glUniform2iARB ( GLint location , GLint v0 , GLint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2i_location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glUniform2i ( GLint location , GLint v0 , GLint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2ivARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2ivARB ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2iv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2iv ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2ui64ARB_location: location x: x y: y [
	^ self ffiCall: #( void glUniform2ui64ARB ( GLint location , GLuint64 x , GLuint64 y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2ui64NV_location: location x: x y: y [
	^ self ffiCall: #( void glUniform2ui64NV ( GLint location , GLuint64EXT x , GLuint64EXT y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2ui64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2ui64vARB ( GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2ui64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2ui64vNV ( GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2uiEXT_location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glUniform2uiEXT ( GLint location , GLuint v0 , GLuint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2ui_location: location v0: v0 v1: v1 [
	^ self ffiCall: #( void glUniform2ui ( GLint location , GLuint v0 , GLuint v1 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2uivEXT_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2uivEXT ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform2uiv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform2uiv ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3d_location: location x: x y: y z: z [
	^ self ffiCall: #( void glUniform3d ( GLint location , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3dv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3dv ( GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3fARB_location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glUniform3fARB ( GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3f_location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glUniform3f ( GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3fvARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3fvARB ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3fv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3fv ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3i64ARB_location: location x: x y: y z: z [
	^ self ffiCall: #( void glUniform3i64ARB ( GLint location , GLint64 x , GLint64 y , GLint64 z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3i64NV_location: location x: x y: y z: z [
	^ self ffiCall: #( void glUniform3i64NV ( GLint location , GLint64EXT x , GLint64EXT y , GLint64EXT z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3i64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3i64vARB ( GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3i64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3i64vNV ( GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3iARB_location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glUniform3iARB ( GLint location , GLint v0 , GLint v1 , GLint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3i_location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glUniform3i ( GLint location , GLint v0 , GLint v1 , GLint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3ivARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3ivARB ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3iv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3iv ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3ui64ARB_location: location x: x y: y z: z [
	^ self ffiCall: #( void glUniform3ui64ARB ( GLint location , GLuint64 x , GLuint64 y , GLuint64 z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3ui64NV_location: location x: x y: y z: z [
	^ self ffiCall: #( void glUniform3ui64NV ( GLint location , GLuint64EXT x , GLuint64EXT y , GLuint64EXT z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3ui64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3ui64vARB ( GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3ui64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3ui64vNV ( GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3uiEXT_location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glUniform3uiEXT ( GLint location , GLuint v0 , GLuint v1 , GLuint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3ui_location: location v0: v0 v1: v1 v2: v2 [
	^ self ffiCall: #( void glUniform3ui ( GLint location , GLuint v0 , GLuint v1 , GLuint v2 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3uivEXT_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3uivEXT ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform3uiv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform3uiv ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4d_location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glUniform4d ( GLint location , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4dv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4dv ( GLint location , GLsizei count , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4fARB_location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glUniform4fARB ( GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 , GLfloat v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4f_location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glUniform4f ( GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 , GLfloat v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4fvARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4fvARB ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4fv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4fv ( GLint location , GLsizei count , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4i64ARB_location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glUniform4i64ARB ( GLint location , GLint64 x , GLint64 y , GLint64 z , GLint64 w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4i64NV_location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glUniform4i64NV ( GLint location , GLint64EXT x , GLint64EXT y , GLint64EXT z , GLint64EXT w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4i64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4i64vARB ( GLint location , GLsizei count , GLint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4i64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4i64vNV ( GLint location , GLsizei count , GLint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4iARB_location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glUniform4iARB ( GLint location , GLint v0 , GLint v1 , GLint v2 , GLint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4i_location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glUniform4i ( GLint location , GLint v0 , GLint v1 , GLint v2 , GLint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4ivARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4ivARB ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4iv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4iv ( GLint location , GLsizei count , GLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4ui64ARB_location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glUniform4ui64ARB ( GLint location , GLuint64 x , GLuint64 y , GLuint64 z , GLuint64 w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4ui64NV_location: location x: x y: y z: z w: w [
	^ self ffiCall: #( void glUniform4ui64NV ( GLint location , GLuint64EXT x , GLuint64EXT y , GLuint64EXT z , GLuint64EXT w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4ui64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4ui64vARB ( GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4ui64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4ui64vNV ( GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4uiEXT_location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glUniform4uiEXT ( GLint location , GLuint v0 , GLuint v1 , GLuint v2 , GLuint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4ui_location: location v0: v0 v1: v1 v2: v2 v3: v3 [
	^ self ffiCall: #( void glUniform4ui ( GLint location , GLuint v0 , GLuint v1 , GLuint v2 , GLuint v3 ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4uivEXT_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4uivEXT ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniform4uiv_location: location count: count value: value [
	^ self ffiCall: #( void glUniform4uiv ( GLint location , GLsizei count , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformBlockBinding_program: program uniformBlockIndex: uniformBlockIndex uniformBlockBinding: uniformBlockBinding [
	^ self ffiCall: #( void glUniformBlockBinding ( GLuint program , GLuint uniformBlockIndex , GLuint uniformBlockBinding ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformBufferEXT_program: program location: location buffer: buffer [
	^ self ffiCall: #( void glUniformBufferEXT ( GLuint program , GLint location , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformHandleui64ARB_location: location value: value [
	^ self ffiCall: #( void glUniformHandleui64ARB ( GLint location , GLuint64 value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformHandleui64NV_location: location value: value [
	^ self ffiCall: #( void glUniformHandleui64NV ( GLint location , GLuint64 value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformHandleui64vARB_location: location count: count value: value [
	^ self ffiCall: #( void glUniformHandleui64vARB ( GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformHandleui64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniformHandleui64vNV ( GLint location , GLsizei count , GLuint64* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2fvARB_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2fvARB ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2x3dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2x3dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2x3fvNV_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2x3fvNV ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2x3fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2x3fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2x4dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2x4dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2x4fvNV_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2x4fvNV ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix2x4fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix2x4fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3fvARB_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3fvARB ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3x2dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3x2dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3x2fvNV_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3x2fvNV ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3x2fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3x2fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3x4dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3x4dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3x4fvNV_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3x4fvNV ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix3x4fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix3x4fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4fvARB_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4fvARB ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4x2dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4x2dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4x2fvNV_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4x2fvNV ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4x2fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4x2fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4x3dv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4x3dv ( GLint location , GLsizei count , GLboolean transpose , GLdouble* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4x3fvNV_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4x3fvNV ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformMatrix4x3fv_location: location count: count transpose: transpose value: value [
	^ self ffiCall: #( void glUniformMatrix4x3fv ( GLint location , GLsizei count , GLboolean transpose , GLfloat* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformSubroutinesuiv_shadertype: shadertype count: count indices: indices [
	^ self ffiCall: #( void glUniformSubroutinesuiv ( GLenum shadertype , GLsizei count , GLuint* indices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformui64NV_location: location value: value [
	^ self ffiCall: #( void glUniformui64NV ( GLint location , GLuint64EXT value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> uniformui64vNV_location: location count: count value: value [
	^ self ffiCall: #( void glUniformui64vNV ( GLint location , GLsizei count , GLuint64EXT* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unlockArraysEXT [
	^ self ffiCall: #( void glUnlockArraysEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapBuffer: target [
	^ self ffiCall: #( GLboolean glUnmapBuffer ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapBufferARB: target [
	^ self ffiCall: #( GLboolean glUnmapBufferARB ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapBufferOES: target [
	^ self ffiCall: #( GLboolean glUnmapBufferOES ( GLenum target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapNamedBuffer: buffer [
	^ self ffiCall: #( GLboolean glUnmapNamedBuffer ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapNamedBufferEXT: buffer [
	^ self ffiCall: #( GLboolean glUnmapNamedBufferEXT ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapObjectBufferATI: buffer [
	^ self ffiCall: #( void glUnmapObjectBufferATI ( GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> unmapTexture2DINTEL_texture: texture level: level [
	^ self ffiCall: #( void glUnmapTexture2DINTEL ( GLuint texture , GLint level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> updateObjectBufferATI_buffer: buffer offset: offset size: size pointer: pointer preserve: preserve [
	^ self ffiCall: #( void glUpdateObjectBufferATI ( GLuint buffer , GLuint offset , GLsizei size , void* pointer , GLenum preserve ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> useProgram: program [
	^ self ffiCall: #( void glUseProgram ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> useProgramObjectARB: programObj [
	^ self ffiCall: #( void glUseProgramObjectARB ( GLhandleARB programObj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> useProgramStagesEXT_pipeline: pipeline stages: stages program: program [
	^ self ffiCall: #( void glUseProgramStagesEXT ( GLuint pipeline , GLbitfield stages , GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> useProgramStages_pipeline: pipeline stages: stages program: program [
	^ self ffiCall: #( void glUseProgramStages ( GLuint pipeline , GLbitfield stages , GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> useShaderProgramEXT_type: type program: program [
	^ self ffiCall: #( void glUseShaderProgramEXT ( GLenum type , GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUFiniNV [
	^ self ffiCall: #( void glVDPAUFiniNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUGetSurfaceivNV_surface: surface pname: pname bufSize: bufSize length: length values: values [
	^ self ffiCall: #( void glVDPAUGetSurfaceivNV ( GLvdpauSurfaceNV surface , GLenum pname , GLsizei bufSize , GLsizei* length , GLint* values ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUInitNV_vdpDevice: vdpDevice getProcAddress: getProcAddress [
	^ self ffiCall: #( void glVDPAUInitNV ( void* vdpDevice , void* getProcAddress ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUIsSurfaceNV: surface [
	^ self ffiCall: #( GLboolean glVDPAUIsSurfaceNV ( GLvdpauSurfaceNV surface ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUMapSurfacesNV_numSurfaces: numSurfaces surfaces: surfaces [
	^ self ffiCall: #( void glVDPAUMapSurfacesNV ( GLsizei numSurfaces , GLvdpauSurfaceNV* surfaces ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAURegisterOutputSurfaceNV_vdpSurface: vdpSurface target: target numTextureNames: numTextureNames textureNames: textureNames [
	^ self ffiCall: #( GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV ( void* vdpSurface , GLenum target , GLsizei numTextureNames , GLuint* textureNames ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAURegisterVideoSurfaceNV_vdpSurface: vdpSurface target: target numTextureNames: numTextureNames textureNames: textureNames [
	^ self ffiCall: #( GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV ( void* vdpSurface , GLenum target , GLsizei numTextureNames , GLuint* textureNames ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUSurfaceAccessNV_surface: surface access: access [
	^ self ffiCall: #( void glVDPAUSurfaceAccessNV ( GLvdpauSurfaceNV surface , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUUnmapSurfacesNV_numSurface: numSurface surfaces: surfaces [
	^ self ffiCall: #( void glVDPAUUnmapSurfacesNV ( GLsizei numSurface , GLvdpauSurfaceNV* surfaces ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vDPAUUnregisterSurfaceNV: surface [
	^ self ffiCall: #( void glVDPAUUnregisterSurfaceNV ( GLvdpauSurfaceNV surface ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> validateProgram: program [
	^ self ffiCall: #( void glValidateProgram ( GLuint program ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> validateProgramARB: programObj [
	^ self ffiCall: #( void glValidateProgramARB ( GLhandleARB programObj ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> validateProgramPipeline: pipeline [
	^ self ffiCall: #( void glValidateProgramPipeline ( GLuint pipeline ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> validateProgramPipelineEXT: pipeline [
	^ self ffiCall: #( void glValidateProgramPipelineEXT ( GLuint pipeline ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantArrayObjectATI_id: id type: type stride: stride buffer: buffer offset: offset [
	^ self ffiCall: #( void glVariantArrayObjectATI ( GLuint id , GLenum type , GLsizei stride , GLuint buffer , GLuint offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantPointerEXT_id: id type: type stride: stride addr: addr [
	^ self ffiCall: #( void glVariantPointerEXT ( GLuint id , GLenum type , GLuint stride , void* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantbvEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantbvEXT ( GLuint id , GLbyte* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantdvEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantdvEXT ( GLuint id , GLdouble* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantfvEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantfvEXT ( GLuint id , GLfloat* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantivEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantivEXT ( GLuint id , GLint* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantsvEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantsvEXT ( GLuint id , GLshort* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantubvEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantubvEXT ( GLuint id , GLubyte* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantuivEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantuivEXT ( GLuint id , GLuint* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> variantusvEXT_id: id addr: addr [
	^ self ffiCall: #( void glVariantusvEXT ( GLuint id , GLushort* addr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2bOES_x: x y: y [
	^ self ffiCall: #( void glVertex2bOES ( GLbyte x , GLbyte y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2bvOES: coords [
	^ self ffiCall: #( void glVertex2bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2d_x: x y: y [
	^ self ffiCall: #( void glVertex2d ( GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2dv: v [
	^ self ffiCall: #( void glVertex2dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2f_x: x y: y [
	^ self ffiCall: #( void glVertex2f ( GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2fv: v [
	^ self ffiCall: #( void glVertex2fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2hNV_x: x y: y [
	^ self ffiCall: #( void glVertex2hNV ( GLhalfNV x , GLhalfNV y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2hvNV: v [
	^ self ffiCall: #( void glVertex2hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2i_x: x y: y [
	^ self ffiCall: #( void glVertex2i ( GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2iv: v [
	^ self ffiCall: #( void glVertex2iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2s_x: x y: y [
	^ self ffiCall: #( void glVertex2s ( GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2sv: v [
	^ self ffiCall: #( void glVertex2sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2xOES: x [
	^ self ffiCall: #( void glVertex2xOES ( GLfixed x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex2xvOES: coords [
	^ self ffiCall: #( void glVertex2xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3bOES_x: x y: y z: z [
	^ self ffiCall: #( void glVertex3bOES ( GLbyte x , GLbyte y , GLbyte z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3bvOES: coords [
	^ self ffiCall: #( void glVertex3bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3d_x: x y: y z: z [
	^ self ffiCall: #( void glVertex3d ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3dv: v [
	^ self ffiCall: #( void glVertex3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3f_x: x y: y z: z [
	^ self ffiCall: #( void glVertex3f ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3fv: v [
	^ self ffiCall: #( void glVertex3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3hNV_x: x y: y z: z [
	^ self ffiCall: #( void glVertex3hNV ( GLhalfNV x , GLhalfNV y , GLhalfNV z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3hvNV: v [
	^ self ffiCall: #( void glVertex3hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3i_x: x y: y z: z [
	^ self ffiCall: #( void glVertex3i ( GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3iv: v [
	^ self ffiCall: #( void glVertex3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3s_x: x y: y z: z [
	^ self ffiCall: #( void glVertex3s ( GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3sv: v [
	^ self ffiCall: #( void glVertex3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3xOES_x: x y: y [
	^ self ffiCall: #( void glVertex3xOES ( GLfixed x , GLfixed y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex3xvOES: coords [
	^ self ffiCall: #( void glVertex3xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4bOES_x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertex4bOES ( GLbyte x , GLbyte y , GLbyte z , GLbyte w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4bvOES: coords [
	^ self ffiCall: #( void glVertex4bvOES ( GLbyte* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4d_x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertex4d ( GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4dv: v [
	^ self ffiCall: #( void glVertex4dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4f_x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertex4f ( GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4fv: v [
	^ self ffiCall: #( void glVertex4fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4hNV_x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertex4hNV ( GLhalfNV x , GLhalfNV y , GLhalfNV z , GLhalfNV w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4hvNV: v [
	^ self ffiCall: #( void glVertex4hvNV ( GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4i_x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertex4i ( GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4iv: v [
	^ self ffiCall: #( void glVertex4iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4s_x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertex4s ( GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4sv: v [
	^ self ffiCall: #( void glVertex4sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4xOES_x: x y: y z: z [
	^ self ffiCall: #( void glVertex4xOES ( GLfixed x , GLfixed y , GLfixed z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertex4xvOES: coords [
	^ self ffiCall: #( void glVertex4xvOES ( GLfixed* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayAttribBinding_vaobj: vaobj attribindex: attribindex bindingindex: bindingindex [
	^ self ffiCall: #( void glVertexArrayAttribBinding ( GLuint vaobj , GLuint attribindex , GLuint bindingindex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayAttribFormat_vaobj: vaobj attribindex: attribindex size: size type: type normalized: normalized relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexArrayAttribFormat ( GLuint vaobj , GLuint attribindex , GLint size , GLenum type , GLboolean normalized , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayAttribIFormat_vaobj: vaobj attribindex: attribindex size: size type: type relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexArrayAttribIFormat ( GLuint vaobj , GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayAttribLFormat_vaobj: vaobj attribindex: attribindex size: size type: type relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexArrayAttribLFormat ( GLuint vaobj , GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayBindVertexBufferEXT_vaobj: vaobj bindingindex: bindingindex buffer: buffer offset: offset stride: stride [
	^ self ffiCall: #( void glVertexArrayBindVertexBufferEXT ( GLuint vaobj , GLuint bindingindex , GLuint buffer , GLintptr offset , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayBindingDivisor_vaobj: vaobj bindingindex: bindingindex divisor: divisor [
	^ self ffiCall: #( void glVertexArrayBindingDivisor ( GLuint vaobj , GLuint bindingindex , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayColorOffsetEXT_vaobj: vaobj buffer: buffer size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayColorOffsetEXT ( GLuint vaobj , GLuint buffer , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayEdgeFlagOffsetEXT_vaobj: vaobj buffer: buffer stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayEdgeFlagOffsetEXT ( GLuint vaobj , GLuint buffer , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayElementBuffer_vaobj: vaobj buffer: buffer [
	^ self ffiCall: #( void glVertexArrayElementBuffer ( GLuint vaobj , GLuint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayFogCoordOffsetEXT_vaobj: vaobj buffer: buffer type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayFogCoordOffsetEXT ( GLuint vaobj , GLuint buffer , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayIndexOffsetEXT_vaobj: vaobj buffer: buffer type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayIndexOffsetEXT ( GLuint vaobj , GLuint buffer , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayMultiTexCoordOffsetEXT_vaobj: vaobj buffer: buffer texunit: texunit size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayMultiTexCoordOffsetEXT ( GLuint vaobj , GLuint buffer , GLenum texunit , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayNormalOffsetEXT_vaobj: vaobj buffer: buffer type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayNormalOffsetEXT ( GLuint vaobj , GLuint buffer , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayParameteriAPPLE_pname: pname param: param [
	^ self ffiCall: #( void glVertexArrayParameteriAPPLE ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayRangeAPPLE_length: length pointer: pointer [
	^ self ffiCall: #( void glVertexArrayRangeAPPLE ( GLsizei length , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayRangeNV_length: length pointer: pointer [
	^ self ffiCall: #( void glVertexArrayRangeNV ( GLsizei length , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArraySecondaryColorOffsetEXT_vaobj: vaobj buffer: buffer size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArraySecondaryColorOffsetEXT ( GLuint vaobj , GLuint buffer , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayTexCoordOffsetEXT_vaobj: vaobj buffer: buffer size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayTexCoordOffsetEXT ( GLuint vaobj , GLuint buffer , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribBindingEXT_vaobj: vaobj attribindex: attribindex bindingindex: bindingindex [
	^ self ffiCall: #( void glVertexArrayVertexAttribBindingEXT ( GLuint vaobj , GLuint attribindex , GLuint bindingindex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribDivisorEXT_vaobj: vaobj index: index divisor: divisor [
	^ self ffiCall: #( void glVertexArrayVertexAttribDivisorEXT ( GLuint vaobj , GLuint index , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribFormatEXT_vaobj: vaobj attribindex: attribindex size: size type: type normalized: normalized relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexArrayVertexAttribFormatEXT ( GLuint vaobj , GLuint attribindex , GLint size , GLenum type , GLboolean normalized , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribIFormatEXT_vaobj: vaobj attribindex: attribindex size: size type: type relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexArrayVertexAttribIFormatEXT ( GLuint vaobj , GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribIOffsetEXT_vaobj: vaobj buffer: buffer index: index size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayVertexAttribIOffsetEXT ( GLuint vaobj , GLuint buffer , GLuint index , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribLFormatEXT_vaobj: vaobj attribindex: attribindex size: size type: type relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexArrayVertexAttribLFormatEXT ( GLuint vaobj , GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribLOffsetEXT_vaobj: vaobj buffer: buffer index: index size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayVertexAttribLOffsetEXT ( GLuint vaobj , GLuint buffer , GLuint index , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexAttribOffsetEXT_vaobj: vaobj buffer: buffer index: index size: size type: type normalized: normalized stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayVertexAttribOffsetEXT ( GLuint vaobj , GLuint buffer , GLuint index , GLint size , GLenum type , GLboolean normalized , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexBindingDivisorEXT_vaobj: vaobj bindingindex: bindingindex divisor: divisor [
	^ self ffiCall: #( void glVertexArrayVertexBindingDivisorEXT ( GLuint vaobj , GLuint bindingindex , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexBuffer_vaobj: vaobj bindingindex: bindingindex buffer: buffer offset: offset stride: stride [
	^ self ffiCall: #( void glVertexArrayVertexBuffer ( GLuint vaobj , GLuint bindingindex , GLuint buffer , GLintptr offset , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexBuffers_vaobj: vaobj first: first count: count buffers: buffers offsets: offsets strides: strides [
	^ self ffiCall: #( void glVertexArrayVertexBuffers ( GLuint vaobj , GLuint first , GLsizei count , GLuint* buffers , GLintptr* offsets , GLsizei* strides ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexArrayVertexOffsetEXT_vaobj: vaobj buffer: buffer size: size type: type stride: stride offset: offset [
	^ self ffiCall: #( void glVertexArrayVertexOffsetEXT ( GLuint vaobj , GLuint buffer , GLint size , GLenum type , GLsizei stride , GLintptr offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1dARB_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1dARB ( GLuint index , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1dNV_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1dNV ( GLuint index , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1d_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1d ( GLuint index , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1dvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1dvARB ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1dvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1dvNV ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1fARB_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1fARB ( GLuint index , GLfloat x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1fNV_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1fNV ( GLuint index , GLfloat x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1f_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1f ( GLuint index , GLfloat x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1fvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1fvARB ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1fvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1fvNV ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1fv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1fv ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1hNV_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1hNV ( GLuint index , GLhalfNV x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1hvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1hvNV ( GLuint index , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1sARB_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1sARB ( GLuint index , GLshort x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1sNV_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1sNV ( GLuint index , GLshort x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1s_index: index x: x [
	^ self ffiCall: #( void glVertexAttrib1s ( GLuint index , GLshort x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1svARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1svARB ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1svNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1svNV ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib1sv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib1sv ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2dARB_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2dARB ( GLuint index , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2dNV_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2dNV ( GLuint index , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2d_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2d ( GLuint index , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2dvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2dvARB ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2dvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2dvNV ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2fARB_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2fARB ( GLuint index , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2fNV_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2fNV ( GLuint index , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2f_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2f ( GLuint index , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2fvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2fvARB ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2fvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2fvNV ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2fv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2fv ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2hNV_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2hNV ( GLuint index , GLhalfNV x , GLhalfNV y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2hvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2hvNV ( GLuint index , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2sARB_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2sARB ( GLuint index , GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2sNV_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2sNV ( GLuint index , GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2s_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttrib2s ( GLuint index , GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2svARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2svARB ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2svNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2svNV ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib2sv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib2sv ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3dARB_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3dARB ( GLuint index , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3dNV_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3dNV ( GLuint index , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3d_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3d ( GLuint index , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3dvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3dvARB ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3dvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3dvNV ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3fARB_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3fARB ( GLuint index , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3fNV_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3fNV ( GLuint index , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3f_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3f ( GLuint index , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3fvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3fvARB ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3fvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3fvNV ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3fv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3fv ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3hNV_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3hNV ( GLuint index , GLhalfNV x , GLhalfNV y , GLhalfNV z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3hvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3hvNV ( GLuint index , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3sARB_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3sARB ( GLuint index , GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3sNV_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3sNV ( GLuint index , GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3s_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttrib3s ( GLuint index , GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3svARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3svARB ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3svNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3svNV ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib3sv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib3sv ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NbvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4NbvARB ( GLuint index , GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Nbv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4Nbv ( GLuint index , GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NivARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4NivARB ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Niv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4Niv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NsvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4NsvARB ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Nsv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4Nsv ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NubARB_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4NubARB ( GLuint index , GLubyte x , GLubyte y , GLubyte z , GLubyte w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Nub_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4Nub ( GLuint index , GLubyte x , GLubyte y , GLubyte z , GLubyte w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NubvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4NubvARB ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Nubv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4Nubv ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NuivARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4NuivARB ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Nuiv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4Nuiv ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4NusvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4NusvARB ( GLuint index , GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4Nusv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4Nusv ( GLuint index , GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4bvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4bvARB ( GLuint index , GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4bv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4bv ( GLuint index , GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4dARB_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4dARB ( GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4dNV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4dNV ( GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4d_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4d ( GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4dvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4dvARB ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4dvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4dvNV ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4fARB_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4fARB ( GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4fNV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4fNV ( GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4f_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4f ( GLuint index , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4fvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4fvARB ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4fvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4fvNV ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4fv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4fv ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4hNV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4hNV ( GLuint index , GLhalfNV x , GLhalfNV y , GLhalfNV z , GLhalfNV w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4hvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4hvNV ( GLuint index , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4ivARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4ivARB ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4iv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4iv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4sARB_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4sARB ( GLuint index , GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4sNV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4sNV ( GLuint index , GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4s_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4s ( GLuint index , GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4svARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4svARB ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4svNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4svNV ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4sv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4sv ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4ubNV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttrib4ubNV ( GLuint index , GLubyte x , GLubyte y , GLubyte z , GLubyte w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4ubvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4ubvARB ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4ubvNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4ubvNV ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4ubv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4ubv ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4uivARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4uivARB ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4uiv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4uiv ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4usvARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4usvARB ( GLuint index , GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttrib4usv_index: index v: v [
	^ self ffiCall: #( void glVertexAttrib4usv ( GLuint index , GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribArrayObjectATI_index: index size: size type: type normalized: normalized stride: stride buffer: buffer offset: offset [
	^ self ffiCall: #( void glVertexAttribArrayObjectATI ( GLuint index , GLint size , GLenum type , GLboolean normalized , GLsizei stride , GLuint buffer , GLuint offset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribBinding_attribindex: attribindex bindingindex: bindingindex [
	^ self ffiCall: #( void glVertexAttribBinding ( GLuint attribindex , GLuint bindingindex ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribDivisorANGLE_index: index divisor: divisor [
	^ self ffiCall: #( void glVertexAttribDivisorANGLE ( GLuint index , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribDivisorARB_index: index divisor: divisor [
	^ self ffiCall: #( void glVertexAttribDivisorARB ( GLuint index , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribDivisorEXT_index: index divisor: divisor [
	^ self ffiCall: #( void glVertexAttribDivisorEXT ( GLuint index , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribDivisorNV_index: index divisor: divisor [
	^ self ffiCall: #( void glVertexAttribDivisorNV ( GLuint index , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribDivisor_index: index divisor: divisor [
	^ self ffiCall: #( void glVertexAttribDivisor ( GLuint index , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribFormatNV_index: index size: size type: type normalized: normalized stride: stride [
	^ self ffiCall: #( void glVertexAttribFormatNV ( GLuint index , GLint size , GLenum type , GLboolean normalized , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribFormat_attribindex: attribindex size: size type: type normalized: normalized relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexAttribFormat ( GLuint attribindex , GLint size , GLenum type , GLboolean normalized , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1iEXT_index: index x: x [
	^ self ffiCall: #( void glVertexAttribI1iEXT ( GLuint index , GLint x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1i_index: index x: x [
	^ self ffiCall: #( void glVertexAttribI1i ( GLuint index , GLint x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1ivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI1ivEXT ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1iv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI1iv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1uiEXT_index: index x: x [
	^ self ffiCall: #( void glVertexAttribI1uiEXT ( GLuint index , GLuint x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1ui_index: index x: x [
	^ self ffiCall: #( void glVertexAttribI1ui ( GLuint index , GLuint x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1uivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI1uivEXT ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI1uiv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI1uiv ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2iEXT_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribI2iEXT ( GLuint index , GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2i_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribI2i ( GLuint index , GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2ivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI2ivEXT ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2iv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI2iv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2uiEXT_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribI2uiEXT ( GLuint index , GLuint x , GLuint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2ui_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribI2ui ( GLuint index , GLuint x , GLuint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2uivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI2uivEXT ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI2uiv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI2uiv ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3iEXT_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribI3iEXT ( GLuint index , GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3i_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribI3i ( GLuint index , GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3ivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI3ivEXT ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3iv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI3iv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3uiEXT_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribI3uiEXT ( GLuint index , GLuint x , GLuint y , GLuint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3ui_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribI3ui ( GLuint index , GLuint x , GLuint y , GLuint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3uivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI3uivEXT ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI3uiv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI3uiv ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4bvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4bvEXT ( GLuint index , GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4bv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4bv ( GLuint index , GLbyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4iEXT_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribI4iEXT ( GLuint index , GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4i_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribI4i ( GLuint index , GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4ivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4ivEXT ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4iv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4iv ( GLuint index , GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4svEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4svEXT ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4sv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4sv ( GLuint index , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4ubvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4ubvEXT ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4ubv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4ubv ( GLuint index , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4uiEXT_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribI4uiEXT ( GLuint index , GLuint x , GLuint y , GLuint z , GLuint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4ui_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribI4ui ( GLuint index , GLuint x , GLuint y , GLuint z , GLuint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4uivEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4uivEXT ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4uiv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4uiv ( GLuint index , GLuint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4usvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4usvEXT ( GLuint index , GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribI4usv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribI4usv ( GLuint index , GLushort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribIFormatNV_index: index size: size type: type stride: stride [
	^ self ffiCall: #( void glVertexAttribIFormatNV ( GLuint index , GLint size , GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribIFormat_attribindex: attribindex size: size type: type relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexAttribIFormat ( GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribIPointerEXT_index: index size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribIPointerEXT ( GLuint index , GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribIPointer_index: index size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribIPointer ( GLuint index , GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1dEXT_index: index x: x [
	^ self ffiCall: #( void glVertexAttribL1dEXT ( GLuint index , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1d_index: index x: x [
	^ self ffiCall: #( void glVertexAttribL1d ( GLuint index , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1dvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL1dvEXT ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL1dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1i64NV_index: index x: x [
	^ self ffiCall: #( void glVertexAttribL1i64NV ( GLuint index , GLint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1i64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL1i64vNV ( GLuint index , GLint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1ui64ARB_index: index x: x [
	^ self ffiCall: #( void glVertexAttribL1ui64ARB ( GLuint index , GLuint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1ui64NV_index: index x: x [
	^ self ffiCall: #( void glVertexAttribL1ui64NV ( GLuint index , GLuint64EXT x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1ui64vARB_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL1ui64vARB ( GLuint index , GLuint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL1ui64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL1ui64vNV ( GLuint index , GLuint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2dEXT_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribL2dEXT ( GLuint index , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2d_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribL2d ( GLuint index , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2dvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL2dvEXT ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL2dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2i64NV_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribL2i64NV ( GLuint index , GLint64EXT x , GLint64EXT y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2i64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL2i64vNV ( GLuint index , GLint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2ui64NV_index: index x: x y: y [
	^ self ffiCall: #( void glVertexAttribL2ui64NV ( GLuint index , GLuint64EXT x , GLuint64EXT y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL2ui64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL2ui64vNV ( GLuint index , GLuint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3dEXT_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribL3dEXT ( GLuint index , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3d_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribL3d ( GLuint index , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3dvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL3dvEXT ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL3dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3i64NV_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribL3i64NV ( GLuint index , GLint64EXT x , GLint64EXT y , GLint64EXT z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3i64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL3i64vNV ( GLuint index , GLint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3ui64NV_index: index x: x y: y z: z [
	^ self ffiCall: #( void glVertexAttribL3ui64NV ( GLuint index , GLuint64EXT x , GLuint64EXT y , GLuint64EXT z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL3ui64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL3ui64vNV ( GLuint index , GLuint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4dEXT_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribL4dEXT ( GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4d_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribL4d ( GLuint index , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4dvEXT_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL4dvEXT ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4dv_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL4dv ( GLuint index , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4i64NV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribL4i64NV ( GLuint index , GLint64EXT x , GLint64EXT y , GLint64EXT z , GLint64EXT w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4i64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL4i64vNV ( GLuint index , GLint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4ui64NV_index: index x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexAttribL4ui64NV ( GLuint index , GLuint64EXT x , GLuint64EXT y , GLuint64EXT z , GLuint64EXT w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribL4ui64vNV_index: index v: v [
	^ self ffiCall: #( void glVertexAttribL4ui64vNV ( GLuint index , GLuint64EXT* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribLFormatNV_index: index size: size type: type stride: stride [
	^ self ffiCall: #( void glVertexAttribLFormatNV ( GLuint index , GLint size , GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribLFormat_attribindex: attribindex size: size type: type relativeoffset: relativeoffset [
	^ self ffiCall: #( void glVertexAttribLFormat ( GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribLPointerEXT_index: index size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribLPointerEXT ( GLuint index , GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribLPointer_index: index size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribLPointer ( GLuint index , GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP1ui_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP1ui ( GLuint index , GLenum type , GLboolean normalized , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP1uiv_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP1uiv ( GLuint index , GLenum type , GLboolean normalized , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP2ui_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP2ui ( GLuint index , GLenum type , GLboolean normalized , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP2uiv_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP2uiv ( GLuint index , GLenum type , GLboolean normalized , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP3ui_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP3ui ( GLuint index , GLenum type , GLboolean normalized , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP3uiv_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP3uiv ( GLuint index , GLenum type , GLboolean normalized , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP4ui_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP4ui ( GLuint index , GLenum type , GLboolean normalized , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribP4uiv_index: index type: type normalized: normalized value: value [
	^ self ffiCall: #( void glVertexAttribP4uiv ( GLuint index , GLenum type , GLboolean normalized , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribParameteriAMD_index: index pname: pname param: param [
	^ self ffiCall: #( void glVertexAttribParameteriAMD ( GLuint index , GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribPointerARB_index: index size: size type: type normalized: normalized stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribPointerARB ( GLuint index , GLint size , GLenum type , GLboolean normalized , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribPointerNV_index: index fsize: fsize type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribPointerNV ( GLuint index , GLint fsize , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribPointer_index: index size: size type: type normalized: normalized stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexAttribPointer ( GLuint index , GLint size , GLenum type , GLboolean normalized , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs1dvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs1dvNV ( GLuint index , GLsizei count , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs1fvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs1fvNV ( GLuint index , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs1hvNV_index: index n: n v: v [
	^ self ffiCall: #( void glVertexAttribs1hvNV ( GLuint index , GLsizei n , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs1svNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs1svNV ( GLuint index , GLsizei count , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs2dvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs2dvNV ( GLuint index , GLsizei count , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs2fvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs2fvNV ( GLuint index , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs2hvNV_index: index n: n v: v [
	^ self ffiCall: #( void glVertexAttribs2hvNV ( GLuint index , GLsizei n , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs2svNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs2svNV ( GLuint index , GLsizei count , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs3dvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs3dvNV ( GLuint index , GLsizei count , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs3fvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs3fvNV ( GLuint index , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs3hvNV_index: index n: n v: v [
	^ self ffiCall: #( void glVertexAttribs3hvNV ( GLuint index , GLsizei n , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs3svNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs3svNV ( GLuint index , GLsizei count , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs4dvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs4dvNV ( GLuint index , GLsizei count , GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs4fvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs4fvNV ( GLuint index , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs4hvNV_index: index n: n v: v [
	^ self ffiCall: #( void glVertexAttribs4hvNV ( GLuint index , GLsizei n , GLhalfNV* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs4svNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs4svNV ( GLuint index , GLsizei count , GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexAttribs4ubvNV_index: index count: count v: v [
	^ self ffiCall: #( void glVertexAttribs4ubvNV ( GLuint index , GLsizei count , GLubyte* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexBindingDivisor_bindingindex: bindingindex divisor: divisor [
	^ self ffiCall: #( void glVertexBindingDivisor ( GLuint bindingindex , GLuint divisor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexBlendARB: count [
	^ self ffiCall: #( void glVertexBlendARB ( GLint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexBlendEnvfATI_pname: pname param: param [
	^ self ffiCall: #( void glVertexBlendEnvfATI ( GLenum pname , GLfloat param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexBlendEnviATI_pname: pname param: param [
	^ self ffiCall: #( void glVertexBlendEnviATI ( GLenum pname , GLint param ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexFormatNV_size: size type: type stride: stride [
	^ self ffiCall: #( void glVertexFormatNV ( GLint size , GLenum type , GLsizei stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexP2ui_type: type value: value [
	^ self ffiCall: #( void glVertexP2ui ( GLenum type , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexP2uiv_type: type value: value [
	^ self ffiCall: #( void glVertexP2uiv ( GLenum type , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexP3ui_type: type value: value [
	^ self ffiCall: #( void glVertexP3ui ( GLenum type , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexP3uiv_type: type value: value [
	^ self ffiCall: #( void glVertexP3uiv ( GLenum type , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexP4ui_type: type value: value [
	^ self ffiCall: #( void glVertexP4ui ( GLenum type , GLuint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexP4uiv_type: type value: value [
	^ self ffiCall: #( void glVertexP4uiv ( GLenum type , GLuint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexPointerEXT_size: size type: type stride: stride count: count pointer: pointer [
	^ self ffiCall: #( void glVertexPointerEXT ( GLint size , GLenum type , GLsizei stride , GLsizei count , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexPointerListIBM_size: size type: type stride: stride pointer: pointer ptrstride: ptrstride [
	^ self ffiCall: #( void glVertexPointerListIBM ( GLint size , GLenum type , GLint stride , void** pointer , GLint ptrstride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexPointer_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexPointer ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexPointervINTEL_size: size type: type pointer: pointer [
	^ self ffiCall: #( void glVertexPointervINTEL ( GLint size , GLenum type , void** pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1dATI_stream: stream x: x [
	^ self ffiCall: #( void glVertexStream1dATI ( GLenum stream , GLdouble x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1dvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream1dvATI ( GLenum stream , GLdouble* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1fATI_stream: stream x: x [
	^ self ffiCall: #( void glVertexStream1fATI ( GLenum stream , GLfloat x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1fvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream1fvATI ( GLenum stream , GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1iATI_stream: stream x: x [
	^ self ffiCall: #( void glVertexStream1iATI ( GLenum stream , GLint x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1ivATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream1ivATI ( GLenum stream , GLint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1sATI_stream: stream x: x [
	^ self ffiCall: #( void glVertexStream1sATI ( GLenum stream , GLshort x ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream1svATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream1svATI ( GLenum stream , GLshort* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2dATI_stream: stream x: x y: y [
	^ self ffiCall: #( void glVertexStream2dATI ( GLenum stream , GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2dvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream2dvATI ( GLenum stream , GLdouble* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2fATI_stream: stream x: x y: y [
	^ self ffiCall: #( void glVertexStream2fATI ( GLenum stream , GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2fvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream2fvATI ( GLenum stream , GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2iATI_stream: stream x: x y: y [
	^ self ffiCall: #( void glVertexStream2iATI ( GLenum stream , GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2ivATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream2ivATI ( GLenum stream , GLint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2sATI_stream: stream x: x y: y [
	^ self ffiCall: #( void glVertexStream2sATI ( GLenum stream , GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream2svATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream2svATI ( GLenum stream , GLshort* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3dATI_stream: stream x: x y: y z: z [
	^ self ffiCall: #( void glVertexStream3dATI ( GLenum stream , GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3dvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream3dvATI ( GLenum stream , GLdouble* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3fATI_stream: stream x: x y: y z: z [
	^ self ffiCall: #( void glVertexStream3fATI ( GLenum stream , GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3fvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream3fvATI ( GLenum stream , GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3iATI_stream: stream x: x y: y z: z [
	^ self ffiCall: #( void glVertexStream3iATI ( GLenum stream , GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3ivATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream3ivATI ( GLenum stream , GLint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3sATI_stream: stream x: x y: y z: z [
	^ self ffiCall: #( void glVertexStream3sATI ( GLenum stream , GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream3svATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream3svATI ( GLenum stream , GLshort* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4dATI_stream: stream x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexStream4dATI ( GLenum stream , GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4dvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream4dvATI ( GLenum stream , GLdouble* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4fATI_stream: stream x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexStream4fATI ( GLenum stream , GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4fvATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream4fvATI ( GLenum stream , GLfloat* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4iATI_stream: stream x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexStream4iATI ( GLenum stream , GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4ivATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream4ivATI ( GLenum stream , GLint* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4sATI_stream: stream x: x y: y z: z w: w [
	^ self ffiCall: #( void glVertexStream4sATI ( GLenum stream , GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexStream4svATI_stream: stream coords: coords [
	^ self ffiCall: #( void glVertexStream4svATI ( GLenum stream , GLshort* coords ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexWeightPointerEXT_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glVertexWeightPointerEXT ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexWeightfEXT: weight [
	^ self ffiCall: #( void glVertexWeightfEXT ( GLfloat weight ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexWeightfvEXT: weight [
	^ self ffiCall: #( void glVertexWeightfvEXT ( GLfloat* weight ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexWeighthNV: weight [
	^ self ffiCall: #( void glVertexWeighthNV ( GLhalfNV weight ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> vertexWeighthvNV: weight [
	^ self ffiCall: #( void glVertexWeighthvNV ( GLhalfNV* weight ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> videoCaptureNV_video_capture_slot: video_capture_slot sequence_num: sequence_num capture_time: capture_time [
	^ self ffiCall: #( GLenum glVideoCaptureNV ( GLuint video_capture_slot , GLuint* sequence_num , GLuint64EXT* capture_time ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> videoCaptureStreamParameterdvNV_video_capture_slot: video_capture_slot stream: stream pname: pname params: params [
	^ self ffiCall: #( void glVideoCaptureStreamParameterdvNV ( GLuint video_capture_slot , GLuint stream , GLenum pname , GLdouble* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> videoCaptureStreamParameterfvNV_video_capture_slot: video_capture_slot stream: stream pname: pname params: params [
	^ self ffiCall: #( void glVideoCaptureStreamParameterfvNV ( GLuint video_capture_slot , GLuint stream , GLenum pname , GLfloat* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> videoCaptureStreamParameterivNV_video_capture_slot: video_capture_slot stream: stream pname: pname params: params [
	^ self ffiCall: #( void glVideoCaptureStreamParameterivNV ( GLuint video_capture_slot , GLuint stream , GLenum pname , GLint* params ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportArrayvNV_first: first count: count v: v [
	^ self ffiCall: #( void glViewportArrayvNV ( GLuint first , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportArrayv_first: first count: count v: v [
	^ self ffiCall: #( void glViewportArrayv ( GLuint first , GLsizei count , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportIndexedfNV_index: index x: x y: y w: w h: h [
	^ self ffiCall: #( void glViewportIndexedfNV ( GLuint index , GLfloat x , GLfloat y , GLfloat w , GLfloat h ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportIndexedf_index: index x: x y: y w: w h: h [
	^ self ffiCall: #( void glViewportIndexedf ( GLuint index , GLfloat x , GLfloat y , GLfloat w , GLfloat h ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportIndexedfvNV_index: index v: v [
	^ self ffiCall: #( void glViewportIndexedfvNV ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportIndexedfv_index: index v: v [
	^ self ffiCall: #( void glViewportIndexedfv ( GLuint index , GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewportSwizzleNV_index: index swizzlex: swizzlex swizzley: swizzley swizzlez: swizzlez swizzlew: swizzlew [
	^ self ffiCall: #( void glViewportSwizzleNV ( GLuint index , GLenum swizzlex , GLenum swizzley , GLenum swizzlez , GLenum swizzlew ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> viewport_x: x y: y width: width height: height [
	^ self ffiCall: #( void glViewport ( GLint x , GLint y , GLsizei width , GLsizei height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> waitSyncAPPLE_sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( void glWaitSyncAPPLE ( GLsync sync , GLbitfield flags , GLuint64 timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> waitSync_sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( void glWaitSync ( GLsync sync , GLbitfield flags , GLuint64 timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightPathsNV_resultPath: resultPath numPaths: numPaths paths: paths weights: weights [
	^ self ffiCall: #( void glWeightPathsNV ( GLuint resultPath , GLsizei numPaths , GLuint* paths , GLfloat* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightPointerARB_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glWeightPointerARB ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightPointerOES_size: size type: type stride: stride pointer: pointer [
	^ self ffiCall: #( void glWeightPointerOES ( GLint size , GLenum type , GLsizei stride , void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightbvARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightbvARB ( GLint size , GLbyte* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightdvARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightdvARB ( GLint size , GLdouble* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightfvARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightfvARB ( GLint size , GLfloat* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightivARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightivARB ( GLint size , GLint* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightsvARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightsvARB ( GLint size , GLshort* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightubvARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightubvARB ( GLint size , GLubyte* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightuivARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightuivARB ( GLint size , GLuint* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> weightusvARB_size: size weights: weights [
	^ self ffiCall: #( void glWeightusvARB ( GLint size , GLushort* weights ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2dARB_x: x y: y [
	^ self ffiCall: #( void glWindowPos2dARB ( GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2dMESA_x: x y: y [
	^ self ffiCall: #( void glWindowPos2dMESA ( GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2d_x: x y: y [
	^ self ffiCall: #( void glWindowPos2d ( GLdouble x , GLdouble y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2dv: v [
	^ self ffiCall: #( void glWindowPos2dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2dvARB: v [
	^ self ffiCall: #( void glWindowPos2dvARB ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2dvMESA: v [
	^ self ffiCall: #( void glWindowPos2dvMESA ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2fARB_x: x y: y [
	^ self ffiCall: #( void glWindowPos2fARB ( GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2fMESA_x: x y: y [
	^ self ffiCall: #( void glWindowPos2fMESA ( GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2f_x: x y: y [
	^ self ffiCall: #( void glWindowPos2f ( GLfloat x , GLfloat y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2fv: v [
	^ self ffiCall: #( void glWindowPos2fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2fvARB: v [
	^ self ffiCall: #( void glWindowPos2fvARB ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2fvMESA: v [
	^ self ffiCall: #( void glWindowPos2fvMESA ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2iARB_x: x y: y [
	^ self ffiCall: #( void glWindowPos2iARB ( GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2iMESA_x: x y: y [
	^ self ffiCall: #( void glWindowPos2iMESA ( GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2i_x: x y: y [
	^ self ffiCall: #( void glWindowPos2i ( GLint x , GLint y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2iv: v [
	^ self ffiCall: #( void glWindowPos2iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2ivARB: v [
	^ self ffiCall: #( void glWindowPos2ivARB ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2ivMESA: v [
	^ self ffiCall: #( void glWindowPos2ivMESA ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2sARB_x: x y: y [
	^ self ffiCall: #( void glWindowPos2sARB ( GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2sMESA_x: x y: y [
	^ self ffiCall: #( void glWindowPos2sMESA ( GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2s_x: x y: y [
	^ self ffiCall: #( void glWindowPos2s ( GLshort x , GLshort y ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2sv: v [
	^ self ffiCall: #( void glWindowPos2sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2svARB: v [
	^ self ffiCall: #( void glWindowPos2svARB ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos2svMESA: v [
	^ self ffiCall: #( void glWindowPos2svMESA ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3dARB_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3dARB ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3dMESA_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3dMESA ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3d_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3d ( GLdouble x , GLdouble y , GLdouble z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3dv: v [
	^ self ffiCall: #( void glWindowPos3dv ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3dvARB: v [
	^ self ffiCall: #( void glWindowPos3dvARB ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3dvMESA: v [
	^ self ffiCall: #( void glWindowPos3dvMESA ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3fARB_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3fARB ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3fMESA_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3fMESA ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3f_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3f ( GLfloat x , GLfloat y , GLfloat z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3fv: v [
	^ self ffiCall: #( void glWindowPos3fv ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3fvARB: v [
	^ self ffiCall: #( void glWindowPos3fvARB ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3fvMESA: v [
	^ self ffiCall: #( void glWindowPos3fvMESA ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3iARB_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3iARB ( GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3iMESA_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3iMESA ( GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3i_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3i ( GLint x , GLint y , GLint z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3iv: v [
	^ self ffiCall: #( void glWindowPos3iv ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3ivARB: v [
	^ self ffiCall: #( void glWindowPos3ivARB ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3ivMESA: v [
	^ self ffiCall: #( void glWindowPos3ivMESA ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3sARB_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3sARB ( GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3sMESA_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3sMESA ( GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3s_x: x y: y z: z [
	^ self ffiCall: #( void glWindowPos3s ( GLshort x , GLshort y , GLshort z ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3sv: v [
	^ self ffiCall: #( void glWindowPos3sv ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3svARB: v [
	^ self ffiCall: #( void glWindowPos3svARB ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos3svMESA: v [
	^ self ffiCall: #( void glWindowPos3svMESA ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4dMESA_x: x y: y z: z w: w [
	^ self ffiCall: #( void glWindowPos4dMESA ( GLdouble x , GLdouble y , GLdouble z , GLdouble w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4dvMESA: v [
	^ self ffiCall: #( void glWindowPos4dvMESA ( GLdouble* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4fMESA_x: x y: y z: z w: w [
	^ self ffiCall: #( void glWindowPos4fMESA ( GLfloat x , GLfloat y , GLfloat z , GLfloat w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4fvMESA: v [
	^ self ffiCall: #( void glWindowPos4fvMESA ( GLfloat* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4iMESA_x: x y: y z: z w: w [
	^ self ffiCall: #( void glWindowPos4iMESA ( GLint x , GLint y , GLint z , GLint w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4ivMESA: v [
	^ self ffiCall: #( void glWindowPos4ivMESA ( GLint* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4sMESA_x: x y: y z: z w: w [
	^ self ffiCall: #( void glWindowPos4sMESA ( GLshort x , GLshort y , GLshort z , GLshort w ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> windowPos4svMESA: v [
	^ self ffiCall: #( void glWindowPos4svMESA ( GLshort* v ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
GlutinOpenGL >> writeMaskEXT_res: res in: in outX: outX outY: outY outZ: outZ outW: outW [
	^ self ffiCall: #( void glWriteMaskEXT ( GLuint res , GLuint in , GLenum outX , GLenum outY , GLenum outZ , GLenum outW ) ) options: #( +optIndirectCallOpenGL )
]
