çň
ŃŁ
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
ž
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
 "serve*2.3.02v2.3.0-rc2-23-gb36436b0878ą
l
linear/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
linear/w
e
linear/w/Read/ReadVariableOpReadVariableOplinear/w*
_output_shapes

:*
dtype0
h
linear/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
linear/b
a
linear/b/Read/ReadVariableOpReadVariableOplinear/b*
_output_shapes
:*
dtype0

NoOpNoOp
ť
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ö
valueěBé Bâ

layer_with_weights-0
layer-0
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
`
w
	b

	variables
trainable_variables
regularization_losses
	keras_api
 

0
	1

0
	1
 
­
non_trainable_variables
layer_regularization_losses
	variables

layers
layer_metrics
trainable_variables
regularization_losses
metrics
 
OM
VARIABLE_VALUElinear/w1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElinear/b1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUE

0
	1

0
	1
 
­
non_trainable_variables
layer_regularization_losses

	variables

layers
layer_metrics
trainable_variables
regularization_losses
metrics
 
 

0
 
 
 
 
 
 
 

serving_default_linear_inputPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
Ě
StatefulPartitionedCallStatefulPartitionedCallserving_default_linear_inputlinear/wlinear/b*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_508
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ö
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelinear/w/Read/ReadVariableOplinear/b/Read/ReadVariableOpConst*
Tin
2*
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
__inference__traced_save_602
Š
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelinear/wlinear/b*
Tin
2*
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
__inference__traced_restore_618á

Ł
C__inference_sequential_layer_call_and_return_conditional_losses_526

inputs

linear_520

linear_522
identity˘linear/StatefulPartitionedCallÖ
linear/StatefulPartitionedCallStatefulPartitionedCallinputs
linear_520
linear_522*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_1492 
linear/StatefulPartitionedCall
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
í

(__inference_sequential_layer_call_fn_479
linear_input
unknown
	unknown_0
identity˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCalllinear_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_namelinear_input
Ť
Ł
C__inference_sequential_layer_call_and_return_conditional_losses_472

inputs

linear_466

linear_468
identity˘linear/StatefulPartitionedCall
linear/StatefulPartitionedCallStatefulPartitionedCallinputs
linear_466
linear_468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4342 
linear/StatefulPartitionedCall
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
}
(__inference_sequential_layer_call_fn_535

inputs
unknown
	unknown_0
identity˘StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 
Ł
?__inference_linear_layer_call_and_return_conditional_losses_554

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:::O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
í

(__inference_sequential_layer_call_fn_497
linear_input
unknown
	unknown_0
identity˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCalllinear_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_namelinear_input
ô
x
__inference_call_573

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:::O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
}
(__inference_sequential_layer_call_fn_544

inputs
unknown
	unknown_0
identity˘StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô
x
__inference_call_149

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:::O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ť
Ł
C__inference_sequential_layer_call_and_return_conditional_losses_490

inputs

linear_484

linear_486
identity˘linear/StatefulPartitionedCall
linear/StatefulPartitionedCallStatefulPartitionedCallinputs
linear_484
linear_486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4342 
linear/StatefulPartitionedCall
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ć
Ľ
__inference__wrapped_model_420
linear_input
sequential_linear_414
sequential_linear_416
identity˘)sequential/linear/StatefulPartitionedCall
)sequential/linear/StatefulPartitionedCallStatefulPartitionedCalllinear_inputsequential_linear_414sequential_linear_416*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_1492+
)sequential/linear/StatefulPartitionedCall˛
IdentityIdentity2sequential/linear/StatefulPartitionedCall:output:0*^sequential/linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2V
)sequential/linear/StatefulPartitionedCall)sequential/linear/StatefulPartitionedCall:U Q
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_namelinear_input
Ř
ť
__inference__traced_save_602
file_prefix'
#savev2_linear_w_read_readvariableop'
#savev2_linear_b_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpoints
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
value3B1 B+_temp_ff7ad73a467c4a88823d5c84d24af16b/part2	
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
ShardedFilename/shardŚ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_linear_w_read_readvariableop#savev2_linear_b_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2ş
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesĄ
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

identity_1Identity_1:output:0*'
_input_shapes
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
Ň
y
$__inference_linear_layer_call_fn_563

inputs
unknown
	unknown_0
identity˘StatefulPartitionedCallď
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ł
C__inference_sequential_layer_call_and_return_conditional_losses_517

inputs

linear_511

linear_513
identity˘linear/StatefulPartitionedCallÖ
linear/StatefulPartitionedCallStatefulPartitionedCallinputs
linear_511
linear_513*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_1492 
linear/StatefulPartitionedCall
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 
Ł
?__inference_linear_layer_call_and_return_conditional_losses_434

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:::O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˝
Š
C__inference_sequential_layer_call_and_return_conditional_losses_460
linear_input

linear_454

linear_456
identity˘linear/StatefulPartitionedCall
linear/StatefulPartitionedCallStatefulPartitionedCalllinear_input
linear_454
linear_456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4342 
linear/StatefulPartitionedCall
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:U Q
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_namelinear_input
Ň
­
__inference__traced_restore_618
file_prefix
assignvariableop_linear_w
assignvariableop_1_linear_b

identity_3˘AssignVariableOp˘AssignVariableOp_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slicesş
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_linear_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1 
AssignVariableOp_1AssignVariableOpassignvariableop_1_linear_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
˝
Š
C__inference_sequential_layer_call_and_return_conditional_losses_451
linear_input

linear_445

linear_447
identity˘linear/StatefulPartitionedCall
linear/StatefulPartitionedCallStatefulPartitionedCalllinear_input
linear_445
linear_447*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4342 
linear/StatefulPartitionedCall
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:U Q
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_namelinear_input
Ŕ
|
!__inference_signature_wrapper_508
linear_input
unknown
	unknown_0
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCalllinear_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__wrapped_model_4202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_namelinear_input"¸L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ł
serving_default
E
linear_input5
serving_default_linear_input:0˙˙˙˙˙˙˙˙˙:
linear0
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:§:
ş
layer_with_weights-0
layer-0
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
_default_save_signature
*&call_and_return_all_conditional_losses
__call__"Č
_tf_keras_sequentialŠ{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "linear_input"}}, {"class_name": "Linear", "config": {"name": "linear", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "units": 1}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "linear_input"}}, {"class_name": "Linear", "config": {"name": "linear", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "units": 1}}]}}, "training_config": {"loss": "mse", "metrics": ["mae"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.01, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}

w
	b

	variables
trainable_variables
regularization_losses
	keras_api
*&call_and_return_all_conditional_losses
__call__
call"ĺ
_tf_keras_layerË{"class_name": "Linear", "name": "linear", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "linear", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "units": 1}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
"
	optimizer
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
non_trainable_variables
layer_regularization_losses
	variables

layers
layer_metrics
trainable_variables
regularization_losses
metrics
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
:2linear/w
:2linear/b
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
non_trainable_variables
layer_regularization_losses

	variables

layers
layer_metrics
trainable_variables
regularization_losses
metrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
á2Ţ
__inference__wrapped_model_420ť
˛
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *+˘(
&#
linear_input˙˙˙˙˙˙˙˙˙
Ú2×
C__inference_sequential_layer_call_and_return_conditional_losses_451
C__inference_sequential_layer_call_and_return_conditional_losses_517
C__inference_sequential_layer_call_and_return_conditional_losses_526
C__inference_sequential_layer_call_and_return_conditional_losses_460Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
î2ë
(__inference_sequential_layer_call_fn_479
(__inference_sequential_layer_call_fn_535
(__inference_sequential_layer_call_fn_544
(__inference_sequential_layer_call_fn_497Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
é2ć
?__inference_linear_layer_call_and_return_conditional_losses_554˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Î2Ë
$__inference_linear_layer_call_fn_563˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ž2ť
__inference_call_573˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5B3
!__inference_signature_wrapper_508linear_input
__inference__wrapped_model_420l	5˘2
+˘(
&#
linear_input˙˙˙˙˙˙˙˙˙
Ş "/Ş,
*
linear 
linear˙˙˙˙˙˙˙˙˙g
__inference_call_573O	/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙
?__inference_linear_layer_call_and_return_conditional_losses_554\	/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 w
$__inference_linear_layer_call_fn_563O	/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙ą
C__inference_sequential_layer_call_and_return_conditional_losses_451j	=˘:
3˘0
&#
linear_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ą
C__inference_sequential_layer_call_and_return_conditional_losses_460j	=˘:
3˘0
&#
linear_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ť
C__inference_sequential_layer_call_and_return_conditional_losses_517d	7˘4
-˘*
 
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ť
C__inference_sequential_layer_call_and_return_conditional_losses_526d	7˘4
-˘*
 
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
(__inference_sequential_layer_call_fn_479]	=˘:
3˘0
&#
linear_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
(__inference_sequential_layer_call_fn_497]	=˘:
3˘0
&#
linear_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
(__inference_sequential_layer_call_fn_535W	7˘4
-˘*
 
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
(__inference_sequential_layer_call_fn_544W	7˘4
-˘*
 
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙Ą
!__inference_signature_wrapper_508|	E˘B
˘ 
;Ş8
6
linear_input&#
linear_input˙˙˙˙˙˙˙˙˙"/Ş,
*
linear 
linear˙˙˙˙˙˙˙˙˙