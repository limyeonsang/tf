¶
²
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
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
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ÞÃ
¨
&my_sequential_model/flexible_dense_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&my_sequential_model/flexible_dense_1/w
¡
:my_sequential_model/flexible_dense_1/w/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_1/w*
_output_shapes

:*
dtype0
¤
&my_sequential_model/flexible_dense_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&my_sequential_model/flexible_dense_1/b

:my_sequential_model/flexible_dense_1/b/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_1/b*
_output_shapes
:*
dtype0
¨
&my_sequential_model/flexible_dense_2/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&my_sequential_model/flexible_dense_2/w
¡
:my_sequential_model/flexible_dense_2/w/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_2/w*
_output_shapes

:*
dtype0
¤
&my_sequential_model/flexible_dense_2/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&my_sequential_model/flexible_dense_2/b

:my_sequential_model/flexible_dense_2/b/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_2/b*
_output_shapes
:*
dtype0

NoOpNoOp
ã
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B
|
dense_1
dense_2
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
`
w
b
	variables
trainable_variables
regularization_losses
	keras_api

0
	1
2
3

0
	1
2
3
 
­
layer_regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses

layers
metrics
 
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_1/w$dense_1/w/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_1/b$dense_1/b/.ATTRIBUTES/VARIABLE_VALUE

0
	1

0
	1
 
­
layer_regularization_losses

	variables
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses

layers
metrics
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_2/w$dense_2/w/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_2/b$dense_2/b/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
layer_regularization_losses
	variables
trainable_variables
layer_metrics
 non_trainable_variables
regularization_losses

!layers
"metrics
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Ø
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1&my_sequential_model/flexible_dense_1/w&my_sequential_model/flexible_dense_1/b&my_sequential_model/flexible_dense_2/w&my_sequential_model/flexible_dense_2/b*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_1119
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename:my_sequential_model/flexible_dense_1/w/Read/ReadVariableOp:my_sequential_model/flexible_dense_1/b/Read/ReadVariableOp:my_sequential_model/flexible_dense_2/w/Read/ReadVariableOp:my_sequential_model/flexible_dense_2/b/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8 *&
f!R
__inference__traced_save_1192
¸
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename&my_sequential_model/flexible_dense_1/w&my_sequential_model/flexible_dense_1/b&my_sequential_model/flexible_dense_2/w&my_sequential_model/flexible_dense_2/b*
Tin	
2*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_1214À 
ý
û
__inference__wrapped_model_1033
input_1U
Cmy_sequential_model_flexible_dense_1_matmul_readvariableop_resource:N
@my_sequential_model_flexible_dense_1_add_readvariableop_resource:U
Cmy_sequential_model_flexible_dense_2_matmul_readvariableop_resource:N
@my_sequential_model_flexible_dense_2_add_readvariableop_resource:
identity¢:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp¢7my_sequential_model/flexible_dense_1/add/ReadVariableOp¢:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp¢7my_sequential_model/flexible_dense_2/add/ReadVariableOpü
:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOpReadVariableOpCmy_sequential_model_flexible_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02<
:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOpã
+my_sequential_model/flexible_dense_1/MatMulMatMulinput_1Bmy_sequential_model/flexible_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+my_sequential_model/flexible_dense_1/MatMulï
7my_sequential_model/flexible_dense_1/add/ReadVariableOpReadVariableOp@my_sequential_model_flexible_dense_1_add_readvariableop_resource*
_output_shapes
:*
dtype029
7my_sequential_model/flexible_dense_1/add/ReadVariableOp
(my_sequential_model/flexible_dense_1/addAddV25my_sequential_model/flexible_dense_1/MatMul:product:0?my_sequential_model/flexible_dense_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(my_sequential_model/flexible_dense_1/addü
:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOpReadVariableOpCmy_sequential_model_flexible_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02<
:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp
+my_sequential_model/flexible_dense_2/MatMulMatMul,my_sequential_model/flexible_dense_1/add:z:0Bmy_sequential_model/flexible_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+my_sequential_model/flexible_dense_2/MatMulï
7my_sequential_model/flexible_dense_2/add/ReadVariableOpReadVariableOp@my_sequential_model_flexible_dense_2_add_readvariableop_resource*
_output_shapes
:*
dtype029
7my_sequential_model/flexible_dense_2/add/ReadVariableOp
(my_sequential_model/flexible_dense_2/addAddV25my_sequential_model/flexible_dense_2/MatMul:product:0?my_sequential_model/flexible_dense_2/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(my_sequential_model/flexible_dense_2/addî
IdentityIdentity,my_sequential_model/flexible_dense_2/add:z:0;^my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp8^my_sequential_model/flexible_dense_1/add/ReadVariableOp;^my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp8^my_sequential_model/flexible_dense_2/add/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2x
:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp2r
7my_sequential_model/flexible_dense_1/add/ReadVariableOp7my_sequential_model/flexible_dense_1/add/ReadVariableOp2x
:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp2r
7my_sequential_model/flexible_dense_2/add/ReadVariableOp7my_sequential_model/flexible_dense_2/add/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
	
ó
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_1129

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
Æ
"__inference_signature_wrapper_1119
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_10332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
	
ó
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_1063

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ö
2__inference_my_sequential_model_layer_call_fn_1084
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_10702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ç
Â
 __inference__traced_restore_1214
file_prefixI
7assignvariableop_my_sequential_model_flexible_dense_1_w:G
9assignvariableop_1_my_sequential_model_flexible_dense_1_b:K
9assignvariableop_2_my_sequential_model_flexible_dense_2_w:G
9assignvariableop_3_my_sequential_model_flexible_dense_2_b:

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¿
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ë
valueÁB¾B$dense_1/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_1/b/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slicesÄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¶
AssignVariableOpAssignVariableOp7assignvariableop_my_sequential_model_flexible_dense_1_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¾
AssignVariableOp_1AssignVariableOp9assignvariableop_1_my_sequential_model_flexible_dense_1_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¾
AssignVariableOp_2AssignVariableOp9assignvariableop_2_my_sequential_model_flexible_dense_2_wIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¾
AssignVariableOp_3AssignVariableOp9assignvariableop_3_my_sequential_model_flexible_dense_2_bIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpº

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4¬

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ó

__inference__traced_save_1192
file_prefixE
Asavev2_my_sequential_model_flexible_dense_1_w_read_readvariableopE
Asavev2_my_sequential_model_flexible_dense_1_b_read_readvariableopE
Asavev2_my_sequential_model_flexible_dense_2_w_read_readvariableopE
Asavev2_my_sequential_model_flexible_dense_2_b_read_readvariableop
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
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
ShardedFilename¹
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ë
valueÁB¾B$dense_1/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_1/b/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesÊ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Asavev2_my_sequential_model_flexible_dense_1_w_read_readvariableopAsavev2_my_sequential_model_flexible_dense_1_b_read_readvariableopAsavev2_my_sequential_model_flexible_dense_2_w_read_readvariableopAsavev2_my_sequential_model_flexible_dense_2_b_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
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

identity_1Identity_1:output:0*7
_input_shapes&
$: ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
Õ
ß
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_1070
input_1'
flexible_dense_1_1048:#
flexible_dense_1_1050:'
flexible_dense_2_1064:#
flexible_dense_2_1066:
identity¢(flexible_dense_1/StatefulPartitionedCall¢(flexible_dense_2/StatefulPartitionedCall·
(flexible_dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_1flexible_dense_1_1048flexible_dense_1_1050*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_10472*
(flexible_dense_1/StatefulPartitionedCallá
(flexible_dense_2/StatefulPartitionedCallStatefulPartitionedCall1flexible_dense_1/StatefulPartitionedCall:output:0flexible_dense_2_1064flexible_dense_2_1066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_10632*
(flexible_dense_2/StatefulPartitionedCallÛ
IdentityIdentity1flexible_dense_2/StatefulPartitionedCall:output:0)^flexible_dense_1/StatefulPartitionedCall)^flexible_dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2T
(flexible_dense_1/StatefulPartitionedCall(flexible_dense_1/StatefulPartitionedCall2T
(flexible_dense_2/StatefulPartitionedCall(flexible_dense_2/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
§

/__inference_flexible_dense_1_layer_call_fn_1138

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_10472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ó
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_1047

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

/__inference_flexible_dense_2_layer_call_fn_1157

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_10632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ó
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_1148

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¿7

dense_1
dense_2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
#_default_save_signature
*$&call_and_return_all_conditional_losses
%__call__"´
_tf_keras_model{"name": "my_sequential_model", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "MySequentialModel", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "MySequentialModel"}}

w
	b

	variables
trainable_variables
regularization_losses
	keras_api
*&&call_and_return_all_conditional_losses
'__call__"å
_tf_keras_layerË{"name": "flexible_dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "FlexibleDense", "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 3]}}

w
b
	variables
trainable_variables
regularization_losses
	keras_api
*(&call_and_return_all_conditional_losses
)__call__"å
_tf_keras_layerË{"name": "flexible_dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "FlexibleDense", "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 3]}}
<
0
	1
2
3"
trackable_list_wrapper
<
0
	1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
layer_regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses

layers
metrics
%__call__
#_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
8:62&my_sequential_model/flexible_dense_1/w
4:22&my_sequential_model/flexible_dense_1/b
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
layer_regularization_losses

	variables
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses

layers
metrics
'__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
8:62&my_sequential_model/flexible_dense_2/w
4:22&my_sequential_model/flexible_dense_2/b
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
layer_regularization_losses
	variables
trainable_variables
layer_metrics
 non_trainable_variables
regularization_losses

!layers
"metrics
)__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ý2Ú
__inference__wrapped_model_1033¶
²
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
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
2
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_1070Á
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
û2ø
2__inference_my_sequential_model_layer_call_fn_1084Á
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ô2ñ
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_1129¢
²
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
annotationsª *
 
Ù2Ö
/__inference_flexible_dense_1_layer_call_fn_1138¢
²
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
annotationsª *
 
ô2ñ
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_1148¢
²
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
annotationsª *
 
Ù2Ö
/__inference_flexible_dense_2_layer_call_fn_1157¢
²
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
annotationsª *
 
ÉBÆ
"__inference_signature_wrapper_1119input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
__inference__wrapped_model_1033m	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿª
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_1129\	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_flexible_dense_1_layer_call_fn_1138O	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿª
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_1148\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_flexible_dense_2_layer_call_fn_1157O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ°
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_1070_	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_my_sequential_model_layer_call_fn_1084R	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
"__inference_signature_wrapper_1119x	;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ