ä
ä
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
.
Identity

input"T
output"T"	
Ttype
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
Á
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
executor_typestring ¨
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
 "serve*2.8.02v2.8.0-0-g3f878cff5b68ÍÆ
¦
$word2_vec_1/w2v_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*5
shared_name&$word2_vec_1/w2v_embedding/embeddings

8word2_vec_1/w2v_embedding/embeddings/Read/ReadVariableOpReadVariableOp$word2_vec_1/w2v_embedding/embeddings* 
_output_shapes
:
-*
dtype0
¢
"word2_vec_1/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*3
shared_name$"word2_vec_1/embedding_1/embeddings

6word2_vec_1/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp"word2_vec_1/embedding_1/embeddings* 
_output_shapes
:
-*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
´
+Adam/word2_vec_1/w2v_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*<
shared_name-+Adam/word2_vec_1/w2v_embedding/embeddings/m
­
?Adam/word2_vec_1/w2v_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/word2_vec_1/w2v_embedding/embeddings/m* 
_output_shapes
:
-*
dtype0
°
)Adam/word2_vec_1/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*:
shared_name+)Adam/word2_vec_1/embedding_1/embeddings/m
©
=Adam/word2_vec_1/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp)Adam/word2_vec_1/embedding_1/embeddings/m* 
_output_shapes
:
-*
dtype0
´
+Adam/word2_vec_1/w2v_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*<
shared_name-+Adam/word2_vec_1/w2v_embedding/embeddings/v
­
?Adam/word2_vec_1/w2v_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/word2_vec_1/w2v_embedding/embeddings/v* 
_output_shapes
:
-*
dtype0
°
)Adam/word2_vec_1/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*:
shared_name+)Adam/word2_vec_1/embedding_1/embeddings/v
©
=Adam/word2_vec_1/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp)Adam/word2_vec_1/embedding_1/embeddings/v* 
_output_shapes
:
-*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Å
value»B¸ B±
ù
target_embedding
context_embedding
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
h
iter

beta_1

beta_2
	decay
learning_ratem:m;v<v=*

0
1*

0
1*
* 
°
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

$serving_default* 
tn
VARIABLE_VALUE$word2_vec_1/w2v_embedding/embeddings6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
sm
VARIABLE_VALUE"word2_vec_1/embedding_1/embeddings7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

/0
01*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	1total
	2count
3	variables
4	keras_api*
H
	5total
	6count
7
_fn_kwargs
8	variables
9	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

10
21*

3	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

50
61*

8	variables*

VARIABLE_VALUE+Adam/word2_vec_1/w2v_embedding/embeddings/mRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/word2_vec_1/embedding_1/embeddings/mScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/word2_vec_1/w2v_embedding/embeddings/vRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/word2_vec_1/embedding_1/embeddings/vScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
r
serving_default_input_1Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2$word2_vec_1/w2v_embedding/embeddings"word2_vec_1/embedding_1/embeddings*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_407260
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
µ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8word2_vec_1/w2v_embedding/embeddings/Read/ReadVariableOp6word2_vec_1/embedding_1/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/word2_vec_1/w2v_embedding/embeddings/m/Read/ReadVariableOp=Adam/word2_vec_1/embedding_1/embeddings/m/Read/ReadVariableOp?Adam/word2_vec_1/w2v_embedding/embeddings/v/Read/ReadVariableOp=Adam/word2_vec_1/embedding_1/embeddings/v/Read/ReadVariableOpConst*
Tin
2	*
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
__inference__traced_save_407361

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$word2_vec_1/w2v_embedding/embeddings"word2_vec_1/embedding_1/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/word2_vec_1/w2v_embedding/embeddings/m)Adam/word2_vec_1/embedding_1/embeddings/m+Adam/word2_vec_1/w2v_embedding/embeddings/v)Adam/word2_vec_1/embedding_1/embeddings/v*
Tin
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_407416×ø

§
$__inference_signature_wrapper_407260
input_1	
input_2	
unknown:
-
	unknown_0:
-
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_407134o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¹
¨
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407152

inputs	+
embedding_lookup_407146:
-
identity¢embedding_lookup¶
embedding_lookupResourceGatherembedding_lookup_407146inputs*
Tindices0	**
_class 
loc:@embedding_lookup/407146*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/407146*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407216
input_1	
input_2	(
w2v_embedding_407208:
-&
embedding_1_407211:
-
identity¢#embedding_1/StatefulPartitionedCall¢%w2v_embedding/StatefulPartitionedCallî
%w2v_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1w2v_embedding_407208*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407152ì
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_407211*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_407165Ê
einsum/EinsumEinsum.w2v_embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bce
IdentityIdentityeinsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp$^embedding_1/StatefulPartitionedCall&^w2v_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2N
%w2v_embedding/StatefulPartitionedCall%w2v_embedding/StatefulPartitionedCall:L H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ô

G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407171
pair	

pair_1	(
w2v_embedding_407153:
-&
embedding_1_407166:
-
identity¢#embedding_1/StatefulPartitionedCall¢%w2v_embedding/StatefulPartitionedCallë
%w2v_embedding/StatefulPartitionedCallStatefulPartitionedCallpairw2v_embedding_407153*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407152ë
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallpair_1embedding_1_407166*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_407165Ê
einsum/EinsumEinsum.w2v_embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bce
IdentityIdentityeinsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp$^embedding_1/StatefulPartitionedCall&^w2v_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2N
%w2v_embedding/StatefulPartitionedCall%w2v_embedding/StatefulPartitionedCall:I E
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepair:MI
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepair
 

.__inference_w2v_embedding_layer_call_fn_407267

inputs	
unknown:
-
identity¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407152p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
²
!__inference__wrapped_model_407134
input_1	
input_2	E
1word2_vec_1_w2v_embedding_embedding_lookup_407122:
-C
/word2_vec_1_embedding_1_embedding_lookup_407127:
-
identity¢(word2_vec_1/embedding_1/embedding_lookup¢*word2_vec_1/w2v_embedding/embedding_lookup
*word2_vec_1/w2v_embedding/embedding_lookupResourceGather1word2_vec_1_w2v_embedding_embedding_lookup_407122input_1*
Tindices0	*D
_class:
86loc:@word2_vec_1/w2v_embedding/embedding_lookup/407122*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0í
3word2_vec_1/w2v_embedding/embedding_lookup/IdentityIdentity3word2_vec_1/w2v_embedding/embedding_lookup:output:0*
T0*D
_class:
86loc:@word2_vec_1/w2v_embedding/embedding_lookup/407122*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
5word2_vec_1/w2v_embedding/embedding_lookup/Identity_1Identity<word2_vec_1/w2v_embedding/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(word2_vec_1/embedding_1/embedding_lookupResourceGather/word2_vec_1_embedding_1_embedding_lookup_407127input_2*
Tindices0	*B
_class8
64loc:@word2_vec_1/embedding_1/embedding_lookup/407127*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ë
1word2_vec_1/embedding_1/embedding_lookup/IdentityIdentity1word2_vec_1/embedding_1/embedding_lookup:output:0*
T0*B
_class8
64loc:@word2_vec_1/embedding_1/embedding_lookup/407127*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
3word2_vec_1/embedding_1/embedding_lookup/Identity_1Identity:word2_vec_1/embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
word2_vec_1/einsum/EinsumEinsum>word2_vec_1/w2v_embedding/embedding_lookup/Identity_1:output:0<word2_vec_1/embedding_1/embedding_lookup/Identity_1:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bcq
IdentityIdentity"word2_vec_1/einsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp)^word2_vec_1/embedding_1/embedding_lookup+^word2_vec_1/w2v_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2T
(word2_vec_1/embedding_1/embedding_lookup(word2_vec_1/embedding_1/embedding_lookup2X
*word2_vec_1/w2v_embedding/embedding_lookup*word2_vec_1/w2v_embedding/embedding_lookup:L H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
é?
Ø	
"__inference__traced_restore_407416
file_prefixI
5assignvariableop_word2_vec_1_w2v_embedding_embeddings:
-I
5assignvariableop_1_word2_vec_1_embedding_1_embeddings:
-&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: S
?assignvariableop_11_adam_word2_vec_1_w2v_embedding_embeddings_m:
-Q
=assignvariableop_12_adam_word2_vec_1_embedding_1_embeddings_m:
-S
?assignvariableop_13_adam_word2_vec_1_w2v_embedding_embeddings_v:
-Q
=assignvariableop_14_adam_word2_vec_1_embedding_1_embeddings_v:
-
identity_16¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOpAssignVariableOp5assignvariableop_word2_vec_1_w2v_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_1AssignVariableOp5assignvariableop_1_word2_vec_1_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_11AssignVariableOp?assignvariableop_11_adam_word2_vec_1_w2v_embedding_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_12AssignVariableOp=assignvariableop_12_adam_word2_vec_1_embedding_1_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_13AssignVariableOp?assignvariableop_13_adam_word2_vec_1_w2v_embedding_embeddings_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_14AssignVariableOp=assignvariableop_14_adam_word2_vec_1_embedding_1_embeddings_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¹
¨
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407276

inputs	+
embedding_lookup_407270:
-
identity¢embedding_lookup¶
embedding_lookupResourceGatherembedding_lookup_407270inputs*
Tindices0	**
_class 
loc:@embedding_lookup/407270*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/407270*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
¦
G__inference_embedding_1_layer_call_and_return_conditional_losses_407165

inputs	+
embedding_lookup_407159:
-
identity¢embedding_lookupº
embedding_lookupResourceGatherembedding_lookup_407159inputs*
Tindices0	**
_class 
loc:@embedding_lookup/407159*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/407159*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

,__inference_embedding_1_layer_call_fn_407283

inputs	
unknown:
-
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_407165t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
¯
,__inference_word2_vec_1_layer_call_fn_407178
input_1	
input_2	
unknown:
-
	unknown_0:
-
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Á
­
,__inference_word2_vec_1_layer_call_fn_407232

pair_0	

pair_1	
unknown:
-
	unknown_0:
-
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallpair_0pair_1unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/1
Ð
¦
G__inference_embedding_1_layer_call_and_return_conditional_losses_407292

inputs	+
embedding_lookup_407286:
-
identity¢embedding_lookupº
embedding_lookupResourceGatherembedding_lookup_407286inputs*
Tindices0	**
_class 
loc:@embedding_lookup/407286*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/407286*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼)

__inference__traced_save_407361
file_prefixC
?savev2_word2_vec_1_w2v_embedding_embeddings_read_readvariableopA
=savev2_word2_vec_1_embedding_1_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_word2_vec_1_w2v_embedding_embeddings_m_read_readvariableopH
Dsavev2_adam_word2_vec_1_embedding_1_embeddings_m_read_readvariableopJ
Fsavev2_adam_word2_vec_1_w2v_embedding_embeddings_v_read_readvariableopH
Dsavev2_adam_word2_vec_1_embedding_1_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ³
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_word2_vec_1_w2v_embedding_embeddings_read_readvariableop=savev2_word2_vec_1_embedding_1_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_word2_vec_1_w2v_embedding_embeddings_m_read_readvariableopDsavev2_adam_word2_vec_1_embedding_1_embeddings_m_read_readvariableopFsavev2_adam_word2_vec_1_w2v_embedding_embeddings_v_read_readvariableopDsavev2_adam_word2_vec_1_embedding_1_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*q
_input_shapes`
^: :
-:
-: : : : : : : : : :
-:
-:
-:
-: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
-:&"
 
_output_shapes
:
-:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
-:&"
 
_output_shapes
:
-:&"
 
_output_shapes
:
-:&"
 
_output_shapes
:
-:

_output_shapes
: 
¤
¦
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407248

pair_0	

pair_1	9
%w2v_embedding_embedding_lookup_407236:
-7
#embedding_1_embedding_lookup_407241:
-
identity¢embedding_1/embedding_lookup¢w2v_embedding/embedding_lookupà
w2v_embedding/embedding_lookupResourceGather%w2v_embedding_embedding_lookup_407236pair_0*
Tindices0	*8
_class.
,*loc:@w2v_embedding/embedding_lookup/407236*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0É
'w2v_embedding/embedding_lookup/IdentityIdentity'w2v_embedding/embedding_lookup:output:0*
T0*8
_class.
,*loc:@w2v_embedding/embedding_lookup/407236*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)w2v_embedding/embedding_lookup/Identity_1Identity0w2v_embedding/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_407241pair_1*
Tindices0	*6
_class,
*(loc:@embedding_1/embedding_lookup/407241*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ç
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/407241*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
einsum/EinsumEinsum2w2v_embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bce
IdentityIdentityeinsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^embedding_1/embedding_lookup^w2v_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2@
w2v_embedding/embedding_lookupw2v_embedding/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/1"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ä
serving_defaultÐ
7
input_1,
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ
;
input_20
serving_default_input_2:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:é8

target_embedding
context_embedding
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_model
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
w
iter

beta_1

beta_2
	decay
learning_ratem:m;v<v="
	optimizer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
2ÿ
,__inference_word2_vec_1_layer_call_fn_407178
,__inference_word2_vec_1_layer_call_fn_407232 
²
FullArgSpec
args
jself
jpair
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
¸2µ
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407248
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407216 
²
FullArgSpec
args
jself
jpair
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
ÕBÒ
!__inference__wrapped_model_407134input_1input_2"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
$serving_default"
signature_map
8:6
-2$word2_vec_1/w2v_embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_w2v_embedding_layer_call_fn_407267¢
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
ó2ð
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407276¢
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
6:4
-2"word2_vec_1/embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_embedding_1_layer_call_fn_407283¢
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
ñ2î
G__inference_embedding_1_layer_call_and_return_conditional_losses_407292¢
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÒBÏ
$__inference_signature_wrapper_407260input_1input_2"
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
 
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	1total
	2count
3	variables
4	keras_api"
_tf_keras_metric
^
	5total
	6count
7
_fn_kwargs
8	variables
9	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
10
21"
trackable_list_wrapper
-
3	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
-
8	variables"
_generic_user_object
=:;
-2+Adam/word2_vec_1/w2v_embedding/embeddings/m
;:9
-2)Adam/word2_vec_1/embedding_1/embeddings/m
=:;
-2+Adam/word2_vec_1/w2v_embedding/embeddings/v
;:9
-2)Adam/word2_vec_1/embedding_1/embeddings/vµ
!__inference__wrapped_model_407134T¢Q
J¢G
E¢B

input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ«
G__inference_embedding_1_layer_call_and_return_conditional_losses_407292`/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_embedding_1_layer_call_fn_407283S/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿÉ
$__inference_signature_wrapper_407260 e¢b
¢ 
[ªX
(
input_1
input_1ÿÿÿÿÿÿÿÿÿ	
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¥
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_407276X+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
.__inference_w2v_embedding_layer_call_fn_407267K+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿÍ
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407216T¢Q
J¢G
E¢B

input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ê
G__inference_word2_vec_1_layer_call_and_return_conditional_losses_407248R¢O
H¢E
C¢@

pair/0ÿÿÿÿÿÿÿÿÿ	
 
pair/1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
,__inference_word2_vec_1_layer_call_fn_407178tT¢Q
J¢G
E¢B

input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¢
,__inference_word2_vec_1_layer_call_fn_407232rR¢O
H¢E
C¢@

pair/0ÿÿÿÿÿÿÿÿÿ	
 
pair/1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ