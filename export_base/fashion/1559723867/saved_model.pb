éŕ
ţŕ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

%
DecodeBase64	
input

output
Ë

DecodeJpeg
contents	
image"
channelsint "
ratioint"
fancy_upscalingbool("!
try_recover_truncatedbool( "#
acceptable_fractionfloat%  ?"

dct_methodstring 
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
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12
b'unknown'¸˛

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
L
inputssPlaceholder*
shape:*
dtype0*
_output_shapes
:
?
DecodeBase64DecodeBase64inputss*
_output_shapes
:
Ý

DecodeJpeg
DecodeJpegDecodeBase64*

dct_method *
channels*
acceptable_fraction%  ?*
fancy_upscaling(*
try_recover_truncated( *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ratio
r
packedPack
DecodeJpeg*
T0*

axis *
N*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

input_layer/images/ToFloatCastpacked*

SrcT0*
Truncate( *8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
r
input_layer/images/ShapeShapeinput_layer/images/ToFloat*
T0*
out_type0*
_output_shapes
:
p
&input_layer/images/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(input_layer/images/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(input_layer/images/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ř
 input_layer/images/strided_sliceStridedSliceinput_layer/images/Shape&input_layer/images/strided_slice/stack(input_layer/images/strided_slice/stack_1(input_layer/images/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
e
"input_layer/images/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
¨
 input_layer/images/Reshape/shapePack input_layer/images/strided_slice"input_layer/images/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
¤
input_layer/images/ReshapeReshapeinput_layer/images/ToFloat input_layer/images/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
input_layer/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
m
input_layer/concatIdentityinput_layer/images/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
}
ReshapeReshapeinput_layer/concatReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
-conv1/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@conv1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

+conv1/kernel/Initializer/random_uniform/minConst*
_class
loc:@conv1/kernel*
valueB
 *?ČJž*
dtype0*
_output_shapes
: 

+conv1/kernel/Initializer/random_uniform/maxConst*
_class
loc:@conv1/kernel*
valueB
 *?ČJ>*
dtype0*
_output_shapes
: 
í
5conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv1/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv1/kernel*
seed2 *
dtype0*&
_output_shapes
:
Î
+conv1/kernel/Initializer/random_uniform/subSub+conv1/kernel/Initializer/random_uniform/max+conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/kernel*
_output_shapes
: 
č
+conv1/kernel/Initializer/random_uniform/mulMul5conv1/kernel/Initializer/random_uniform/RandomUniform+conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@conv1/kernel*&
_output_shapes
:
Ú
'conv1/kernel/Initializer/random_uniformAdd+conv1/kernel/Initializer/random_uniform/mul+conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/kernel*&
_output_shapes
:
Ž
conv1/kernelVarHandleOp*
shared_nameconv1/kernel*
_class
loc:@conv1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1/kernel*
_output_shapes
: 

conv1/kernel/AssignAssignVariableOpconv1/kernel'conv1/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@conv1/kernel

 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*
_class
loc:@conv1/kernel*
dtype0*&
_output_shapes
:

conv1/bias/Initializer/zerosConst*
_class
loc:@conv1/bias*
valueB*    *
dtype0*
_output_shapes
:


conv1/biasVarHandleOp*
shared_name
conv1/bias*
_class
loc:@conv1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
e
+conv1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv1/bias*
_output_shapes
: 
{
conv1/bias/AssignAssignVariableOp
conv1/biasconv1/bias/Initializer/zeros*
dtype0*
_class
loc:@conv1/bias

conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_class
loc:@conv1/bias*
dtype0*
_output_shapes
:
d
conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
p
conv1/Conv2D/ReadVariableOpReadVariableOpconv1/kernel*
dtype0*&
_output_shapes
:
ĺ
conv1/Conv2DConv2DReshapeconv1/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
conv1/BiasAdd/ReadVariableOpReadVariableOp
conv1/bias*
dtype0*
_output_shapes
:

conv1/BiasAddBiasAddconv1/Conv2Dconv1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
[

conv1/ReluReluconv1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
max_pooling2d/MaxPoolMaxPool
conv1/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
-conv2/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@conv2/kernel*%
valueB"            *
dtype0*
_output_shapes
:

+conv2/kernel/Initializer/random_uniform/minConst*
_class
loc:@conv2/kernel*
valueB
 *ÍĚĚ˝*
dtype0*
_output_shapes
: 

+conv2/kernel/Initializer/random_uniform/maxConst*
_class
loc:@conv2/kernel*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
í
5conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv2/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv2/kernel*
seed2 *
dtype0*&
_output_shapes
:
Î
+conv2/kernel/Initializer/random_uniform/subSub+conv2/kernel/Initializer/random_uniform/max+conv2/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv2/kernel*
_output_shapes
: 
č
+conv2/kernel/Initializer/random_uniform/mulMul5conv2/kernel/Initializer/random_uniform/RandomUniform+conv2/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@conv2/kernel*&
_output_shapes
:
Ú
'conv2/kernel/Initializer/random_uniformAdd+conv2/kernel/Initializer/random_uniform/mul+conv2/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv2/kernel*&
_output_shapes
:
Ž
conv2/kernelVarHandleOp*
shared_nameconv2/kernel*
_class
loc:@conv2/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-conv2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2/kernel*
_output_shapes
: 

conv2/kernel/AssignAssignVariableOpconv2/kernel'conv2/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@conv2/kernel

 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*
_class
loc:@conv2/kernel*
dtype0*&
_output_shapes
:

conv2/bias/Initializer/zerosConst*
_class
loc:@conv2/bias*
valueB*    *
dtype0*
_output_shapes
:


conv2/biasVarHandleOp*
shared_name
conv2/bias*
_class
loc:@conv2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
e
+conv2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv2/bias*
_output_shapes
: 
{
conv2/bias/AssignAssignVariableOp
conv2/biasconv2/bias/Initializer/zeros*
dtype0*
_class
loc:@conv2/bias

conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_class
loc:@conv2/bias*
dtype0*
_output_shapes
:
d
conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
p
conv2/Conv2D/ReadVariableOpReadVariableOpconv2/kernel*
dtype0*&
_output_shapes
:
ó
conv2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
conv2/BiasAdd/ReadVariableOpReadVariableOp
conv2/bias*
dtype0*
_output_shapes
:

conv2/BiasAddBiasAddconv2/Conv2Dconv2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
[

conv2/ReluReluconv2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
flatten/ShapeShape
conv2/Relu*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
~
flatten/ReshapeReshape
conv2/Reluflatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
.dense1/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@dense1/kernel*
valueB"      *
dtype0*
_output_shapes
:

,dense1/kernel/Initializer/random_uniform/minConst* 
_class
loc:@dense1/kernel*
valueB
 *qÄž*
dtype0*
_output_shapes
: 

,dense1/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@dense1/kernel*
valueB
 *qÄ>*
dtype0*
_output_shapes
: 
ę
6dense1/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense1/kernel/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@dense1/kernel*
seed2 *
dtype0* 
_output_shapes
:

Ň
,dense1/kernel/Initializer/random_uniform/subSub,dense1/kernel/Initializer/random_uniform/max,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel*
_output_shapes
: 
ć
,dense1/kernel/Initializer/random_uniform/mulMul6dense1/kernel/Initializer/random_uniform/RandomUniform,dense1/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense1/kernel* 
_output_shapes
:

Ř
(dense1/kernel/Initializer/random_uniformAdd,dense1/kernel/Initializer/random_uniform/mul,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel* 
_output_shapes
:

Ť
dense1/kernelVarHandleOp*
shared_namedense1/kernel* 
_class
loc:@dense1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
k
.dense1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/kernel*
_output_shapes
: 

dense1/kernel/AssignAssignVariableOpdense1/kernel(dense1/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@dense1/kernel

!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel* 
_class
loc:@dense1/kernel*
dtype0* 
_output_shapes
:


dense1/bias/Initializer/zerosConst*
_class
loc:@dense1/bias*
valueB*    *
dtype0*
_output_shapes	
:
 
dense1/biasVarHandleOp*
shared_namedense1/bias*
_class
loc:@dense1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
g
,dense1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/bias*
_output_shapes
: 

dense1/bias/AssignAssignVariableOpdense1/biasdense1/bias/Initializer/zeros*
dtype0*
_class
loc:@dense1/bias

dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_class
loc:@dense1/bias*
dtype0*
_output_shapes	
:
l
dense1/MatMul/ReadVariableOpReadVariableOpdense1/kernel*
dtype0* 
_output_shapes
:


dense1/MatMulMatMulflatten/Reshapedense1/MatMul/ReadVariableOp*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
f
dense1/BiasAdd/ReadVariableOpReadVariableOpdense1/bias*
dtype0*
_output_shapes	
:

dense1/BiasAddBiasAdddense1/MatMuldense1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
dense1/ReluReludense1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
4dense_output/kernel/Initializer/random_uniform/shapeConst*&
_class
loc:@dense_output/kernel*
valueB"   
   *
dtype0*
_output_shapes
:

2dense_output/kernel/Initializer/random_uniform/minConst*&
_class
loc:@dense_output/kernel*
valueB
 *ÍUž*
dtype0*
_output_shapes
: 

2dense_output/kernel/Initializer/random_uniform/maxConst*&
_class
loc:@dense_output/kernel*
valueB
 *ÍU>*
dtype0*
_output_shapes
: 
ű
<dense_output/kernel/Initializer/random_uniform/RandomUniformRandomUniform4dense_output/kernel/Initializer/random_uniform/shape*

seed *
T0*&
_class
loc:@dense_output/kernel*
seed2 *
dtype0*
_output_shapes
:	

ę
2dense_output/kernel/Initializer/random_uniform/subSub2dense_output/kernel/Initializer/random_uniform/max2dense_output/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@dense_output/kernel*
_output_shapes
: 
ý
2dense_output/kernel/Initializer/random_uniform/mulMul<dense_output/kernel/Initializer/random_uniform/RandomUniform2dense_output/kernel/Initializer/random_uniform/sub*
T0*&
_class
loc:@dense_output/kernel*
_output_shapes
:	

ď
.dense_output/kernel/Initializer/random_uniformAdd2dense_output/kernel/Initializer/random_uniform/mul2dense_output/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@dense_output/kernel*
_output_shapes
:	

ź
dense_output/kernelVarHandleOp*$
shared_namedense_output/kernel*&
_class
loc:@dense_output/kernel*
	container *
shape:	
*
dtype0*
_output_shapes
: 
w
4dense_output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_output/kernel*
_output_shapes
: 
¨
dense_output/kernel/AssignAssignVariableOpdense_output/kernel.dense_output/kernel/Initializer/random_uniform*
dtype0*&
_class
loc:@dense_output/kernel
¤
'dense_output/kernel/Read/ReadVariableOpReadVariableOpdense_output/kernel*&
_class
loc:@dense_output/kernel*
dtype0*
_output_shapes
:	


#dense_output/bias/Initializer/zerosConst*$
_class
loc:@dense_output/bias*
valueB
*    *
dtype0*
_output_shapes
:

ą
dense_output/biasVarHandleOp*"
shared_namedense_output/bias*$
_class
loc:@dense_output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
s
2dense_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_output/bias*
_output_shapes
: 

dense_output/bias/AssignAssignVariableOpdense_output/bias#dense_output/bias/Initializer/zeros*
dtype0*$
_class
loc:@dense_output/bias

%dense_output/bias/Read/ReadVariableOpReadVariableOpdense_output/bias*$
_class
loc:@dense_output/bias*
dtype0*
_output_shapes
:

w
"dense_output/MatMul/ReadVariableOpReadVariableOpdense_output/kernel*
dtype0*
_output_shapes
:	

Ś
dense_output/MatMulMatMuldense1/Relu"dense_output/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( 
q
#dense_output/BiasAdd/ReadVariableOpReadVariableOpdense_output/bias*
dtype0*
_output_shapes
:

˘
dense_output/BiasAddBiasAdddense_output/MatMul#dense_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

ArgMaxArgMaxdense_output/BiasAddArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
SoftmaxSoftmaxdense_output/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_c9bc2003184548aab4cc035148a94ef3/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
ö
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueB	B
conv1/biasBconv1/kernelB
conv2/biasBconv2/kernelBdense1/biasBdense1/kernelBdense_output/biasBdense_output/kernelBglobal_step*
dtype0*
_output_shapes
:	

save/SaveV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
°
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv1/bias/Read/ReadVariableOp conv1/kernel/Read/ReadVariableOpconv2/bias/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp!dense1/kernel/Read/ReadVariableOp%dense_output/bias/Read/ReadVariableOp'dense_output/kernel/Read/ReadVariableOpglobal_step"/device:CPU:0*
dtypes
2		
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ů
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB	B
conv1/biasBconv1/kernelB
conv2/biasBconv2/kernelBdense1/biasBdense1/kernelBdense_output/biasBdense_output/kernelBglobal_step*
dtype0*
_output_shapes
:	

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Ç
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2		*8
_output_shapes&
$:::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
S
save/AssignVariableOpAssignVariableOp
conv1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
W
save/AssignVariableOp_1AssignVariableOpconv1/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
conv2/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
W
save/AssignVariableOp_3AssignVariableOpconv2/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
V
save/AssignVariableOp_4AssignVariableOpdense1/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
X
save/AssignVariableOp_5AssignVariableOpdense1/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
\
save/AssignVariableOp_6AssignVariableOpdense_output/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
^
save/AssignVariableOp_7AssignVariableOpdense_output/kernelsave/Identity_8*
dtype0

save/AssignAssignglobal_stepsave/RestoreV2:8*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
ö
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"é
trainable_variablesŃÎ
x
conv1/kernel:0conv1/kernel/Assign"conv1/kernel/Read/ReadVariableOp:0(2)conv1/kernel/Initializer/random_uniform:08
g
conv1/bias:0conv1/bias/Assign conv1/bias/Read/ReadVariableOp:0(2conv1/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08

dense_output/kernel:0dense_output/kernel/Assign)dense_output/kernel/Read/ReadVariableOp:0(20dense_output/kernel/Initializer/random_uniform:08

dense_output/bias:0dense_output/bias/Assign'dense_output/bias/Read/ReadVariableOp:0(2%dense_output/bias/Initializer/zeros:08"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"š
	variablesŤ¨
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
x
conv1/kernel:0conv1/kernel/Assign"conv1/kernel/Read/ReadVariableOp:0(2)conv1/kernel/Initializer/random_uniform:08
g
conv1/bias:0conv1/bias/Assign conv1/bias/Read/ReadVariableOp:0(2conv1/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08

dense_output/kernel:0dense_output/kernel/Assign)dense_output/kernel/Read/ReadVariableOp:0(20dense_output/kernel/Initializer/random_uniform:08

dense_output/bias:0dense_output/bias/Assign'dense_output/bias/Read/ReadVariableOp:0(2%dense_output/bias/Initializer/zeros:08"%
saved_model_main_op


group_deps*Ż
serving_default
 
image_bytes
	inputss:0/
predict_pro 
	Softmax:0˙˙˙˙˙˙˙˙˙
*
predict_cls
ArgMax:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict