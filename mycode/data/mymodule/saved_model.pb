ÌC
Ñ£
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.3.02v2.3.0-rc2-23-gb36436b08788
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0

NoOpNoOp
¬
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*h
value_B] BW

x

signatures
:8
VARIABLE_VALUEVariablex/.ATTRIBUTES/VARIABLE_VALUE
 
R
serving_default_aPlaceholder*
_output_shapes
: *
dtype0*
shape: 
¡
StatefulPartitionedCallStatefulPartitionedCallserving_default_aVariable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_235
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *%
f R
__inference__traced_save_261

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_restore_274ï,
±
b
!__inference_signature_wrapper_235
a
unknown
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallaunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *!
fR
__inference_addprint_2232
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :22
StatefulPartitionedCallStatefulPartitionedCall:9 5

_output_shapes
: 

_user_specified_namea
Ï
t
__inference_addprint_223
a 
assignaddvariableop_resource
identity¢AssignAddVariableOp¢PrintV2
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourcea*
_output_shapes
 *
dtype02
AssignAddVariableOp¥
StringFormat/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes
: *
dtype02
StringFormat/ReadVariableOp
StringFormatStringFormat#StringFormat/ReadVariableOp:value:0*

T
2*
_output_shapes
: *
placeholder{}*
template{}2
StringFormatJ
PrintV2PrintV2StringFormat:output:0*
_output_shapes
 2	
PrintV2
ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes
: *
dtype02
ReadVariableOpy
IdentityIdentityReadVariableOp:value:0^AssignAddVariableOp^PrintV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :2*
AssignAddVariableOpAssignAddVariableOp2
PrintV2PrintV2:9 5

_output_shapes
: 

_user_specified_namea


__inference__traced_save_261
file_prefix'
#savev2_variable_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_bcaf38affa5e4c5f92b3f1ca34cc71f8/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDBx/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
SaveV2/shape_and_slicesà
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: 
ß

w
__inference__traced_restore_274
file_prefix
assignvariableop_variable

identity_2¢AssignVariableOpÂ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDBx/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
RestoreV2/shape_and_slicesµ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp9
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1m

Identity_2IdentityIdentity_1:output:0^AssignVariableOp*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"¸L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*|
serving_defaulti

a
serving_default_a:0 +
output_0
StatefulPartitionedCall:0 tensorflow/serving/predict:¦
C
x

signatures
addprint"
_generic_user_object
: 2Variable
,
serving_default"
signature_map
½2º
__inference_addprint_223
²
FullArgSpec
args
ja
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢	
 
*B(
!__inference_signature_wrapper_235aC
__inference_addprint_223'¢
¢


a 
ª " l
!__inference_signature_wrapper_235G¢
¢ 
ª

a

a ""ª

output_0
output_0 