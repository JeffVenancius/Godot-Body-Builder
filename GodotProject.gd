extends HBoxContainer


var modules:  Array
var used_res: Array

enum {NONE,OBJECT,NODE,SPATIAL,CAMERA,VISUAL_INSTANCE,GEOMETRY_INSTANCE,SPRITE_BASE3D,CSG_SHAPE,CSG_PRIMITIVE,MESH_INSTANCE,LIGHT,COLLISION_OBJECT,PHYSICS_BODY,RIGID_BODY,JOINT,VISIBILITY_NOTIFIER,CONTROL,POPUP,CANVAS_ITEM,WINDOW_DIALOG,ACCEPT_DIALOG,CONFIRMATION_DIALOG,CONTAINER,BOX_CONTAINER,SPLIT_CONTAINER,BASE_BUTTON,BUTTON,RANGE,SCROLL_BAR,SLIDER,SEPARATOR,NODE2D,COLLISION_OBJECT2D,PHYSICS_BODY2D,JOINT2D,VISIBILITY_NOTIFIER2D,CANVAS_LAYER,REFERENCE,ARVR_INTERFACE,RESOURCE,TEXTURE,ANIMATION_NODE,ANIMATION_ROOT_NODE,MESH,PRIMITIVE_MESH,AUDIO_EFFECT,AUDIO_EFFECT_FILTER,AUDIO_EFFECT_EQ,AUDIO_STREAM,FONT,SHAPE,MATERIAL,SHAPE2D,SCRIPT,INPUT_EVENT,INPUT_EVENT_WITH_MODIFIERS,INPUT_EVENT_GESTURE,INPUT_EVENT_MOUSE,TRANSLATION,SKY,SHADER,STYLE_BOX,TEXTURE_LAYERED,VIDEO_STREAM,VISUAL_SCRIPT_NODE,VISUAL_SCRIPT_LISTS,VISUAL_SHADER_NODE,VISUAL_SHADER_NODE_UNIFORM,VISUAL_SHADER_NODE_TEXTURE_UNIFORM,VISUAL_SHADER_NODE_GROUP_BASE,VISUAL_SHADER_NODE_EXPRESSION,VISUAL_SHADER_NODE_SWITCH,AUDIO_EFFECT_INSTANCE,AUDIO_STREAM_PLAYBACK,AUDIO_STREAM_PLAYBACK_RESAMPLED,RESOURCE_IMPORTER,PACKET_PEER,NETWORK_MULTIPLAYER_PEER}
var heirdomOwners := ["","Object","Node","Spatial","Camera","VisualInstance","GeometryInstance","SpriteBase3D","CSGShape","CSGPrimitive","MeshInstance","Light","CollisionObject","PhysicsBody","RigidBody","Joint","VisibilityNotifier","Control","Popup","CanvasItem","WindowDialog","AcceptDialog","ConfirmationDialog","Container","BoxContainer","SplitContainer","BaseButton","Button","Range","ScrollBar","Slider","Separator","Node2D","CollisionObject2D","PhysicsBody2D","Joint2D","VisibilityNotifier2D","CanvasLayer","Reference","ARVRInterface","Resource","Texture","AnimationNode","AnimationRootNode","Mesh","PrimitiveMesh","AudioEffect","AudioEffectFilter","AudioEffectEQ","AudioStream","Font","Shape","Material","Shape2D","Script","InputEvent","InputEventWithModifiers","InputEventGesture","InputEventMouse","Translation","Sky","Shader","StyleBox","TextureLayered","VideoStream","VisualScriptNode","VisualScriptLists","VisualShaderNode","VisualShaderNodeUniform","VisualShaderNodeTextureUniform","VisualShaderNodeGroupBase","VisualShaderNodeExpression","VisualShaderNodeSwitch","AudioEffectInstance","AudioStreamPlayback","AudioStreamPlaybackResampled","ResourceImporter","PacketPeer","NetworkedMultiplayerPeer"]
var paths := {
	"Node":"scene/main/node.h",
	"Spatial":"scene/3d/node3d.h",
	"Canera":"scene/3d/camera_3d.h",
	"SpriteBase3D":"scene/3d/sprite3d.h",
	"MeshInstance":"scene/3d/mesh_instance_3d.h",
	"Light":"light_3d.h"
	} # TODO - add more.





var inherit_from := {
	"@GDScript":NONE,
	"@GlobalScope":NONE,
	"AABB":NONE,
	"Object":NONE,
	"Node":OBJECT,
	"Spatial":NODE,
	"ARVRAnchor":SPATIAL,
	"Camera":SPATIAL,
	"ARVRCamera":CAMERA,
	"ClippedCamera":CAMERA,
	"InterpolatedCamera":CAMERA,
	"ARVRController":SPATIAL,
	"ARVROrigin":SPATIAL,
	"VisualInstance":SPATIAL,
	"GeometryInstance":VISUAL_INSTANCE,
	"SpriteBase3D":GEOMETRY_INSTANCE,
	"AnimatedSprite3D":SPRITE_BASE3D,
	"Sprite3D":SPRITE_BASE3D,
	"CPUParticles":GEOMETRY_INSTANCE,
	"CSGShape":GEOMETRY_INSTANCE,
	"CSGPrimitive":CSG_SHAPE,
	"CSGBox":CSG_SHAPE,
	"CSGCylinder":CSG_SHAPE,
	"CSGMesh":CSG_SHAPE,
	"CSGPolygon":CSG_SHAPE,
	"CSGSphere":CSG_SHAPE,
	"CSGTorus":CSG_SHAPE,
	"CSGCombiner":CSG_SHAPE,
	"ImmediateGeometry":GEOMETRY_INSTANCE,
	"MeshInstance":GEOMETRY_INSTANCE,
	"SoftBody":MESH_INSTANCE,
	"MultiMeshInstance":GEOMETRY_INSTANCE,
	"Particles":GEOMETRY_INSTANCE,
	"BakedLightmap":VISUAL_INSTANCE,
	"Light":VISUAL_INSTANCE,
	"DirectionalLight":LIGHT,
	"OmniLight":LIGHT,
	"SpotLight":LIGHT,
	"GIProbe":VISUAL_INSTANCE,
	"ReflectionProbe":VISUAL_INSTANCE,
	"RootMotionView":VISUAL_INSTANCE,
	"CollisionObject":SPATIAL,
	"Area":COLLISION_OBJECT,
	"PhysicsBody":COLLISION_OBJECT,
	"KinematicBody":PHYSICS_BODY,
	"PhysicalBone":PHYSICS_BODY,
	"RigidBody":PHYSICS_BODY,
	"VehicleBody":RIGID_BODY,
	"StaticBody":PHYSICS_BODY,
	"AudioStreamPlayer3D":SPATIAL,
	"BoneAttachment":SPATIAL,
	"CollisionPolygon":SPATIAL,
	"CollisionShape":SPATIAL,
	"Joint":SPATIAL,
	"ConeTwistJoint":JOINT,
	"Generic6DOFJoint":JOINT,
	"HingeJoint":JOINT,
	"SliderJoint":JOINT,
	"PinJoint":JOINT,
	"GridMap":SPATIAL,
	"Listener":SPATIAL,
	"Navigation":SPATIAL,
	"NavigationMeshInstance":SPATIAL,
	"Path":SPATIAL,
	"PathFollow":SPATIAL,
	"Position3D":SPATIAL,
	"ProximityGroup":SPATIAL,
	"RemoteTransform":SPATIAL,
	"Skeleton":SPATIAL,
	"SpringArm":SPATIAL,
	"VehicleWheel":SPATIAL,
	"VisibilityNotifier":SPATIAL,
	"VisibilityEnabler":VISIBILITY_NOTIFIER,
	"RayCast":SPATIAL,
	"CanvasItem":NODE,
	"Control":CANVAS_ITEM,
	"Popup":CONTROL,
	"WindowDialog":POPUP,
	"AcceptDialog":WINDOW_DIALOG,
	"ConfirmationDialog":ACCEPT_DIALOG,
	"FileDialog":CONFIRMATION_DIALOG,
	"PopupDialog":POPUP,
	"PopupMenu":POPUP,
	"PopupPanel":POPUP,
	"Container":CONTROL,
	"AspectRatioContainer":CONTAINER,
	"CenterContainer":CONTAINER,
	"BoxContainer":CONTAINER,
	"ColorPicker":BOX_CONTAINER,
	"HBoxContainer":BOX_CONTAINER,
	"VBoxContainer":BOX_CONTAINER,
	"GraphNode":CONTAINER,
	"GridContainer":CONTAINER,
	"SplitContainer":CONTAINER,
	"HSplitContainer":SPLIT_CONTAINER,
	"VSplitContainer":SPLIT_CONTAINER,
	"MarginContainer":CONTAINER,
	"PanelContainer":CONTAINER,
	"ScrollContainer":CONTAINER,
	"TabContainer":CONTAINER,
	"ViewportContainer":CONTAINER,
	"BaseButton":CONTROL,
	"Button":BASE_BUTTON,
	"CheckBox":BUTTON,
	"CheckButton":BUTTON,
	"ColorPickerButton":BUTTON,
	"MenuButton":BUTTON,
	"OptionButton":BUTTON,
	"ToolButton":BUTTON,
	"LinkButton":BASE_BUTTON,
	"TextureButton":BASE_BUTTON,
	"Range":CONTROL,
	"ScrollBar":RANGE,
	"HScrollBar":SCROLL_BAR,
	"VScrollBar":SCROLL_BAR,
	"Slider":RANGE,
	"HSlider":SLIDER,
	"VSlider":SLIDER,
	"ProgressBar":RANGE,
	"SpinBox":RANGE,
	"TextureProgress":RANGE,
	"Separator":CONTROL,
	"HSeparator":SEPARATOR,
	"VSeparator":SEPARATOR,
	"ColorRect":CONTROL,
	"GraphEdit":CONTROL,
	"ItemList":CONTROL,
	"Label":CONTROL,
	"LineEdit":CONTROL,
	"NinePatchRect":CONTROL,
	"Panel":CONTROL,
	"ReferenceRect":CONTROL,
	"RichTextLabel":CONTROL,
	"Tabs":CONTROL,
	"TextEdit":CONTROL,
	"TextureRect":CONTROL,
	"Tree":CONTROL,
	"VideoPlayer":CONTROL,
	"Node2D":CANVAS_ITEM,
	"AnimatedSprite":NODE2D,
	"CollisionObject2D":NODE2D,
	"Area2D":COLLISION_OBJECT2D,
	"PhysicsBody2D":COLLISION_OBJECT2D,
	"KinematicBody2D":PHYSICS_BODY2D,
	"RigidBody2D":PHYSICS_BODY2D,
	"StaticBody2D":PHYSICS_BODY2D,
	"AudioStreamPlayer2D":NODE2D,
	"BackBufferCopy":NODE2D,
	"Bone2D":NODE2D,
	"CPUParticles2D":NODE2D,
	"Camera2D":NODE2D,
	"CanvasModulate":NODE2D,
	"CollisionPolygon2D":NODE2D,
	"CollisionShape2D":NODE2D,
	"Joint2D":NODE2D,
	"DampedSpringJoint2D":JOINT2D,
	"GrooveJoint2D":JOINT2D,
	"PinJoint2D":JOINT2D,
	"Light2D":NODE2D,
	"LightOccluder2D":NODE2D,
	"Line2D":NODE2D,
	"MeshInstance2D":NODE2D,
	"MultiMeshInstance2D":NODE2D,
	"Navigation2D":NODE2D,
	"NavigationPolygonInstance":NODE2D,
	"ParallaxLayer":NODE2D,
	"Particles2D":NODE2D,
	"Path2D":NODE2D,
	"PathFollow2D":NODE2D,
	"Polygon2D":NODE2D,
	"Position2D":NODE2D,
	"RayCast2D":NODE2D,
	"RemoteTransform2D":NODE2D,
	"Skeleton2D":NODE2D,
	"Sprite":NODE2D,
	"TileMap":NODE2D,
	"TouchScreenButton":NODE2D,
	"VisibilityNotifier2D":NODE2D,
	"VisibilityEnabler2D":VISIBILITY_NOTIFIER2D,
	"YSort":NODE2D,
	"AnimationPlayer":NODE,
	"AnimationTree":NODE,
	"AnimationTreePlayer":NODE,
	"AudioStreamPlayer":NODE,
	"CanvasLayer":NODE,
	"ParallaxBackground":CANVAS_LAYER,
	"HTTPRequest":NODE,
	"ResourcePreloader":NODE,
	"SkeletonIK":NODE,
	"Timer":NODE,
	"Tween":NODE,
	"Viewport":NODE,
	"WorldEnvironment":NODE,
	"Reference":OBJECT,
	"ARVRInterface":REFERENCE,
	"ARVRInterfaceGDNative":ARVR_INTERFACE,
	"WebXRInterface":ARVR_INTERFACE,
	"MobileVRInterface":ARVR_INTERFACE,
	"AStar":REFERENCE,
	"AStar2D":REFERENCE,
	"Resource":REFERENCE,
	"Texture":RESOURCE,
	"AnimatedTexture":TEXTURE,
	"AtlasTexture":TEXTURE,
	"CameraTexture":TEXTURE,
	"CurveTexture":TEXTURE,
	"ExternalTexture":TEXTURE,
	"GradientTexture":TEXTURE,
	"ImageTexture":TEXTURE,
	"LargeTexture":TEXTURE,
	"MeshTexture":TEXTURE,
	"NoiseTexture":TEXTURE,
	"ProxyTexture":TEXTURE,
	"StreamTexture":TEXTURE,
	"ViewportTexture":TEXTURE,
	"Animation":RESOURCE,
	"AnimationNode":RESOURCE,
	"AnimationNodeAdd2":ANIMATION_NODE,
	"AnimationNodeAdd3":ANIMATION_NODE,
	"AnimationRootNode":ANIMATION_NODE,
	"AnimationNodeAnimation":ANIMATION_ROOT_NODE,
	"AnimationNodeBlendSpace1D":ANIMATION_ROOT_NODE,
	"AnimationNodeBlendSpace2D":ANIMATION_ROOT_NODE,
	"AnimationNodeBlendTree":ANIMATION_ROOT_NODE,
	"AnimationNodeStateMachine":ANIMATION_ROOT_NODE,
	"AnimationNodeBlend2":ANIMATION_NODE,
	"AnimationNodeBlend3":ANIMATION_NODE,
	"AnimationNodeOneShot":ANIMATION_NODE,
	"AnimationNodeOutput":ANIMATION_NODE,
	"AnimationNodeTimeScale":ANIMATION_NODE,
	"AnimationNodeTimeSeek":ANIMATION_NODE,
	"AnimationNodeTransition":ANIMATION_NODE,
	"AnimationNodeStateMachinePlayback":RESOURCE,
	"AnimationNodeStateMachineTransition":RESOURCE,
	"Mesh":RESOURCE,
	"ArrayMesh":MESH,
	"PrimitiveMesh":MESH,
	"CapsuleMesh":PRIMITIVE_MESH,
	"CubeMesh":PRIMITIVE_MESH,
	"CylinderMesh":PRIMITIVE_MESH,
	"SphereMesh":PRIMITIVE_MESH,
	"PlaneMesh":PRIMITIVE_MESH,
	"PointMesh":PRIMITIVE_MESH,
	"PrismMesh":PRIMITIVE_MESH,
	"QuadMesh":PRIMITIVE_MESH,
	"AudioBusLayout":RESOURCE,
	"AudioEffect":RESOURCE,
	"AudioEffectAmplify":AUDIO_EFFECT,
	"AudioEffectFilter":AUDIO_EFFECT,
	"AudioEffectBandLimitFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectBandPassFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectHighPassFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectHighShelfFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectLowPassFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectLowShelfFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectNotchFilter":AUDIO_EFFECT_FILTER,
	"AudioEffectCapture":AUDIO_EFFECT,
	"AudioEffectChorus":AUDIO_EFFECT,
	"AudioEffectCompressor":AUDIO_EFFECT,
	"AudioEffectDelay":AUDIO_EFFECT,
	"AudioEffectDistortion":AUDIO_EFFECT,
	"AudioEffectEQ":AUDIO_EFFECT,
	"AudioEffectEQ10":AUDIO_EFFECT_EQ,
	"AudioEffectEQ21":AUDIO_EFFECT_EQ,
	"AudioEffectEQ6":AUDIO_EFFECT_EQ,
	"AudioEffectLimiter":AUDIO_EFFECT,
	"AudioEffectPanner":AUDIO_EFFECT,
	"AudioEffectPhaser":AUDIO_EFFECT,
	"AudioEffectPitchShift":AUDIO_EFFECT,
	"AudioEffectRecord":AUDIO_EFFECT,
	"AudioEffectReverb":AUDIO_EFFECT,
	"AudioEffectSpectrumAnalyzer":AUDIO_EFFECT,
	"AudioEffectStereoEnhance":AUDIO_EFFECT,
	"AudioStream":RESOURCE,
	"AudioStreamGenerator":AUDIO_STREAM,
	"AudioStreamMicrophone":AUDIO_STREAM,
	"AudioStreamMP3":AUDIO_STREAM,
	"AudioStreamOGGVorbis":AUDIO_STREAM,
	"AudioStreamRandomPitch":AUDIO_STREAM,
	"AudioStreamSample":AUDIO_STREAM,
	"BakedLightmapData":RESOURCE,
	"BitMap":RESOURCE,
	"Font":RESOURCE,
	"DynamicFont":FONT,
	"BitmapFont":FONT,
	"Shape":RESOURCE,
	"BoxShape":SHAPE,
	"CapsuleShape":SHAPE,
	"ConcavePolygonShape":SHAPE,
	"ConvexPolygonShape":SHAPE,
	"CylinderShape":SHAPE,
	"HeightMapShape":SHAPE,
	"PlaneShape":SHAPE,
	"RayShape":SHAPE,
	"SphereShape":SHAPE,
	"ButtonGroup":RESOURCE,
	"Material":RESOURCE,
	"CanvasItemMaterial":MATERIAL,
	"ParticlesMaterial":MATERIAL,
	"ShaderMaterial":MATERIAL,
	"SpatialMaterial":MATERIAL,
	"Shape2D":RESOURCE,
	"CapsuleShape2D":SHAPE2D,
	"CircleShape2D":SHAPE2D,
	"ConcavePolygonShape2D":SHAPE2D,
	"ConvexPolygonShape2D":SHAPE2D,
	"LineShape2D":SHAPE2D,
	"RayShape2D":SHAPE2D,
	"RectangleShape2D":SHAPE2D,
	"SegmentShape2D":SHAPE2D,
	"CryptoKey":RESOURCE,
	"CubeMap":RESOURCE,
	"Curve":RESOURCE,
	"Curve2D":RESOURCE,
	"Curve3D":RESOURCE,
	"DynamicFontData":RESOURCE,
	"EditorSettings":RESOURCE,
	"EditorSpatialGizmoPlugin":RESOURCE,
	"Environment":RESOURCE,
	"GDNativeLibrary":RESOURCE,
	"Script":RESOURCE,
	"GDScript":SCRIPT,
	"VisualScript":SCRIPT,
	"NativeScript":SCRIPT,
	"PluginScript":SCRIPT,
	"GIProbeData":RESOURCE,
	"Gradient":RESOURCE,
	"Image":RESOURCE,
	"InputEvent":RESOURCE,
	"InputEventAction":INPUT_EVENT,
	"InputEventWithModifiers":INPUT_EVENT,
	"InputEventGesture":INPUT_EVENT_WITH_MODIFIERS,
	"InputEventMagnifyGesture":INPUT_EVENT_GESTURE,
	"InputEventPanGesture":INPUT_EVENT_GESTURE,
	"InputEventKey":INPUT_EVENT,
	"InputEventMouse":INPUT_EVENT,
	"InputEventMouseButton":INPUT_EVENT_MOUSE,
	"InputEventMouseMotion":INPUT_EVENT_MOUSE,
	"InputEventJoypadButton":INPUT_EVENT,
	"InputEventJoypadMotion":INPUT_EVENT,
	"InputEventMIDI":INPUT_EVENT,
	"InputEventScreenDrag":INPUT_EVENT,
	"InputEventScreenTouch":INPUT_EVENT,
	"MeshLibrary":RESOURCE,
	"MultiMesh":RESOURCE,
	"NavigationMesh":RESOURCE,
	"NavigationPolygon":RESOURCE,
	"OccluderPolygon2D":RESOURCE,
	"OpenSimplexNoise":RESOURCE,
	"Translation":RESOURCE,
	"PHashTranslation":TRANSLATION,
	"PackedDataContainer":RESOURCE,
	"PackedScene":RESOURCE,
	"Sky":RESOURCE,
	"PanoramaSky":SKY,
	"ProceduralSky":SKY,
	"PhysicsMaterial":RESOURCE,
	"PolygonPathFinder":RESOURCE,
	"RichTextEffect":RESOURCE,
	"Shader":RESOURCE,
	"VisualShader":SHADER,
	"ShortCut":RESOURCE,
	"Skin":RESOURCE,
	"SpriteFrames":RESOURCE,
	"StyleBox":RESOURCE,
	"StyleBoxEmpty":STYLE_BOX,
	"StyleBoxFlat":STYLE_BOX,
	"StyleBoxLine":STYLE_BOX,
	"StyleBoxTexture":STYLE_BOX,
	"TextFile":RESOURCE,
	"TextureLayered":RESOURCE,
	"TextureArray":TEXTURE_LAYERED,
	"Texture3D":TEXTURE_LAYERED,
	"Theme":RESOURCE,
	"TileSet":RESOURCE,
	"VideoStream":RESOURCE,
	"VideoStreamGDNative":VIDEO_STREAM,
	"VideoStreamTheora":VIDEO_STREAM,
	"VideoStreamWebm":VIDEO_STREAM,
	"VisualScriptNode":RESOURCE,
	"VisualScriptBasicTypeConstant":VISUAL_SCRIPT_NODE,
	"VisualScriptBuiltinFunc":VISUAL_SCRIPT_NODE,
	"VisualScriptClassConstant":VISUAL_SCRIPT_NODE,
	"VisualScriptComment":VISUAL_SCRIPT_NODE,
	"VisualScriptLists":VISUAL_SCRIPT_NODE,
	"VisualScriptComposeArray":VISUAL_SCRIPT_LISTS,
	"VisualScriptCondition":VISUAL_SCRIPT_NODE,
	"VisualScriptConstant":VISUAL_SCRIPT_NODE,
	"VisualScriptConstructor":VISUAL_SCRIPT_NODE,
	"VisualScriptCustomNode":VISUAL_SCRIPT_NODE,
	"VisualScriptDeconstruct":VISUAL_SCRIPT_NODE,
	"VisualScriptEmitSignal":VISUAL_SCRIPT_NODE,
	"VisualScriptEngineSingleton":VISUAL_SCRIPT_NODE,
	"VisualScriptExpression":VISUAL_SCRIPT_NODE,
	"VisualScriptFunction":VISUAL_SCRIPT_NODE,
	"VisualScriptFunctionCall":VISUAL_SCRIPT_NODE,
	"VisualScriptGlobalConstant":VISUAL_SCRIPT_NODE,
	"VisualScriptIndexGet":VISUAL_SCRIPT_NODE,
	"VisualScriptIndexSet":VISUAL_SCRIPT_NODE,
	"VisualScriptInputAction":VISUAL_SCRIPT_NODE,
	"VisualScriptIterator":VISUAL_SCRIPT_NODE,
	"VisualScriptLocalVar":VISUAL_SCRIPT_NODE,
	"VisualScriptLocalVarSet":VISUAL_SCRIPT_NODE,
	"VisualScriptMathConstant":VISUAL_SCRIPT_NODE,
	"VisualScriptOperator":VISUAL_SCRIPT_NODE,
	"VisualScriptPreload":VISUAL_SCRIPT_NODE,
	"VisualScriptPropertyGet":VISUAL_SCRIPT_NODE,
	"VisualScriptPropertySet":VISUAL_SCRIPT_NODE,
	"VisualScriptResourcePath":VISUAL_SCRIPT_NODE,
	"VisualScriptReturn":VISUAL_SCRIPT_NODE,
	"VisualScriptSceneNode":VISUAL_SCRIPT_NODE,
	"VisualScriptSceneTree":VISUAL_SCRIPT_NODE,
	"VisualScriptSelect":VISUAL_SCRIPT_NODE,
	"VisualScriptSelf":VISUAL_SCRIPT_NODE,
	"VisualScriptSequence":VISUAL_SCRIPT_NODE,
	"VisualScriptSubCall": VISUAL_SCRIPT_NODE,
	"VisualScriptSwitch":VISUAL_SCRIPT_NODE,
	"VisualScriptTypeCast":VISUAL_SCRIPT_NODE,
	"VisualScriptVariableGet":VISUAL_SCRIPT_NODE,
	"VisualScriptVariableSet":VISUAL_SCRIPT_NODE,
	"VisualScriptWhile": VISUAL_SCRIPT_NODE,
	"VisualScriptYield": VISUAL_SCRIPT_NODE,
	"VisualScriptYieldSignal":VISUAL_SCRIPT_NODE,
	"VisualShaderNode": RESOURCE,
	"VisualShaderNodeBooleanConstant": VISUAL_SHADER_NODE,
	"VisualShaderNodeUniform": VISUAL_SHADER_NODE,
	"VisualShaderNodeBooleanUniform": VISUAL_SHADER_NODE_UNIFORM,
	"VisualShaderNodeColorUniform": VISUAL_SHADER_NODE_UNIFORM,
	"VisualShaderNodeScalarUniform": VISUAL_SHADER_NODE_UNIFORM,
	"VisualShaderNodeTextureUniform": VISUAL_SHADER_NODE_UNIFORM,
	"VisualShaderNodeCubeMapUniform":VISUAL_SHADER_NODE_TEXTURE_UNIFORM,
	"VisualShaderNodeTextureUniformTriplanar":VISUAL_SHADER_NODE_TEXTURE_UNIFORM,
	"VisualShaderNodeTransformUniform": VISUAL_SHADER_NODE_UNIFORM,
	"VisualShaderNodeVec3Uniform": VISUAL_SHADER_NODE_UNIFORM,
	"VisualShaderNodeColorConstant": VISUAL_SHADER_NODE,
	"VisualShaderNodeColorFunc": VISUAL_SHADER_NODE,
	"VisualShaderNodeColorOp": VISUAL_SHADER_NODE,
	"VisualShaderNodeCompare": VISUAL_SHADER_NODE,
	"VisualShaderNodeCubeMap": VISUAL_SHADER_NODE,
	"VisualShaderNodeCustom": VISUAL_SHADER_NODE,
	"VisualShaderNodeDeterminant": VISUAL_SHADER_NODE,
	"VisualShaderNodeDotProduct": VISUAL_SHADER_NODE,
	"VisualShaderNodeGroupBase": VISUAL_SHADER_NODE,
	"VisualShaderNodeExpression":VISUAL_SHADER_NODE_GROUP_BASE,
	"VisualShaderNodeGlobalExpression":VISUAL_SHADER_NODE_EXPRESSION,
	"VisualShaderNodeFaceForward": VISUAL_SHADER_NODE,
	"VisualShaderNodeFresnel": VISUAL_SHADER_NODE,
	"VisualShaderNodeIf": VISUAL_SHADER_NODE,
	"VisualShaderNodeInput": VISUAL_SHADER_NODE,
	"VisualShaderNodeIs": VISUAL_SHADER_NODE,
	"VisualShaderNodeOuterProduct": VISUAL_SHADER_NODE,
	"VisualShaderNodeOutput": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarClamp": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarConstant": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarDerivativeFunc": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarFunc": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarInterp": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarOp": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarSmoothStep": VISUAL_SHADER_NODE,
	"VisualShaderNodeSwitch": VISUAL_SHADER_NODE,
	"VisualShaderNodeScalarSwitch": VISUAL_SHADER_NODE_SWITCH,
	"VisualShaderNodeTexture": VISUAL_SHADER_NODE,
	"VisualShaderNodeTransformCompose": VISUAL_SHADER_NODE,
	"VisualShaderNodeTransformConstant": VISUAL_SHADER_NODE,
	"VisualShaderNodeTransformDecompose": VISUAL_SHADER_NODE,
	"VisualShaderNodeTransformFunc": VISUAL_SHADER_NODE,
	"VisualShaderNodeTransformMult": VISUAL_SHADER_NODE,
	"VisualShaderNodeTransformVecMult": VISUAL_SHADER_NODE,
	"VisualShaderNodeUniformRef": VISUAL_SHADER_NODE,
	"VisualShaderNodeVec3Constant": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorClamp": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorCompose": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorDecompose": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorDerivativeFunc": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorDistance": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorFunc": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorInterp": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorLen": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorOp": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorRefract": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorScalarMix": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorScalarSmoothStep": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorScalarStep": VISUAL_SHADER_NODE,
	"VisualShaderNodeVectorSmoothStep": VISUAL_SHADER_NODE,
	"World": RESOURCE,
	"World2D": RESOURCE,
	"X509Certificate":RESOURCE,
	"AnimationTrackEditPlugin":REFERENCE,
	"AudioEffectInstance":REFERENCE,
	"AudioEffectSpectrumAnalyzerInstance":AUDIO_EFFECT_INSTANCE,
	"AudioStreamPlayback":REFERENCE,
	"AudioStreamPlaybackResampled": AUDIO_STREAM_PLAYBACK,
	"AudioStreamGeneratorPlayback": AUDIO_STREAM_PLAYBACK_RESAMPLED,
	"CameraFeed":REFERENCE,
	"CharFXTransform":REFERENCE,
	"ConfigFile":REFERENCE,
	"Crypto":REFERENCE,
	"DTLSServer":REFERENCE,
	"Directory": REFERENCE,
	"EditorExportPlugin": REFERENCE,
	"EditorFeatureProfile": REFERENCE,
	"ResourceImporter": REFERENCE,
	"EditorImportPlugin":RESOURCE_IMPORTER,
	"EditorInspectorPlugin":REFERENCE,
	"EditorResourceConversionPlugin":REFERENCE,
	"EditorResourcePreviewGenerator":REFERENCE,
	"EditorSceneImporter":REFERENCE,
	"EditorScenePostImport":REFERENCE,
	"EditorScript":REFERENCE,
	"SpatialGizmo":REFERENCE,
	"EncodedObjectAsID":REFERENCE,
	"Expression":REFERENCE,
	"File":REFERENCE,
	"FuncRef": REFERENCE,
	"GDNative":REFERENCE,
	"GDScriptFunctionState":REFERENCE,
	"HTTPClient":REFERENCE,
	"HashingContext": REFERENCE,
	"JSONParseResult":REFERENCE,
	"JavaClass": REFERENCE,
	"KinematicCollision": REFERENCE,
	"KinematicCollision2D": REFERENCE,
	"MeshDataTool":REFERENCE,
	"MultiplayerAPI": REFERENCE,
	"PacketPeer":REFERENCE,
	"Mutex": REFERENCE,
	"PCKPacker": REFERENCE,
	"PackedDataContainerRef":REFERENCE,
	"Physics2DShapeQueryParameters": REFERENCE,
	"Physics2DShapeQueryResult": REFERENCE,
	"Physics2DTestMotionResult": REFERENCE,
	"PhysicsShapeQueryParameters": REFERENCE,
	"PhysicsShapeQueryResult": REFERENCE,
	"RandomNumberGenerator":REFERENCE,
	"RegEx": REFERENCE,
	"RegExMatch":REFERENCE,
	"ResourceFormatLoader": REFERENCE,
	"ResourceFormatSaver":REFERENCE,
	"ResourceInteractiveLoader": REFERENCE,
	"SceneState":REFERENCE,
	"SceneTreeTimer": REFERENCE,
	"Semaphore": REFERENCE,
	"SkinReference":REFERENCE,
	"SpatialVelocityTracker":REFERENCE,
	"StreamPeer":REFERENCE,
	"SurfaceTool": REFERENCE,
	"TCP_Server":REFERENCE,
	"Thread":REFERENCE,
	"TriangleMesh":REFERENCE,
	"UDPServer": REFERENCE,
	"UPNP":REFERENCE,
	"UPNPDevice":REFERENCE,
	"VisualScriptFunctionState": REFERENCE,
	"WeakRef": REFERENCE,
	"WebRTCPeerConnection": REFERENCE,
	"XMLParser": REFERENCE,
	"NetworkedMultiplayerPeer":PACKET_PEER,
	"WebRTCDataChannel":PACKET_PEER,
	"WebSocketMultiplayerPeer":NETWORK_MULTIPLAYER_PEER,
	"ARVRPositionalTracker":OBJECT,
	"ARVRServer":OBJECT,
	"AudioServer": OBJECT,
	"CameraServer":OBJECT,
	"ClassDB": OBJECT,
	"EditorFileSystemDirectory": OBJECT,
	"EditorNavigationMeshGenerator": OBJECT,
	"EditorSelection":OBJECT,
	"EditorVCSInterface": OBJECT,
	"Engine":OBJECT,
	"Geometry":OBJECT,
	"IP": OBJECT,
	"Input": OBJECT,
	"InputMap":OBJECT,
	"JNISingleton":OBJECT,
	"JSON":OBJECT,
	"JSONRPC": OBJECT,
	"JavaClassWrapper": OBJECT,
	"JavaScript":OBJECT,
	"MainLoop":OBJECT,
	"Marshalls": OBJECT,
	"OS": OBJECT,
	"Performance": OBJECT,
	"Physics2DDirectBodyState":OBJECT,
	"Physics2DDirectSpaceState": OBJECT,
	"Physics2DServer":OBJECT,
	"PhysicsDirectBodyState":OBJECT,
	"PhysicsDirectSpaceState": OBJECT,
	"PhysicsServer":OBJECT,
	"ProjectSettings":OBJECT,
	"ResourceLoader": OBJECT,
	"ResourceSaver":OBJECT,
	"TranslationServer":OBJECT,
	"TreeItem":OBJECT,
	"UndoRedo":OBJECT,
	"VisualScriptEditor": OBJECT,
	"VisualServer":OBJECT,
	}


func _on_Button_pressed() -> void:
	scan_project($LineEdit.get_text())
	for i in ["","mobile", "others"]: scan_res(i) # empty string so the function will give a completed result.
	create_output()

func create_output() -> void:
	var Output := create_file("res://output.txt", File.WRITE)
<<<<<<< HEAD
	Output.store_line("Used modules:")
	for i in modules: Output.store_line(i)
	Output.store_line("")
	Output.store_line("Unused nodes:")
	for i in heirdomOwners:
		if not i in used_res:
			Output.store_line(i)
	OS.shell_open(ProjectSettings.globalize_path("res://output.txt"))
=======
	Output.store_line("Modules:")
	for i in modules: Output.store_line(i)
	Output.store_line("")
	Output.store_line("Nodes:")
	Output.store_line("")
	for i in used_res: Output.store_line(i)
	print("look for Output.txt on this project folder!")
>>>>>>> fa14117592268ecc55a8701c9c15f225f3495ae3


func scan_res(platform: String) -> void:
	var param:  String
	for used in used_res:
		if used.begins_with("ARVR"):
			match  platform:
				"mobile":
					param = "mobile_vr"
					on_module(param)
					continue
				_:
					param = "camera"
					on_module(param)
					param = "webxr"
					on_module(param)

		match used:
			"BakedLightmap":                                            # TODO - See what the specific BakedLightmap uses.
				param = "embree"
				for i in ["lightmapper_cpu","raycast","denoise"]: 
					on_module(param)

			"BulletPhysicsServer","CollisionObject","Joint","RigidBody","Shape","SoftBody":  
				param = "bullet"                                        # TODO - See if OS.physics/3d/active_soft_world is set to true or false. If false. don't activate it.
			"Gridmap":                                 param = "gridmap"
			"CSGShape":                                param = "csg"
			"SpatialMaterial":                         param = "xatlas_unwrap"
			"CollisionPolygon", "CollisionShape":      param = "vhacd"  # TODO - be more especific. if the imported asset has the hint, then set it, otherwise, don't, unless a 3D script has a create_convex_collision() (meaning it wil be used at runtime)
			"Navigation","NavigationMeshInstance":     param = "recast" # TODO - Navigation only if there's a navmesh_add()

			"Label", "RichTextLabel", "DynamicFont", "LineEdit", "TextEdit", "WindowDialog","PopupMenu","GraphNode", "Button", "LinkButton", "ItemList","Tabs","Tree":   # I'm assuming here, since the default font uses it and, unless all the fonts are bitmap fonts, there's no way it won't use it. 
				param = "freetype"
			"HTTPRequest":                                                    param = "mbedtls"
			"WebSocketClient","WebSocketPeer","WebSocketServer":              param = "websocket"
			"WebRTCPeerConnection","WebRTCDataChannel","WebRTCMultiplayer":   param = "webrtc"
			"NetworkedMultiplayerENet", "NetworkedMultiplayerPeer":           param = "enet"
			"UPNP":                                                           param = "upnp"
			"RegEx":                                                          param = "regex"
			"OpenSimplexNoise":                                               param = "opensimplex"
			"AudioStreamPlayer":                                              param = "stb_vorbis"
			"JSONRPC":                                                        param = "jsonrpc"
		on_module(param)

	for i in used_res:
		look_for_inheritance(i)
#	create_output(ingredients["dir"]["Output_Path"],platform)


func look_for_inheritance(heir: String) -> void:
	var valid: bool = inherit_from[heir]
	if valid:
		var heir_idx  : int    = inherit_from[heir]
		var heir_name : String = heirdomOwners[heir_idx]
		add_class(heir_name)
		look_for_inheritance(heir_name)


func add_class(value: String) -> void:
	if not value in used_res: used_res.append(value)


func scan_project(path: String) -> void: # Recursive function
	var file:  String
	var dir := Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	file =  dir.get_next()

	while file != "":
		var completePath := path + "/"+file
		if not file.begins_with("."):
			if dir.current_is_dir():
					scan_project(completePath)
			else:
				var extension := file.get_extension()
				var param     :  String

				match extension:
					"webm", "ogv":                           # I think I won't need this anymore on 4.0
						param = "ogg"                        # It needs a parameter anyway so it's better to repeat it.
						for i in ["opus", "vorbis","theora", "ogg"]:
							on_module(i)
						continue
					"hdr","ldr","pic":
						param = "cvtt"
						on_module(param)
						param = "hdr"
					"pvr","bmp","dds","tga","webp","svg","opus","webm","fbx": 
						param = extension
					"ttf","otf":    param = "freetype"
					"mp3","mp3str": param = "minimp3"
					"ogg","oggstr": param = "ogg"
					"jpg, jpeg":    param = "jpg"
					"gdns":         param = "gdnative" 
					"exr":          param = "tinyexr"
					"cs":           param = "mono"
					"vs":           param = "visual_script"
					"gd":
						param = "gdscript" 
						continue
					"gd", "tscn","import": 
						look_for(completePath)
				on_module(param)
		file = dir.get_next()


func on_module(param: String) -> void:
	if not param in modules:
		var whereidx := modules.find(param)
		if whereidx != -1: modules[whereidx] = param
		else: modules.append(param)


func look_for(path: String) -> void:
	Create_temp(path)
	match path.get_extension():
		"gd","tscn": # because you can have a local script into a scene
			var linecomment      := "[^\\v\"']*#+.*";                    var multilinecomment := '(?ms)["\']{3,}.*["\']{3,}$'
			var commentsarray    := [multilinecomment, linecomment]
			var extends_gd       := "^\\h*extends\\h+\\K[a-zA-Z_]\\w*";  var newvar           := "[a-zA-Z_]\\w+(?=\\.new\\(\\))"

			var sub_res := "sub_resource type=\"\\K\\w*";                var nodetscn         := "node name=\"\\w*\" type=\"\\K\\w*"

			var declaredarray    := [extends_gd,newvar,sub_res,nodetscn]
			for comment in commentsarray:  regex_find(comment, "GD_COMMENT")
			for declared in declaredarray: regex_find(declared, "DECLARATION")


func Create_temp(path: String) -> void:
	var file := create_file(path, File.READ)
	temp      = file.get_as_text()
	file.close()


func create_file(path: String, MODE: int) -> File:
	var file := File.new()
	file.open(path, MODE)
	return file



var temp : String
func regex_find(pattern: String, type: String) -> void:
	var reg := RegEx.new()
	reg.compile(pattern)
	var result = reg.search_all(temp)
	if result.size() != 0:
			match type:
				"GD_COMMENT":      for r in result: temp = temp.replace(r.get_string(), "")
				"DECLARATION":     for r in result: add_class(r.get_string())
	reg.clear()





func _on_dir_pressed() -> void:
	$"../../FileDialog".popup()


func _on_FileDialog_dir_selected(dir: String) -> void:
	$LineEdit.text = dir
