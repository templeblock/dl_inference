��%
�H�H
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
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
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
�
BatchDatasetV2
input_dataset

batch_size	
drop_remainder


handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
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
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0�
�
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0�
C
IteratorToStringHandle
resource_handle
string_handle�
2
L2Loss
t"T
output"T"
Ttype:
2
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
b
LookupTableInsertV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
,
MakeIterator
dataset
iterator�
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
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
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Neg
x"T
y"T"
Ttype:

2	
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
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
{
RepeatDataset
input_dataset	
count	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
�

ScatterAdd
ref"T�
indices"Tindices
updates"T

output_ref"T�" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
ShuffleDataset
input_dataset
buffer_size	
seed		
seed2	

handle"$
reshuffle_each_iterationbool("
output_types
list(type)(0" 
output_shapeslist(shape)(0
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
�
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
V
TextLineDataset
	filenames
compression_type
buffer_size	

handle�
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
�
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02v1.10.0-0-g656e7a2b34Λ$
�
	filenamesConst*]
valueTBR BL../data/corpus/corpus_char_all_20190201_20190819_Iterative20190919/train.txt*
dtype0*
_output_shapes
: 
Q
compression_typeConst*
valueB B *
dtype0*
_output_shapes
: 
O
buffer_sizeConst*
valueB		 R��*
dtype0	*
_output_shapes
: 
P
countConst*
dtype0	*
_output_shapes
: *
valueB	 R
���������
O
buffer_size_1Const*
value	B	 Rd*
dtype0	*
_output_shapes
: 
F
seedConst*
value	B	 R *
dtype0	*
_output_shapes
: 
G
seed2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
M

batch_sizeConst*
value
B	 R�*
dtype0	*
_output_shapes
: 
P
drop_remainderConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
IteratorIterator*
output_types
2*
shared_name *"
output_shapes
:���������*
_output_shapes
: *
	container 
�
TextLineDatasetTextLineDataset	filenamescompression_typebuffer_size*
_class
loc:@Iterator*
_output_shapes
: 
�
RepeatDatasetRepeatDatasetTextLineDatasetcount*
output_types
2*
output_shapes
: *
_class
loc:@Iterator*
_output_shapes
: 
�
ShuffleDatasetShuffleDatasetRepeatDatasetbuffer_size_1seedseed2*
output_types
2*
output_shapes
: *
_class
loc:@Iterator*
reshuffle_each_iteration(*
_output_shapes
: 
�
BatchDatasetV2BatchDatasetV2ShuffleDataset
batch_sizedrop_remainder*
_class
loc:@Iterator*
_output_shapes
: *
output_types
2*"
output_shapes
:���������
S
MakeIteratorMakeIteratorBatchDatasetV2Iterator*
_class
loc:@Iterator
R
IteratorToStringHandleIteratorToStringHandleIterator*
_output_shapes
: 
�
IteratorGetNextIteratorGetNextIterator*
output_types
2*"
output_shapes
:���������*#
_output_shapes
:���������
�
filenames_1Const*]
valueTBR BL../data/corpus/corpus_char_all_20190201_20190819_Iterative20190919/valid.txt*
dtype0*
_output_shapes
: 
S
compression_type_1Const*
valueB B *
dtype0*
_output_shapes
: 
Q
buffer_size_2Const*
valueB		 R��*
dtype0	*
_output_shapes
: 
R
count_1Const*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
O
buffer_size_3Const*
value	B	 Rd*
dtype0	*
_output_shapes
: 
H
seed_1Const*
dtype0	*
_output_shapes
: *
value	B	 R 
I
seed2_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
O
batch_size_1Const*
value
B	 R�P*
dtype0	*
_output_shapes
: 
R
drop_remainder_1Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
�

Iterator_1Iterator*
shared_name *"
output_shapes
:���������*
_output_shapes
: *
	container *
output_types
2
�
TextLineDataset_1TextLineDatasetfilenames_1compression_type_1buffer_size_2*
_class
loc:@Iterator_1*
_output_shapes
: 
�
RepeatDataset_1RepeatDatasetTextLineDataset_1count_1*
_output_shapes
: *
output_types
2*
output_shapes
: *
_class
loc:@Iterator_1
�
ShuffleDataset_1ShuffleDatasetRepeatDataset_1buffer_size_3seed_1seed2_1*
output_shapes
: *
_class
loc:@Iterator_1*
reshuffle_each_iteration(*
_output_shapes
: *
output_types
2
�
BatchDatasetV2_1BatchDatasetV2ShuffleDataset_1batch_size_1drop_remainder_1*"
output_shapes
:���������*
_class
loc:@Iterator_1*
_output_shapes
: *
output_types
2
[
MakeIterator_1MakeIteratorBatchDatasetV2_1
Iterator_1*
_class
loc:@Iterator_1
V
IteratorToStringHandle_1IteratorToStringHandle
Iterator_1*
_output_shapes
: 
�
IteratorGetNext_1IteratorGetNext
Iterator_1*
output_types
2*"
output_shapes
:���������*#
_output_shapes
:���������
[
global_step/initial_valueConst*
dtype0*
_output_shapes
: *
value	B : 
o
global_step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step*
_output_shapes
: 
[
Variable/initial_valueConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
l
Variable
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
Variable/AssignAssignVariableVariable/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
a
Variable/readIdentityVariable*
_output_shapes
: *
T0*
_class
loc:@Variable
}
sentencePlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
`
labelPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
d
padding/ShapeShapesentence"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
t
padding/strided_slice/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
v
padding/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
v
padding/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
padding/strided_sliceStridedSlicepadding/Shapepadding/strided_slice/stackpadding/strided_slice/stack_1padding/strided_slice/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
padding/Minimum/yConst"/device:CPU:0*
_output_shapes
: *
value	B :2*
dtype0
t
padding/MinimumMinimumpadding/strided_slicepadding/Minimum/y"/device:CPU:0*
T0*
_output_shapes
: 
s
padding/Slice/beginConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:
n
padding/Slice/size/0Const"/device:CPU:0*
valueB :
���������*
dtype0*
_output_shapes
: 
�
padding/Slice/sizePackpadding/Slice/size/0padding/Minimum"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
padding/SliceSlicesentencepadding/Slice/beginpadding/Slice/size"/device:CPU:0*
Index0*
T0*0
_output_shapes
:������������������
v
padding/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
x
padding/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
x
padding/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
padding/strided_slice_1StridedSlicepadding/Shapepadding/strided_slice_1/stackpadding/strided_slice_1/stack_1padding/strided_slice_1/stack_2"/device:CPU:0*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
^
padding/sub/xConst"/device:CPU:0*
value	B :2*
dtype0*
_output_shapes
: 
b
padding/subSubpadding/sub/xpadding/Minimum"/device:CPU:0*
_output_shapes
: *
T0
�
padding/Fill/dimsPackpadding/strided_slice_1padding/sub"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
g
padding/Fill/valueConst"/device:CPU:0*
valueB B<pad>*
dtype0*
_output_shapes
: 
�
padding/FillFillpadding/Fill/dimspadding/Fill/value"/device:CPU:0*
T0*

index_type0*0
_output_shapes
:������������������
d
padding/concat/axisConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
padding/concatConcatV2padding/Slicepadding/Fillpadding/concat/axis"/device:CPU:0*
N*0
_output_shapes
:������������������*

Tidx0*
T0
\
dropout_keep_prob/inputConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
v
dropout_keep_probPlaceholderWithDefaultdropout_keep_prob/input*
dtype0*
_output_shapes
: *
shape: 
F
epochPlaceholder*
shape: *
dtype0*
_output_shapes
: 
J
	temp_lossPlaceholder*
shape: *
dtype0*
_output_shapes
: 
I
temp_accPlaceholder*
shape: *
dtype0*
_output_shapes
: 
G
ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
symbol_tableMutableHashTableV2*
value_dtype0	*
_output_shapes
: *#
shared_namesymbol_table_share*
use_node_name_sharing( *
	key_dtype0*
	container 
�
'symbol_table_lookup_table_export_valuesLookupTableExportV2symbol_table*
_class
loc:@symbol_table*2
_output_shapes 
:���������:���������*
Tkeys0*
Tvalues0	
I
Const_1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
�
label_tableMutableHashTableV2*
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *"
shared_namelabel_table_share*
use_node_name_sharing( 
�
&label_table_lookup_table_export_valuesLookupTableExportV2label_table*
_class
loc:@label_table*2
_output_shapes 
:���������:���������*
Tkeys0*
Tvalues0	
X
Const_2Const*!
valueB B__label__unknown*
dtype0*
_output_shapes
: 
�
	out_tableMutableHashTableV2*
use_node_name_sharing( *
	key_dtype0	*
	container *
value_dtype0*
_output_shapes
: * 
shared_nameout_table_share
�
$out_table_lookup_table_export_valuesLookupTableExportV2	out_table*
Tkeys0	*
Tvalues0*
_class
loc:@out_table*2
_output_shapes 
:���������:���������
�
input/x_idxLookupTableFindV2symbol_tablepadding/concatConst*
_class
loc:@symbol_table*0
_output_shapes
:������������������*	
Tin0*

Tout0	
�
input/y_idxLookupTableFindV2label_tablelabelConst_1*#
_output_shapes
:���������*	
Tin0*

Tout0	*
_class
loc:@label_table
�
5embedding/emb_matrix/Initializer/random_uniform/shapeConst*'
_class
loc:@embedding/emb_matrix*
valueB"�     *
dtype0*
_output_shapes
:
�
3embedding/emb_matrix/Initializer/random_uniform/minConst*'
_class
loc:@embedding/emb_matrix*
valueB
 *    *
dtype0*
_output_shapes
: 
�
3embedding/emb_matrix/Initializer/random_uniform/maxConst*
_output_shapes
: *'
_class
loc:@embedding/emb_matrix*
valueB
 *  �?*
dtype0
�
=embedding/emb_matrix/Initializer/random_uniform/RandomUniformRandomUniform5embedding/emb_matrix/Initializer/random_uniform/shape*

seed *
T0*'
_class
loc:@embedding/emb_matrix*
seed2 *
dtype0* 
_output_shapes
:
��
�
3embedding/emb_matrix/Initializer/random_uniform/subSub3embedding/emb_matrix/Initializer/random_uniform/max3embedding/emb_matrix/Initializer/random_uniform/min*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: *
T0
�
3embedding/emb_matrix/Initializer/random_uniform/mulMul=embedding/emb_matrix/Initializer/random_uniform/RandomUniform3embedding/emb_matrix/Initializer/random_uniform/sub*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
/embedding/emb_matrix/Initializer/random_uniformAdd3embedding/emb_matrix/Initializer/random_uniform/mul3embedding/emb_matrix/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
embedding/emb_matrix
VariableV2"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name 
�
embedding/emb_matrix/AssignAssignembedding/emb_matrix/embedding/emb_matrix/Initializer/random_uniform"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
embedding/emb_matrix/readIdentityembedding/emb_matrix"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
embedding/embedding_lookup/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/emb_matrix*
value	B : 
�
embedding/embedding_lookupGatherV2embedding/emb_matrix/readinput/x_idxembedding/embedding_lookup/axis"/device:CPU:0*
Tindices0	*
Tparams0*'
_class
loc:@embedding/emb_matrix*5
_output_shapes#
!:�������������������*
Taxis0
r
embedding/ExpandDims/dimConst"/device:CPU:0*
valueB :
���������*
dtype0*
_output_shapes
: 
�
embedding/ExpandDims
ExpandDimsembedding/embedding_lookupembedding/ExpandDims/dim"/device:CPU:0*
T0*9
_output_shapes'
%:#�������������������*

Tdim0
~
%cnn_max_pool_2/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         �   
i
$cnn_max_pool_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&cnn_max_pool_2/truncated_normal/stddevConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
/cnn_max_pool_2/truncated_normal/TruncatedNormalTruncatedNormal%cnn_max_pool_2/truncated_normal/shape*
T0*
dtype0*(
_output_shapes
:��*
seed2 *

seed 
�
#cnn_max_pool_2/truncated_normal/mulMul/cnn_max_pool_2/truncated_normal/TruncatedNormal&cnn_max_pool_2/truncated_normal/stddev*
T0*(
_output_shapes
:��
�
cnn_max_pool_2/truncated_normalAdd#cnn_max_pool_2/truncated_normal/mul$cnn_max_pool_2/truncated_normal/mean*
T0*(
_output_shapes
:��
�
cnn_max_pool_2/W
VariableV2*
shape:��*
shared_name *
dtype0*(
_output_shapes
:��*
	container 
�
cnn_max_pool_2/W/AssignAssigncnn_max_pool_2/Wcnn_max_pool_2/truncated_normal*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
cnn_max_pool_2/W/readIdentitycnn_max_pool_2/W*
T0*#
_class
loc:@cnn_max_pool_2/W*(
_output_shapes
:��
c
cnn_max_pool_2/ConstConst*
valueB�*���=*
dtype0*
_output_shapes	
:�
~
cnn_max_pool_2/b
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
cnn_max_pool_2/b/AssignAssigncnn_max_pool_2/bcnn_max_pool_2/Const*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
~
cnn_max_pool_2/b/readIdentitycnn_max_pool_2/b*
T0*#
_class
loc:@cnn_max_pool_2/b*
_output_shapes	
:�
�
cnn_max_pool_2/convConv2Dembedding/ExpandDimscnn_max_pool_2/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*9
_output_shapes'
%:#�������������������
�
cnn_max_pool_2/BiasAddBiasAddcnn_max_pool_2/convcnn_max_pool_2/b/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
w
cnn_max_pool_2/reluRelucnn_max_pool_2/BiasAdd*9
_output_shapes'
%:#�������������������*
T0
�
cnn_max_pool_2/max_poolMaxPoolcnn_max_pool_2/relu*
T0*
strides
*
data_formatNHWC*
ksize
1*
paddingVALID*9
_output_shapes'
%:#�������������������
~
%cnn_max_pool_3/truncated_normal/shapeConst*%
valueB"         �   *
dtype0*
_output_shapes
:
i
$cnn_max_pool_3/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&cnn_max_pool_3/truncated_normal/stddevConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
/cnn_max_pool_3/truncated_normal/TruncatedNormalTruncatedNormal%cnn_max_pool_3/truncated_normal/shape*
T0*
dtype0*(
_output_shapes
:��*
seed2 *

seed 
�
#cnn_max_pool_3/truncated_normal/mulMul/cnn_max_pool_3/truncated_normal/TruncatedNormal&cnn_max_pool_3/truncated_normal/stddev*(
_output_shapes
:��*
T0
�
cnn_max_pool_3/truncated_normalAdd#cnn_max_pool_3/truncated_normal/mul$cnn_max_pool_3/truncated_normal/mean*
T0*(
_output_shapes
:��
�
cnn_max_pool_3/W
VariableV2*
dtype0*(
_output_shapes
:��*
	container *
shape:��*
shared_name 
�
cnn_max_pool_3/W/AssignAssigncnn_max_pool_3/Wcnn_max_pool_3/truncated_normal*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
cnn_max_pool_3/W/readIdentitycnn_max_pool_3/W*
T0*#
_class
loc:@cnn_max_pool_3/W*(
_output_shapes
:��
c
cnn_max_pool_3/ConstConst*
valueB�*���=*
dtype0*
_output_shapes	
:�
~
cnn_max_pool_3/b
VariableV2*
shared_name *
dtype0*
_output_shapes	
:�*
	container *
shape:�
�
cnn_max_pool_3/b/AssignAssigncnn_max_pool_3/bcnn_max_pool_3/Const*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
~
cnn_max_pool_3/b/readIdentitycnn_max_pool_3/b*
T0*#
_class
loc:@cnn_max_pool_3/b*
_output_shapes	
:�
�
cnn_max_pool_3/convConv2Dembedding/ExpandDimscnn_max_pool_3/W/read*
paddingVALID*9
_output_shapes'
%:#�������������������*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
cnn_max_pool_3/BiasAddBiasAddcnn_max_pool_3/convcnn_max_pool_3/b/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
w
cnn_max_pool_3/reluRelucnn_max_pool_3/BiasAdd*9
_output_shapes'
%:#�������������������*
T0
�
cnn_max_pool_3/max_poolMaxPoolcnn_max_pool_3/relu*
strides
*
data_formatNHWC*
ksize
0*
paddingVALID*9
_output_shapes'
%:#�������������������*
T0
~
%cnn_max_pool_4/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"         �   *
dtype0
i
$cnn_max_pool_4/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
k
&cnn_max_pool_4/truncated_normal/stddevConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
/cnn_max_pool_4/truncated_normal/TruncatedNormalTruncatedNormal%cnn_max_pool_4/truncated_normal/shape*
dtype0*(
_output_shapes
:��*
seed2 *

seed *
T0
�
#cnn_max_pool_4/truncated_normal/mulMul/cnn_max_pool_4/truncated_normal/TruncatedNormal&cnn_max_pool_4/truncated_normal/stddev*
T0*(
_output_shapes
:��
�
cnn_max_pool_4/truncated_normalAdd#cnn_max_pool_4/truncated_normal/mul$cnn_max_pool_4/truncated_normal/mean*
T0*(
_output_shapes
:��
�
cnn_max_pool_4/W
VariableV2*
dtype0*(
_output_shapes
:��*
	container *
shape:��*
shared_name 
�
cnn_max_pool_4/W/AssignAssigncnn_max_pool_4/Wcnn_max_pool_4/truncated_normal*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
cnn_max_pool_4/W/readIdentitycnn_max_pool_4/W*
T0*#
_class
loc:@cnn_max_pool_4/W*(
_output_shapes
:��
c
cnn_max_pool_4/ConstConst*
_output_shapes	
:�*
valueB�*���=*
dtype0
~
cnn_max_pool_4/b
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
cnn_max_pool_4/b/AssignAssigncnn_max_pool_4/bcnn_max_pool_4/Const*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
~
cnn_max_pool_4/b/readIdentitycnn_max_pool_4/b*
T0*#
_class
loc:@cnn_max_pool_4/b*
_output_shapes	
:�
�
cnn_max_pool_4/convConv2Dembedding/ExpandDimscnn_max_pool_4/W/read*
paddingVALID*9
_output_shapes'
%:#�������������������*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
cnn_max_pool_4/BiasAddBiasAddcnn_max_pool_4/convcnn_max_pool_4/b/read*
data_formatNHWC*9
_output_shapes'
%:#�������������������*
T0
w
cnn_max_pool_4/reluRelucnn_max_pool_4/BiasAdd*
T0*9
_output_shapes'
%:#�������������������
�
cnn_max_pool_4/max_poolMaxPoolcnn_max_pool_4/relu*9
_output_shapes'
%:#�������������������*
T0*
strides
*
data_formatNHWC*
ksize
/*
paddingVALID
M
concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
�
concatConcatV2cnn_max_pool_2/max_poolcnn_max_pool_3/max_poolcnn_max_pool_4/max_poolconcat/axis*
N*9
_output_shapes'
%:#�������������������*

Tidx0*
T0
^
Reshape/shapeConst*
valueB"�����  *
dtype0*
_output_shapes
:
j
ReshapeReshapeconcatReshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
\
dropout/dropout/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:����������*
seed2 
�
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*(
_output_shapes
:����������*
T0
�
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:����������
�
dropout/dropout/addAdddropout_keep_probdropout/dropout/random_uniform*
T0*(
_output_shapes
:����������
f
dropout/dropout/FloorFloordropout/dropout/add*
T0*(
_output_shapes
:����������
m
dropout/dropout/divRealDivReshapedropout_keep_prob*
T0*(
_output_shapes
:����������
y
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*
T0*(
_output_shapes
:����������
�
)output/W/Initializer/random_uniform/shapeConst*
_class
loc:@output/W*
valueB"�     *
dtype0*
_output_shapes
:
�
'output/W/Initializer/random_uniform/minConst*
_class
loc:@output/W*
valueB
 *<���*
dtype0*
_output_shapes
: 
�
'output/W/Initializer/random_uniform/maxConst*
_class
loc:@output/W*
valueB
 *<��=*
dtype0*
_output_shapes
: 
�
1output/W/Initializer/random_uniform/RandomUniformRandomUniform)output/W/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�*

seed *
T0*
_class
loc:@output/W*
seed2 
�
'output/W/Initializer/random_uniform/subSub'output/W/Initializer/random_uniform/max'output/W/Initializer/random_uniform/min*
_class
loc:@output/W*
_output_shapes
: *
T0
�
'output/W/Initializer/random_uniform/mulMul1output/W/Initializer/random_uniform/RandomUniform'output/W/Initializer/random_uniform/sub*
T0*
_class
loc:@output/W*
_output_shapes
:	�
�
#output/W/Initializer/random_uniformAdd'output/W/Initializer/random_uniform/mul'output/W/Initializer/random_uniform/min*
T0*
_class
loc:@output/W*
_output_shapes
:	�
�
output/W
VariableV2*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name *
_class
loc:@output/W
�
output/W/AssignAssignoutput/W#output/W/Initializer/random_uniform*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
j
output/W/readIdentityoutput/W*
T0*
_class
loc:@output/W*
_output_shapes
:	�
Y
output/ConstConst*
valueB*���=*
dtype0*
_output_shapes
:
t
output/b
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
output/b/AssignAssignoutput/boutput/Const*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
e
output/b/readIdentityoutput/b*
T0*
_class
loc:@output/b*
_output_shapes
:
S
output/l2_lossConst*
valueB
 *    *
dtype0*
_output_shapes
: 
G
output/L2LossL2Lossoutput/W/read*
_output_shapes
: *
T0
Q

output/addAddoutput/l2_lossoutput/L2Loss*
T0*
_output_shapes
: 
I
output/L2Loss_1L2Lossoutput/b/read*
_output_shapes
: *
T0
Q
output/add_1Add
output/addoutput/L2Loss_1*
T0*
_output_shapes
: 
�
output/logits/MatMulMatMuldropout/dropout/muloutput/W/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
output/logitsBiasAddoutput/logits/MatMuloutput/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
^
output/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
output/predictionsArgMaxoutput/logitsoutput/predictions/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
�
output/label_outLookupTableFindV2	out_tableoutput/predictionsConst_2*

Tout0*
_class
loc:@out_table*#
_output_shapes
:���������*	
Tin0	
f
$output/label_score/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
�
output/label_scoreMaxoutput/logits$output/label_score/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
]
inference/SoftmaxSoftmaxoutput/logits*
T0*'
_output_shapes
:���������
T
inference/output/kConst*
value	B :*
dtype0*
_output_shapes
: 
�
inference/outputTopKV2inference/Softmaxinference/output/k*:
_output_shapes(
&:���������:���������*
sorted(*
T0
k
inference/CastCastinference/output:1*

SrcT0*'
_output_shapes
:���������*

DstT0	
�
inference/label_outLookupTableFindV2	out_tableinference/CastConst_2*
_class
loc:@out_table*'
_output_shapes
:���������*	
Tin0	*

Tout0
y
.loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeinput/y_idx*
T0	*
out_type0*
_output_shapes
:
�
Lloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsoutput/logitsinput/y_idx*
T0*6
_output_shapes$
":���������:���������*
Tlabels0	
T

loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
	loss/MeanMeanLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
J
loss/mulMul
loss/mul/xoutput/add_1*
_output_shapes
: *
T0
E
loss/addAdd	loss/Meanloss/mul*
T0*
_output_shapes
: 
f
accuracy/EqualEqualoutput/predictionsinput/y_idx*
T0	*#
_output_shapes
:���������
b
accuracy/CastCastaccuracy/Equal*

SrcT0
*#
_output_shapes
:���������*

DstT0
X
accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
v
accuracy/accuracyMeanaccuracy/Castaccuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
A
(gradients/loss/add_grad/tuple/group_depsNoOp^gradients/Fill
�
0gradients/loss/add_grad/tuple/control_dependencyIdentitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
�
2gradients/loss/add_grad/tuple/control_dependency_1Identitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
p
&gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
 gradients/loss/Mean_grad/ReshapeReshape0gradients/loss/add_grad/tuple/control_dependency&gradients/loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/loss/Mean_grad/ShapeShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshapegradients/loss/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
 gradients/loss/Mean_grad/Shape_1ShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
c
 gradients/loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/ProdProd gradients/loss/Mean_grad/Shape_1gradients/loss/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
j
 gradients/loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_2 gradients/loss/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
d
"gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
_output_shapes
: *
T0
x
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
gradients/loss/mul_grad/MulMul2gradients/loss/add_grad/tuple/control_dependency_1output/add_1*
_output_shapes
: *
T0
�
gradients/loss/mul_grad/Mul_1Mul2gradients/loss/add_grad/tuple/control_dependency_1
loss/mul/x*
T0*
_output_shapes
: 
n
(gradients/loss/mul_grad/tuple/group_depsNoOp^gradients/loss/mul_grad/Mul^gradients/loss/mul_grad/Mul_1
�
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Mul)^gradients/loss/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/loss/mul_grad/Mul
�
2gradients/loss/mul_grad/tuple/control_dependency_1Identitygradients/loss/mul_grad/Mul_1)^gradients/loss/mul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
�
gradients/zeros_like	ZerosLikeNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������
�
kgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
jgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
fgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/loss/Mean_grad/truedivjgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:���������*

Tdim0*
T0
�
_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulfgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimskgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:���������*
T0
i
,gradients/output/add_1_grad/tuple/group_depsNoOp3^gradients/loss/mul_grad/tuple/control_dependency_1
�
4gradients/output/add_1_grad/tuple/control_dependencyIdentity2gradients/loss/mul_grad/tuple/control_dependency_1-^gradients/output/add_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
�
6gradients/output/add_1_grad/tuple/control_dependency_1Identity2gradients/loss/mul_grad/tuple/control_dependency_1-^gradients/output/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
�
(gradients/output/logits_grad/BiasAddGradBiasAddGrad_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
�
-gradients/output/logits_grad/tuple/group_depsNoOp`^gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul)^gradients/output/logits_grad/BiasAddGrad
�
5gradients/output/logits_grad/tuple/control_dependencyIdentity_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.^gradients/output/logits_grad/tuple/group_deps*
T0*r
_classh
fdloc:@gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:���������
�
7gradients/output/logits_grad/tuple/control_dependency_1Identity(gradients/output/logits_grad/BiasAddGrad.^gradients/output/logits_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/output/logits_grad/BiasAddGrad*
_output_shapes
:
i
*gradients/output/add_grad/tuple/group_depsNoOp5^gradients/output/add_1_grad/tuple/control_dependency
�
2gradients/output/add_grad/tuple/control_dependencyIdentity4gradients/output/add_1_grad/tuple/control_dependency+^gradients/output/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
�
4gradients/output/add_grad/tuple/control_dependency_1Identity4gradients/output/add_1_grad/tuple/control_dependency+^gradients/output/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
�
"gradients/output/L2Loss_1_grad/mulMuloutput/b/read6gradients/output/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
�
*gradients/output/logits/MatMul_grad/MatMulMatMul5gradients/output/logits_grad/tuple/control_dependencyoutput/W/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
,gradients/output/logits/MatMul_grad/MatMul_1MatMuldropout/dropout/mul5gradients/output/logits_grad/tuple/control_dependency*
_output_shapes
:	�*
transpose_a(*
transpose_b( *
T0
�
4gradients/output/logits/MatMul_grad/tuple/group_depsNoOp+^gradients/output/logits/MatMul_grad/MatMul-^gradients/output/logits/MatMul_grad/MatMul_1
�
<gradients/output/logits/MatMul_grad/tuple/control_dependencyIdentity*gradients/output/logits/MatMul_grad/MatMul5^gradients/output/logits/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*=
_class3
1/loc:@gradients/output/logits/MatMul_grad/MatMul
�
>gradients/output/logits/MatMul_grad/tuple/control_dependency_1Identity,gradients/output/logits/MatMul_grad/MatMul_15^gradients/output/logits/MatMul_grad/tuple/group_deps*
_output_shapes
:	�*
T0*?
_class5
31loc:@gradients/output/logits/MatMul_grad/MatMul_1
�
 gradients/output/L2Loss_grad/mulMuloutput/W/read4gradients/output/add_grad/tuple/control_dependency_1*
_output_shapes
:	�*
T0
�
gradients/AddNAddN7gradients/output/logits_grad/tuple/control_dependency_1"gradients/output/L2Loss_1_grad/mul*
T0*;
_class1
/-loc:@gradients/output/logits_grad/BiasAddGrad*
N*
_output_shapes
:
{
(gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*
_output_shapes
:

*gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
T0*
out_type0*
_output_shapes
:
�
8gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/mul_grad/Shape*gradients/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
&gradients/dropout/dropout/mul_grad/MulMul<gradients/output/logits/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
T0*(
_output_shapes
:����������
�
&gradients/dropout/dropout/mul_grad/SumSum&gradients/dropout/dropout/mul_grad/Mul8gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
*gradients/dropout/dropout/mul_grad/ReshapeReshape&gradients/dropout/dropout/mul_grad/Sum(gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
(gradients/dropout/dropout/mul_grad/Mul_1Muldropout/dropout/div<gradients/output/logits/MatMul_grad/tuple/control_dependency*(
_output_shapes
:����������*
T0
�
(gradients/dropout/dropout/mul_grad/Sum_1Sum(gradients/dropout/dropout/mul_grad/Mul_1:gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
,gradients/dropout/dropout/mul_grad/Reshape_1Reshape(gradients/dropout/dropout/mul_grad/Sum_1*gradients/dropout/dropout/mul_grad/Shape_1*(
_output_shapes
:����������*
T0*
Tshape0
�
3gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/mul_grad/Reshape-^gradients/dropout/dropout/mul_grad/Reshape_1
�
;gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/mul_grad/Reshape4^gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:����������
�
=gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/mul_grad/Reshape_14^gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:����������
�
gradients/AddN_1AddN>gradients/output/logits/MatMul_grad/tuple/control_dependency_1 gradients/output/L2Loss_grad/mul*
T0*?
_class5
31loc:@gradients/output/logits/MatMul_grad/MatMul_1*
N*
_output_shapes
:	�
o
(gradients/dropout/dropout/div_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
m
*gradients/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
8gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/div_grad/Shape*gradients/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
*gradients/dropout/dropout/div_grad/RealDivRealDiv;gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout_keep_prob*
T0*(
_output_shapes
:����������
�
&gradients/dropout/dropout/div_grad/SumSum*gradients/dropout/dropout/div_grad/RealDiv8gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
*gradients/dropout/dropout/div_grad/ReshapeReshape&gradients/dropout/dropout/div_grad/Sum(gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
i
&gradients/dropout/dropout/div_grad/NegNegReshape*
T0*(
_output_shapes
:����������
�
,gradients/dropout/dropout/div_grad/RealDiv_1RealDiv&gradients/dropout/dropout/div_grad/Negdropout_keep_prob*
T0*(
_output_shapes
:����������
�
,gradients/dropout/dropout/div_grad/RealDiv_2RealDiv,gradients/dropout/dropout/div_grad/RealDiv_1dropout_keep_prob*(
_output_shapes
:����������*
T0
�
&gradients/dropout/dropout/div_grad/mulMul;gradients/dropout/dropout/mul_grad/tuple/control_dependency,gradients/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:����������
�
(gradients/dropout/dropout/div_grad/Sum_1Sum&gradients/dropout/dropout/div_grad/mul:gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
,gradients/dropout/dropout/div_grad/Reshape_1Reshape(gradients/dropout/dropout/div_grad/Sum_1*gradients/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
3gradients/dropout/dropout/div_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/div_grad/Reshape-^gradients/dropout/dropout/div_grad/Reshape_1
�
;gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/div_grad/Reshape4^gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dropout/dropout/div_grad/Reshape*(
_output_shapes
:����������
�
=gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/div_grad/Reshape_14^gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
b
gradients/Reshape_grad/ShapeShapeconcat*
T0*
out_type0*
_output_shapes
:
�
gradients/Reshape_grad/ReshapeReshape;gradients/dropout/dropout/div_grad/tuple/control_dependencygradients/Reshape_grad/Shape*9
_output_shapes'
%:#�������������������*
T0*
Tshape0
\
gradients/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
o
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0*
_output_shapes
: 
r
gradients/concat_grad/ShapeShapecnn_max_pool_2/max_pool*
T0*
out_type0*
_output_shapes
:
�
gradients/concat_grad/ShapeNShapeNcnn_max_pool_2/max_poolcnn_max_pool_3/max_poolcnn_max_pool_4/max_pool*
T0*
out_type0*
N*&
_output_shapes
:::
�
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1gradients/concat_grad/ShapeN:2*
N*&
_output_shapes
:::
�
gradients/concat_grad/SliceSlicegradients/Reshape_grad/Reshape"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
Index0*
T0*9
_output_shapes'
%:#�������������������
�
gradients/concat_grad/Slice_1Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
Index0*
T0*9
_output_shapes'
%:#�������������������
�
gradients/concat_grad/Slice_2Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:2gradients/concat_grad/ShapeN:2*
Index0*
T0*9
_output_shapes'
%:#�������������������
�
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1^gradients/concat_grad/Slice_2
�
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice*9
_output_shapes'
%:#�������������������
�
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_1*9
_output_shapes'
%:#�������������������
�
0gradients/concat_grad/tuple/control_dependency_2Identitygradients/concat_grad/Slice_2'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_2*9
_output_shapes'
%:#�������������������
�
2gradients/cnn_max_pool_2/max_pool_grad/MaxPoolGradMaxPoolGradcnn_max_pool_2/relucnn_max_pool_2/max_pool.gradients/concat_grad/tuple/control_dependency*
paddingVALID*9
_output_shapes'
%:#�������������������*
T0*
strides
*
data_formatNHWC*
ksize
1
�
2gradients/cnn_max_pool_3/max_pool_grad/MaxPoolGradMaxPoolGradcnn_max_pool_3/relucnn_max_pool_3/max_pool0gradients/concat_grad/tuple/control_dependency_1*
ksize
0*
paddingVALID*9
_output_shapes'
%:#�������������������*
T0*
strides
*
data_formatNHWC
�
2gradients/cnn_max_pool_4/max_pool_grad/MaxPoolGradMaxPoolGradcnn_max_pool_4/relucnn_max_pool_4/max_pool0gradients/concat_grad/tuple/control_dependency_2*
ksize
/*
paddingVALID*9
_output_shapes'
%:#�������������������*
T0*
strides
*
data_formatNHWC
�
+gradients/cnn_max_pool_2/relu_grad/ReluGradReluGrad2gradients/cnn_max_pool_2/max_pool_grad/MaxPoolGradcnn_max_pool_2/relu*
T0*9
_output_shapes'
%:#�������������������
�
+gradients/cnn_max_pool_3/relu_grad/ReluGradReluGrad2gradients/cnn_max_pool_3/max_pool_grad/MaxPoolGradcnn_max_pool_3/relu*
T0*9
_output_shapes'
%:#�������������������
�
+gradients/cnn_max_pool_4/relu_grad/ReluGradReluGrad2gradients/cnn_max_pool_4/max_pool_grad/MaxPoolGradcnn_max_pool_4/relu*
T0*9
_output_shapes'
%:#�������������������
�
1gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/cnn_max_pool_2/relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
6gradients/cnn_max_pool_2/BiasAdd_grad/tuple/group_depsNoOp2^gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGrad,^gradients/cnn_max_pool_2/relu_grad/ReluGrad
�
>gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/cnn_max_pool_2/relu_grad/ReluGrad7^gradients/cnn_max_pool_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cnn_max_pool_2/relu_grad/ReluGrad*9
_output_shapes'
%:#�������������������
�
@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGrad7^gradients/cnn_max_pool_2/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cnn_max_pool_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
1gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/cnn_max_pool_3/relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
6gradients/cnn_max_pool_3/BiasAdd_grad/tuple/group_depsNoOp2^gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGrad,^gradients/cnn_max_pool_3/relu_grad/ReluGrad
�
>gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/cnn_max_pool_3/relu_grad/ReluGrad7^gradients/cnn_max_pool_3/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cnn_max_pool_3/relu_grad/ReluGrad*9
_output_shapes'
%:#�������������������
�
@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGrad7^gradients/cnn_max_pool_3/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cnn_max_pool_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
1gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/cnn_max_pool_4/relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
6gradients/cnn_max_pool_4/BiasAdd_grad/tuple/group_depsNoOp2^gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGrad,^gradients/cnn_max_pool_4/relu_grad/ReluGrad
�
>gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/cnn_max_pool_4/relu_grad/ReluGrad7^gradients/cnn_max_pool_4/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cnn_max_pool_4/relu_grad/ReluGrad*9
_output_shapes'
%:#�������������������
�
@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1Identity1gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGrad7^gradients/cnn_max_pool_4/BiasAdd_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cnn_max_pool_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
)gradients/cnn_max_pool_2/conv_grad/ShapeNShapeNembedding/ExpandDimscnn_max_pool_2/W/read*
T0*
out_type0*
N* 
_output_shapes
::
�
6gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/cnn_max_pool_2/conv_grad/ShapeNcnn_max_pool_2/W/read>gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*9
_output_shapes'
%:#�������������������*
	dilations

�
7gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/cnn_max_pool_2/conv_grad/ShapeN:1>gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:��*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
�
3gradients/cnn_max_pool_2/conv_grad/tuple/group_depsNoOp8^gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilter7^gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput
�
;gradients/cnn_max_pool_2/conv_grad/tuple/control_dependencyIdentity6gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput4^gradients/cnn_max_pool_2/conv_grad/tuple/group_deps*9
_output_shapes'
%:#�������������������*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput
�
=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1Identity7gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilter4^gradients/cnn_max_pool_2/conv_grad/tuple/group_deps*(
_output_shapes
:��*
T0*J
_class@
><loc:@gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropFilter
�
)gradients/cnn_max_pool_3/conv_grad/ShapeNShapeNembedding/ExpandDimscnn_max_pool_3/W/read*
T0*
out_type0*
N* 
_output_shapes
::
�
6gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/cnn_max_pool_3/conv_grad/ShapeNcnn_max_pool_3/W/read>gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*9
_output_shapes'
%:#�������������������
�
7gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/cnn_max_pool_3/conv_grad/ShapeN:1>gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*(
_output_shapes
:��
�
3gradients/cnn_max_pool_3/conv_grad/tuple/group_depsNoOp8^gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilter7^gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInput
�
;gradients/cnn_max_pool_3/conv_grad/tuple/control_dependencyIdentity6gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInput4^gradients/cnn_max_pool_3/conv_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropInput*9
_output_shapes'
%:#�������������������
�
=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1Identity7gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilter4^gradients/cnn_max_pool_3/conv_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/cnn_max_pool_3/conv_grad/Conv2DBackpropFilter*(
_output_shapes
:��
�
)gradients/cnn_max_pool_4/conv_grad/ShapeNShapeNembedding/ExpandDimscnn_max_pool_4/W/read*
T0*
out_type0*
N* 
_output_shapes
::
�
6gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/cnn_max_pool_4/conv_grad/ShapeNcnn_max_pool_4/W/read>gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency*
paddingVALID*9
_output_shapes'
%:#�������������������*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
7gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilterConv2DBackpropFilterembedding/ExpandDims+gradients/cnn_max_pool_4/conv_grad/ShapeN:1>gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*(
_output_shapes
:��
�
3gradients/cnn_max_pool_4/conv_grad/tuple/group_depsNoOp8^gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilter7^gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInput
�
;gradients/cnn_max_pool_4/conv_grad/tuple/control_dependencyIdentity6gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInput4^gradients/cnn_max_pool_4/conv_grad/tuple/group_deps*9
_output_shapes'
%:#�������������������*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropInput
�
=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1Identity7gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilter4^gradients/cnn_max_pool_4/conv_grad/tuple/group_deps*(
_output_shapes
:��*
T0*J
_class@
><loc:@gradients/cnn_max_pool_4/conv_grad/Conv2DBackpropFilter
�
gradients/AddN_2AddN;gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency;gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency;gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency*
N*9
_output_shapes'
%:#�������������������*
T0*I
_class?
=;loc:@gradients/cnn_max_pool_2/conv_grad/Conv2DBackpropInput
�
)gradients/embedding/ExpandDims_grad/ShapeShapeembedding/embedding_lookup*
T0*
out_type0*
_output_shapes
:
�
+gradients/embedding/ExpandDims_grad/ReshapeReshapegradients/AddN_2)gradients/embedding/ExpandDims_grad/Shape*5
_output_shapes#
!:�������������������*
T0*
Tshape0
�
/gradients/embedding/embedding_lookup_grad/ShapeConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*%
valueB	"�             *
dtype0	*
_output_shapes
:
�
1gradients/embedding/embedding_lookup_grad/ToInt32Cast/gradients/embedding/embedding_lookup_grad/Shape"/device:CPU:0*

SrcT0	*'
_class
loc:@embedding/emb_matrix*
_output_shapes
:*

DstT0
t
.gradients/embedding/embedding_lookup_grad/SizeSizeinput/x_idx*
_output_shapes
: *
T0	*
out_type0
z
8gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
4gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims.gradients/embedding/embedding_lookup_grad/Size8gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
�
=gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
�
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
7gradients/embedding/embedding_lookup_grad/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt32=gradients/embedding/embedding_lookup_grad/strided_slice/stack?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
w
5gradients/embedding/embedding_lookup_grad/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
0gradients/embedding/embedding_lookup_grad/concatConcatV24gradients/embedding/embedding_lookup_grad/ExpandDims7gradients/embedding/embedding_lookup_grad/strided_slice5gradients/embedding/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
1gradients/embedding/embedding_lookup_grad/ReshapeReshape+gradients/embedding/ExpandDims_grad/Reshape0gradients/embedding/embedding_lookup_grad/concat*(
_output_shapes
:����������*
T0*
Tshape0
�
3gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeinput/x_idx4gradients/embedding/embedding_lookup_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:���������
�
beta1_power/initial_valueConst*
_output_shapes
: *#
_class
loc:@cnn_max_pool_2/W*
valueB
 *fff?*
dtype0
�
beta1_power
VariableV2*#
_class
loc:@cnn_max_pool_2/W*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
o
beta1_power/readIdentitybeta1_power*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 
�
beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *#
_class
loc:@cnn_max_pool_2/W*
valueB
 *w�?
�
beta2_power
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_2/W*
	container *
shape: *
dtype0*
_output_shapes
: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
o
beta2_power/readIdentitybeta2_power*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 
�
;embedding/emb_matrix/Adam/Initializer/zeros/shape_as_tensorConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB"�     *
dtype0*
_output_shapes
:
�
1embedding/emb_matrix/Adam/Initializer/zeros/ConstConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *    *
dtype0*
_output_shapes
: 
�
+embedding/emb_matrix/Adam/Initializer/zerosFill;embedding/emb_matrix/Adam/Initializer/zeros/shape_as_tensor1embedding/emb_matrix/Adam/Initializer/zeros/Const"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*

index_type0* 
_output_shapes
:
��
�
embedding/emb_matrix/Adam
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
��*
shared_name *'
_class
loc:@embedding/emb_matrix*
	container *
shape:
��
�
 embedding/emb_matrix/Adam/AssignAssignembedding/emb_matrix/Adam+embedding/emb_matrix/Adam/Initializer/zeros"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
embedding/emb_matrix/Adam/readIdentityembedding/emb_matrix/Adam"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
=embedding/emb_matrix/Adam_1/Initializer/zeros/shape_as_tensorConst"/device:CPU:0*
dtype0*
_output_shapes
:*'
_class
loc:@embedding/emb_matrix*
valueB"�     
�
3embedding/emb_matrix/Adam_1/Initializer/zeros/ConstConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *    *
dtype0*
_output_shapes
: 
�
-embedding/emb_matrix/Adam_1/Initializer/zerosFill=embedding/emb_matrix/Adam_1/Initializer/zeros/shape_as_tensor3embedding/emb_matrix/Adam_1/Initializer/zeros/Const"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*

index_type0* 
_output_shapes
:
��
�
embedding/emb_matrix/Adam_1
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
��*
shared_name *'
_class
loc:@embedding/emb_matrix*
	container *
shape:
��
�
"embedding/emb_matrix/Adam_1/AssignAssignembedding/emb_matrix/Adam_1-embedding/emb_matrix/Adam_1/Initializer/zeros"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
 embedding/emb_matrix/Adam_1/readIdentityembedding/emb_matrix/Adam_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
7cnn_max_pool_2/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_2/W*%
valueB"         �   *
dtype0*
_output_shapes
:
�
-cnn_max_pool_2/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'cnn_max_pool_2/W/Adam/Initializer/zerosFill7cnn_max_pool_2/W/Adam/Initializer/zeros/shape_as_tensor-cnn_max_pool_2/W/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@cnn_max_pool_2/W*

index_type0*(
_output_shapes
:��
�
cnn_max_pool_2/W/Adam
VariableV2*
dtype0*(
_output_shapes
:��*
shared_name *#
_class
loc:@cnn_max_pool_2/W*
	container *
shape:��
�
cnn_max_pool_2/W/Adam/AssignAssigncnn_max_pool_2/W/Adam'cnn_max_pool_2/W/Adam/Initializer/zeros*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
cnn_max_pool_2/W/Adam/readIdentitycnn_max_pool_2/W/Adam*
T0*#
_class
loc:@cnn_max_pool_2/W*(
_output_shapes
:��
�
9cnn_max_pool_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_2/W*%
valueB"         �   *
dtype0*
_output_shapes
:
�
/cnn_max_pool_2/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)cnn_max_pool_2/W/Adam_1/Initializer/zerosFill9cnn_max_pool_2/W/Adam_1/Initializer/zeros/shape_as_tensor/cnn_max_pool_2/W/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@cnn_max_pool_2/W*

index_type0*(
_output_shapes
:��
�
cnn_max_pool_2/W/Adam_1
VariableV2*
	container *
shape:��*
dtype0*(
_output_shapes
:��*
shared_name *#
_class
loc:@cnn_max_pool_2/W
�
cnn_max_pool_2/W/Adam_1/AssignAssigncnn_max_pool_2/W/Adam_1)cnn_max_pool_2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
cnn_max_pool_2/W/Adam_1/readIdentitycnn_max_pool_2/W/Adam_1*
T0*#
_class
loc:@cnn_max_pool_2/W*(
_output_shapes
:��
�
'cnn_max_pool_2/b/Adam/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_2/b*
valueB�*    *
dtype0*
_output_shapes	
:�
�
cnn_max_pool_2/b/Adam
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_2/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
cnn_max_pool_2/b/Adam/AssignAssigncnn_max_pool_2/b/Adam'cnn_max_pool_2/b/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
cnn_max_pool_2/b/Adam/readIdentitycnn_max_pool_2/b/Adam*
_output_shapes	
:�*
T0*#
_class
loc:@cnn_max_pool_2/b
�
)cnn_max_pool_2/b/Adam_1/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_2/b*
valueB�*    *
dtype0*
_output_shapes	
:�
�
cnn_max_pool_2/b/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *#
_class
loc:@cnn_max_pool_2/b*
	container *
shape:�
�
cnn_max_pool_2/b/Adam_1/AssignAssigncnn_max_pool_2/b/Adam_1)cnn_max_pool_2/b/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
cnn_max_pool_2/b/Adam_1/readIdentitycnn_max_pool_2/b/Adam_1*
T0*#
_class
loc:@cnn_max_pool_2/b*
_output_shapes	
:�
�
7cnn_max_pool_3/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_3/W*%
valueB"         �   *
dtype0*
_output_shapes
:
�
-cnn_max_pool_3/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_3/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'cnn_max_pool_3/W/Adam/Initializer/zerosFill7cnn_max_pool_3/W/Adam/Initializer/zeros/shape_as_tensor-cnn_max_pool_3/W/Adam/Initializer/zeros/Const*(
_output_shapes
:��*
T0*#
_class
loc:@cnn_max_pool_3/W*

index_type0
�
cnn_max_pool_3/W/Adam
VariableV2*#
_class
loc:@cnn_max_pool_3/W*
	container *
shape:��*
dtype0*(
_output_shapes
:��*
shared_name 
�
cnn_max_pool_3/W/Adam/AssignAssigncnn_max_pool_3/W/Adam'cnn_max_pool_3/W/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
cnn_max_pool_3/W/Adam/readIdentitycnn_max_pool_3/W/Adam*(
_output_shapes
:��*
T0*#
_class
loc:@cnn_max_pool_3/W
�
9cnn_max_pool_3/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_3/W*%
valueB"         �   *
dtype0*
_output_shapes
:
�
/cnn_max_pool_3/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_3/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)cnn_max_pool_3/W/Adam_1/Initializer/zerosFill9cnn_max_pool_3/W/Adam_1/Initializer/zeros/shape_as_tensor/cnn_max_pool_3/W/Adam_1/Initializer/zeros/Const*(
_output_shapes
:��*
T0*#
_class
loc:@cnn_max_pool_3/W*

index_type0
�
cnn_max_pool_3/W/Adam_1
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_3/W*
	container *
shape:��*
dtype0*(
_output_shapes
:��
�
cnn_max_pool_3/W/Adam_1/AssignAssigncnn_max_pool_3/W/Adam_1)cnn_max_pool_3/W/Adam_1/Initializer/zeros*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
cnn_max_pool_3/W/Adam_1/readIdentitycnn_max_pool_3/W/Adam_1*
T0*#
_class
loc:@cnn_max_pool_3/W*(
_output_shapes
:��
�
'cnn_max_pool_3/b/Adam/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_3/b*
valueB�*    *
dtype0*
_output_shapes	
:�
�
cnn_max_pool_3/b/Adam
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_3/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
cnn_max_pool_3/b/Adam/AssignAssigncnn_max_pool_3/b/Adam'cnn_max_pool_3/b/Adam/Initializer/zeros*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
cnn_max_pool_3/b/Adam/readIdentitycnn_max_pool_3/b/Adam*
T0*#
_class
loc:@cnn_max_pool_3/b*
_output_shapes	
:�
�
)cnn_max_pool_3/b/Adam_1/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_3/b*
valueB�*    *
dtype0*
_output_shapes	
:�
�
cnn_max_pool_3/b/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *#
_class
loc:@cnn_max_pool_3/b*
	container *
shape:�
�
cnn_max_pool_3/b/Adam_1/AssignAssigncnn_max_pool_3/b/Adam_1)cnn_max_pool_3/b/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
cnn_max_pool_3/b/Adam_1/readIdentitycnn_max_pool_3/b/Adam_1*
T0*#
_class
loc:@cnn_max_pool_3/b*
_output_shapes	
:�
�
7cnn_max_pool_4/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_4/W*%
valueB"         �   *
dtype0*
_output_shapes
:
�
-cnn_max_pool_4/W/Adam/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'cnn_max_pool_4/W/Adam/Initializer/zerosFill7cnn_max_pool_4/W/Adam/Initializer/zeros/shape_as_tensor-cnn_max_pool_4/W/Adam/Initializer/zeros/Const*(
_output_shapes
:��*
T0*#
_class
loc:@cnn_max_pool_4/W*

index_type0
�
cnn_max_pool_4/W/Adam
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_4/W*
	container *
shape:��*
dtype0*(
_output_shapes
:��
�
cnn_max_pool_4/W/Adam/AssignAssigncnn_max_pool_4/W/Adam'cnn_max_pool_4/W/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
cnn_max_pool_4/W/Adam/readIdentitycnn_max_pool_4/W/Adam*
T0*#
_class
loc:@cnn_max_pool_4/W*(
_output_shapes
:��
�
9cnn_max_pool_4/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@cnn_max_pool_4/W*%
valueB"         �   *
dtype0*
_output_shapes
:
�
/cnn_max_pool_4/W/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@cnn_max_pool_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)cnn_max_pool_4/W/Adam_1/Initializer/zerosFill9cnn_max_pool_4/W/Adam_1/Initializer/zeros/shape_as_tensor/cnn_max_pool_4/W/Adam_1/Initializer/zeros/Const*(
_output_shapes
:��*
T0*#
_class
loc:@cnn_max_pool_4/W*

index_type0
�
cnn_max_pool_4/W/Adam_1
VariableV2*
	container *
shape:��*
dtype0*(
_output_shapes
:��*
shared_name *#
_class
loc:@cnn_max_pool_4/W
�
cnn_max_pool_4/W/Adam_1/AssignAssigncnn_max_pool_4/W/Adam_1)cnn_max_pool_4/W/Adam_1/Initializer/zeros*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
cnn_max_pool_4/W/Adam_1/readIdentitycnn_max_pool_4/W/Adam_1*(
_output_shapes
:��*
T0*#
_class
loc:@cnn_max_pool_4/W
�
'cnn_max_pool_4/b/Adam/Initializer/zerosConst*
_output_shapes	
:�*#
_class
loc:@cnn_max_pool_4/b*
valueB�*    *
dtype0
�
cnn_max_pool_4/b/Adam
VariableV2*#
_class
loc:@cnn_max_pool_4/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
cnn_max_pool_4/b/Adam/AssignAssigncnn_max_pool_4/b/Adam'cnn_max_pool_4/b/Adam/Initializer/zeros*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
cnn_max_pool_4/b/Adam/readIdentitycnn_max_pool_4/b/Adam*
T0*#
_class
loc:@cnn_max_pool_4/b*
_output_shapes	
:�
�
)cnn_max_pool_4/b/Adam_1/Initializer/zerosConst*#
_class
loc:@cnn_max_pool_4/b*
valueB�*    *
dtype0*
_output_shapes	
:�
�
cnn_max_pool_4/b/Adam_1
VariableV2*
shared_name *#
_class
loc:@cnn_max_pool_4/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
cnn_max_pool_4/b/Adam_1/AssignAssigncnn_max_pool_4/b/Adam_1)cnn_max_pool_4/b/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
cnn_max_pool_4/b/Adam_1/readIdentitycnn_max_pool_4/b/Adam_1*
T0*#
_class
loc:@cnn_max_pool_4/b*
_output_shapes	
:�
�
/output/W/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@output/W*
valueB"�     *
dtype0*
_output_shapes
:
�
%output/W/Adam/Initializer/zeros/ConstConst*
_class
loc:@output/W*
valueB
 *    *
dtype0*
_output_shapes
: 
�
output/W/Adam/Initializer/zerosFill/output/W/Adam/Initializer/zeros/shape_as_tensor%output/W/Adam/Initializer/zeros/Const*
T0*
_class
loc:@output/W*

index_type0*
_output_shapes
:	�
�
output/W/Adam
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *
_class
loc:@output/W*
	container *
shape:	�
�
output/W/Adam/AssignAssignoutput/W/Adamoutput/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
t
output/W/Adam/readIdentityoutput/W/Adam*
T0*
_class
loc:@output/W*
_output_shapes
:	�
�
1output/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@output/W*
valueB"�     *
dtype0*
_output_shapes
:
�
'output/W/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@output/W*
valueB
 *    
�
!output/W/Adam_1/Initializer/zerosFill1output/W/Adam_1/Initializer/zeros/shape_as_tensor'output/W/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@output/W*

index_type0*
_output_shapes
:	�
�
output/W/Adam_1
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *
_class
loc:@output/W*
	container *
shape:	�
�
output/W/Adam_1/AssignAssignoutput/W/Adam_1!output/W/Adam_1/Initializer/zeros*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
x
output/W/Adam_1/readIdentityoutput/W/Adam_1*
_output_shapes
:	�*
T0*
_class
loc:@output/W
�
output/b/Adam/Initializer/zerosConst*
_class
loc:@output/b*
valueB*    *
dtype0*
_output_shapes
:
�
output/b/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/b*
	container 
�
output/b/Adam/AssignAssignoutput/b/Adamoutput/b/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
o
output/b/Adam/readIdentityoutput/b/Adam*
T0*
_class
loc:@output/b*
_output_shapes
:
�
!output/b/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@output/b*
valueB*    
�
output/b/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/b*
	container *
shape:
�
output/b/Adam_1/AssignAssignoutput/b/Adam_1!output/b/Adam_1/Initializer/zeros*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
s
output/b/Adam_1/readIdentityoutput/b/Adam_1*
T0*
_class
loc:@output/b*
_output_shapes
:
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w�?
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *w�+2*
dtype0
�
'Adam/update_embedding/emb_matrix/UniqueUnique3gradients/embedding/embedding_lookup_grad/Reshape_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
&Adam/update_embedding/emb_matrix/ShapeShape'Adam/update_embedding/emb_matrix/Unique"/device:CPU:0*
T0	*'
_class
loc:@embedding/emb_matrix*
out_type0*
_output_shapes
:
�
4Adam/update_embedding/emb_matrix/strided_slice/stackConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB: *
dtype0*
_output_shapes
:
�
6Adam/update_embedding/emb_matrix/strided_slice/stack_1Const"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB:*
dtype0*
_output_shapes
:
�
6Adam/update_embedding/emb_matrix/strided_slice/stack_2Const"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB:*
dtype0*
_output_shapes
:
�
.Adam/update_embedding/emb_matrix/strided_sliceStridedSlice&Adam/update_embedding/emb_matrix/Shape4Adam/update_embedding/emb_matrix/strided_slice/stack6Adam/update_embedding/emb_matrix/strided_slice/stack_16Adam/update_embedding/emb_matrix/strided_slice/stack_2"/device:CPU:0*
end_mask *
_output_shapes
: *
T0*
Index0*'
_class
loc:@embedding/emb_matrix*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
�
3Adam/update_embedding/emb_matrix/UnsortedSegmentSumUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape)Adam/update_embedding/emb_matrix/Unique:1.Adam/update_embedding/emb_matrix/strided_slice"/device:CPU:0*
Tnumsegments0*
Tindices0*
T0*'
_class
loc:@embedding/emb_matrix*(
_output_shapes
:����������
�
&Adam/update_embedding/emb_matrix/sub/xConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
$Adam/update_embedding/emb_matrix/subSub&Adam/update_embedding/emb_matrix/sub/xbeta2_power/read"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@embedding/emb_matrix
�
%Adam/update_embedding/emb_matrix/SqrtSqrt$Adam/update_embedding/emb_matrix/sub"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
�
$Adam/update_embedding/emb_matrix/mulMulVariable/read%Adam/update_embedding/emb_matrix/Sqrt"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
�
(Adam/update_embedding/emb_matrix/sub_1/xConst"/device:CPU:0*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/emb_matrix*
valueB
 *  �?
�
&Adam/update_embedding/emb_matrix/sub_1Sub(Adam/update_embedding/emb_matrix/sub_1/xbeta1_power/read"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
�
(Adam/update_embedding/emb_matrix/truedivRealDiv$Adam/update_embedding/emb_matrix/mul&Adam/update_embedding/emb_matrix/sub_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
�
(Adam/update_embedding/emb_matrix/sub_2/xConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
&Adam/update_embedding/emb_matrix/sub_2Sub(Adam/update_embedding/emb_matrix/sub_2/x
Adam/beta1"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@embedding/emb_matrix
�
&Adam/update_embedding/emb_matrix/mul_1Mul3Adam/update_embedding/emb_matrix/UnsortedSegmentSum&Adam/update_embedding/emb_matrix/sub_2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*(
_output_shapes
:����������
�
&Adam/update_embedding/emb_matrix/mul_2Mulembedding/emb_matrix/Adam/read
Adam/beta1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
'Adam/update_embedding/emb_matrix/AssignAssignembedding/emb_matrix/Adam&Adam/update_embedding/emb_matrix/mul_2"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking( *
T0
�
+Adam/update_embedding/emb_matrix/ScatterAdd
ScatterAddembedding/emb_matrix/Adam'Adam/update_embedding/emb_matrix/Unique&Adam/update_embedding/emb_matrix/mul_1(^Adam/update_embedding/emb_matrix/Assign"/device:CPU:0*
use_locking( *
Tindices0	*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
&Adam/update_embedding/emb_matrix/mul_3Mul3Adam/update_embedding/emb_matrix/UnsortedSegmentSum3Adam/update_embedding/emb_matrix/UnsortedSegmentSum"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*(
_output_shapes
:����������
�
(Adam/update_embedding/emb_matrix/sub_3/xConst"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
&Adam/update_embedding/emb_matrix/sub_3Sub(Adam/update_embedding/emb_matrix/sub_3/x
Adam/beta2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
_output_shapes
: 
�
&Adam/update_embedding/emb_matrix/mul_4Mul&Adam/update_embedding/emb_matrix/mul_3&Adam/update_embedding/emb_matrix/sub_3"/device:CPU:0*(
_output_shapes
:����������*
T0*'
_class
loc:@embedding/emb_matrix
�
&Adam/update_embedding/emb_matrix/mul_5Mul embedding/emb_matrix/Adam_1/read
Adam/beta2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
)Adam/update_embedding/emb_matrix/Assign_1Assignembedding/emb_matrix/Adam_1&Adam/update_embedding/emb_matrix/mul_5"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking( *
T0
�
-Adam/update_embedding/emb_matrix/ScatterAdd_1
ScatterAddembedding/emb_matrix/Adam_1'Adam/update_embedding/emb_matrix/Unique&Adam/update_embedding/emb_matrix/mul_4*^Adam/update_embedding/emb_matrix/Assign_1"/device:CPU:0*
use_locking( *
Tindices0	*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
'Adam/update_embedding/emb_matrix/Sqrt_1Sqrt-Adam/update_embedding/emb_matrix/ScatterAdd_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
&Adam/update_embedding/emb_matrix/mul_6Mul(Adam/update_embedding/emb_matrix/truediv+Adam/update_embedding/emb_matrix/ScatterAdd"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
$Adam/update_embedding/emb_matrix/addAdd'Adam/update_embedding/emb_matrix/Sqrt_1Adam/epsilon"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
*Adam/update_embedding/emb_matrix/truediv_1RealDiv&Adam/update_embedding/emb_matrix/mul_6$Adam/update_embedding/emb_matrix/add"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
*Adam/update_embedding/emb_matrix/AssignSub	AssignSubembedding/emb_matrix*Adam/update_embedding/emb_matrix/truediv_1"/device:CPU:0*
use_locking( *
T0*'
_class
loc:@embedding/emb_matrix* 
_output_shapes
:
��
�
+Adam/update_embedding/emb_matrix/group_depsNoOp+^Adam/update_embedding/emb_matrix/AssignSub,^Adam/update_embedding/emb_matrix/ScatterAdd.^Adam/update_embedding/emb_matrix/ScatterAdd_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix
�
&Adam/update_cnn_max_pool_2/W/ApplyAdam	ApplyAdamcnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@cnn_max_pool_2/W*
use_nesterov( *(
_output_shapes
:��
�
&Adam/update_cnn_max_pool_2/b/ApplyAdam	ApplyAdamcnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1*
T0*#
_class
loc:@cnn_max_pool_2/b*
use_nesterov( *
_output_shapes	
:�*
use_locking( 
�
&Adam/update_cnn_max_pool_3/W/ApplyAdam	ApplyAdamcnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1*
use_nesterov( *(
_output_shapes
:��*
use_locking( *
T0*#
_class
loc:@cnn_max_pool_3/W
�
&Adam/update_cnn_max_pool_3/b/ApplyAdam	ApplyAdamcnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@cnn_max_pool_3/b*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0
�
&Adam/update_cnn_max_pool_4/W/ApplyAdam	ApplyAdamcnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@cnn_max_pool_4/W*
use_nesterov( *(
_output_shapes
:��
�
&Adam/update_cnn_max_pool_4/b/ApplyAdam	ApplyAdamcnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilon@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@cnn_max_pool_4/b*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0
�
Adam/update_output/W/ApplyAdam	ApplyAdamoutput/Woutput/W/Adamoutput/W/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
use_locking( *
T0*
_class
loc:@output/W*
use_nesterov( *
_output_shapes
:	�
�
Adam/update_output/b/ApplyAdam	ApplyAdamoutput/boutput/b/Adamoutput/b/Adam_1beta1_power/readbeta2_power/readVariable/read
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@output/b*
use_nesterov( 
�
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_cnn_max_pool_2/W/ApplyAdam'^Adam/update_cnn_max_pool_2/b/ApplyAdam'^Adam/update_cnn_max_pool_3/W/ApplyAdam'^Adam/update_cnn_max_pool_3/b/ApplyAdam'^Adam/update_cnn_max_pool_4/W/ApplyAdam'^Adam/update_cnn_max_pool_4/b/ApplyAdam,^Adam/update_embedding/emb_matrix/group_deps^Adam/update_output/W/ApplyAdam^Adam/update_output/b/ApplyAdam*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@cnn_max_pool_2/W
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_cnn_max_pool_2/W/ApplyAdam'^Adam/update_cnn_max_pool_2/b/ApplyAdam'^Adam/update_cnn_max_pool_3/W/ApplyAdam'^Adam/update_cnn_max_pool_3/b/ApplyAdam'^Adam/update_cnn_max_pool_4/W/ApplyAdam'^Adam/update_cnn_max_pool_4/b/ApplyAdam,^Adam/update_embedding/emb_matrix/group_deps^Adam/update_output/W/ApplyAdam^Adam/update_output/b/ApplyAdam*
T0*#
_class
loc:@cnn_max_pool_2/W*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@cnn_max_pool_2/W
�
Adam/update/NoOpNoOp^Adam/Assign^Adam/Assign_1'^Adam/update_cnn_max_pool_2/W/ApplyAdam'^Adam/update_cnn_max_pool_2/b/ApplyAdam'^Adam/update_cnn_max_pool_3/W/ApplyAdam'^Adam/update_cnn_max_pool_3/b/ApplyAdam'^Adam/update_cnn_max_pool_4/W/ApplyAdam'^Adam/update_cnn_max_pool_4/b/ApplyAdam^Adam/update_output/W/ApplyAdam^Adam/update_output/b/ApplyAdam
W
Adam/update/NoOp_1NoOp,^Adam/update_embedding/emb_matrix/group_deps"/device:CPU:0
;
Adam/updateNoOp^Adam/update/NoOp^Adam/update/NoOp_1
z

Adam/valueConst^Adam/update*
dtype0*
_output_shapes
: *
_class
loc:@global_step*
value	B :
~
Adam	AssignAddglobal_step
Adam/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@global_step
�
$embedding/emb_matrix_0/grad/hist/tagConst*1
value(B& B embedding/emb_matrix_0/grad/hist*
dtype0*
_output_shapes
: 
~
4embedding/emb_matrix_0/grad/hist/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
6embedding/emb_matrix_0/grad/hist/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6embedding/emb_matrix_0/grad/hist/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
.embedding/emb_matrix_0/grad/hist/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt324embedding/emb_matrix_0/grad/hist/strided_slice/stack6embedding/emb_matrix_0/grad/hist/strided_slice/stack_16embedding/emb_matrix_0/grad/hist/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
'embedding/emb_matrix_0/grad/hist/valuesUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape3gradients/embedding/embedding_lookup_grad/Reshape_1.embedding/emb_matrix_0/grad/hist/strided_slice*
Tnumsegments0*
Tindices0	*
T0* 
_output_shapes
:
��
�
 embedding/emb_matrix_0/grad/histHistogramSummary$embedding/emb_matrix_0/grad/hist/tag'embedding/emb_matrix_0/grad/hist/values*
_output_shapes
: *
T0
k
!zero_fraction/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
m
#zero_fraction/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#zero_fraction/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
zero_fraction/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt32!zero_fraction/strided_slice/stack#zero_fraction/strided_slice/stack_1#zero_fraction/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
zero_fraction/valueUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape3gradients/embedding/embedding_lookup_grad/Reshape_1zero_fraction/strided_slice* 
_output_shapes
:
��*
Tnumsegments0*
Tindices0	*
T0
W
zero_fraction/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
p
zero_fraction/EqualEqualzero_fraction/valuezero_fraction/zero*
T0* 
_output_shapes
:
��
i
zero_fraction/CastCastzero_fraction/Equal*

SrcT0
* 
_output_shapes
:
��*

DstT0
d
zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
)embedding/emb_matrix_0/grad/sparsity/tagsConst*5
value,B* B$embedding/emb_matrix_0/grad/sparsity*
dtype0*
_output_shapes
: 
�
$embedding/emb_matrix_0/grad/sparsityScalarSummary)embedding/emb_matrix_0/grad/sparsity/tagszero_fraction/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_2/W_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_2/W_0/grad/hist*
dtype0*
_output_shapes
: 
�
cnn_max_pool_2/W_0/grad/histHistogramSummary cnn_max_pool_2/W_0/grad/hist/tag=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_1/EqualEqual=gradients/cnn_max_pool_2/conv_grad/tuple/control_dependency_1zero_fraction_1/zero*(
_output_shapes
:��*
T0
u
zero_fraction_1/CastCastzero_fraction_1/Equal*

SrcT0
*(
_output_shapes
:��*

DstT0
n
zero_fraction_1/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
�
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
%cnn_max_pool_2/W_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_2/W_0/grad/sparsity*
dtype0*
_output_shapes
: 
�
 cnn_max_pool_2/W_0/grad/sparsityScalarSummary%cnn_max_pool_2/W_0/grad/sparsity/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_2/b_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_2/b_0/grad/hist*
dtype0*
_output_shapes
: 
�
cnn_max_pool_2/b_0/grad/histHistogramSummary cnn_max_pool_2/b_0/grad/hist/tag@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_2/EqualEqual@gradients/cnn_max_pool_2/BiasAdd_grad/tuple/control_dependency_1zero_fraction_2/zero*
_output_shapes	
:�*
T0
h
zero_fraction_2/CastCastzero_fraction_2/Equal*

SrcT0
*
_output_shapes	
:�*

DstT0
_
zero_fraction_2/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
%cnn_max_pool_2/b_0/grad/sparsity/tagsConst*
_output_shapes
: *1
value(B& B cnn_max_pool_2/b_0/grad/sparsity*
dtype0
�
 cnn_max_pool_2/b_0/grad/sparsityScalarSummary%cnn_max_pool_2/b_0/grad/sparsity/tagszero_fraction_2/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_3/W_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_3/W_0/grad/hist*
dtype0*
_output_shapes
: 
�
cnn_max_pool_3/W_0/grad/histHistogramSummary cnn_max_pool_3/W_0/grad/hist/tag=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_3/EqualEqual=gradients/cnn_max_pool_3/conv_grad/tuple/control_dependency_1zero_fraction_3/zero*
T0*(
_output_shapes
:��
u
zero_fraction_3/CastCastzero_fraction_3/Equal*

SrcT0
*(
_output_shapes
:��*

DstT0
n
zero_fraction_3/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             
�
zero_fraction_3/MeanMeanzero_fraction_3/Castzero_fraction_3/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
%cnn_max_pool_3/W_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_3/W_0/grad/sparsity*
dtype0*
_output_shapes
: 
�
 cnn_max_pool_3/W_0/grad/sparsityScalarSummary%cnn_max_pool_3/W_0/grad/sparsity/tagszero_fraction_3/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_3/b_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_3/b_0/grad/hist*
dtype0*
_output_shapes
: 
�
cnn_max_pool_3/b_0/grad/histHistogramSummary cnn_max_pool_3/b_0/grad/hist/tag@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_4/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction_4/EqualEqual@gradients/cnn_max_pool_3/BiasAdd_grad/tuple/control_dependency_1zero_fraction_4/zero*
T0*
_output_shapes	
:�
h
zero_fraction_4/CastCastzero_fraction_4/Equal*

SrcT0
*
_output_shapes	
:�*

DstT0
_
zero_fraction_4/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
zero_fraction_4/MeanMeanzero_fraction_4/Castzero_fraction_4/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
%cnn_max_pool_3/b_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_3/b_0/grad/sparsity*
dtype0*
_output_shapes
: 
�
 cnn_max_pool_3/b_0/grad/sparsityScalarSummary%cnn_max_pool_3/b_0/grad/sparsity/tagszero_fraction_4/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_4/W_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_4/W_0/grad/hist*
dtype0*
_output_shapes
: 
�
cnn_max_pool_4/W_0/grad/histHistogramSummary cnn_max_pool_4/W_0/grad/hist/tag=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1*
_output_shapes
: *
T0
Y
zero_fraction_5/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction_5/EqualEqual=gradients/cnn_max_pool_4/conv_grad/tuple/control_dependency_1zero_fraction_5/zero*
T0*(
_output_shapes
:��
u
zero_fraction_5/CastCastzero_fraction_5/Equal*

SrcT0
*(
_output_shapes
:��*

DstT0
n
zero_fraction_5/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             
�
zero_fraction_5/MeanMeanzero_fraction_5/Castzero_fraction_5/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
%cnn_max_pool_4/W_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_4/W_0/grad/sparsity*
dtype0*
_output_shapes
: 
�
 cnn_max_pool_4/W_0/grad/sparsityScalarSummary%cnn_max_pool_4/W_0/grad/sparsity/tagszero_fraction_5/Mean*
T0*
_output_shapes
: 
}
 cnn_max_pool_4/b_0/grad/hist/tagConst*-
value$B" Bcnn_max_pool_4/b_0/grad/hist*
dtype0*
_output_shapes
: 
�
cnn_max_pool_4/b_0/grad/histHistogramSummary cnn_max_pool_4/b_0/grad/hist/tag@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Y
zero_fraction_6/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_6/EqualEqual@gradients/cnn_max_pool_4/BiasAdd_grad/tuple/control_dependency_1zero_fraction_6/zero*
T0*
_output_shapes	
:�
h
zero_fraction_6/CastCastzero_fraction_6/Equal*

SrcT0
*
_output_shapes	
:�*

DstT0
_
zero_fraction_6/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
zero_fraction_6/MeanMeanzero_fraction_6/Castzero_fraction_6/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
%cnn_max_pool_4/b_0/grad/sparsity/tagsConst*1
value(B& B cnn_max_pool_4/b_0/grad/sparsity*
dtype0*
_output_shapes
: 
�
 cnn_max_pool_4/b_0/grad/sparsityScalarSummary%cnn_max_pool_4/b_0/grad/sparsity/tagszero_fraction_6/Mean*
_output_shapes
: *
T0
m
output/W_0/grad/hist/tagConst*
dtype0*
_output_shapes
: *%
valueB Boutput/W_0/grad/hist
u
output/W_0/grad/histHistogramSummaryoutput/W_0/grad/hist/taggradients/AddN_1*
T0*
_output_shapes
: 
Y
zero_fraction_7/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
zero_fraction_7/EqualEqualgradients/AddN_1zero_fraction_7/zero*
_output_shapes
:	�*
T0
l
zero_fraction_7/CastCastzero_fraction_7/Equal*
_output_shapes
:	�*

DstT0*

SrcT0

f
zero_fraction_7/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
zero_fraction_7/MeanMeanzero_fraction_7/Castzero_fraction_7/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
v
output/W_0/grad/sparsity/tagsConst*)
value B Boutput/W_0/grad/sparsity*
dtype0*
_output_shapes
: 

output/W_0/grad/sparsityScalarSummaryoutput/W_0/grad/sparsity/tagszero_fraction_7/Mean*
_output_shapes
: *
T0
m
output/b_0/grad/hist/tagConst*%
valueB Boutput/b_0/grad/hist*
dtype0*
_output_shapes
: 
s
output/b_0/grad/histHistogramSummaryoutput/b_0/grad/hist/taggradients/AddN*
T0*
_output_shapes
: 
Y
zero_fraction_8/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
zero_fraction_8/EqualEqualgradients/AddNzero_fraction_8/zero*
T0*
_output_shapes
:
g
zero_fraction_8/CastCastzero_fraction_8/Equal*

SrcT0
*
_output_shapes
:*

DstT0
_
zero_fraction_8/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
zero_fraction_8/MeanMeanzero_fraction_8/Castzero_fraction_8/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
v
output/b_0/grad/sparsity/tagsConst*)
value B Boutput/b_0/grad/sparsity*
dtype0*
_output_shapes
: 

output/b_0/grad/sparsityScalarSummaryoutput/b_0/grad/sparsity/tagszero_fraction_8/Mean*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummary embedding/emb_matrix_0/grad/hist$embedding/emb_matrix_0/grad/sparsitycnn_max_pool_2/W_0/grad/hist cnn_max_pool_2/W_0/grad/sparsitycnn_max_pool_2/b_0/grad/hist cnn_max_pool_2/b_0/grad/sparsitycnn_max_pool_3/W_0/grad/hist cnn_max_pool_3/W_0/grad/sparsitycnn_max_pool_3/b_0/grad/hist cnn_max_pool_3/b_0/grad/sparsitycnn_max_pool_4/W_0/grad/hist cnn_max_pool_4/W_0/grad/sparsitycnn_max_pool_4/b_0/grad/hist cnn_max_pool_4/b_0/grad/sparsityoutput/W_0/grad/histoutput/W_0/grad/sparsityoutput/b_0/grad/histoutput/b_0/grad/sparsity*
N*
_output_shapes
: 
R
loss_1/tagsConst*
_output_shapes
: *
valueB Bloss_1*
dtype0
P
loss_1ScalarSummaryloss_1/tags	temp_loss*
T0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
W

accuracy_1ScalarSummaryaccuracy_1/tagstemp_acc*
_output_shapes
: *
T0
T
epoch_1/tagsConst*
_output_shapes
: *
valueB Bepoch_1*
dtype0
N
epoch_1ScalarSummaryepoch_1/tagsepoch*
_output_shapes
: *
T0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�%BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:%
�
save/SaveV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1embedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1*3
dtypes)
'2%			
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�%BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:%
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
dtypes)
'2%			*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::
�
save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save/Assign_3Assigncnn_max_pool_2/Wsave/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save/Assign_4Assigncnn_max_pool_2/W/Adamsave/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save/Assign_5Assigncnn_max_pool_2/W/Adam_1save/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save/Assign_6Assigncnn_max_pool_2/bsave/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save/Assign_7Assigncnn_max_pool_2/b/Adamsave/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save/Assign_8Assigncnn_max_pool_2/b/Adam_1save/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_9Assigncnn_max_pool_3/Wsave/RestoreV2:9*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save/Assign_10Assigncnn_max_pool_3/W/Adamsave/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save/Assign_11Assigncnn_max_pool_3/W/Adam_1save/RestoreV2:11*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save/Assign_12Assigncnn_max_pool_3/bsave/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save/Assign_13Assigncnn_max_pool_3/b/Adamsave/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save/Assign_14Assigncnn_max_pool_3/b/Adam_1save/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save/Assign_15Assigncnn_max_pool_4/Wsave/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save/Assign_16Assigncnn_max_pool_4/W/Adamsave/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save/Assign_17Assigncnn_max_pool_4/W/Adam_1save/RestoreV2:17*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save/Assign_18Assigncnn_max_pool_4/bsave/RestoreV2:18*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
�
save/Assign_19Assigncnn_max_pool_4/b/Adamsave/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_20Assigncnn_max_pool_4/b/Adam_1save/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save/Assign_21Assignembedding/emb_matrixsave/RestoreV2:21"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_22Assignembedding/emb_matrix/Adamsave/RestoreV2:22"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save/Assign_23Assignembedding/emb_matrix/Adam_1save/RestoreV2:23"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_24Assignglobal_stepsave/RestoreV2:24*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save/LookupTableImportV2LookupTableImportV2label_tablesave/RestoreV2:25save/RestoreV2:26*	
Tin0*

Tout0	*
_class
loc:@label_table
�
save/LookupTableImportV2_1LookupTableImportV2	out_tablesave/RestoreV2:27save/RestoreV2:28*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save/Assign_25Assignoutput/Wsave/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save/Assign_26Assignoutput/W/Adamsave/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save/Assign_27Assignoutput/W/Adam_1save/RestoreV2:31*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save/Assign_28Assignoutput/bsave/RestoreV2:32*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save/Assign_29Assignoutput/b/Adamsave/RestoreV2:33*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save/Assign_30Assignoutput/b/Adam_1save/RestoreV2:34*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/LookupTableImportV2_2LookupTableImportV2symbol_tablesave/RestoreV2:35save/RestoreV2:36*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save/restore_all/NoOpNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/LookupTableImportV2^save/LookupTableImportV2_1^save/LookupTableImportV2_2
a
save/restore_all/NoOp_1NoOp^save/Assign_21^save/Assign_22^save/Assign_23"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
�
	init/NoOpNoOp^Variable/Assign^beta1_power/Assign^beta2_power/Assign^cnn_max_pool_2/W/Adam/Assign^cnn_max_pool_2/W/Adam_1/Assign^cnn_max_pool_2/W/Assign^cnn_max_pool_2/b/Adam/Assign^cnn_max_pool_2/b/Adam_1/Assign^cnn_max_pool_2/b/Assign^cnn_max_pool_3/W/Adam/Assign^cnn_max_pool_3/W/Adam_1/Assign^cnn_max_pool_3/W/Assign^cnn_max_pool_3/b/Adam/Assign^cnn_max_pool_3/b/Adam_1/Assign^cnn_max_pool_3/b/Assign^cnn_max_pool_4/W/Adam/Assign^cnn_max_pool_4/W/Adam_1/Assign^cnn_max_pool_4/W/Assign^cnn_max_pool_4/b/Adam/Assign^cnn_max_pool_4/b/Adam_1/Assign^cnn_max_pool_4/b/Assign^global_step/Assign^output/W/Adam/Assign^output/W/Adam_1/Assign^output/W/Assign^output/b/Adam/Assign^output/b/Adam_1/Assign^output/b/Assign
�
init/NoOp_1NoOp!^embedding/emb_matrix/Adam/Assign#^embedding/emb_matrix/Adam_1/Assign^embedding/emb_matrix/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1
�W
Const_3Const"/device:CPU:0*�W
value�WB�V�B增B泵B币B海B峙B虞B盈B勘B弗B煤B归B姚B但B永BEB豆B拾B余B解B苦B供B负B贡B莲B陀B寒B屋B深B庞B采B沭B牧B诊B闻B萝B得B断B稍B仑B非B蒲B限B孔B量B娱B丛B聂B告B羌B甘B泌B袍B节B卷BXB赛B址B健B橱B兰B瑶B锁B高B属B李B瓶B火B晶B潮B讨B凑B句B村B并B们B荆B尹B樨B桓B基B意B韶B轮B喇B梧B哒B迭B登B达B妃B入B答B急B潜B陕B怖B卸B必B隔B漳B镇B闲B县B涯B毕B奇B操B探B轿BGB猇B铁B原B触B撂B够B殷B胜B矿B音B申B陪B荔B吴B庙B明B搬B哦B租B专B巢B靖B雀B婚B桦B千B蓝B性B松B衢B努B旬B娜B恐B卖B古B摄B箭B马B漠B邗B唉B想B蔚B营B仁B强B班B岁B干B欧B言B潞B我B袁B赵B析B彩B提B假B插B驶B姆B两B兔B伟B左B嘉B肃B迁B今B渝B交B妥B译B江B闽B黄B债B款B碌B谱B雪B瓜B齐B麒B洪B家B驾B妆B准B伏B微B姓B请B剩B防B误B软B枫BQB沽B夹B纸B支B娄B碾B审B柳B泊B盖B擦B桐B怀B硬BoB腔B轩B灸B次B安B续B力B街B额B芒B桶B虚B刮B低B啡B向B每B祝B碑B陈B测B染B匀B擎B范B柏B劳B散B才B这B临B橡B陂B流B嘿B名B鞋B帘B瀚B窗B妈B庆B后B旧B喽B医B肯B帮B昭B稻B赫B脱B复B他B循B相B废B素B往B咋B铭B！B陉B<unk>B社B邢B喜B磁B界B契B查B幺B留B关B立BKB扰B施B血B欢B弹B吃B奉B依B辅B体B继B迎B苏B澧B柴B坐B文B层B垃B典B卡B治B噢B眉B奋B欣B失B糟B键B杆B声B抚B领B删B否B凉B湾BdB白B编B云B丽B思B郡B岢B痕BtB叶B究B棠B嗨B醉B蕉B茄B尖B玩B兴B墙B民B杀B天B尘B银B府B珲B饪B呐B昨B鑫B敦B熊B浈B潍B共B之B庄B闸B坟B冈B师B汕B韵BZB俄B恩B御B宣B克B迈B氟B馈B十B良BSB德B芷B桌B务B•B土B舞B另B坪B击B拢B章B护B从B常B雅B途B活B罕B稳B张B夜B侃B爷B涧B粤B廊B园B台B互B2B组B凤B烧B楚B档B煲B极B预B逼B辽B拜B停B菜B型B兽B士B汉B悍BxB使B郴B吹B垫B弈BqB铜B公B歌B出B骑B羊B绿B，B逊B且B邡B刚B损B运B规B拆B脑B水BYB株B控B服B求B填B场B爸B彭B晖B斯B睡B醒B炎B目B墓B敖B级B蔡B确B集B数B则B又B注B谟B拓B蠡B听B升B埠B闹B托B担B郧B先B响B杏B剪B呱B雁B澳B濉B赶B群B茶B读B郑B浴B助BIB徒B纪B联B纱B竟B咯B萄B冲B揭B枞B武B旅BhB折B祁B科B排B匹B怒B胎B大BRB勒B扎B杯B翔B针B呵B维B沧B洋B奔B页B滑B鸿B邮B潘B程B库B芝B瓮B秀B墨B拧B铣B通B异B泗B卫B签B乳B樟B峪B外B总B溪B芭B鄯B病B给B蒋B聘B主B存B几B葛B枣B栋B芮B弓B洁B淮B摔BlB薛B扫B恺B获BfB很B花B矛B偶B？B任B盛B筛B捏B参B辉B责B椒B阳B浪B盾B沙B峡B滁B痛B钣B蒗B芙BNB包B荷B谢B核B沂B福B澡B祺B汪B证B颖B污B犊B萧B梅B输B蒸B酷B姐B至B湖B些B傻B饮B跑B死B蚌B哥B秭B竞B如B百B皋B悉B承B奈B晚B企B选B呦B罗B邵B差B翻B坑B厂B捋B尼B屯B司B冬B漯B丘B值B溆B把B知B改B妻B泳B色B夕B奢B初B你B杨B陇B洧B睢B破B河B叫B由B严B襄B朵B孕B碚B会B莒B湿B朋B沥B是B雨B工B郫B惜B什BiB灶B伪B涵B绛B止B溧B夫B媒B波B嵊B已B喷B图B稿B甜B皇B该B区B轻B信B桂B徽B五B坏B远B静B浦B峨B术B理B亩B红B祥B板B碗B男B喂B与B丹B语B香B晒B歪B蜀B一B设B糊B葫B同B哼B右B搁B厨B锋B了B突B诺B谓B守B菏B认B赔B俩B诉B魏B骚B米B为B速B写B老B耶B呆B欲B啥B观B曼B下B驹B京B骏B换B罘B伦B扇B光B鹰B聪B源B苹B情B刷B仲B肾B犍B泥B疯B道B载B好B霉B早B弟B若B囊B咨B释B咖B彝B聚B部B鞍B肿B让B饰B跟B唱B崇B烹B宇B扶B豫B贞B芜BbB弥B鹏B瓷B麟B步B禁B零B僳B汾B价B酒B岛B货B剧B蛮B焊B沐B持B亚B佳B前B私B方B游B屏B瞎B块B腊B作B牌B城B恰B殖B杂B凌B喀B付BuB壶B浆B梁B议B裕B禹B用B刘B幻B空B瀍B剂B1B乘B课B修B案B嘞B勤B穿B地B据B搜B约B郁B昆B宗B降B摩B乡B拖B制B根B职B念B秘B冷B5B的B荒B瞅B忙B野B锦B协B打B亨BFB位B番B鬼B浙B坊B菲B按B综B雄B搞B镜B瓯B抽B带B史B完B朗B救B扬B芯BrB裁B正BnBWB栾B办B被B#B霞B淄B乔B神B灵B)B阆B搓B具B兹B苗B等B找B义B促B幕B芦B贾B榨B酵B筹B纫B还B涌B馆B询B苑B肥BwB潢B吉B邓B充B骂B览B塞B暑B本B特BpB淞B储B虹B盟B然B帝B蚂B训B样B不B胡B直B炬B鼎B杭B遵B龙B吵B势B郊B详B岗B舒B宫B售B唐B户B积B(B益B错B焦B布B讴B小B肇B呼B瑞B商B荣B牙B篓B夏B辑B晋B艺B洱B免B称B荫B世B忠B孟B站B埃B消B围B附B网B挖B印B障B餐B槐B咧B净B佰B漾B架B脸B湟B嫩B童B唯B己B7B,B拌B粉B蕾B累B佛B逸B店B应B频B丝B灞B揽B对B刀B志B耽B乐B丰B冒B睿B舟B黎B芗B青B闭B植B叠B疼B鉴B瓦B螺B呈B孜B赖B阎B随B9BJB质B铺B挂B真B说B闵B者B寸B压B阶B律B川B件B看BAB都B放B宕B评B传B塔B疾B去B北B夷B身B厅B烤B万B书B拟B偏B洲B茂B滴B走B需B串B岸B中B耐B姑B勉B养B岩B沃B郏B识B孙B期B猎B磐B燃B她B哄B抖B处B曹B葡B沿B境B讲B劣B钳B孩B戏B戚B猫B毒B黔B迷B材B饭B献B政B监B阿B露B钦B西B淘B丑B取B豹B册BMB介B线B阔B最B崂B宅B娘B巴B来B贵B谈B呢B懂B央B弋B毫B宠B播B逍B沌B鸡B坦B加B燕B成B午B宝B攀B第B孝B岫B洞B征B）B犹B吗B鲅B球B灯B饱B钱B整B曙B铲B动B满B菱B冻B乱B莆B上B减B璧B电B购B坝B美B牟B哟B堡B经B仕B郭B芬B柘B绍B研B柜B转B绥B措B策B翼B独B怪B淇B姨B账B启B；B涞B礼B虎B着B嵌B荐B厍B呃B尾B当B希B计B序B滦B创B<go>B勃B仄B杰B蚁B井B猗B垣B芍B笔B麻B帖B添B菊B捡B黟B盐B快B东B少B移B队B易B幸B忘B实B勐B谁B招B掘B寨B分B庭B贝B始B词B薪B邕B拉B坂B态B度B温B殊B子B楼B墅B酬B腾B绝B晨B汤B岱B奶B霸B郎B广B砖B半B耿B遇B札B咸B赌B朱B舶B岔B润B般B冯B盏B;B或B威B各B甸B碧B套B三B筋B濮B慢B禅B藏B胶B爱B官B九B只B练B贸B顿B虽B愿B起B融B湘B蹈B晏B沈B堂B峰B路B烟B住B卧B递B农B蒂B利B翩B物B内B细B越B炉B授B厢B南B近B凰B跨B寻B发B有B汶B渠B敏B淀B龄B弄B时B端B躺B车B邻B照B拍B拿B栖B炒B拼B瑜B末BgB宁B何B哇B圣B畜B尔B表B顶B首B油B?B<eos>B秒B茅B股B撰B昶B射B紫B蛋B翟B圃B澄B泸B跃B驿B懒B挡B津B乌B忻B。B束B港B戈B悦B沁B撤B虑BLB故B恒B吸B涟B更ByB辖B桑B巷B果B寿B颐B幼B衡B问B较B推B跪B市B系B份B双B浑B宏B角B别B能B饺B铸B惠B缩B统B州B娇B么B堰B举B崔B墩B间B绘B门B圈B简B甚B派BvB票B盘B奎B新BCB面B席B朔B岭B品B贷B您B和B因B屁B行B含B漂B蓬B笨B普B驻B厕B挺B倒B迦B在B自B显B泽B婆B磨B石B珠B帕B贤B嘴B辆B记B缸B论B脏B革B啦B傣B星B岚B没B候B牡B崖B黑B桥B算B枝B绅B翠B版B忽B验B繁B华B见B啊B柯B择B待B犁B感B怎B侯B仓B卓BkB潭B离B椅B淫B籍B蔺B模B・B雇B即B员B虾B脚B猜B鄞B阁B导B致B慰B陵B&B亳B呗B春B稷B哭B旦B械B诶B院B鸟B精B漆B嘛B列B儿B舆B保B机B口B蜡B烫B种B链B象B綦B长B蕴B蒙B短B讷B顾B军BUB尚B傈B头B歉B字B阊B管B颇B裱B锐B庵B船B段B坡B视B噶B催B洛B伊B人B做B邺B4B习B哩B饿B6B筒B而B熟B哈B纺B涂B衣B片BBB跳B终B棵B滩B置B比B驰B钻B项B蓉B买B笼B概B咱B梓B辰B浮B索B浔B邱B箱B遂B液B丁B环B桃B爵B毁B玛B结B振B莎B潼B育B元BcB壁B年B晃B旌B隅B聊B莱B圾B纯B业B状B暂B察B辛B造B善B届B木B穆B淡B令B标B透B郸B宾B优B财B料B耀B码B六B烂BPB饲B拱B须B疏B枪B棱B全B哎B烦B槽B无B岐B券B吾B检B妙B蕲B八B蛟B仿B器B富B滤B<space>B疗B条B秦B鲁B毛B湄B蔬B榄B钟B吊B盔B抱B觉B调B拔B隆B贩B璇B鸭B清B历B贺B培B晴B鼓B权B指B泾B晓B边B女B事B室B构B委B池B旺B掇B峦B森B麓B估B岳B镀B傅B切B濂B滘B厦B飞B配B阜B噻B宽B颂B望B漏B济B里B域B化B汀B樊B玉B厚B单B居B尽B汇B绩B鲤B兄BVB叙B太B送B呀B收B到B爆B湛B塑B乖B滨B药B许B袋B钢B草B拨B弱B奥B顺B韩B休B智BmB资B豪B装B尤B帆B危B鸠B厌BeB渡B英B笑B萍B录B垒B险B媳B汽B技B赏B眼B局B臭B霍B再B四B伴B引B展B迪B略B谊B订B骗B甲B适BHB示B考B题B个B沟B过B辞B3B功B平B雷B织B柞B舌B吐B鲍B未B壮B族B圳B莞B鹿B灌B客B浩B霄B封B坻B杜B君B剑B淖B蓟B邑B柔B赁B其B日B密B诏B伽B似B退B0B手B趣B固B宿B宋B缝B孚B代B碱B琼B省B滚B妇B坞B延B映B党B皮B除B开B哪B昂B决B吕B钓B玄B暖B妹B恶B树B戴B紧B际B摸B月B七B乃B寺B坤BDB迟B扣B多B络B8B翁B影B靠B伙B此B号B鲜B众B濞B亭B拒B连B洗B就B堆B式B吧B宜B航BzB反B便B谷B、B心B将B久B锅B彦B禺B鹤B建B诈B备B金B梨B榕B沾B夸B淳B它B法B庐B足B进B儋B学B谦B国B泉B嫂B陆B试B格B费B竹B婺B凭B山B盒B形B搅B返B生B寓B怕B绵B接B鱼B横B邯B冠B孤B热B教B栏B鄂BTB底B掉B峻B朝B嘟B掏B耳B薇B醛B息B嵩B旁B访B氨B汝B产B盂B批B冶B董B逛B以B校B卢B晕B涿B那B括B类B缺B二B屿B侗B遍B要B拣B冰B容B婴B烈B掖B可B赣B房B混B副B符B于B铃B田B赉B割B宴B狮B昌B及B赠B默B瘦B康B筑B塘B锡B景B埔B也B凯B榆B受B/B床B气B回B林B稀B风B难B划B斗B周B蓥B督B叉B超B税B熨B座B徐B所B现B嘎B旗B重BOB像B彻B忆B沅B炸B忧B伍B话B曲B况B茫B（B梯B背B败B博B侈B赤B浠B季B嗯B浉B销B友B团B萨B涪B牛B茗B伯BsB报BjB亲B巍B劲B演B鳌B仙B泰B激B食B执B投B捷B汁B禾BaB陶B阴B仪B渭B<pad>B点B侨B洼B壤B硚B味B莫B落B浏B铛B兼B悠B亮B变B王B效B纳B俺B饶B合B画B定B饼B楞*
dtype0*
_output_shapes	
:�
��
Const_4Const"/device:CPU:0*�
value�B�	�"،8      �      �      �       2      �            (            �      �      �      �       �      S            q      8      �       �      �       �                   �      �      �      �      �      �      �      �      :      �      i      [       y       f       �      �      p      C      �      �      e      �      D      �       �      �      �      �      |      =      J            	      �      x      �      �      F      �       $      T      �      �      �      �            )      �                  �       c      �      J      d      M             �      �            g      2      �      0      �      F      �            @      �      u      .      �      �      �      �      s            n      O      {      �      �       >      �      M      �      -      �      �      x      �       z      �            :       �      �      K      �      �             .      n       �       �       �      �      �      f      e      i      r      �            �      �      <      U      -      v      �      M      `      �      �      �      �      #       u      �            r      {      ;      �       <      [      �      3       �      a      �      �      �                    �      ;      �      '      z      �      �      E      J            �            5      9      &      �      �      #      5            #      �      �      I      �      �      �       �      �      +      N      m      �      -            v      �      �      T      O      7      V      �      A      d            �      Y      �            �       `      �      �      �       d      f      �      �             z       �      �      �      S      T            �      �      
      S            P            �      �      V      �      �      �       v      �            m       (       �      v      �      �      �      8      �      �      q      +      �      .      Q      Q      �      �      �      �       ?      (      ~      :      �             �            "      �             B       �      �                    :      �      B      �      �      A            �      n      �       ,            �      \      o      C      �      q      Z      4      �      0      (      �      �      �      E      �       a      j      �      c      *      �      �      �      N      �      �      �      +      �      9             C                  v      	      �             �      �      �             �      �      �      �      �      F       �      �      �      v      ^      �      �      �       �      `                               �      �      �      <      �      �      /      �      �      �      �      �       �      �      W      �      �            u      X      7      �      �      6      =      �      p      V      :      Q      Z      =      [      �      �       �      �      K      �      0      /            �      c            �      �      �      �      �      �      �      @      �      �      �      /      �      �      K      �      =      �      �      �      E       �      �      �      D      �      �      c       �      �      G      �      �      .      �      �      &      �      �      W      �      !      �      p       �      �      �      �      �      6                         l       �                  I      >      }      W      ]      Y      R      �      �            �      �      �      2      �      g      �      ,      j      -      �      �      �       y            (      �      l      H      �      �      %             |      �      �            �            ;      N            Y       �      _      �      �      �      b      H      �      �      _      F      �      D            g      G             n      q      !      R      �      9      �                  �      "      �      �      �      �      H      P      �      �      �      �      �      b      �      �      �      >      �      �      �      �      X      �      P      �            �      x      �            :      �      �             �      r            �            _      B      �      [      d       �      �       i      Q      �       �      S      �      Z      �      O      �      �      �      �      �                  �      r       �      �      �             �      �      Y      �      �      �      �       h      �      �      �      ~      �      �      �      �      t      O      G      �      
      �       B      �      �      #      �      �            �      !      '      j      f      0      q      �      �      �      r      v       �      �                  {      �      "      -      P      &      �      �            X      �      �            �      �      �      �       8      "      �      :      ^      T      q       �      �            G      �      �      �       l      �      �      F      �      ]      �             �            A            �      o      �            �      }      �      l      �      �       e      �      y      l             �      -      �      �      	       �      �      �      �      7            �      �      ?      s      �      k            Y      	      ^            �            �             �      �                   x      �      6      �      ^      0            �      {      �      �      }             �      �      {      �      C      �      ~      /       7      �      o            �      �      �      �      �      C       *      �             h      g      �       C      �      �                    .      x       +      �      a      �            �      Q             Y      0       �            �      �      W      �            �      �      �            \      �      �            �      �      }      G      �       �             �      �       �      �            �             	      w      �      z      �      p      �       �      F      �      �      �      i            �      w      V      T      �      L      �      c      V            E      �      �      �             �      �      ;      1      �      �      `      z      1      �             k             �      �      �      �      �                   �      e      M      x            H      K      <      �      �      x      �            �       S      �      �       �      �      9      X      �      b      �      ?      @      )      �       �            E      �      =      �      �      :      y            @      �      L      �            s      �       J       �      �      5      �      �      d      K       i      I      �      �      �      %      .      1      1      8      �      P      �      �            �      �      r      �      ,            |      p      �      4      �       V      ^      �      �      �      \      �      �      �      �            �      "      /      b      �      g       ;       �            �      X      �      n      �      5      =      A       I      k      �       Q      �      h      �      �      �      j      �      l      !            �       R       }      Y            z      a      9      �      �      Q      �              �      M       �      �      /      �      �      j       I      �      #      u      J      R      �            `      #      ^      �      �      �            �      &       F      �      W      �      x      �      �      �      �      B      
      D      (      �            �             p      L      2      o      �       �      �       [      �      +      �      p            �      }      �      U      *      �      k      L      �      �       <      �       �      *      C      �      �      g      �      �      �      z      �      �      h             �      A      �      �      �      �      M            T      m            b      �      �      �      �      y            O      �      �      �       ?      R      �       (      �             $       �            v      r                  �      �      �       A      W       �      {      X      7      �      Z      $             U      ~      �      �      k            s      H      �      ]      2      �      �       ]      �      �       6      	      �      d      �      �      �      �       n      �       �            �      @      �      S      �      �      m      G      �      7       ]      �      �      �                  �      �      �      �      r      �      �      e      h      >      �             �      �      n            h      �      �       T      �      %      �      �            �            #      d      L              K      �      J      �      $      �      �      �      /      �      �      �      j      7      &      v      o      �      �            �      �      5       �      �      �      �             �       �      �      �      �             $      �      d      �       �      �      >       V      �      �       �      "      �      /      �      �      �      W             �      n      �                               �      D      �      i      w      �      �       �      �      `      u       �      |      �      \       �      8      k      	      &      �      �             �      K      �      �            �      0      R      �      ]       ]      �      �      �      �            o                     $      8      %      �      O      t       �      <       �       \      �            �            6      <      x      �      �      �      Z      [      �      D      �                   y      �            �      �      �      %      �            �       �      j      C      �      L            `      �      P      �      �      �       �      e      �             �      �      �            �            �      �      s            Q      w      �      |      �      �       k      $      �      �      �      i             �      L      �      �      B            �            ~      (      W      _      �      �      I      �      �       $      �      �      D      5      �            y      �      �      �       ,       �      �      �      �      �      �       �       e      @      �       �      g      �             [      �            �            �      �            }       2            �      �            �      �      u             ,      _      G      %      @      �      0            �      �      �      �      E      �      ^            N      �      �                    �      �      }                  �       E      *      �      �      �      ;            �      Z      r      b       u      �      i      1      ?       +      �       ~            �             �      �      y      �      S       �       �      �      !                  !      a      
       �      �      �      w      �             �       �      e      �      �      U      �      \      \      �       C      �       �      G      �            "      1       �       w             �       �      �      t            �      �      >      �            l      '       �             �      X      ~      �      c      �      [                  �       �            �      
      Z       �      p      �      8       �       �      �      �      {      �       '      �      �      �      ,      �      1      �      2              5      �      N      $      �       X       y      �      �            �      K      �      �      ,      �      �      �      �      �      �      �      H      F      �      �      4      �      �      `      �            '      "      '      �      F      �      e       *      &      
      �      �       �      �       �      N      �      f      ,      �      �      3      �            s       �      �      �      �      �      �            �      �      �      �      9      �      1      �      �      �      �      O      �      �      Z            J      (      �      �       |       �      _      �      O      �      >      �             �            �      �      �      h      Y      �      3            t      �      *      �      �      �      U      �       =      �             a      �      �            �      �      o      �      �      l      �      _      �      �      Q      E            �      �      -      �      �            s      5      ;      �      t      R      �      �      �       �      !      �      �      �      �      �      �      )            �      �      =      �      ~      �      �              B      U      �      �      �      �            3            Z      �      t      `       ^       �      �       �      �      !      �      �      w      �       }            c      �      {             �            �      �      �       �      �      �      �      �      �      �      �      �      �      b      0      s      �      D       f      �      P      E            B      3      �      �      +       �       I             �      u            �            A      �      �      �      �      �      �      �      �      m      �            �      �      4      �      �      �      n      �                         �      q      �      �      �             6      �      6      �      �      �      �             �             p      !       �      �            �      #      �            �      �      �            9      _      �      �      .      U      �      �      �            �      �      �      �      	            J      �      �      h      V       I      ?      L      j      ]      t            b      �      '      .       c      8      �            �            �      2      �      �            N      	      �       @              �            t      :      �      J      3      4      X      9      �            H      3      �      �      �      �      �      �       �      �      V      �      4      �      �      �      s      >      �      �      �            T      �      �      '      �       ;      �       �       A            b      <      �      �            �            �      m      #      �      )      U      �            �              �            �      �      �      �      �      \      l      �      P      S      �      �      �       �      3      �      L      �      2             �      �       ?      �            �      M             �      *      �      �                   �      �       6      o      _       �      N      D      �      �       �      G      \      .      Y      �      �            �      w      
      ,      &      c      m      �      �      �      M      �      �      �      R      K      �            �      q      <      �      d            �      9      j      z      |      �      &      �      �      �             �      7      N       �      t      �      �      q      S      I      u      �      B      "       �      M      �      �      '      �      �      �      �       �      ?            R      �      �             )      �             �      *       �      �      �      �      =             �      3      �              �      U       H       �      m      g      h      �      �      )       �      �             �            �      �      �            �      �      �      �      ?      5      )            �      �      �      �             A      �       |      k                  �      �       O       w      %      �      �      
      4            �      6      �      �      a      �      4      �      ~       )      k      �      T             {       �      P       �      �      7      )      4       1      %      a      �      +      /      �      ]      ^      �      �                   �      m      z      [      %      �      @      �      �      �      �      g            �      �      �      i            +      �      �      f            >      o      �      |      �      �            �             -       �      H      ;            �      f      W                  f      -            �            a       �      
      �      �       �      �              �      *
dtype0	*
_output_shapes	
:�
�
 symbol_table_lookup_table_insertLookupTableInsertV2symbol_tableConst_3Const_4*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
Const_5Const"/device:CPU:0*�
value�B�B__label__you_are_welcomeB__label__chatB__label__requestB__label__suggestB__label__negateB__label__not_understandB__label__greetingB__label__hangupB__label__keep_listenB__label__thankyouB__label__affirmB__label__confirmB__label__offerB__label__unknownB__label__goodbyeB__label__informB__label__sorryB__label__busyB__label__request_compareB__label__request_alts*
dtype0*
_output_shapes
:
�
Const_6Const"/device:CPU:0*�
value�B�	"�                     
                                                                	                                                        *
dtype0	*
_output_shapes
:
�
label_table_lookup_table_insertLookupTableInsertV2label_tableConst_5Const_6*	
Tin0*

Tout0	*
_class
loc:@label_table
�
Const_7Const"/device:CPU:0*
_output_shapes
:*�
value�B�	"�                     
                                                                	                                                        *
dtype0	
�
Const_8Const"/device:CPU:0*�
value�B�B__label__you_are_welcomeB__label__chatB__label__requestB__label__suggestB__label__negateB__label__not_understandB__label__greetingB__label__hangupB__label__keep_listenB__label__thankyouB__label__affirmB__label__confirmB__label__offerB__label__unknownB__label__goodbyeB__label__informB__label__sorryB__label__busyB__label__request_compareB__label__request_alts*
dtype0*
_output_shapes
:
�
out_table_lookup_table_insertLookupTableInsertV2	out_tableConst_7Const_8*	
Tin0	*

Tout0*
_class
loc:@out_table
b
Merge_1/MergeSummaryMergeSummaryepoch_1loss_1
accuracy_1*
N*
_output_shapes
: 
Y
Merge_2/MergeSummaryMergeSummaryloss_1
accuracy_1*
N*
_output_shapes
: 
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_566270632dbb4145aadc543b1f1bb5ab/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
o
save_1/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_1/ShardedFilename_1ShardedFilenamesave_1/StringJoinsave_1/ShardedFilename_1/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_1/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_1/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_1/SaveV2_1SaveV2save_1/ShardedFilename_1save_1/SaveV2_1/tensor_names save_1/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_1/control_dependency_1Identitysave_1/ShardedFilename_1^save_1/SaveV2_1"/device:CPU:0*+
_class!
loc:@save_1/ShardedFilename_1*
_output_shapes
: *
T0
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilenamesave_1/ShardedFilename_1^save_1/control_dependency^save_1/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency^save_1/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_1Assignbeta1_powersave_1/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_1/Assign_3Assigncnn_max_pool_2/Wsave_1/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_1/Assign_4Assigncnn_max_pool_2/W/Adamsave_1/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_1/Assign_5Assigncnn_max_pool_2/W/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_1/Assign_6Assigncnn_max_pool_2/bsave_1/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_1/Assign_7Assigncnn_max_pool_2/b/Adamsave_1/RestoreV2:7*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_1/Assign_8Assigncnn_max_pool_2/b/Adam_1save_1/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_1/Assign_9Assigncnn_max_pool_3/Wsave_1/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_1/Assign_10Assigncnn_max_pool_3/W/Adamsave_1/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_1/Assign_11Assigncnn_max_pool_3/W/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_1/Assign_12Assigncnn_max_pool_3/bsave_1/RestoreV2:12*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_1/Assign_13Assigncnn_max_pool_3/b/Adamsave_1/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_1/Assign_14Assigncnn_max_pool_3/b/Adam_1save_1/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_1/Assign_15Assigncnn_max_pool_4/Wsave_1/RestoreV2:15*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_1/Assign_16Assigncnn_max_pool_4/W/Adamsave_1/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_1/Assign_17Assigncnn_max_pool_4/W/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_1/Assign_18Assigncnn_max_pool_4/bsave_1/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_1/Assign_19Assigncnn_max_pool_4/b/Adamsave_1/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_1/Assign_20Assigncnn_max_pool_4/b/Adam_1save_1/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_1/Assign_21Assignglobal_stepsave_1/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_1/LookupTableImportV2LookupTableImportV2label_tablesave_1/RestoreV2:22save_1/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_1/LookupTableImportV2_1LookupTableImportV2	out_tablesave_1/RestoreV2:24save_1/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_1/Assign_22Assignoutput/Wsave_1/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_1/Assign_23Assignoutput/W/Adamsave_1/RestoreV2:27*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_1/Assign_24Assignoutput/W/Adam_1save_1/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_1/Assign_25Assignoutput/bsave_1/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_26Assignoutput/b/Adamsave_1/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_27Assignoutput/b/Adam_1save_1/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_1/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_1/RestoreV2:32save_1/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/LookupTableImportV2^save_1/LookupTableImportV2_1^save_1/LookupTableImportV2_2
�
save_1/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0

#save_1/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_1/Assign_28Assignembedding/emb_matrixsave_1/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_1/Assign_29Assignembedding/emb_matrix/Adamsave_1/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_1/Assign_30Assignembedding/emb_matrix/Adam_1save_1/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
f
save_1/restore_shard_1NoOp^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30"/device:CPU:0
6
save_1/restore_all/NoOpNoOp^save_1/restore_shard
I
save_1/restore_all/NoOp_1NoOp^save_1/restore_shard_1"/device:CPU:0
P
save_1/restore_allNoOp^save_1/restore_all/NoOp^save_1/restore_all/NoOp_1
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_b28dd44743bd43638ef20580e2e6ee96/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: *
T0
o
save_2/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_2/ShardedFilename_1ShardedFilenamesave_2/StringJoinsave_2/ShardedFilename_1/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_2/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_2/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_2/SaveV2_1SaveV2save_2/ShardedFilename_1save_2/SaveV2_1/tensor_names save_2/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_2/control_dependency_1Identitysave_2/ShardedFilename_1^save_2/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*+
_class!
loc:@save_2/ShardedFilename_1
�
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilenamesave_2/ShardedFilename_1^save_2/control_dependency^save_2/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(
�
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency^save_2/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_2/AssignAssignVariablesave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_1Assignbeta1_powersave_2/RestoreV2:1*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_2/Assign_2Assignbeta2_powersave_2/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_2/Assign_3Assigncnn_max_pool_2/Wsave_2/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_2/Assign_4Assigncnn_max_pool_2/W/Adamsave_2/RestoreV2:4*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_2/Assign_5Assigncnn_max_pool_2/W/Adam_1save_2/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_2/Assign_6Assigncnn_max_pool_2/bsave_2/RestoreV2:6*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_2/Assign_7Assigncnn_max_pool_2/b/Adamsave_2/RestoreV2:7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_2/Assign_8Assigncnn_max_pool_2/b/Adam_1save_2/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_2/Assign_9Assigncnn_max_pool_3/Wsave_2/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_2/Assign_10Assigncnn_max_pool_3/W/Adamsave_2/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_2/Assign_11Assigncnn_max_pool_3/W/Adam_1save_2/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_2/Assign_12Assigncnn_max_pool_3/bsave_2/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_2/Assign_13Assigncnn_max_pool_3/b/Adamsave_2/RestoreV2:13*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_2/Assign_14Assigncnn_max_pool_3/b/Adam_1save_2/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_2/Assign_15Assigncnn_max_pool_4/Wsave_2/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_2/Assign_16Assigncnn_max_pool_4/W/Adamsave_2/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_2/Assign_17Assigncnn_max_pool_4/W/Adam_1save_2/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_2/Assign_18Assigncnn_max_pool_4/bsave_2/RestoreV2:18*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_2/Assign_19Assigncnn_max_pool_4/b/Adamsave_2/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_2/Assign_20Assigncnn_max_pool_4/b/Adam_1save_2/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_2/Assign_21Assignglobal_stepsave_2/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_2/LookupTableImportV2LookupTableImportV2label_tablesave_2/RestoreV2:22save_2/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_2/LookupTableImportV2_1LookupTableImportV2	out_tablesave_2/RestoreV2:24save_2/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_2/Assign_22Assignoutput/Wsave_2/RestoreV2:26*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_2/Assign_23Assignoutput/W/Adamsave_2/RestoreV2:27*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_2/Assign_24Assignoutput/W/Adam_1save_2/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_2/Assign_25Assignoutput/bsave_2/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_2/Assign_26Assignoutput/b/Adamsave_2/RestoreV2:30*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_2/Assign_27Assignoutput/b/Adam_1save_2/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_2/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_2/RestoreV2:32save_2/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/LookupTableImportV2^save_2/LookupTableImportV2_1^save_2/LookupTableImportV2_2
�
save_2/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_2/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_2/Assign_28Assignembedding/emb_matrixsave_2/RestoreV2_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
save_2/Assign_29Assignembedding/emb_matrix/Adamsave_2/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_2/Assign_30Assignembedding/emb_matrix/Adam_1save_2/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
f
save_2/restore_shard_1NoOp^save_2/Assign_28^save_2/Assign_29^save_2/Assign_30"/device:CPU:0
6
save_2/restore_all/NoOpNoOp^save_2/restore_shard
I
save_2/restore_all/NoOp_1NoOp^save_2/restore_shard_1"/device:CPU:0
P
save_2/restore_allNoOp^save_2/restore_all/NoOp^save_2/restore_all/NoOp_1
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_f8e15b8ccb1c4700bc44c11ecc7852cf/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_3/ShardedFilename
o
save_3/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_3/ShardedFilename_1ShardedFilenamesave_3/StringJoinsave_3/ShardedFilename_1/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_3/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_3/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_3/SaveV2_1SaveV2save_3/ShardedFilename_1save_3/SaveV2_1/tensor_names save_3/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_3/control_dependency_1Identitysave_3/ShardedFilename_1^save_3/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*+
_class!
loc:@save_3/ShardedFilename_1
�
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilenamesave_3/ShardedFilename_1^save_3/control_dependency^save_3/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(
�
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency^save_3/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_3/AssignAssignVariablesave_3/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
�
save_3/Assign_1Assignbeta1_powersave_3/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_2Assignbeta2_powersave_3/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_3Assigncnn_max_pool_2/Wsave_3/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_3/Assign_4Assigncnn_max_pool_2/W/Adamsave_3/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_3/Assign_5Assigncnn_max_pool_2/W/Adam_1save_3/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_3/Assign_6Assigncnn_max_pool_2/bsave_3/RestoreV2:6*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
�
save_3/Assign_7Assigncnn_max_pool_2/b/Adamsave_3/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_3/Assign_8Assigncnn_max_pool_2/b/Adam_1save_3/RestoreV2:8*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_3/Assign_9Assigncnn_max_pool_3/Wsave_3/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_3/Assign_10Assigncnn_max_pool_3/W/Adamsave_3/RestoreV2:10*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_3/Assign_11Assigncnn_max_pool_3/W/Adam_1save_3/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_3/Assign_12Assigncnn_max_pool_3/bsave_3/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_3/Assign_13Assigncnn_max_pool_3/b/Adamsave_3/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_3/Assign_14Assigncnn_max_pool_3/b/Adam_1save_3/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_3/Assign_15Assigncnn_max_pool_4/Wsave_3/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_3/Assign_16Assigncnn_max_pool_4/W/Adamsave_3/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_3/Assign_17Assigncnn_max_pool_4/W/Adam_1save_3/RestoreV2:17*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_3/Assign_18Assigncnn_max_pool_4/bsave_3/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_3/Assign_19Assigncnn_max_pool_4/b/Adamsave_3/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_3/Assign_20Assigncnn_max_pool_4/b/Adam_1save_3/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_3/Assign_21Assignglobal_stepsave_3/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_3/LookupTableImportV2LookupTableImportV2label_tablesave_3/RestoreV2:22save_3/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_3/LookupTableImportV2_1LookupTableImportV2	out_tablesave_3/RestoreV2:24save_3/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_3/Assign_22Assignoutput/Wsave_3/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_3/Assign_23Assignoutput/W/Adamsave_3/RestoreV2:27*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_3/Assign_24Assignoutput/W/Adam_1save_3/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_3/Assign_25Assignoutput/bsave_3/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_3/Assign_26Assignoutput/b/Adamsave_3/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_3/Assign_27Assignoutput/b/Adam_1save_3/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_3/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_3/RestoreV2:32save_3/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/LookupTableImportV2^save_3/LookupTableImportV2_1^save_3/LookupTableImportV2_2
�
save_3/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_3/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_3/Assign_28Assignembedding/emb_matrixsave_3/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_3/Assign_29Assignembedding/emb_matrix/Adamsave_3/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_3/Assign_30Assignembedding/emb_matrix/Adam_1save_3/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
f
save_3/restore_shard_1NoOp^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30"/device:CPU:0
6
save_3/restore_all/NoOpNoOp^save_3/restore_shard
I
save_3/restore_all/NoOp_1NoOp^save_3/restore_shard_1"/device:CPU:0
P
save_3/restore_allNoOp^save_3/restore_all/NoOp^save_3/restore_all/NoOp_1
R
save_4/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_ac2b9425c88c458ea61c564db4e2514f/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_4/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_4/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_4/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
o
save_4/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_4/ShardedFilename_1ShardedFilenamesave_4/StringJoinsave_4/ShardedFilename_1/shardsave_4/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_4/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_4/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_4/SaveV2_1SaveV2save_4/ShardedFilename_1save_4/SaveV2_1/tensor_names save_4/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_4/control_dependency_1Identitysave_4/ShardedFilename_1^save_4/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*+
_class!
loc:@save_4/ShardedFilename_1
�
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilenamesave_4/ShardedFilename_1^save_4/control_dependency^save_4/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const"/device:CPU:0*
delete_old_dirs(
�
save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency^save_4/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_4/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_4/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_4/AssignAssignVariablesave_4/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_4/Assign_1Assignbeta1_powersave_4/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_4/Assign_2Assignbeta2_powersave_4/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_4/Assign_3Assigncnn_max_pool_2/Wsave_4/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_4/Assign_4Assigncnn_max_pool_2/W/Adamsave_4/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_4/Assign_5Assigncnn_max_pool_2/W/Adam_1save_4/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_4/Assign_6Assigncnn_max_pool_2/bsave_4/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_4/Assign_7Assigncnn_max_pool_2/b/Adamsave_4/RestoreV2:7*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_4/Assign_8Assigncnn_max_pool_2/b/Adam_1save_4/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_4/Assign_9Assigncnn_max_pool_3/Wsave_4/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_4/Assign_10Assigncnn_max_pool_3/W/Adamsave_4/RestoreV2:10*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_4/Assign_11Assigncnn_max_pool_3/W/Adam_1save_4/RestoreV2:11*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_4/Assign_12Assigncnn_max_pool_3/bsave_4/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_4/Assign_13Assigncnn_max_pool_3/b/Adamsave_4/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_4/Assign_14Assigncnn_max_pool_3/b/Adam_1save_4/RestoreV2:14*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_4/Assign_15Assigncnn_max_pool_4/Wsave_4/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_4/Assign_16Assigncnn_max_pool_4/W/Adamsave_4/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_4/Assign_17Assigncnn_max_pool_4/W/Adam_1save_4/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_4/Assign_18Assigncnn_max_pool_4/bsave_4/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_4/Assign_19Assigncnn_max_pool_4/b/Adamsave_4/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_4/Assign_20Assigncnn_max_pool_4/b/Adam_1save_4/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_4/Assign_21Assignglobal_stepsave_4/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_4/LookupTableImportV2LookupTableImportV2label_tablesave_4/RestoreV2:22save_4/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_4/LookupTableImportV2_1LookupTableImportV2	out_tablesave_4/RestoreV2:24save_4/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_4/Assign_22Assignoutput/Wsave_4/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_4/Assign_23Assignoutput/W/Adamsave_4/RestoreV2:27*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_4/Assign_24Assignoutput/W/Adam_1save_4/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_4/Assign_25Assignoutput/bsave_4/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_4/Assign_26Assignoutput/b/Adamsave_4/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_4/Assign_27Assignoutput/b/Adam_1save_4/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_4/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_4/RestoreV2:32save_4/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9^save_4/LookupTableImportV2^save_4/LookupTableImportV2_1^save_4/LookupTableImportV2_2
�
save_4/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_4/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_4/RestoreV2_1	RestoreV2save_4/Constsave_4/RestoreV2_1/tensor_names#save_4/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_4/Assign_28Assignembedding/emb_matrixsave_4/RestoreV2_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
save_4/Assign_29Assignembedding/emb_matrix/Adamsave_4/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_4/Assign_30Assignembedding/emb_matrix/Adam_1save_4/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
f
save_4/restore_shard_1NoOp^save_4/Assign_28^save_4/Assign_29^save_4/Assign_30"/device:CPU:0
6
save_4/restore_all/NoOpNoOp^save_4/restore_shard
I
save_4/restore_all/NoOp_1NoOp^save_4/restore_shard_1"/device:CPU:0
P
save_4/restore_allNoOp^save_4/restore_all/NoOp^save_4/restore_all/NoOp_1
R
save_5/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_5/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_43a9c44ddebe44d3852534b1563b9c3d/part
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_5/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_5/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_5/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_5/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: 
o
save_5/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_5/ShardedFilename_1ShardedFilenamesave_5/StringJoinsave_5/ShardedFilename_1/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_5/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_5/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_5/SaveV2_1SaveV2save_5/ShardedFilename_1save_5/SaveV2_1/tensor_names save_5/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_5/control_dependency_1Identitysave_5/ShardedFilename_1^save_5/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_5/ShardedFilename_1*
_output_shapes
: 
�
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilenamesave_5/ShardedFilename_1^save_5/control_dependency^save_5/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const"/device:CPU:0*
delete_old_dirs(
�
save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency^save_5/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_5/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_5/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_5/AssignAssignVariablesave_5/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_1Assignbeta1_powersave_5/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_2Assignbeta2_powersave_5/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_3Assigncnn_max_pool_2/Wsave_5/RestoreV2:3*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_5/Assign_4Assigncnn_max_pool_2/W/Adamsave_5/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_5/Assign_5Assigncnn_max_pool_2/W/Adam_1save_5/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_5/Assign_6Assigncnn_max_pool_2/bsave_5/RestoreV2:6*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
�
save_5/Assign_7Assigncnn_max_pool_2/b/Adamsave_5/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_5/Assign_8Assigncnn_max_pool_2/b/Adam_1save_5/RestoreV2:8*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
�
save_5/Assign_9Assigncnn_max_pool_3/Wsave_5/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_5/Assign_10Assigncnn_max_pool_3/W/Adamsave_5/RestoreV2:10*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_5/Assign_11Assigncnn_max_pool_3/W/Adam_1save_5/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_5/Assign_12Assigncnn_max_pool_3/bsave_5/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_5/Assign_13Assigncnn_max_pool_3/b/Adamsave_5/RestoreV2:13*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_5/Assign_14Assigncnn_max_pool_3/b/Adam_1save_5/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_5/Assign_15Assigncnn_max_pool_4/Wsave_5/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_5/Assign_16Assigncnn_max_pool_4/W/Adamsave_5/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_5/Assign_17Assigncnn_max_pool_4/W/Adam_1save_5/RestoreV2:17*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_5/Assign_18Assigncnn_max_pool_4/bsave_5/RestoreV2:18*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_5/Assign_19Assigncnn_max_pool_4/b/Adamsave_5/RestoreV2:19*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
�
save_5/Assign_20Assigncnn_max_pool_4/b/Adam_1save_5/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_5/Assign_21Assignglobal_stepsave_5/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_5/LookupTableImportV2LookupTableImportV2label_tablesave_5/RestoreV2:22save_5/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_5/LookupTableImportV2_1LookupTableImportV2	out_tablesave_5/RestoreV2:24save_5/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_5/Assign_22Assignoutput/Wsave_5/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_5/Assign_23Assignoutput/W/Adamsave_5/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_5/Assign_24Assignoutput/W/Adam_1save_5/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_5/Assign_25Assignoutput/bsave_5/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_5/Assign_26Assignoutput/b/Adamsave_5/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_5/Assign_27Assignoutput/b/Adam_1save_5/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_5/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_5/RestoreV2:32save_5/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_26^save_5/Assign_27^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9^save_5/LookupTableImportV2^save_5/LookupTableImportV2_1^save_5/LookupTableImportV2_2
�
save_5/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1

#save_5/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_5/RestoreV2_1	RestoreV2save_5/Constsave_5/RestoreV2_1/tensor_names#save_5/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_5/Assign_28Assignembedding/emb_matrixsave_5/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_5/Assign_29Assignembedding/emb_matrix/Adamsave_5/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_5/Assign_30Assignembedding/emb_matrix/Adam_1save_5/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
f
save_5/restore_shard_1NoOp^save_5/Assign_28^save_5/Assign_29^save_5/Assign_30"/device:CPU:0
6
save_5/restore_all/NoOpNoOp^save_5/restore_shard
I
save_5/restore_all/NoOp_1NoOp^save_5/restore_shard_1"/device:CPU:0
P
save_5/restore_allNoOp^save_5/restore_all/NoOp^save_5/restore_all/NoOp_1
R
save_6/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_6/StringJoin/inputs_1Const*<
value3B1 B+_temp_7629d93805954ff2bfe48439fded2bd0/part*
dtype0*
_output_shapes
: 
{
save_6/StringJoin
StringJoinsave_6/Constsave_6/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_6/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_6/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_6/ShardedFilenameShardedFilenamesave_6/StringJoinsave_6/ShardedFilename/shardsave_6/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_6/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_6/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_6/SaveV2SaveV2save_6/ShardedFilenamesave_6/SaveV2/tensor_namessave_6/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_6/control_dependencyIdentitysave_6/ShardedFilename^save_6/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_6/ShardedFilename
o
save_6/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_6/ShardedFilename_1ShardedFilenamesave_6/StringJoinsave_6/ShardedFilename_1/shardsave_6/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_6/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
|
 save_6/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_6/SaveV2_1SaveV2save_6/ShardedFilename_1save_6/SaveV2_1/tensor_names save_6/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_6/control_dependency_1Identitysave_6/ShardedFilename_1^save_6/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_6/ShardedFilename_1*
_output_shapes
: 
�
-save_6/MergeV2Checkpoints/checkpoint_prefixesPacksave_6/ShardedFilenamesave_6/ShardedFilename_1^save_6/control_dependency^save_6/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
save_6/MergeV2CheckpointsMergeV2Checkpoints-save_6/MergeV2Checkpoints/checkpoint_prefixessave_6/Const"/device:CPU:0*
delete_old_dirs(
�
save_6/IdentityIdentitysave_6/Const^save_6/MergeV2Checkpoints^save_6/control_dependency^save_6/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_6/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_6/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_6/RestoreV2	RestoreV2save_6/Constsave_6/RestoreV2/tensor_names!save_6/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_6/AssignAssignVariablesave_6/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_6/Assign_1Assignbeta1_powersave_6/RestoreV2:1*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_6/Assign_2Assignbeta2_powersave_6/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_6/Assign_3Assigncnn_max_pool_2/Wsave_6/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_6/Assign_4Assigncnn_max_pool_2/W/Adamsave_6/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_6/Assign_5Assigncnn_max_pool_2/W/Adam_1save_6/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_6/Assign_6Assigncnn_max_pool_2/bsave_6/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_7Assigncnn_max_pool_2/b/Adamsave_6/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_8Assigncnn_max_pool_2/b/Adam_1save_6/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_9Assigncnn_max_pool_3/Wsave_6/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_6/Assign_10Assigncnn_max_pool_3/W/Adamsave_6/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_6/Assign_11Assigncnn_max_pool_3/W/Adam_1save_6/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_6/Assign_12Assigncnn_max_pool_3/bsave_6/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_13Assigncnn_max_pool_3/b/Adamsave_6/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_14Assigncnn_max_pool_3/b/Adam_1save_6/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_15Assigncnn_max_pool_4/Wsave_6/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_6/Assign_16Assigncnn_max_pool_4/W/Adamsave_6/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_6/Assign_17Assigncnn_max_pool_4/W/Adam_1save_6/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_6/Assign_18Assigncnn_max_pool_4/bsave_6/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_6/Assign_19Assigncnn_max_pool_4/b/Adamsave_6/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_6/Assign_20Assigncnn_max_pool_4/b/Adam_1save_6/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_6/Assign_21Assignglobal_stepsave_6/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_6/LookupTableImportV2LookupTableImportV2label_tablesave_6/RestoreV2:22save_6/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_6/LookupTableImportV2_1LookupTableImportV2	out_tablesave_6/RestoreV2:24save_6/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_6/Assign_22Assignoutput/Wsave_6/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_6/Assign_23Assignoutput/W/Adamsave_6/RestoreV2:27*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_6/Assign_24Assignoutput/W/Adam_1save_6/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_6/Assign_25Assignoutput/bsave_6/RestoreV2:29*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_6/Assign_26Assignoutput/b/Adamsave_6/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_6/Assign_27Assignoutput/b/Adam_1save_6/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_6/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_6/RestoreV2:32save_6/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_6/restore_shardNoOp^save_6/Assign^save_6/Assign_1^save_6/Assign_10^save_6/Assign_11^save_6/Assign_12^save_6/Assign_13^save_6/Assign_14^save_6/Assign_15^save_6/Assign_16^save_6/Assign_17^save_6/Assign_18^save_6/Assign_19^save_6/Assign_2^save_6/Assign_20^save_6/Assign_21^save_6/Assign_22^save_6/Assign_23^save_6/Assign_24^save_6/Assign_25^save_6/Assign_26^save_6/Assign_27^save_6/Assign_3^save_6/Assign_4^save_6/Assign_5^save_6/Assign_6^save_6/Assign_7^save_6/Assign_8^save_6/Assign_9^save_6/LookupTableImportV2^save_6/LookupTableImportV2_1^save_6/LookupTableImportV2_2
�
save_6/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_6/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_6/RestoreV2_1	RestoreV2save_6/Constsave_6/RestoreV2_1/tensor_names#save_6/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_6/Assign_28Assignembedding/emb_matrixsave_6/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
�
save_6/Assign_29Assignembedding/emb_matrix/Adamsave_6/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_6/Assign_30Assignembedding/emb_matrix/Adam_1save_6/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
f
save_6/restore_shard_1NoOp^save_6/Assign_28^save_6/Assign_29^save_6/Assign_30"/device:CPU:0
6
save_6/restore_all/NoOpNoOp^save_6/restore_shard
I
save_6/restore_all/NoOp_1NoOp^save_6/restore_shard_1"/device:CPU:0
P
save_6/restore_allNoOp^save_6/restore_all/NoOp^save_6/restore_all/NoOp_1
R
save_7/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_7/StringJoin/inputs_1Const*<
value3B1 B+_temp_1211447e52a14912b78d6e58639387b4/part*
dtype0*
_output_shapes
: 
{
save_7/StringJoin
StringJoinsave_7/Constsave_7/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_7/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_7/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
save_7/ShardedFilenameShardedFilenamesave_7/StringJoinsave_7/ShardedFilename/shardsave_7/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_7/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
save_7/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_7/SaveV2SaveV2save_7/ShardedFilenamesave_7/SaveV2/tensor_namessave_7/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_7/control_dependencyIdentitysave_7/ShardedFilename^save_7/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_7/ShardedFilename
o
save_7/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
save_7/ShardedFilename_1ShardedFilenamesave_7/StringJoinsave_7/ShardedFilename_1/shardsave_7/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_7/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_7/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_7/SaveV2_1SaveV2save_7/ShardedFilename_1save_7/SaveV2_1/tensor_names save_7/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_7/control_dependency_1Identitysave_7/ShardedFilename_1^save_7/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_7/ShardedFilename_1*
_output_shapes
: 
�
-save_7/MergeV2Checkpoints/checkpoint_prefixesPacksave_7/ShardedFilenamesave_7/ShardedFilename_1^save_7/control_dependency^save_7/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
save_7/MergeV2CheckpointsMergeV2Checkpoints-save_7/MergeV2Checkpoints/checkpoint_prefixessave_7/Const"/device:CPU:0*
delete_old_dirs(
�
save_7/IdentityIdentitysave_7/Const^save_7/MergeV2Checkpoints^save_7/control_dependency^save_7/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_7/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_7/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_7/RestoreV2	RestoreV2save_7/Constsave_7/RestoreV2/tensor_names!save_7/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_7/AssignAssignVariablesave_7/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_7/Assign_1Assignbeta1_powersave_7/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_7/Assign_2Assignbeta2_powersave_7/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_7/Assign_3Assigncnn_max_pool_2/Wsave_7/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_4Assigncnn_max_pool_2/W/Adamsave_7/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_5Assigncnn_max_pool_2/W/Adam_1save_7/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_6Assigncnn_max_pool_2/bsave_7/RestoreV2:6*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_7/Assign_7Assigncnn_max_pool_2/b/Adamsave_7/RestoreV2:7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_7/Assign_8Assigncnn_max_pool_2/b/Adam_1save_7/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_7/Assign_9Assigncnn_max_pool_3/Wsave_7/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_10Assigncnn_max_pool_3/W/Adamsave_7/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_11Assigncnn_max_pool_3/W/Adam_1save_7/RestoreV2:11*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_7/Assign_12Assigncnn_max_pool_3/bsave_7/RestoreV2:12*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_7/Assign_13Assigncnn_max_pool_3/b/Adamsave_7/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_7/Assign_14Assigncnn_max_pool_3/b/Adam_1save_7/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_7/Assign_15Assigncnn_max_pool_4/Wsave_7/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_16Assigncnn_max_pool_4/W/Adamsave_7/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_17Assigncnn_max_pool_4/W/Adam_1save_7/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_7/Assign_18Assigncnn_max_pool_4/bsave_7/RestoreV2:18*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
�
save_7/Assign_19Assigncnn_max_pool_4/b/Adamsave_7/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_7/Assign_20Assigncnn_max_pool_4/b/Adam_1save_7/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_7/Assign_21Assignglobal_stepsave_7/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_7/LookupTableImportV2LookupTableImportV2label_tablesave_7/RestoreV2:22save_7/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_7/LookupTableImportV2_1LookupTableImportV2	out_tablesave_7/RestoreV2:24save_7/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_7/Assign_22Assignoutput/Wsave_7/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_7/Assign_23Assignoutput/W/Adamsave_7/RestoreV2:27*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_7/Assign_24Assignoutput/W/Adam_1save_7/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_7/Assign_25Assignoutput/bsave_7/RestoreV2:29*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_7/Assign_26Assignoutput/b/Adamsave_7/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_7/Assign_27Assignoutput/b/Adam_1save_7/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_7/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_7/RestoreV2:32save_7/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_7/restore_shardNoOp^save_7/Assign^save_7/Assign_1^save_7/Assign_10^save_7/Assign_11^save_7/Assign_12^save_7/Assign_13^save_7/Assign_14^save_7/Assign_15^save_7/Assign_16^save_7/Assign_17^save_7/Assign_18^save_7/Assign_19^save_7/Assign_2^save_7/Assign_20^save_7/Assign_21^save_7/Assign_22^save_7/Assign_23^save_7/Assign_24^save_7/Assign_25^save_7/Assign_26^save_7/Assign_27^save_7/Assign_3^save_7/Assign_4^save_7/Assign_5^save_7/Assign_6^save_7/Assign_7^save_7/Assign_8^save_7/Assign_9^save_7/LookupTableImportV2^save_7/LookupTableImportV2_1^save_7/LookupTableImportV2_2
�
save_7/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0

#save_7/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_7/RestoreV2_1	RestoreV2save_7/Constsave_7/RestoreV2_1/tensor_names#save_7/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_7/Assign_28Assignembedding/emb_matrixsave_7/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
�
save_7/Assign_29Assignembedding/emb_matrix/Adamsave_7/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_7/Assign_30Assignembedding/emb_matrix/Adam_1save_7/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
f
save_7/restore_shard_1NoOp^save_7/Assign_28^save_7/Assign_29^save_7/Assign_30"/device:CPU:0
6
save_7/restore_all/NoOpNoOp^save_7/restore_shard
I
save_7/restore_all/NoOp_1NoOp^save_7/restore_shard_1"/device:CPU:0
P
save_7/restore_allNoOp^save_7/restore_all/NoOp^save_7/restore_all/NoOp_1
R
save_8/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_8/StringJoin/inputs_1Const*<
value3B1 B+_temp_9426c9fdf0cd4cdab59ba1baf43d08cc/part*
dtype0*
_output_shapes
: 
{
save_8/StringJoin
StringJoinsave_8/Constsave_8/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_8/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_8/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_8/ShardedFilenameShardedFilenamesave_8/StringJoinsave_8/ShardedFilename/shardsave_8/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_8/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_8/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_8/SaveV2SaveV2save_8/ShardedFilenamesave_8/SaveV2/tensor_namessave_8/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_8/control_dependencyIdentitysave_8/ShardedFilename^save_8/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_8/ShardedFilename*
_output_shapes
: 
o
save_8/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_8/ShardedFilename_1ShardedFilenamesave_8/StringJoinsave_8/ShardedFilename_1/shardsave_8/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_8/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
|
 save_8/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_8/SaveV2_1SaveV2save_8/ShardedFilename_1save_8/SaveV2_1/tensor_names save_8/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_8/control_dependency_1Identitysave_8/ShardedFilename_1^save_8/SaveV2_1"/device:CPU:0*+
_class!
loc:@save_8/ShardedFilename_1*
_output_shapes
: *
T0
�
-save_8/MergeV2Checkpoints/checkpoint_prefixesPacksave_8/ShardedFilenamesave_8/ShardedFilename_1^save_8/control_dependency^save_8/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_8/MergeV2CheckpointsMergeV2Checkpoints-save_8/MergeV2Checkpoints/checkpoint_prefixessave_8/Const"/device:CPU:0*
delete_old_dirs(
�
save_8/IdentityIdentitysave_8/Const^save_8/MergeV2Checkpoints^save_8/control_dependency^save_8/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_8/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_8/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_8/RestoreV2	RestoreV2save_8/Constsave_8/RestoreV2/tensor_names!save_8/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_8/AssignAssignVariablesave_8/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
�
save_8/Assign_1Assignbeta1_powersave_8/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_8/Assign_2Assignbeta2_powersave_8/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_8/Assign_3Assigncnn_max_pool_2/Wsave_8/RestoreV2:3*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_8/Assign_4Assigncnn_max_pool_2/W/Adamsave_8/RestoreV2:4*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_8/Assign_5Assigncnn_max_pool_2/W/Adam_1save_8/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_8/Assign_6Assigncnn_max_pool_2/bsave_8/RestoreV2:6*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_8/Assign_7Assigncnn_max_pool_2/b/Adamsave_8/RestoreV2:7*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
�
save_8/Assign_8Assigncnn_max_pool_2/b/Adam_1save_8/RestoreV2:8*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_8/Assign_9Assigncnn_max_pool_3/Wsave_8/RestoreV2:9*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_8/Assign_10Assigncnn_max_pool_3/W/Adamsave_8/RestoreV2:10*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_8/Assign_11Assigncnn_max_pool_3/W/Adam_1save_8/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_8/Assign_12Assigncnn_max_pool_3/bsave_8/RestoreV2:12*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_8/Assign_13Assigncnn_max_pool_3/b/Adamsave_8/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_8/Assign_14Assigncnn_max_pool_3/b/Adam_1save_8/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_8/Assign_15Assigncnn_max_pool_4/Wsave_8/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_8/Assign_16Assigncnn_max_pool_4/W/Adamsave_8/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_8/Assign_17Assigncnn_max_pool_4/W/Adam_1save_8/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_8/Assign_18Assigncnn_max_pool_4/bsave_8/RestoreV2:18*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_8/Assign_19Assigncnn_max_pool_4/b/Adamsave_8/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_8/Assign_20Assigncnn_max_pool_4/b/Adam_1save_8/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_8/Assign_21Assignglobal_stepsave_8/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
�
save_8/LookupTableImportV2LookupTableImportV2label_tablesave_8/RestoreV2:22save_8/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_8/LookupTableImportV2_1LookupTableImportV2	out_tablesave_8/RestoreV2:24save_8/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_8/Assign_22Assignoutput/Wsave_8/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_8/Assign_23Assignoutput/W/Adamsave_8/RestoreV2:27*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_8/Assign_24Assignoutput/W/Adam_1save_8/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_8/Assign_25Assignoutput/bsave_8/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_8/Assign_26Assignoutput/b/Adamsave_8/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_8/Assign_27Assignoutput/b/Adam_1save_8/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_8/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_8/RestoreV2:32save_8/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_8/restore_shardNoOp^save_8/Assign^save_8/Assign_1^save_8/Assign_10^save_8/Assign_11^save_8/Assign_12^save_8/Assign_13^save_8/Assign_14^save_8/Assign_15^save_8/Assign_16^save_8/Assign_17^save_8/Assign_18^save_8/Assign_19^save_8/Assign_2^save_8/Assign_20^save_8/Assign_21^save_8/Assign_22^save_8/Assign_23^save_8/Assign_24^save_8/Assign_25^save_8/Assign_26^save_8/Assign_27^save_8/Assign_3^save_8/Assign_4^save_8/Assign_5^save_8/Assign_6^save_8/Assign_7^save_8/Assign_8^save_8/Assign_9^save_8/LookupTableImportV2^save_8/LookupTableImportV2_1^save_8/LookupTableImportV2_2
�
save_8/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:

#save_8/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_8/RestoreV2_1	RestoreV2save_8/Constsave_8/RestoreV2_1/tensor_names#save_8/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_8/Assign_28Assignembedding/emb_matrixsave_8/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_8/Assign_29Assignembedding/emb_matrix/Adamsave_8/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_8/Assign_30Assignembedding/emb_matrix/Adam_1save_8/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
f
save_8/restore_shard_1NoOp^save_8/Assign_28^save_8/Assign_29^save_8/Assign_30"/device:CPU:0
6
save_8/restore_all/NoOpNoOp^save_8/restore_shard
I
save_8/restore_all/NoOp_1NoOp^save_8/restore_shard_1"/device:CPU:0
P
save_8/restore_allNoOp^save_8/restore_all/NoOp^save_8/restore_all/NoOp_1
R
save_9/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_9/StringJoin/inputs_1Const*<
value3B1 B+_temp_a8e57147ad6943f9903575c0e1b27cab/part*
dtype0*
_output_shapes
: 
{
save_9/StringJoin
StringJoinsave_9/Constsave_9/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_9/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_9/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_9/ShardedFilenameShardedFilenamesave_9/StringJoinsave_9/ShardedFilename/shardsave_9/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_9/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0
�
save_9/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_9/SaveV2SaveV2save_9/ShardedFilenamesave_9/SaveV2/tensor_namessave_9/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_9/control_dependencyIdentitysave_9/ShardedFilename^save_9/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_9/ShardedFilename*
_output_shapes
: 
o
save_9/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
save_9/ShardedFilename_1ShardedFilenamesave_9/StringJoinsave_9/ShardedFilename_1/shardsave_9/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_9/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
|
 save_9/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_9/SaveV2_1SaveV2save_9/ShardedFilename_1save_9/SaveV2_1/tensor_names save_9/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_9/control_dependency_1Identitysave_9/ShardedFilename_1^save_9/SaveV2_1"/device:CPU:0*
T0*+
_class!
loc:@save_9/ShardedFilename_1*
_output_shapes
: 
�
-save_9/MergeV2Checkpoints/checkpoint_prefixesPacksave_9/ShardedFilenamesave_9/ShardedFilename_1^save_9/control_dependency^save_9/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
save_9/MergeV2CheckpointsMergeV2Checkpoints-save_9/MergeV2Checkpoints/checkpoint_prefixessave_9/Const"/device:CPU:0*
delete_old_dirs(
�
save_9/IdentityIdentitysave_9/Const^save_9/MergeV2Checkpoints^save_9/control_dependency^save_9/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_9/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
!save_9/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_9/RestoreV2	RestoreV2save_9/Constsave_9/RestoreV2/tensor_names!save_9/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_9/AssignAssignVariablesave_9/RestoreV2*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_9/Assign_1Assignbeta1_powersave_9/RestoreV2:1*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_9/Assign_2Assignbeta2_powersave_9/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_9/Assign_3Assigncnn_max_pool_2/Wsave_9/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_9/Assign_4Assigncnn_max_pool_2/W/Adamsave_9/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_9/Assign_5Assigncnn_max_pool_2/W/Adam_1save_9/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_9/Assign_6Assigncnn_max_pool_2/bsave_9/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_9/Assign_7Assigncnn_max_pool_2/b/Adamsave_9/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_9/Assign_8Assigncnn_max_pool_2/b/Adam_1save_9/RestoreV2:8*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_9/Assign_9Assigncnn_max_pool_3/Wsave_9/RestoreV2:9*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_9/Assign_10Assigncnn_max_pool_3/W/Adamsave_9/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_9/Assign_11Assigncnn_max_pool_3/W/Adam_1save_9/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_9/Assign_12Assigncnn_max_pool_3/bsave_9/RestoreV2:12*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_9/Assign_13Assigncnn_max_pool_3/b/Adamsave_9/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_9/Assign_14Assigncnn_max_pool_3/b/Adam_1save_9/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_9/Assign_15Assigncnn_max_pool_4/Wsave_9/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_9/Assign_16Assigncnn_max_pool_4/W/Adamsave_9/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_9/Assign_17Assigncnn_max_pool_4/W/Adam_1save_9/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_9/Assign_18Assigncnn_max_pool_4/bsave_9/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_9/Assign_19Assigncnn_max_pool_4/b/Adamsave_9/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_9/Assign_20Assigncnn_max_pool_4/b/Adam_1save_9/RestoreV2:20*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_9/Assign_21Assignglobal_stepsave_9/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
�
save_9/LookupTableImportV2LookupTableImportV2label_tablesave_9/RestoreV2:22save_9/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_9/LookupTableImportV2_1LookupTableImportV2	out_tablesave_9/RestoreV2:24save_9/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_9/Assign_22Assignoutput/Wsave_9/RestoreV2:26*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_9/Assign_23Assignoutput/W/Adamsave_9/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_9/Assign_24Assignoutput/W/Adam_1save_9/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_9/Assign_25Assignoutput/bsave_9/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_9/Assign_26Assignoutput/b/Adamsave_9/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_9/Assign_27Assignoutput/b/Adam_1save_9/RestoreV2:31*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_9/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_9/RestoreV2:32save_9/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_9/restore_shardNoOp^save_9/Assign^save_9/Assign_1^save_9/Assign_10^save_9/Assign_11^save_9/Assign_12^save_9/Assign_13^save_9/Assign_14^save_9/Assign_15^save_9/Assign_16^save_9/Assign_17^save_9/Assign_18^save_9/Assign_19^save_9/Assign_2^save_9/Assign_20^save_9/Assign_21^save_9/Assign_22^save_9/Assign_23^save_9/Assign_24^save_9/Assign_25^save_9/Assign_26^save_9/Assign_27^save_9/Assign_3^save_9/Assign_4^save_9/Assign_5^save_9/Assign_6^save_9/Assign_7^save_9/Assign_8^save_9/Assign_9^save_9/LookupTableImportV2^save_9/LookupTableImportV2_1^save_9/LookupTableImportV2_2
�
save_9/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0

#save_9/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_9/RestoreV2_1	RestoreV2save_9/Constsave_9/RestoreV2_1/tensor_names#save_9/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_9/Assign_28Assignembedding/emb_matrixsave_9/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_9/Assign_29Assignembedding/emb_matrix/Adamsave_9/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_9/Assign_30Assignembedding/emb_matrix/Adam_1save_9/RestoreV2_1:2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
f
save_9/restore_shard_1NoOp^save_9/Assign_28^save_9/Assign_29^save_9/Assign_30"/device:CPU:0
6
save_9/restore_all/NoOpNoOp^save_9/restore_shard
I
save_9/restore_all/NoOp_1NoOp^save_9/restore_shard_1"/device:CPU:0
P
save_9/restore_allNoOp^save_9/restore_all/NoOp^save_9/restore_all/NoOp_1
S
save_10/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save_10/StringJoin/inputs_1Const*<
value3B1 B+_temp_fcdb134645fe47b198124701cb820c48/part*
dtype0*
_output_shapes
: 
~
save_10/StringJoin
StringJoinsave_10/Constsave_10/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_10/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_10/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_10/ShardedFilenameShardedFilenamesave_10/StringJoinsave_10/ShardedFilename/shardsave_10/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_10/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_10/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_10/SaveV2SaveV2save_10/ShardedFilenamesave_10/SaveV2/tensor_namessave_10/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_10/control_dependencyIdentitysave_10/ShardedFilename^save_10/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_10/ShardedFilename*
_output_shapes
: 
p
save_10/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_10/ShardedFilename_1ShardedFilenamesave_10/StringJoinsave_10/ShardedFilename_1/shardsave_10/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_10/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_10/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_10/SaveV2_1SaveV2save_10/ShardedFilename_1save_10/SaveV2_1/tensor_names!save_10/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_10/control_dependency_1Identitysave_10/ShardedFilename_1^save_10/SaveV2_1"/device:CPU:0*,
_class"
 loc:@save_10/ShardedFilename_1*
_output_shapes
: *
T0
�
.save_10/MergeV2Checkpoints/checkpoint_prefixesPacksave_10/ShardedFilenamesave_10/ShardedFilename_1^save_10/control_dependency^save_10/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_10/MergeV2CheckpointsMergeV2Checkpoints.save_10/MergeV2Checkpoints/checkpoint_prefixessave_10/Const"/device:CPU:0*
delete_old_dirs(
�
save_10/IdentityIdentitysave_10/Const^save_10/MergeV2Checkpoints^save_10/control_dependency^save_10/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_10/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_10/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_10/RestoreV2	RestoreV2save_10/Constsave_10/RestoreV2/tensor_names"save_10/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_10/AssignAssignVariablesave_10/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_10/Assign_1Assignbeta1_powersave_10/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_10/Assign_2Assignbeta2_powersave_10/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_10/Assign_3Assigncnn_max_pool_2/Wsave_10/RestoreV2:3*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_10/Assign_4Assigncnn_max_pool_2/W/Adamsave_10/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_10/Assign_5Assigncnn_max_pool_2/W/Adam_1save_10/RestoreV2:5*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_10/Assign_6Assigncnn_max_pool_2/bsave_10/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_10/Assign_7Assigncnn_max_pool_2/b/Adamsave_10/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_10/Assign_8Assigncnn_max_pool_2/b/Adam_1save_10/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_10/Assign_9Assigncnn_max_pool_3/Wsave_10/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_10/Assign_10Assigncnn_max_pool_3/W/Adamsave_10/RestoreV2:10*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_10/Assign_11Assigncnn_max_pool_3/W/Adam_1save_10/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_10/Assign_12Assigncnn_max_pool_3/bsave_10/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_10/Assign_13Assigncnn_max_pool_3/b/Adamsave_10/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_10/Assign_14Assigncnn_max_pool_3/b/Adam_1save_10/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_10/Assign_15Assigncnn_max_pool_4/Wsave_10/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_10/Assign_16Assigncnn_max_pool_4/W/Adamsave_10/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_10/Assign_17Assigncnn_max_pool_4/W/Adam_1save_10/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_10/Assign_18Assigncnn_max_pool_4/bsave_10/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_10/Assign_19Assigncnn_max_pool_4/b/Adamsave_10/RestoreV2:19*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_10/Assign_20Assigncnn_max_pool_4/b/Adam_1save_10/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_10/Assign_21Assignglobal_stepsave_10/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_10/LookupTableImportV2LookupTableImportV2label_tablesave_10/RestoreV2:22save_10/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_10/LookupTableImportV2_1LookupTableImportV2	out_tablesave_10/RestoreV2:24save_10/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_10/Assign_22Assignoutput/Wsave_10/RestoreV2:26*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_10/Assign_23Assignoutput/W/Adamsave_10/RestoreV2:27*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_10/Assign_24Assignoutput/W/Adam_1save_10/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_10/Assign_25Assignoutput/bsave_10/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_10/Assign_26Assignoutput/b/Adamsave_10/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_10/Assign_27Assignoutput/b/Adam_1save_10/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_10/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_10/RestoreV2:32save_10/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_10/restore_shardNoOp^save_10/Assign^save_10/Assign_1^save_10/Assign_10^save_10/Assign_11^save_10/Assign_12^save_10/Assign_13^save_10/Assign_14^save_10/Assign_15^save_10/Assign_16^save_10/Assign_17^save_10/Assign_18^save_10/Assign_19^save_10/Assign_2^save_10/Assign_20^save_10/Assign_21^save_10/Assign_22^save_10/Assign_23^save_10/Assign_24^save_10/Assign_25^save_10/Assign_26^save_10/Assign_27^save_10/Assign_3^save_10/Assign_4^save_10/Assign_5^save_10/Assign_6^save_10/Assign_7^save_10/Assign_8^save_10/Assign_9^save_10/LookupTableImportV2^save_10/LookupTableImportV2_1^save_10/LookupTableImportV2_2
�
 save_10/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_10/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_10/RestoreV2_1	RestoreV2save_10/Const save_10/RestoreV2_1/tensor_names$save_10/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_10/Assign_28Assignembedding/emb_matrixsave_10/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_10/Assign_29Assignembedding/emb_matrix/Adamsave_10/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_10/Assign_30Assignembedding/emb_matrix/Adam_1save_10/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_10/restore_shard_1NoOp^save_10/Assign_28^save_10/Assign_29^save_10/Assign_30"/device:CPU:0
8
save_10/restore_all/NoOpNoOp^save_10/restore_shard
K
save_10/restore_all/NoOp_1NoOp^save_10/restore_shard_1"/device:CPU:0
S
save_10/restore_allNoOp^save_10/restore_all/NoOp^save_10/restore_all/NoOp_1
S
save_11/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_11/StringJoin/inputs_1Const*<
value3B1 B+_temp_e591f621a5f34da999fc4d03d1b66958/part*
dtype0*
_output_shapes
: 
~
save_11/StringJoin
StringJoinsave_11/Constsave_11/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_11/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_11/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_11/ShardedFilenameShardedFilenamesave_11/StringJoinsave_11/ShardedFilename/shardsave_11/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_11/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_11/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_11/SaveV2SaveV2save_11/ShardedFilenamesave_11/SaveV2/tensor_namessave_11/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_11/control_dependencyIdentitysave_11/ShardedFilename^save_11/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_11/ShardedFilename*
_output_shapes
: 
p
save_11/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_11/ShardedFilename_1ShardedFilenamesave_11/StringJoinsave_11/ShardedFilename_1/shardsave_11/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_11/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_11/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_11/SaveV2_1SaveV2save_11/ShardedFilename_1save_11/SaveV2_1/tensor_names!save_11/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_11/control_dependency_1Identitysave_11/ShardedFilename_1^save_11/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_11/ShardedFilename_1*
_output_shapes
: 
�
.save_11/MergeV2Checkpoints/checkpoint_prefixesPacksave_11/ShardedFilenamesave_11/ShardedFilename_1^save_11/control_dependency^save_11/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_11/MergeV2CheckpointsMergeV2Checkpoints.save_11/MergeV2Checkpoints/checkpoint_prefixessave_11/Const"/device:CPU:0*
delete_old_dirs(
�
save_11/IdentityIdentitysave_11/Const^save_11/MergeV2Checkpoints^save_11/control_dependency^save_11/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_11/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_11/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_11/RestoreV2	RestoreV2save_11/Constsave_11/RestoreV2/tensor_names"save_11/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_11/AssignAssignVariablesave_11/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
�
save_11/Assign_1Assignbeta1_powersave_11/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_11/Assign_2Assignbeta2_powersave_11/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_11/Assign_3Assigncnn_max_pool_2/Wsave_11/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_11/Assign_4Assigncnn_max_pool_2/W/Adamsave_11/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_11/Assign_5Assigncnn_max_pool_2/W/Adam_1save_11/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_11/Assign_6Assigncnn_max_pool_2/bsave_11/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_11/Assign_7Assigncnn_max_pool_2/b/Adamsave_11/RestoreV2:7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_11/Assign_8Assigncnn_max_pool_2/b/Adam_1save_11/RestoreV2:8*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_11/Assign_9Assigncnn_max_pool_3/Wsave_11/RestoreV2:9*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_11/Assign_10Assigncnn_max_pool_3/W/Adamsave_11/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_11/Assign_11Assigncnn_max_pool_3/W/Adam_1save_11/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_11/Assign_12Assigncnn_max_pool_3/bsave_11/RestoreV2:12*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_11/Assign_13Assigncnn_max_pool_3/b/Adamsave_11/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_11/Assign_14Assigncnn_max_pool_3/b/Adam_1save_11/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_11/Assign_15Assigncnn_max_pool_4/Wsave_11/RestoreV2:15*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_11/Assign_16Assigncnn_max_pool_4/W/Adamsave_11/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_11/Assign_17Assigncnn_max_pool_4/W/Adam_1save_11/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_11/Assign_18Assigncnn_max_pool_4/bsave_11/RestoreV2:18*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_11/Assign_19Assigncnn_max_pool_4/b/Adamsave_11/RestoreV2:19*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_11/Assign_20Assigncnn_max_pool_4/b/Adam_1save_11/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_11/Assign_21Assignglobal_stepsave_11/RestoreV2:21*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_11/LookupTableImportV2LookupTableImportV2label_tablesave_11/RestoreV2:22save_11/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_11/LookupTableImportV2_1LookupTableImportV2	out_tablesave_11/RestoreV2:24save_11/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_11/Assign_22Assignoutput/Wsave_11/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_11/Assign_23Assignoutput/W/Adamsave_11/RestoreV2:27*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_11/Assign_24Assignoutput/W/Adam_1save_11/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_11/Assign_25Assignoutput/bsave_11/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_11/Assign_26Assignoutput/b/Adamsave_11/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_11/Assign_27Assignoutput/b/Adam_1save_11/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_11/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_11/RestoreV2:32save_11/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_11/restore_shardNoOp^save_11/Assign^save_11/Assign_1^save_11/Assign_10^save_11/Assign_11^save_11/Assign_12^save_11/Assign_13^save_11/Assign_14^save_11/Assign_15^save_11/Assign_16^save_11/Assign_17^save_11/Assign_18^save_11/Assign_19^save_11/Assign_2^save_11/Assign_20^save_11/Assign_21^save_11/Assign_22^save_11/Assign_23^save_11/Assign_24^save_11/Assign_25^save_11/Assign_26^save_11/Assign_27^save_11/Assign_3^save_11/Assign_4^save_11/Assign_5^save_11/Assign_6^save_11/Assign_7^save_11/Assign_8^save_11/Assign_9^save_11/LookupTableImportV2^save_11/LookupTableImportV2_1^save_11/LookupTableImportV2_2
�
 save_11/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_11/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_11/RestoreV2_1	RestoreV2save_11/Const save_11/RestoreV2_1/tensor_names$save_11/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_11/Assign_28Assignembedding/emb_matrixsave_11/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_11/Assign_29Assignembedding/emb_matrix/Adamsave_11/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_11/Assign_30Assignembedding/emb_matrix/Adam_1save_11/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
j
save_11/restore_shard_1NoOp^save_11/Assign_28^save_11/Assign_29^save_11/Assign_30"/device:CPU:0
8
save_11/restore_all/NoOpNoOp^save_11/restore_shard
K
save_11/restore_all/NoOp_1NoOp^save_11/restore_shard_1"/device:CPU:0
S
save_11/restore_allNoOp^save_11/restore_all/NoOp^save_11/restore_all/NoOp_1
S
save_12/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_12/StringJoin/inputs_1Const*<
value3B1 B+_temp_3dd1e67fffd24c91999926345b2b6376/part*
dtype0*
_output_shapes
: 
~
save_12/StringJoin
StringJoinsave_12/Constsave_12/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_12/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_12/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
save_12/ShardedFilenameShardedFilenamesave_12/StringJoinsave_12/ShardedFilename/shardsave_12/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_12/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_12/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_12/SaveV2SaveV2save_12/ShardedFilenamesave_12/SaveV2/tensor_namessave_12/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_12/control_dependencyIdentitysave_12/ShardedFilename^save_12/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_12/ShardedFilename*
_output_shapes
: 
p
save_12/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_12/ShardedFilename_1ShardedFilenamesave_12/StringJoinsave_12/ShardedFilename_1/shardsave_12/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_12/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_12/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_12/SaveV2_1SaveV2save_12/ShardedFilename_1save_12/SaveV2_1/tensor_names!save_12/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_12/control_dependency_1Identitysave_12/ShardedFilename_1^save_12/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_12/ShardedFilename_1
�
.save_12/MergeV2Checkpoints/checkpoint_prefixesPacksave_12/ShardedFilenamesave_12/ShardedFilename_1^save_12/control_dependency^save_12/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_12/MergeV2CheckpointsMergeV2Checkpoints.save_12/MergeV2Checkpoints/checkpoint_prefixessave_12/Const"/device:CPU:0*
delete_old_dirs(
�
save_12/IdentityIdentitysave_12/Const^save_12/MergeV2Checkpoints^save_12/control_dependency^save_12/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_12/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_12/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_12/RestoreV2	RestoreV2save_12/Constsave_12/RestoreV2/tensor_names"save_12/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_12/AssignAssignVariablesave_12/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_12/Assign_1Assignbeta1_powersave_12/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_12/Assign_2Assignbeta2_powersave_12/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_12/Assign_3Assigncnn_max_pool_2/Wsave_12/RestoreV2:3*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_12/Assign_4Assigncnn_max_pool_2/W/Adamsave_12/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_12/Assign_5Assigncnn_max_pool_2/W/Adam_1save_12/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_12/Assign_6Assigncnn_max_pool_2/bsave_12/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_7Assigncnn_max_pool_2/b/Adamsave_12/RestoreV2:7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_12/Assign_8Assigncnn_max_pool_2/b/Adam_1save_12/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_9Assigncnn_max_pool_3/Wsave_12/RestoreV2:9*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_12/Assign_10Assigncnn_max_pool_3/W/Adamsave_12/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_12/Assign_11Assigncnn_max_pool_3/W/Adam_1save_12/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_12/Assign_12Assigncnn_max_pool_3/bsave_12/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_13Assigncnn_max_pool_3/b/Adamsave_12/RestoreV2:13*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_12/Assign_14Assigncnn_max_pool_3/b/Adam_1save_12/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_15Assigncnn_max_pool_4/Wsave_12/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_12/Assign_16Assigncnn_max_pool_4/W/Adamsave_12/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_12/Assign_17Assigncnn_max_pool_4/W/Adam_1save_12/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_12/Assign_18Assigncnn_max_pool_4/bsave_12/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_19Assigncnn_max_pool_4/b/Adamsave_12/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_20Assigncnn_max_pool_4/b/Adam_1save_12/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_12/Assign_21Assignglobal_stepsave_12/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_12/LookupTableImportV2LookupTableImportV2label_tablesave_12/RestoreV2:22save_12/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_12/LookupTableImportV2_1LookupTableImportV2	out_tablesave_12/RestoreV2:24save_12/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_12/Assign_22Assignoutput/Wsave_12/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_12/Assign_23Assignoutput/W/Adamsave_12/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_12/Assign_24Assignoutput/W/Adam_1save_12/RestoreV2:28*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_12/Assign_25Assignoutput/bsave_12/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_12/Assign_26Assignoutput/b/Adamsave_12/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_12/Assign_27Assignoutput/b/Adam_1save_12/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_12/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_12/RestoreV2:32save_12/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_12/restore_shardNoOp^save_12/Assign^save_12/Assign_1^save_12/Assign_10^save_12/Assign_11^save_12/Assign_12^save_12/Assign_13^save_12/Assign_14^save_12/Assign_15^save_12/Assign_16^save_12/Assign_17^save_12/Assign_18^save_12/Assign_19^save_12/Assign_2^save_12/Assign_20^save_12/Assign_21^save_12/Assign_22^save_12/Assign_23^save_12/Assign_24^save_12/Assign_25^save_12/Assign_26^save_12/Assign_27^save_12/Assign_3^save_12/Assign_4^save_12/Assign_5^save_12/Assign_6^save_12/Assign_7^save_12/Assign_8^save_12/Assign_9^save_12/LookupTableImportV2^save_12/LookupTableImportV2_1^save_12/LookupTableImportV2_2
�
 save_12/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_12/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_12/RestoreV2_1	RestoreV2save_12/Const save_12/RestoreV2_1/tensor_names$save_12/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_12/Assign_28Assignembedding/emb_matrixsave_12/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_12/Assign_29Assignembedding/emb_matrix/Adamsave_12/RestoreV2_1:1"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
�
save_12/Assign_30Assignembedding/emb_matrix/Adam_1save_12/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_12/restore_shard_1NoOp^save_12/Assign_28^save_12/Assign_29^save_12/Assign_30"/device:CPU:0
8
save_12/restore_all/NoOpNoOp^save_12/restore_shard
K
save_12/restore_all/NoOp_1NoOp^save_12/restore_shard_1"/device:CPU:0
S
save_12/restore_allNoOp^save_12/restore_all/NoOp^save_12/restore_all/NoOp_1
S
save_13/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_13/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_eccb3abf284d46a19e1771049e6ea3ef/part
~
save_13/StringJoin
StringJoinsave_13/Constsave_13/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_13/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_13/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_13/ShardedFilenameShardedFilenamesave_13/StringJoinsave_13/ShardedFilename/shardsave_13/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_13/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_13/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_13/SaveV2SaveV2save_13/ShardedFilenamesave_13/SaveV2/tensor_namessave_13/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_13/control_dependencyIdentitysave_13/ShardedFilename^save_13/SaveV2"/device:CPU:0**
_class 
loc:@save_13/ShardedFilename*
_output_shapes
: *
T0
p
save_13/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_13/ShardedFilename_1ShardedFilenamesave_13/StringJoinsave_13/ShardedFilename_1/shardsave_13/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_13/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_13/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_13/SaveV2_1SaveV2save_13/ShardedFilename_1save_13/SaveV2_1/tensor_names!save_13/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_13/control_dependency_1Identitysave_13/ShardedFilename_1^save_13/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_13/ShardedFilename_1*
_output_shapes
: 
�
.save_13/MergeV2Checkpoints/checkpoint_prefixesPacksave_13/ShardedFilenamesave_13/ShardedFilename_1^save_13/control_dependency^save_13/control_dependency_1"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
�
save_13/MergeV2CheckpointsMergeV2Checkpoints.save_13/MergeV2Checkpoints/checkpoint_prefixessave_13/Const"/device:CPU:0*
delete_old_dirs(
�
save_13/IdentityIdentitysave_13/Const^save_13/MergeV2Checkpoints^save_13/control_dependency^save_13/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_13/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_13/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_13/RestoreV2	RestoreV2save_13/Constsave_13/RestoreV2/tensor_names"save_13/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_13/AssignAssignVariablesave_13/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
�
save_13/Assign_1Assignbeta1_powersave_13/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_13/Assign_2Assignbeta2_powersave_13/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_13/Assign_3Assigncnn_max_pool_2/Wsave_13/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_13/Assign_4Assigncnn_max_pool_2/W/Adamsave_13/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_13/Assign_5Assigncnn_max_pool_2/W/Adam_1save_13/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_13/Assign_6Assigncnn_max_pool_2/bsave_13/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_13/Assign_7Assigncnn_max_pool_2/b/Adamsave_13/RestoreV2:7*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
�
save_13/Assign_8Assigncnn_max_pool_2/b/Adam_1save_13/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_13/Assign_9Assigncnn_max_pool_3/Wsave_13/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_13/Assign_10Assigncnn_max_pool_3/W/Adamsave_13/RestoreV2:10*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_13/Assign_11Assigncnn_max_pool_3/W/Adam_1save_13/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_13/Assign_12Assigncnn_max_pool_3/bsave_13/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_13/Assign_13Assigncnn_max_pool_3/b/Adamsave_13/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_13/Assign_14Assigncnn_max_pool_3/b/Adam_1save_13/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_13/Assign_15Assigncnn_max_pool_4/Wsave_13/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_13/Assign_16Assigncnn_max_pool_4/W/Adamsave_13/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_13/Assign_17Assigncnn_max_pool_4/W/Adam_1save_13/RestoreV2:17*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_13/Assign_18Assigncnn_max_pool_4/bsave_13/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_13/Assign_19Assigncnn_max_pool_4/b/Adamsave_13/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_13/Assign_20Assigncnn_max_pool_4/b/Adam_1save_13/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_13/Assign_21Assignglobal_stepsave_13/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_13/LookupTableImportV2LookupTableImportV2label_tablesave_13/RestoreV2:22save_13/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_13/LookupTableImportV2_1LookupTableImportV2	out_tablesave_13/RestoreV2:24save_13/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_13/Assign_22Assignoutput/Wsave_13/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_13/Assign_23Assignoutput/W/Adamsave_13/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_13/Assign_24Assignoutput/W/Adam_1save_13/RestoreV2:28*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_13/Assign_25Assignoutput/bsave_13/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_13/Assign_26Assignoutput/b/Adamsave_13/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_13/Assign_27Assignoutput/b/Adam_1save_13/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_13/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_13/RestoreV2:32save_13/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_13/restore_shardNoOp^save_13/Assign^save_13/Assign_1^save_13/Assign_10^save_13/Assign_11^save_13/Assign_12^save_13/Assign_13^save_13/Assign_14^save_13/Assign_15^save_13/Assign_16^save_13/Assign_17^save_13/Assign_18^save_13/Assign_19^save_13/Assign_2^save_13/Assign_20^save_13/Assign_21^save_13/Assign_22^save_13/Assign_23^save_13/Assign_24^save_13/Assign_25^save_13/Assign_26^save_13/Assign_27^save_13/Assign_3^save_13/Assign_4^save_13/Assign_5^save_13/Assign_6^save_13/Assign_7^save_13/Assign_8^save_13/Assign_9^save_13/LookupTableImportV2^save_13/LookupTableImportV2_1^save_13/LookupTableImportV2_2
�
 save_13/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_13/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_13/RestoreV2_1	RestoreV2save_13/Const save_13/RestoreV2_1/tensor_names$save_13/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_13/Assign_28Assignembedding/emb_matrixsave_13/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_13/Assign_29Assignembedding/emb_matrix/Adamsave_13/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_13/Assign_30Assignembedding/emb_matrix/Adam_1save_13/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
j
save_13/restore_shard_1NoOp^save_13/Assign_28^save_13/Assign_29^save_13/Assign_30"/device:CPU:0
8
save_13/restore_all/NoOpNoOp^save_13/restore_shard
K
save_13/restore_all/NoOp_1NoOp^save_13/restore_shard_1"/device:CPU:0
S
save_13/restore_allNoOp^save_13/restore_all/NoOp^save_13/restore_all/NoOp_1
S
save_14/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_14/StringJoin/inputs_1Const*<
value3B1 B+_temp_738e2363317f45ec8aac0d008605bd0b/part*
dtype0*
_output_shapes
: 
~
save_14/StringJoin
StringJoinsave_14/Constsave_14/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_14/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_14/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_14/ShardedFilenameShardedFilenamesave_14/StringJoinsave_14/ShardedFilename/shardsave_14/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_14/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_14/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_14/SaveV2SaveV2save_14/ShardedFilenamesave_14/SaveV2/tensor_namessave_14/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_14/control_dependencyIdentitysave_14/ShardedFilename^save_14/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_14/ShardedFilename*
_output_shapes
: 
p
save_14/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_14/ShardedFilename_1ShardedFilenamesave_14/StringJoinsave_14/ShardedFilename_1/shardsave_14/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_14/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0
}
!save_14/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_14/SaveV2_1SaveV2save_14/ShardedFilename_1save_14/SaveV2_1/tensor_names!save_14/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_14/control_dependency_1Identitysave_14/ShardedFilename_1^save_14/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_14/ShardedFilename_1*
_output_shapes
: 
�
.save_14/MergeV2Checkpoints/checkpoint_prefixesPacksave_14/ShardedFilenamesave_14/ShardedFilename_1^save_14/control_dependency^save_14/control_dependency_1"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N
�
save_14/MergeV2CheckpointsMergeV2Checkpoints.save_14/MergeV2Checkpoints/checkpoint_prefixessave_14/Const"/device:CPU:0*
delete_old_dirs(
�
save_14/IdentityIdentitysave_14/Const^save_14/MergeV2Checkpoints^save_14/control_dependency^save_14/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_14/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_14/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_14/RestoreV2	RestoreV2save_14/Constsave_14/RestoreV2/tensor_names"save_14/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_14/AssignAssignVariablesave_14/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_14/Assign_1Assignbeta1_powersave_14/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_14/Assign_2Assignbeta2_powersave_14/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_14/Assign_3Assigncnn_max_pool_2/Wsave_14/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_14/Assign_4Assigncnn_max_pool_2/W/Adamsave_14/RestoreV2:4*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_14/Assign_5Assigncnn_max_pool_2/W/Adam_1save_14/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_14/Assign_6Assigncnn_max_pool_2/bsave_14/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_14/Assign_7Assigncnn_max_pool_2/b/Adamsave_14/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_14/Assign_8Assigncnn_max_pool_2/b/Adam_1save_14/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_14/Assign_9Assigncnn_max_pool_3/Wsave_14/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_14/Assign_10Assigncnn_max_pool_3/W/Adamsave_14/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_14/Assign_11Assigncnn_max_pool_3/W/Adam_1save_14/RestoreV2:11*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_14/Assign_12Assigncnn_max_pool_3/bsave_14/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_14/Assign_13Assigncnn_max_pool_3/b/Adamsave_14/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_14/Assign_14Assigncnn_max_pool_3/b/Adam_1save_14/RestoreV2:14*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_14/Assign_15Assigncnn_max_pool_4/Wsave_14/RestoreV2:15*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_14/Assign_16Assigncnn_max_pool_4/W/Adamsave_14/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_14/Assign_17Assigncnn_max_pool_4/W/Adam_1save_14/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_14/Assign_18Assigncnn_max_pool_4/bsave_14/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_14/Assign_19Assigncnn_max_pool_4/b/Adamsave_14/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_14/Assign_20Assigncnn_max_pool_4/b/Adam_1save_14/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_14/Assign_21Assignglobal_stepsave_14/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
�
save_14/LookupTableImportV2LookupTableImportV2label_tablesave_14/RestoreV2:22save_14/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_14/LookupTableImportV2_1LookupTableImportV2	out_tablesave_14/RestoreV2:24save_14/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_14/Assign_22Assignoutput/Wsave_14/RestoreV2:26*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_14/Assign_23Assignoutput/W/Adamsave_14/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_14/Assign_24Assignoutput/W/Adam_1save_14/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_14/Assign_25Assignoutput/bsave_14/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_14/Assign_26Assignoutput/b/Adamsave_14/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_14/Assign_27Assignoutput/b/Adam_1save_14/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_14/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_14/RestoreV2:32save_14/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_14/restore_shardNoOp^save_14/Assign^save_14/Assign_1^save_14/Assign_10^save_14/Assign_11^save_14/Assign_12^save_14/Assign_13^save_14/Assign_14^save_14/Assign_15^save_14/Assign_16^save_14/Assign_17^save_14/Assign_18^save_14/Assign_19^save_14/Assign_2^save_14/Assign_20^save_14/Assign_21^save_14/Assign_22^save_14/Assign_23^save_14/Assign_24^save_14/Assign_25^save_14/Assign_26^save_14/Assign_27^save_14/Assign_3^save_14/Assign_4^save_14/Assign_5^save_14/Assign_6^save_14/Assign_7^save_14/Assign_8^save_14/Assign_9^save_14/LookupTableImportV2^save_14/LookupTableImportV2_1^save_14/LookupTableImportV2_2
�
 save_14/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_14/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_14/RestoreV2_1	RestoreV2save_14/Const save_14/RestoreV2_1/tensor_names$save_14/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_14/Assign_28Assignembedding/emb_matrixsave_14/RestoreV2_1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
save_14/Assign_29Assignembedding/emb_matrix/Adamsave_14/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_14/Assign_30Assignembedding/emb_matrix/Adam_1save_14/RestoreV2_1:2"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
j
save_14/restore_shard_1NoOp^save_14/Assign_28^save_14/Assign_29^save_14/Assign_30"/device:CPU:0
8
save_14/restore_all/NoOpNoOp^save_14/restore_shard
K
save_14/restore_all/NoOp_1NoOp^save_14/restore_shard_1"/device:CPU:0
S
save_14/restore_allNoOp^save_14/restore_all/NoOp^save_14/restore_all/NoOp_1
S
save_15/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save_15/StringJoin/inputs_1Const*<
value3B1 B+_temp_6180558cd3d24ee4b594c5f9b1964c46/part*
dtype0*
_output_shapes
: 
~
save_15/StringJoin
StringJoinsave_15/Constsave_15/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_15/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_15/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
save_15/ShardedFilenameShardedFilenamesave_15/StringJoinsave_15/ShardedFilename/shardsave_15/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_15/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_15/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_15/SaveV2SaveV2save_15/ShardedFilenamesave_15/SaveV2/tensor_namessave_15/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_15/control_dependencyIdentitysave_15/ShardedFilename^save_15/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_15/ShardedFilename*
_output_shapes
: 
p
save_15/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_15/ShardedFilename_1ShardedFilenamesave_15/StringJoinsave_15/ShardedFilename_1/shardsave_15/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_15/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_15/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_15/SaveV2_1SaveV2save_15/ShardedFilename_1save_15/SaveV2_1/tensor_names!save_15/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_15/control_dependency_1Identitysave_15/ShardedFilename_1^save_15/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_15/ShardedFilename_1
�
.save_15/MergeV2Checkpoints/checkpoint_prefixesPacksave_15/ShardedFilenamesave_15/ShardedFilename_1^save_15/control_dependency^save_15/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_15/MergeV2CheckpointsMergeV2Checkpoints.save_15/MergeV2Checkpoints/checkpoint_prefixessave_15/Const"/device:CPU:0*
delete_old_dirs(
�
save_15/IdentityIdentitysave_15/Const^save_15/MergeV2Checkpoints^save_15/control_dependency^save_15/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_15/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_15/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_15/RestoreV2	RestoreV2save_15/Constsave_15/RestoreV2/tensor_names"save_15/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_15/AssignAssignVariablesave_15/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_15/Assign_1Assignbeta1_powersave_15/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_15/Assign_2Assignbeta2_powersave_15/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_15/Assign_3Assigncnn_max_pool_2/Wsave_15/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_15/Assign_4Assigncnn_max_pool_2/W/Adamsave_15/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_15/Assign_5Assigncnn_max_pool_2/W/Adam_1save_15/RestoreV2:5*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_15/Assign_6Assigncnn_max_pool_2/bsave_15/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_7Assigncnn_max_pool_2/b/Adamsave_15/RestoreV2:7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_15/Assign_8Assigncnn_max_pool_2/b/Adam_1save_15/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_9Assigncnn_max_pool_3/Wsave_15/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_15/Assign_10Assigncnn_max_pool_3/W/Adamsave_15/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_15/Assign_11Assigncnn_max_pool_3/W/Adam_1save_15/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_15/Assign_12Assigncnn_max_pool_3/bsave_15/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_13Assigncnn_max_pool_3/b/Adamsave_15/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_14Assigncnn_max_pool_3/b/Adam_1save_15/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_15Assigncnn_max_pool_4/Wsave_15/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_15/Assign_16Assigncnn_max_pool_4/W/Adamsave_15/RestoreV2:16*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_15/Assign_17Assigncnn_max_pool_4/W/Adam_1save_15/RestoreV2:17*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_15/Assign_18Assigncnn_max_pool_4/bsave_15/RestoreV2:18*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_15/Assign_19Assigncnn_max_pool_4/b/Adamsave_15/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_20Assigncnn_max_pool_4/b/Adam_1save_15/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_15/Assign_21Assignglobal_stepsave_15/RestoreV2:21*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_15/LookupTableImportV2LookupTableImportV2label_tablesave_15/RestoreV2:22save_15/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
�
save_15/LookupTableImportV2_1LookupTableImportV2	out_tablesave_15/RestoreV2:24save_15/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_15/Assign_22Assignoutput/Wsave_15/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_15/Assign_23Assignoutput/W/Adamsave_15/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_15/Assign_24Assignoutput/W/Adam_1save_15/RestoreV2:28*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_15/Assign_25Assignoutput/bsave_15/RestoreV2:29*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_15/Assign_26Assignoutput/b/Adamsave_15/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_15/Assign_27Assignoutput/b/Adam_1save_15/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_15/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_15/RestoreV2:32save_15/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_15/restore_shardNoOp^save_15/Assign^save_15/Assign_1^save_15/Assign_10^save_15/Assign_11^save_15/Assign_12^save_15/Assign_13^save_15/Assign_14^save_15/Assign_15^save_15/Assign_16^save_15/Assign_17^save_15/Assign_18^save_15/Assign_19^save_15/Assign_2^save_15/Assign_20^save_15/Assign_21^save_15/Assign_22^save_15/Assign_23^save_15/Assign_24^save_15/Assign_25^save_15/Assign_26^save_15/Assign_27^save_15/Assign_3^save_15/Assign_4^save_15/Assign_5^save_15/Assign_6^save_15/Assign_7^save_15/Assign_8^save_15/Assign_9^save_15/LookupTableImportV2^save_15/LookupTableImportV2_1^save_15/LookupTableImportV2_2
�
 save_15/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_15/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_15/RestoreV2_1	RestoreV2save_15/Const save_15/RestoreV2_1/tensor_names$save_15/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_15/Assign_28Assignembedding/emb_matrixsave_15/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_15/Assign_29Assignembedding/emb_matrix/Adamsave_15/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_15/Assign_30Assignembedding/emb_matrix/Adam_1save_15/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_15/restore_shard_1NoOp^save_15/Assign_28^save_15/Assign_29^save_15/Assign_30"/device:CPU:0
8
save_15/restore_all/NoOpNoOp^save_15/restore_shard
K
save_15/restore_all/NoOp_1NoOp^save_15/restore_shard_1"/device:CPU:0
S
save_15/restore_allNoOp^save_15/restore_all/NoOp^save_15/restore_all/NoOp_1
S
save_16/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_16/StringJoin/inputs_1Const*<
value3B1 B+_temp_c8b2f13c280d4ff99997af3a9d128cf7/part*
dtype0*
_output_shapes
: 
~
save_16/StringJoin
StringJoinsave_16/Constsave_16/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_16/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_16/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_16/ShardedFilenameShardedFilenamesave_16/StringJoinsave_16/ShardedFilename/shardsave_16/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_16/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_16/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_16/SaveV2SaveV2save_16/ShardedFilenamesave_16/SaveV2/tensor_namessave_16/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_16/control_dependencyIdentitysave_16/ShardedFilename^save_16/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_16/ShardedFilename*
_output_shapes
: 
p
save_16/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
save_16/ShardedFilename_1ShardedFilenamesave_16/StringJoinsave_16/ShardedFilename_1/shardsave_16/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_16/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_16/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_16/SaveV2_1SaveV2save_16/ShardedFilename_1save_16/SaveV2_1/tensor_names!save_16/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_16/control_dependency_1Identitysave_16/ShardedFilename_1^save_16/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_16/ShardedFilename_1*
_output_shapes
: 
�
.save_16/MergeV2Checkpoints/checkpoint_prefixesPacksave_16/ShardedFilenamesave_16/ShardedFilename_1^save_16/control_dependency^save_16/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_16/MergeV2CheckpointsMergeV2Checkpoints.save_16/MergeV2Checkpoints/checkpoint_prefixessave_16/Const"/device:CPU:0*
delete_old_dirs(
�
save_16/IdentityIdentitysave_16/Const^save_16/MergeV2Checkpoints^save_16/control_dependency^save_16/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_16/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_16/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_16/RestoreV2	RestoreV2save_16/Constsave_16/RestoreV2/tensor_names"save_16/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_16/AssignAssignVariablesave_16/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_16/Assign_1Assignbeta1_powersave_16/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_16/Assign_2Assignbeta2_powersave_16/RestoreV2:2*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_16/Assign_3Assigncnn_max_pool_2/Wsave_16/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_16/Assign_4Assigncnn_max_pool_2/W/Adamsave_16/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_16/Assign_5Assigncnn_max_pool_2/W/Adam_1save_16/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_16/Assign_6Assigncnn_max_pool_2/bsave_16/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_7Assigncnn_max_pool_2/b/Adamsave_16/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_8Assigncnn_max_pool_2/b/Adam_1save_16/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_9Assigncnn_max_pool_3/Wsave_16/RestoreV2:9*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_16/Assign_10Assigncnn_max_pool_3/W/Adamsave_16/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_16/Assign_11Assigncnn_max_pool_3/W/Adam_1save_16/RestoreV2:11*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_16/Assign_12Assigncnn_max_pool_3/bsave_16/RestoreV2:12*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_16/Assign_13Assigncnn_max_pool_3/b/Adamsave_16/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_14Assigncnn_max_pool_3/b/Adam_1save_16/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_15Assigncnn_max_pool_4/Wsave_16/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_16/Assign_16Assigncnn_max_pool_4/W/Adamsave_16/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_16/Assign_17Assigncnn_max_pool_4/W/Adam_1save_16/RestoreV2:17*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_16/Assign_18Assigncnn_max_pool_4/bsave_16/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_19Assigncnn_max_pool_4/b/Adamsave_16/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_20Assigncnn_max_pool_4/b/Adam_1save_16/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_16/Assign_21Assignglobal_stepsave_16/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_16/LookupTableImportV2LookupTableImportV2label_tablesave_16/RestoreV2:22save_16/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_16/LookupTableImportV2_1LookupTableImportV2	out_tablesave_16/RestoreV2:24save_16/RestoreV2:25*

Tout0*
_class
loc:@out_table*	
Tin0	
�
save_16/Assign_22Assignoutput/Wsave_16/RestoreV2:26*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_16/Assign_23Assignoutput/W/Adamsave_16/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_16/Assign_24Assignoutput/W/Adam_1save_16/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_16/Assign_25Assignoutput/bsave_16/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_16/Assign_26Assignoutput/b/Adamsave_16/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_16/Assign_27Assignoutput/b/Adam_1save_16/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_16/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_16/RestoreV2:32save_16/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0
�
save_16/restore_shardNoOp^save_16/Assign^save_16/Assign_1^save_16/Assign_10^save_16/Assign_11^save_16/Assign_12^save_16/Assign_13^save_16/Assign_14^save_16/Assign_15^save_16/Assign_16^save_16/Assign_17^save_16/Assign_18^save_16/Assign_19^save_16/Assign_2^save_16/Assign_20^save_16/Assign_21^save_16/Assign_22^save_16/Assign_23^save_16/Assign_24^save_16/Assign_25^save_16/Assign_26^save_16/Assign_27^save_16/Assign_3^save_16/Assign_4^save_16/Assign_5^save_16/Assign_6^save_16/Assign_7^save_16/Assign_8^save_16/Assign_9^save_16/LookupTableImportV2^save_16/LookupTableImportV2_1^save_16/LookupTableImportV2_2
�
 save_16/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_16/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_16/RestoreV2_1	RestoreV2save_16/Const save_16/RestoreV2_1/tensor_names$save_16/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_16/Assign_28Assignembedding/emb_matrixsave_16/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_16/Assign_29Assignembedding/emb_matrix/Adamsave_16/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_16/Assign_30Assignembedding/emb_matrix/Adam_1save_16/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_16/restore_shard_1NoOp^save_16/Assign_28^save_16/Assign_29^save_16/Assign_30"/device:CPU:0
8
save_16/restore_all/NoOpNoOp^save_16/restore_shard
K
save_16/restore_all/NoOp_1NoOp^save_16/restore_shard_1"/device:CPU:0
S
save_16/restore_allNoOp^save_16/restore_all/NoOp^save_16/restore_all/NoOp_1
S
save_17/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_17/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_8f7f431adccd4def9df5b26ac73c02fc/part*
dtype0
~
save_17/StringJoin
StringJoinsave_17/Constsave_17/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_17/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_17/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_17/ShardedFilenameShardedFilenamesave_17/StringJoinsave_17/ShardedFilename/shardsave_17/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_17/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_17/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_17/SaveV2SaveV2save_17/ShardedFilenamesave_17/SaveV2/tensor_namessave_17/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_17/control_dependencyIdentitysave_17/ShardedFilename^save_17/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_17/ShardedFilename
p
save_17/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_17/ShardedFilename_1ShardedFilenamesave_17/StringJoinsave_17/ShardedFilename_1/shardsave_17/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_17/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_17/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_17/SaveV2_1SaveV2save_17/ShardedFilename_1save_17/SaveV2_1/tensor_names!save_17/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_17/control_dependency_1Identitysave_17/ShardedFilename_1^save_17/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_17/ShardedFilename_1*
_output_shapes
: 
�
.save_17/MergeV2Checkpoints/checkpoint_prefixesPacksave_17/ShardedFilenamesave_17/ShardedFilename_1^save_17/control_dependency^save_17/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_17/MergeV2CheckpointsMergeV2Checkpoints.save_17/MergeV2Checkpoints/checkpoint_prefixessave_17/Const"/device:CPU:0*
delete_old_dirs(
�
save_17/IdentityIdentitysave_17/Const^save_17/MergeV2Checkpoints^save_17/control_dependency^save_17/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_17/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_17/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_17/RestoreV2	RestoreV2save_17/Constsave_17/RestoreV2/tensor_names"save_17/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_17/AssignAssignVariablesave_17/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
�
save_17/Assign_1Assignbeta1_powersave_17/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_2Assignbeta2_powersave_17/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_3Assigncnn_max_pool_2/Wsave_17/RestoreV2:3*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_17/Assign_4Assigncnn_max_pool_2/W/Adamsave_17/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_17/Assign_5Assigncnn_max_pool_2/W/Adam_1save_17/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_17/Assign_6Assigncnn_max_pool_2/bsave_17/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_17/Assign_7Assigncnn_max_pool_2/b/Adamsave_17/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_17/Assign_8Assigncnn_max_pool_2/b/Adam_1save_17/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_17/Assign_9Assigncnn_max_pool_3/Wsave_17/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_17/Assign_10Assigncnn_max_pool_3/W/Adamsave_17/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_17/Assign_11Assigncnn_max_pool_3/W/Adam_1save_17/RestoreV2:11*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_17/Assign_12Assigncnn_max_pool_3/bsave_17/RestoreV2:12*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_17/Assign_13Assigncnn_max_pool_3/b/Adamsave_17/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_17/Assign_14Assigncnn_max_pool_3/b/Adam_1save_17/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_17/Assign_15Assigncnn_max_pool_4/Wsave_17/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_17/Assign_16Assigncnn_max_pool_4/W/Adamsave_17/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_17/Assign_17Assigncnn_max_pool_4/W/Adam_1save_17/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_17/Assign_18Assigncnn_max_pool_4/bsave_17/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_17/Assign_19Assigncnn_max_pool_4/b/Adamsave_17/RestoreV2:19*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_17/Assign_20Assigncnn_max_pool_4/b/Adam_1save_17/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_17/Assign_21Assignglobal_stepsave_17/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_17/LookupTableImportV2LookupTableImportV2label_tablesave_17/RestoreV2:22save_17/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
�
save_17/LookupTableImportV2_1LookupTableImportV2	out_tablesave_17/RestoreV2:24save_17/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_17/Assign_22Assignoutput/Wsave_17/RestoreV2:26*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_17/Assign_23Assignoutput/W/Adamsave_17/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_17/Assign_24Assignoutput/W/Adam_1save_17/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_17/Assign_25Assignoutput/bsave_17/RestoreV2:29*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_17/Assign_26Assignoutput/b/Adamsave_17/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_17/Assign_27Assignoutput/b/Adam_1save_17/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_17/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_17/RestoreV2:32save_17/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_17/restore_shardNoOp^save_17/Assign^save_17/Assign_1^save_17/Assign_10^save_17/Assign_11^save_17/Assign_12^save_17/Assign_13^save_17/Assign_14^save_17/Assign_15^save_17/Assign_16^save_17/Assign_17^save_17/Assign_18^save_17/Assign_19^save_17/Assign_2^save_17/Assign_20^save_17/Assign_21^save_17/Assign_22^save_17/Assign_23^save_17/Assign_24^save_17/Assign_25^save_17/Assign_26^save_17/Assign_27^save_17/Assign_3^save_17/Assign_4^save_17/Assign_5^save_17/Assign_6^save_17/Assign_7^save_17/Assign_8^save_17/Assign_9^save_17/LookupTableImportV2^save_17/LookupTableImportV2_1^save_17/LookupTableImportV2_2
�
 save_17/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
�
$save_17/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_17/RestoreV2_1	RestoreV2save_17/Const save_17/RestoreV2_1/tensor_names$save_17/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_17/Assign_28Assignembedding/emb_matrixsave_17/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_17/Assign_29Assignembedding/emb_matrix/Adamsave_17/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_17/Assign_30Assignembedding/emb_matrix/Adam_1save_17/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_17/restore_shard_1NoOp^save_17/Assign_28^save_17/Assign_29^save_17/Assign_30"/device:CPU:0
8
save_17/restore_all/NoOpNoOp^save_17/restore_shard
K
save_17/restore_all/NoOp_1NoOp^save_17/restore_shard_1"/device:CPU:0
S
save_17/restore_allNoOp^save_17/restore_all/NoOp^save_17/restore_all/NoOp_1
S
save_18/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_18/StringJoin/inputs_1Const*<
value3B1 B+_temp_193a4873c4904b1cbb92667d42573f06/part*
dtype0*
_output_shapes
: 
~
save_18/StringJoin
StringJoinsave_18/Constsave_18/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_18/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_18/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
save_18/ShardedFilenameShardedFilenamesave_18/StringJoinsave_18/ShardedFilename/shardsave_18/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_18/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
save_18/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_18/SaveV2SaveV2save_18/ShardedFilenamesave_18/SaveV2/tensor_namessave_18/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_18/control_dependencyIdentitysave_18/ShardedFilename^save_18/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_18/ShardedFilename
p
save_18/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
save_18/ShardedFilename_1ShardedFilenamesave_18/StringJoinsave_18/ShardedFilename_1/shardsave_18/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_18/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_18/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_18/SaveV2_1SaveV2save_18/ShardedFilename_1save_18/SaveV2_1/tensor_names!save_18/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_18/control_dependency_1Identitysave_18/ShardedFilename_1^save_18/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_18/ShardedFilename_1*
_output_shapes
: 
�
.save_18/MergeV2Checkpoints/checkpoint_prefixesPacksave_18/ShardedFilenamesave_18/ShardedFilename_1^save_18/control_dependency^save_18/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_18/MergeV2CheckpointsMergeV2Checkpoints.save_18/MergeV2Checkpoints/checkpoint_prefixessave_18/Const"/device:CPU:0*
delete_old_dirs(
�
save_18/IdentityIdentitysave_18/Const^save_18/MergeV2Checkpoints^save_18/control_dependency^save_18/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_18/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_18/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_18/RestoreV2	RestoreV2save_18/Constsave_18/RestoreV2/tensor_names"save_18/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_18/AssignAssignVariablesave_18/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_18/Assign_1Assignbeta1_powersave_18/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_18/Assign_2Assignbeta2_powersave_18/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_18/Assign_3Assigncnn_max_pool_2/Wsave_18/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_18/Assign_4Assigncnn_max_pool_2/W/Adamsave_18/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_18/Assign_5Assigncnn_max_pool_2/W/Adam_1save_18/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_18/Assign_6Assigncnn_max_pool_2/bsave_18/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_18/Assign_7Assigncnn_max_pool_2/b/Adamsave_18/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_18/Assign_8Assigncnn_max_pool_2/b/Adam_1save_18/RestoreV2:8*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_18/Assign_9Assigncnn_max_pool_3/Wsave_18/RestoreV2:9*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_18/Assign_10Assigncnn_max_pool_3/W/Adamsave_18/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_18/Assign_11Assigncnn_max_pool_3/W/Adam_1save_18/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_18/Assign_12Assigncnn_max_pool_3/bsave_18/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_18/Assign_13Assigncnn_max_pool_3/b/Adamsave_18/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_18/Assign_14Assigncnn_max_pool_3/b/Adam_1save_18/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_18/Assign_15Assigncnn_max_pool_4/Wsave_18/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_18/Assign_16Assigncnn_max_pool_4/W/Adamsave_18/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_18/Assign_17Assigncnn_max_pool_4/W/Adam_1save_18/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_18/Assign_18Assigncnn_max_pool_4/bsave_18/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_18/Assign_19Assigncnn_max_pool_4/b/Adamsave_18/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_18/Assign_20Assigncnn_max_pool_4/b/Adam_1save_18/RestoreV2:20*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_18/Assign_21Assignglobal_stepsave_18/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
�
save_18/LookupTableImportV2LookupTableImportV2label_tablesave_18/RestoreV2:22save_18/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
�
save_18/LookupTableImportV2_1LookupTableImportV2	out_tablesave_18/RestoreV2:24save_18/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_18/Assign_22Assignoutput/Wsave_18/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_18/Assign_23Assignoutput/W/Adamsave_18/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_18/Assign_24Assignoutput/W/Adam_1save_18/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_18/Assign_25Assignoutput/bsave_18/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_18/Assign_26Assignoutput/b/Adamsave_18/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_18/Assign_27Assignoutput/b/Adam_1save_18/RestoreV2:31*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_18/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_18/RestoreV2:32save_18/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_18/restore_shardNoOp^save_18/Assign^save_18/Assign_1^save_18/Assign_10^save_18/Assign_11^save_18/Assign_12^save_18/Assign_13^save_18/Assign_14^save_18/Assign_15^save_18/Assign_16^save_18/Assign_17^save_18/Assign_18^save_18/Assign_19^save_18/Assign_2^save_18/Assign_20^save_18/Assign_21^save_18/Assign_22^save_18/Assign_23^save_18/Assign_24^save_18/Assign_25^save_18/Assign_26^save_18/Assign_27^save_18/Assign_3^save_18/Assign_4^save_18/Assign_5^save_18/Assign_6^save_18/Assign_7^save_18/Assign_8^save_18/Assign_9^save_18/LookupTableImportV2^save_18/LookupTableImportV2_1^save_18/LookupTableImportV2_2
�
 save_18/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_18/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_18/RestoreV2_1	RestoreV2save_18/Const save_18/RestoreV2_1/tensor_names$save_18/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_18/Assign_28Assignembedding/emb_matrixsave_18/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_18/Assign_29Assignembedding/emb_matrix/Adamsave_18/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_18/Assign_30Assignembedding/emb_matrix/Adam_1save_18/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_18/restore_shard_1NoOp^save_18/Assign_28^save_18/Assign_29^save_18/Assign_30"/device:CPU:0
8
save_18/restore_all/NoOpNoOp^save_18/restore_shard
K
save_18/restore_all/NoOp_1NoOp^save_18/restore_shard_1"/device:CPU:0
S
save_18/restore_allNoOp^save_18/restore_all/NoOp^save_18/restore_all/NoOp_1
S
save_19/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_19/StringJoin/inputs_1Const*<
value3B1 B+_temp_5eb58b6fadaf47d095efeadffc0a0178/part*
dtype0*
_output_shapes
: 
~
save_19/StringJoin
StringJoinsave_19/Constsave_19/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_19/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_19/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
save_19/ShardedFilenameShardedFilenamesave_19/StringJoinsave_19/ShardedFilename/shardsave_19/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_19/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
save_19/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_19/SaveV2SaveV2save_19/ShardedFilenamesave_19/SaveV2/tensor_namessave_19/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_19/control_dependencyIdentitysave_19/ShardedFilename^save_19/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_19/ShardedFilename*
_output_shapes
: 
p
save_19/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_19/ShardedFilename_1ShardedFilenamesave_19/StringJoinsave_19/ShardedFilename_1/shardsave_19/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_19/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_19/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_19/SaveV2_1SaveV2save_19/ShardedFilename_1save_19/SaveV2_1/tensor_names!save_19/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_19/control_dependency_1Identitysave_19/ShardedFilename_1^save_19/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_19/ShardedFilename_1*
_output_shapes
: 
�
.save_19/MergeV2Checkpoints/checkpoint_prefixesPacksave_19/ShardedFilenamesave_19/ShardedFilename_1^save_19/control_dependency^save_19/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
save_19/MergeV2CheckpointsMergeV2Checkpoints.save_19/MergeV2Checkpoints/checkpoint_prefixessave_19/Const"/device:CPU:0*
delete_old_dirs(
�
save_19/IdentityIdentitysave_19/Const^save_19/MergeV2Checkpoints^save_19/control_dependency^save_19/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_19/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_19/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_19/RestoreV2	RestoreV2save_19/Constsave_19/RestoreV2/tensor_names"save_19/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_19/AssignAssignVariablesave_19/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_19/Assign_1Assignbeta1_powersave_19/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_19/Assign_2Assignbeta2_powersave_19/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_19/Assign_3Assigncnn_max_pool_2/Wsave_19/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_19/Assign_4Assigncnn_max_pool_2/W/Adamsave_19/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_19/Assign_5Assigncnn_max_pool_2/W/Adam_1save_19/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_19/Assign_6Assigncnn_max_pool_2/bsave_19/RestoreV2:6*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_19/Assign_7Assigncnn_max_pool_2/b/Adamsave_19/RestoreV2:7*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_19/Assign_8Assigncnn_max_pool_2/b/Adam_1save_19/RestoreV2:8*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_19/Assign_9Assigncnn_max_pool_3/Wsave_19/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_19/Assign_10Assigncnn_max_pool_3/W/Adamsave_19/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_19/Assign_11Assigncnn_max_pool_3/W/Adam_1save_19/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_19/Assign_12Assigncnn_max_pool_3/bsave_19/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_19/Assign_13Assigncnn_max_pool_3/b/Adamsave_19/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_19/Assign_14Assigncnn_max_pool_3/b/Adam_1save_19/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_19/Assign_15Assigncnn_max_pool_4/Wsave_19/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_19/Assign_16Assigncnn_max_pool_4/W/Adamsave_19/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_19/Assign_17Assigncnn_max_pool_4/W/Adam_1save_19/RestoreV2:17*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_19/Assign_18Assigncnn_max_pool_4/bsave_19/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_19/Assign_19Assigncnn_max_pool_4/b/Adamsave_19/RestoreV2:19*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_19/Assign_20Assigncnn_max_pool_4/b/Adam_1save_19/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_19/Assign_21Assignglobal_stepsave_19/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_19/LookupTableImportV2LookupTableImportV2label_tablesave_19/RestoreV2:22save_19/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
�
save_19/LookupTableImportV2_1LookupTableImportV2	out_tablesave_19/RestoreV2:24save_19/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_19/Assign_22Assignoutput/Wsave_19/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_19/Assign_23Assignoutput/W/Adamsave_19/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_19/Assign_24Assignoutput/W/Adam_1save_19/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_19/Assign_25Assignoutput/bsave_19/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_19/Assign_26Assignoutput/b/Adamsave_19/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_19/Assign_27Assignoutput/b/Adam_1save_19/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_19/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_19/RestoreV2:32save_19/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_19/restore_shardNoOp^save_19/Assign^save_19/Assign_1^save_19/Assign_10^save_19/Assign_11^save_19/Assign_12^save_19/Assign_13^save_19/Assign_14^save_19/Assign_15^save_19/Assign_16^save_19/Assign_17^save_19/Assign_18^save_19/Assign_19^save_19/Assign_2^save_19/Assign_20^save_19/Assign_21^save_19/Assign_22^save_19/Assign_23^save_19/Assign_24^save_19/Assign_25^save_19/Assign_26^save_19/Assign_27^save_19/Assign_3^save_19/Assign_4^save_19/Assign_5^save_19/Assign_6^save_19/Assign_7^save_19/Assign_8^save_19/Assign_9^save_19/LookupTableImportV2^save_19/LookupTableImportV2_1^save_19/LookupTableImportV2_2
�
 save_19/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_19/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_19/RestoreV2_1	RestoreV2save_19/Const save_19/RestoreV2_1/tensor_names$save_19/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_19/Assign_28Assignembedding/emb_matrixsave_19/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_19/Assign_29Assignembedding/emb_matrix/Adamsave_19/RestoreV2_1:1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_19/Assign_30Assignembedding/emb_matrix/Adam_1save_19/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_19/restore_shard_1NoOp^save_19/Assign_28^save_19/Assign_29^save_19/Assign_30"/device:CPU:0
8
save_19/restore_all/NoOpNoOp^save_19/restore_shard
K
save_19/restore_all/NoOp_1NoOp^save_19/restore_shard_1"/device:CPU:0
S
save_19/restore_allNoOp^save_19/restore_all/NoOp^save_19/restore_all/NoOp_1
S
save_20/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_20/StringJoin/inputs_1Const*<
value3B1 B+_temp_317081b2f55648ad9415d11142abfc63/part*
dtype0*
_output_shapes
: 
~
save_20/StringJoin
StringJoinsave_20/Constsave_20/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_20/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_20/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_20/ShardedFilenameShardedFilenamesave_20/StringJoinsave_20/ShardedFilename/shardsave_20/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_20/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_20/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_20/SaveV2SaveV2save_20/ShardedFilenamesave_20/SaveV2/tensor_namessave_20/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_20/control_dependencyIdentitysave_20/ShardedFilename^save_20/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_20/ShardedFilename*
_output_shapes
: 
p
save_20/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_20/ShardedFilename_1ShardedFilenamesave_20/StringJoinsave_20/ShardedFilename_1/shardsave_20/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_20/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0
}
!save_20/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_20/SaveV2_1SaveV2save_20/ShardedFilename_1save_20/SaveV2_1/tensor_names!save_20/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_20/control_dependency_1Identitysave_20/ShardedFilename_1^save_20/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_20/ShardedFilename_1*
_output_shapes
: 
�
.save_20/MergeV2Checkpoints/checkpoint_prefixesPacksave_20/ShardedFilenamesave_20/ShardedFilename_1^save_20/control_dependency^save_20/control_dependency_1"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
�
save_20/MergeV2CheckpointsMergeV2Checkpoints.save_20/MergeV2Checkpoints/checkpoint_prefixessave_20/Const"/device:CPU:0*
delete_old_dirs(
�
save_20/IdentityIdentitysave_20/Const^save_20/MergeV2Checkpoints^save_20/control_dependency^save_20/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_20/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_20/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_20/RestoreV2	RestoreV2save_20/Constsave_20/RestoreV2/tensor_names"save_20/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_20/AssignAssignVariablesave_20/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_20/Assign_1Assignbeta1_powersave_20/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_20/Assign_2Assignbeta2_powersave_20/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_20/Assign_3Assigncnn_max_pool_2/Wsave_20/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_20/Assign_4Assigncnn_max_pool_2/W/Adamsave_20/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_20/Assign_5Assigncnn_max_pool_2/W/Adam_1save_20/RestoreV2:5*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_20/Assign_6Assigncnn_max_pool_2/bsave_20/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_7Assigncnn_max_pool_2/b/Adamsave_20/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_8Assigncnn_max_pool_2/b/Adam_1save_20/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_9Assigncnn_max_pool_3/Wsave_20/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_20/Assign_10Assigncnn_max_pool_3/W/Adamsave_20/RestoreV2:10*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_20/Assign_11Assigncnn_max_pool_3/W/Adam_1save_20/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_20/Assign_12Assigncnn_max_pool_3/bsave_20/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_13Assigncnn_max_pool_3/b/Adamsave_20/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_14Assigncnn_max_pool_3/b/Adam_1save_20/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_15Assigncnn_max_pool_4/Wsave_20/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_20/Assign_16Assigncnn_max_pool_4/W/Adamsave_20/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_20/Assign_17Assigncnn_max_pool_4/W/Adam_1save_20/RestoreV2:17*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_20/Assign_18Assigncnn_max_pool_4/bsave_20/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_19Assigncnn_max_pool_4/b/Adamsave_20/RestoreV2:19*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_20/Assign_20Assigncnn_max_pool_4/b/Adam_1save_20/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_20/Assign_21Assignglobal_stepsave_20/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_20/LookupTableImportV2LookupTableImportV2label_tablesave_20/RestoreV2:22save_20/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_20/LookupTableImportV2_1LookupTableImportV2	out_tablesave_20/RestoreV2:24save_20/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_20/Assign_22Assignoutput/Wsave_20/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_20/Assign_23Assignoutput/W/Adamsave_20/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_20/Assign_24Assignoutput/W/Adam_1save_20/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_20/Assign_25Assignoutput/bsave_20/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_20/Assign_26Assignoutput/b/Adamsave_20/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_20/Assign_27Assignoutput/b/Adam_1save_20/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_20/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_20/RestoreV2:32save_20/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_20/restore_shardNoOp^save_20/Assign^save_20/Assign_1^save_20/Assign_10^save_20/Assign_11^save_20/Assign_12^save_20/Assign_13^save_20/Assign_14^save_20/Assign_15^save_20/Assign_16^save_20/Assign_17^save_20/Assign_18^save_20/Assign_19^save_20/Assign_2^save_20/Assign_20^save_20/Assign_21^save_20/Assign_22^save_20/Assign_23^save_20/Assign_24^save_20/Assign_25^save_20/Assign_26^save_20/Assign_27^save_20/Assign_3^save_20/Assign_4^save_20/Assign_5^save_20/Assign_6^save_20/Assign_7^save_20/Assign_8^save_20/Assign_9^save_20/LookupTableImportV2^save_20/LookupTableImportV2_1^save_20/LookupTableImportV2_2
�
 save_20/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
�
$save_20/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_20/RestoreV2_1	RestoreV2save_20/Const save_20/RestoreV2_1/tensor_names$save_20/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_20/Assign_28Assignembedding/emb_matrixsave_20/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
�
save_20/Assign_29Assignembedding/emb_matrix/Adamsave_20/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_20/Assign_30Assignembedding/emb_matrix/Adam_1save_20/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_20/restore_shard_1NoOp^save_20/Assign_28^save_20/Assign_29^save_20/Assign_30"/device:CPU:0
8
save_20/restore_all/NoOpNoOp^save_20/restore_shard
K
save_20/restore_all/NoOp_1NoOp^save_20/restore_shard_1"/device:CPU:0
S
save_20/restore_allNoOp^save_20/restore_all/NoOp^save_20/restore_all/NoOp_1
S
save_21/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_21/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_1a94dae224624c6facb1eaf45914e426/part*
dtype0
~
save_21/StringJoin
StringJoinsave_21/Constsave_21/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_21/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_21/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_21/ShardedFilenameShardedFilenamesave_21/StringJoinsave_21/ShardedFilename/shardsave_21/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_21/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
save_21/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_21/SaveV2SaveV2save_21/ShardedFilenamesave_21/SaveV2/tensor_namessave_21/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_21/control_dependencyIdentitysave_21/ShardedFilename^save_21/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_21/ShardedFilename*
_output_shapes
: 
p
save_21/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
save_21/ShardedFilename_1ShardedFilenamesave_21/StringJoinsave_21/ShardedFilename_1/shardsave_21/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_21/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_21/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_21/SaveV2_1SaveV2save_21/ShardedFilename_1save_21/SaveV2_1/tensor_names!save_21/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_21/control_dependency_1Identitysave_21/ShardedFilename_1^save_21/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_21/ShardedFilename_1*
_output_shapes
: 
�
.save_21/MergeV2Checkpoints/checkpoint_prefixesPacksave_21/ShardedFilenamesave_21/ShardedFilename_1^save_21/control_dependency^save_21/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_21/MergeV2CheckpointsMergeV2Checkpoints.save_21/MergeV2Checkpoints/checkpoint_prefixessave_21/Const"/device:CPU:0*
delete_old_dirs(
�
save_21/IdentityIdentitysave_21/Const^save_21/MergeV2Checkpoints^save_21/control_dependency^save_21/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_21/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_21/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_21/RestoreV2	RestoreV2save_21/Constsave_21/RestoreV2/tensor_names"save_21/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_21/AssignAssignVariablesave_21/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_21/Assign_1Assignbeta1_powersave_21/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_21/Assign_2Assignbeta2_powersave_21/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_21/Assign_3Assigncnn_max_pool_2/Wsave_21/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_21/Assign_4Assigncnn_max_pool_2/W/Adamsave_21/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_21/Assign_5Assigncnn_max_pool_2/W/Adam_1save_21/RestoreV2:5*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_21/Assign_6Assigncnn_max_pool_2/bsave_21/RestoreV2:6*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_21/Assign_7Assigncnn_max_pool_2/b/Adamsave_21/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_21/Assign_8Assigncnn_max_pool_2/b/Adam_1save_21/RestoreV2:8*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_21/Assign_9Assigncnn_max_pool_3/Wsave_21/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_21/Assign_10Assigncnn_max_pool_3/W/Adamsave_21/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_21/Assign_11Assigncnn_max_pool_3/W/Adam_1save_21/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_21/Assign_12Assigncnn_max_pool_3/bsave_21/RestoreV2:12*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_21/Assign_13Assigncnn_max_pool_3/b/Adamsave_21/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_21/Assign_14Assigncnn_max_pool_3/b/Adam_1save_21/RestoreV2:14*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_21/Assign_15Assigncnn_max_pool_4/Wsave_21/RestoreV2:15*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_21/Assign_16Assigncnn_max_pool_4/W/Adamsave_21/RestoreV2:16*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_21/Assign_17Assigncnn_max_pool_4/W/Adam_1save_21/RestoreV2:17*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_21/Assign_18Assigncnn_max_pool_4/bsave_21/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_21/Assign_19Assigncnn_max_pool_4/b/Adamsave_21/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_21/Assign_20Assigncnn_max_pool_4/b/Adam_1save_21/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_21/Assign_21Assignglobal_stepsave_21/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
�
save_21/LookupTableImportV2LookupTableImportV2label_tablesave_21/RestoreV2:22save_21/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
�
save_21/LookupTableImportV2_1LookupTableImportV2	out_tablesave_21/RestoreV2:24save_21/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_21/Assign_22Assignoutput/Wsave_21/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_21/Assign_23Assignoutput/W/Adamsave_21/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_21/Assign_24Assignoutput/W/Adam_1save_21/RestoreV2:28*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_21/Assign_25Assignoutput/bsave_21/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_21/Assign_26Assignoutput/b/Adamsave_21/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_21/Assign_27Assignoutput/b/Adam_1save_21/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_21/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_21/RestoreV2:32save_21/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_21/restore_shardNoOp^save_21/Assign^save_21/Assign_1^save_21/Assign_10^save_21/Assign_11^save_21/Assign_12^save_21/Assign_13^save_21/Assign_14^save_21/Assign_15^save_21/Assign_16^save_21/Assign_17^save_21/Assign_18^save_21/Assign_19^save_21/Assign_2^save_21/Assign_20^save_21/Assign_21^save_21/Assign_22^save_21/Assign_23^save_21/Assign_24^save_21/Assign_25^save_21/Assign_26^save_21/Assign_27^save_21/Assign_3^save_21/Assign_4^save_21/Assign_5^save_21/Assign_6^save_21/Assign_7^save_21/Assign_8^save_21/Assign_9^save_21/LookupTableImportV2^save_21/LookupTableImportV2_1^save_21/LookupTableImportV2_2
�
 save_21/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_21/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_21/RestoreV2_1	RestoreV2save_21/Const save_21/RestoreV2_1/tensor_names$save_21/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_21/Assign_28Assignembedding/emb_matrixsave_21/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_21/Assign_29Assignembedding/emb_matrix/Adamsave_21/RestoreV2_1:1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
save_21/Assign_30Assignembedding/emb_matrix/Adam_1save_21/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_21/restore_shard_1NoOp^save_21/Assign_28^save_21/Assign_29^save_21/Assign_30"/device:CPU:0
8
save_21/restore_all/NoOpNoOp^save_21/restore_shard
K
save_21/restore_all/NoOp_1NoOp^save_21/restore_shard_1"/device:CPU:0
S
save_21/restore_allNoOp^save_21/restore_all/NoOp^save_21/restore_all/NoOp_1
S
save_22/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save_22/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_19c07eefbe024dffbe08986af81885a0/part
~
save_22/StringJoin
StringJoinsave_22/Constsave_22/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_22/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
n
save_22/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_22/ShardedFilenameShardedFilenamesave_22/StringJoinsave_22/ShardedFilename/shardsave_22/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_22/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0
�
save_22/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_22/SaveV2SaveV2save_22/ShardedFilenamesave_22/SaveV2/tensor_namessave_22/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_22/control_dependencyIdentitysave_22/ShardedFilename^save_22/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_22/ShardedFilename
p
save_22/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_22/ShardedFilename_1ShardedFilenamesave_22/StringJoinsave_22/ShardedFilename_1/shardsave_22/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_22/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_22/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_22/SaveV2_1SaveV2save_22/ShardedFilename_1save_22/SaveV2_1/tensor_names!save_22/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_22/control_dependency_1Identitysave_22/ShardedFilename_1^save_22/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_22/ShardedFilename_1*
_output_shapes
: 
�
.save_22/MergeV2Checkpoints/checkpoint_prefixesPacksave_22/ShardedFilenamesave_22/ShardedFilename_1^save_22/control_dependency^save_22/control_dependency_1"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N
�
save_22/MergeV2CheckpointsMergeV2Checkpoints.save_22/MergeV2Checkpoints/checkpoint_prefixessave_22/Const"/device:CPU:0*
delete_old_dirs(
�
save_22/IdentityIdentitysave_22/Const^save_22/MergeV2Checkpoints^save_22/control_dependency^save_22/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_22/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_22/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_22/RestoreV2	RestoreV2save_22/Constsave_22/RestoreV2/tensor_names"save_22/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_22/AssignAssignVariablesave_22/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_1Assignbeta1_powersave_22/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_2Assignbeta2_powersave_22/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_3Assigncnn_max_pool_2/Wsave_22/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_22/Assign_4Assigncnn_max_pool_2/W/Adamsave_22/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_22/Assign_5Assigncnn_max_pool_2/W/Adam_1save_22/RestoreV2:5*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_22/Assign_6Assigncnn_max_pool_2/bsave_22/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_22/Assign_7Assigncnn_max_pool_2/b/Adamsave_22/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_22/Assign_8Assigncnn_max_pool_2/b/Adam_1save_22/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_22/Assign_9Assigncnn_max_pool_3/Wsave_22/RestoreV2:9*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_22/Assign_10Assigncnn_max_pool_3/W/Adamsave_22/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_22/Assign_11Assigncnn_max_pool_3/W/Adam_1save_22/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_22/Assign_12Assigncnn_max_pool_3/bsave_22/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_22/Assign_13Assigncnn_max_pool_3/b/Adamsave_22/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_22/Assign_14Assigncnn_max_pool_3/b/Adam_1save_22/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_22/Assign_15Assigncnn_max_pool_4/Wsave_22/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_22/Assign_16Assigncnn_max_pool_4/W/Adamsave_22/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_22/Assign_17Assigncnn_max_pool_4/W/Adam_1save_22/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_22/Assign_18Assigncnn_max_pool_4/bsave_22/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_22/Assign_19Assigncnn_max_pool_4/b/Adamsave_22/RestoreV2:19*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_22/Assign_20Assigncnn_max_pool_4/b/Adam_1save_22/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_22/Assign_21Assignglobal_stepsave_22/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_22/LookupTableImportV2LookupTableImportV2label_tablesave_22/RestoreV2:22save_22/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
�
save_22/LookupTableImportV2_1LookupTableImportV2	out_tablesave_22/RestoreV2:24save_22/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_22/Assign_22Assignoutput/Wsave_22/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_22/Assign_23Assignoutput/W/Adamsave_22/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_22/Assign_24Assignoutput/W/Adam_1save_22/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_22/Assign_25Assignoutput/bsave_22/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_22/Assign_26Assignoutput/b/Adamsave_22/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_22/Assign_27Assignoutput/b/Adam_1save_22/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_22/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_22/RestoreV2:32save_22/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_22/restore_shardNoOp^save_22/Assign^save_22/Assign_1^save_22/Assign_10^save_22/Assign_11^save_22/Assign_12^save_22/Assign_13^save_22/Assign_14^save_22/Assign_15^save_22/Assign_16^save_22/Assign_17^save_22/Assign_18^save_22/Assign_19^save_22/Assign_2^save_22/Assign_20^save_22/Assign_21^save_22/Assign_22^save_22/Assign_23^save_22/Assign_24^save_22/Assign_25^save_22/Assign_26^save_22/Assign_27^save_22/Assign_3^save_22/Assign_4^save_22/Assign_5^save_22/Assign_6^save_22/Assign_7^save_22/Assign_8^save_22/Assign_9^save_22/LookupTableImportV2^save_22/LookupTableImportV2_1^save_22/LookupTableImportV2_2
�
 save_22/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_22/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_22/RestoreV2_1	RestoreV2save_22/Const save_22/RestoreV2_1/tensor_names$save_22/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_22/Assign_28Assignembedding/emb_matrixsave_22/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_22/Assign_29Assignembedding/emb_matrix/Adamsave_22/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_22/Assign_30Assignembedding/emb_matrix/Adam_1save_22/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_22/restore_shard_1NoOp^save_22/Assign_28^save_22/Assign_29^save_22/Assign_30"/device:CPU:0
8
save_22/restore_all/NoOpNoOp^save_22/restore_shard
K
save_22/restore_all/NoOp_1NoOp^save_22/restore_shard_1"/device:CPU:0
S
save_22/restore_allNoOp^save_22/restore_all/NoOp^save_22/restore_all/NoOp_1
S
save_23/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_23/StringJoin/inputs_1Const*<
value3B1 B+_temp_ca50880532a8416cbd6c96942742e71a/part*
dtype0*
_output_shapes
: 
~
save_23/StringJoin
StringJoinsave_23/Constsave_23/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_23/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
n
save_23/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_23/ShardedFilenameShardedFilenamesave_23/StringJoinsave_23/ShardedFilename/shardsave_23/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_23/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_23/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_23/SaveV2SaveV2save_23/ShardedFilenamesave_23/SaveV2/tensor_namessave_23/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_23/control_dependencyIdentitysave_23/ShardedFilename^save_23/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_23/ShardedFilename*
_output_shapes
: 
p
save_23/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_23/ShardedFilename_1ShardedFilenamesave_23/StringJoinsave_23/ShardedFilename_1/shardsave_23/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_23/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_23/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_23/SaveV2_1SaveV2save_23/ShardedFilename_1save_23/SaveV2_1/tensor_names!save_23/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_23/control_dependency_1Identitysave_23/ShardedFilename_1^save_23/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_23/ShardedFilename_1
�
.save_23/MergeV2Checkpoints/checkpoint_prefixesPacksave_23/ShardedFilenamesave_23/ShardedFilename_1^save_23/control_dependency^save_23/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_23/MergeV2CheckpointsMergeV2Checkpoints.save_23/MergeV2Checkpoints/checkpoint_prefixessave_23/Const"/device:CPU:0*
delete_old_dirs(
�
save_23/IdentityIdentitysave_23/Const^save_23/MergeV2Checkpoints^save_23/control_dependency^save_23/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_23/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_23/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_23/RestoreV2	RestoreV2save_23/Constsave_23/RestoreV2/tensor_names"save_23/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_23/AssignAssignVariablesave_23/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_23/Assign_1Assignbeta1_powersave_23/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_23/Assign_2Assignbeta2_powersave_23/RestoreV2:2*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_23/Assign_3Assigncnn_max_pool_2/Wsave_23/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_4Assigncnn_max_pool_2/W/Adamsave_23/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_5Assigncnn_max_pool_2/W/Adam_1save_23/RestoreV2:5*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_23/Assign_6Assigncnn_max_pool_2/bsave_23/RestoreV2:6*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_23/Assign_7Assigncnn_max_pool_2/b/Adamsave_23/RestoreV2:7*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_23/Assign_8Assigncnn_max_pool_2/b/Adam_1save_23/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_23/Assign_9Assigncnn_max_pool_3/Wsave_23/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_10Assigncnn_max_pool_3/W/Adamsave_23/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_11Assigncnn_max_pool_3/W/Adam_1save_23/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_12Assigncnn_max_pool_3/bsave_23/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_23/Assign_13Assigncnn_max_pool_3/b/Adamsave_23/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_23/Assign_14Assigncnn_max_pool_3/b/Adam_1save_23/RestoreV2:14*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_23/Assign_15Assigncnn_max_pool_4/Wsave_23/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_16Assigncnn_max_pool_4/W/Adamsave_23/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_23/Assign_17Assigncnn_max_pool_4/W/Adam_1save_23/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_23/Assign_18Assigncnn_max_pool_4/bsave_23/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_23/Assign_19Assigncnn_max_pool_4/b/Adamsave_23/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_23/Assign_20Assigncnn_max_pool_4/b/Adam_1save_23/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_23/Assign_21Assignglobal_stepsave_23/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_23/LookupTableImportV2LookupTableImportV2label_tablesave_23/RestoreV2:22save_23/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_23/LookupTableImportV2_1LookupTableImportV2	out_tablesave_23/RestoreV2:24save_23/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_23/Assign_22Assignoutput/Wsave_23/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_23/Assign_23Assignoutput/W/Adamsave_23/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_23/Assign_24Assignoutput/W/Adam_1save_23/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_23/Assign_25Assignoutput/bsave_23/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_23/Assign_26Assignoutput/b/Adamsave_23/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_23/Assign_27Assignoutput/b/Adam_1save_23/RestoreV2:31*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_23/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_23/RestoreV2:32save_23/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0
�
save_23/restore_shardNoOp^save_23/Assign^save_23/Assign_1^save_23/Assign_10^save_23/Assign_11^save_23/Assign_12^save_23/Assign_13^save_23/Assign_14^save_23/Assign_15^save_23/Assign_16^save_23/Assign_17^save_23/Assign_18^save_23/Assign_19^save_23/Assign_2^save_23/Assign_20^save_23/Assign_21^save_23/Assign_22^save_23/Assign_23^save_23/Assign_24^save_23/Assign_25^save_23/Assign_26^save_23/Assign_27^save_23/Assign_3^save_23/Assign_4^save_23/Assign_5^save_23/Assign_6^save_23/Assign_7^save_23/Assign_8^save_23/Assign_9^save_23/LookupTableImportV2^save_23/LookupTableImportV2_1^save_23/LookupTableImportV2_2
�
 save_23/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_23/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_23/RestoreV2_1	RestoreV2save_23/Const save_23/RestoreV2_1/tensor_names$save_23/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_23/Assign_28Assignembedding/emb_matrixsave_23/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_23/Assign_29Assignembedding/emb_matrix/Adamsave_23/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_23/Assign_30Assignembedding/emb_matrix/Adam_1save_23/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_23/restore_shard_1NoOp^save_23/Assign_28^save_23/Assign_29^save_23/Assign_30"/device:CPU:0
8
save_23/restore_all/NoOpNoOp^save_23/restore_shard
K
save_23/restore_all/NoOp_1NoOp^save_23/restore_shard_1"/device:CPU:0
S
save_23/restore_allNoOp^save_23/restore_all/NoOp^save_23/restore_all/NoOp_1
S
save_24/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_24/StringJoin/inputs_1Const*<
value3B1 B+_temp_22ac760c20da4aed8a6ada71894b79a6/part*
dtype0*
_output_shapes
: 
~
save_24/StringJoin
StringJoinsave_24/Constsave_24/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_24/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_24/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_24/ShardedFilenameShardedFilenamesave_24/StringJoinsave_24/ShardedFilename/shardsave_24/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_24/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_24/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_24/SaveV2SaveV2save_24/ShardedFilenamesave_24/SaveV2/tensor_namessave_24/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_24/control_dependencyIdentitysave_24/ShardedFilename^save_24/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_24/ShardedFilename*
_output_shapes
: 
p
save_24/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
save_24/ShardedFilename_1ShardedFilenamesave_24/StringJoinsave_24/ShardedFilename_1/shardsave_24/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_24/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_24/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_24/SaveV2_1SaveV2save_24/ShardedFilename_1save_24/SaveV2_1/tensor_names!save_24/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_24/control_dependency_1Identitysave_24/ShardedFilename_1^save_24/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_24/ShardedFilename_1
�
.save_24/MergeV2Checkpoints/checkpoint_prefixesPacksave_24/ShardedFilenamesave_24/ShardedFilename_1^save_24/control_dependency^save_24/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_24/MergeV2CheckpointsMergeV2Checkpoints.save_24/MergeV2Checkpoints/checkpoint_prefixessave_24/Const"/device:CPU:0*
delete_old_dirs(
�
save_24/IdentityIdentitysave_24/Const^save_24/MergeV2Checkpoints^save_24/control_dependency^save_24/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_24/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_24/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_24/RestoreV2	RestoreV2save_24/Constsave_24/RestoreV2/tensor_names"save_24/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_24/AssignAssignVariablesave_24/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
�
save_24/Assign_1Assignbeta1_powersave_24/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_24/Assign_2Assignbeta2_powersave_24/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_24/Assign_3Assigncnn_max_pool_2/Wsave_24/RestoreV2:3*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_24/Assign_4Assigncnn_max_pool_2/W/Adamsave_24/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_24/Assign_5Assigncnn_max_pool_2/W/Adam_1save_24/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_24/Assign_6Assigncnn_max_pool_2/bsave_24/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_24/Assign_7Assigncnn_max_pool_2/b/Adamsave_24/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_24/Assign_8Assigncnn_max_pool_2/b/Adam_1save_24/RestoreV2:8*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_24/Assign_9Assigncnn_max_pool_3/Wsave_24/RestoreV2:9*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_24/Assign_10Assigncnn_max_pool_3/W/Adamsave_24/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_24/Assign_11Assigncnn_max_pool_3/W/Adam_1save_24/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_24/Assign_12Assigncnn_max_pool_3/bsave_24/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_24/Assign_13Assigncnn_max_pool_3/b/Adamsave_24/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_24/Assign_14Assigncnn_max_pool_3/b/Adam_1save_24/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_24/Assign_15Assigncnn_max_pool_4/Wsave_24/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_24/Assign_16Assigncnn_max_pool_4/W/Adamsave_24/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_24/Assign_17Assigncnn_max_pool_4/W/Adam_1save_24/RestoreV2:17*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_24/Assign_18Assigncnn_max_pool_4/bsave_24/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_24/Assign_19Assigncnn_max_pool_4/b/Adamsave_24/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_24/Assign_20Assigncnn_max_pool_4/b/Adam_1save_24/RestoreV2:20*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
�
save_24/Assign_21Assignglobal_stepsave_24/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_24/LookupTableImportV2LookupTableImportV2label_tablesave_24/RestoreV2:22save_24/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_24/LookupTableImportV2_1LookupTableImportV2	out_tablesave_24/RestoreV2:24save_24/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_24/Assign_22Assignoutput/Wsave_24/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_24/Assign_23Assignoutput/W/Adamsave_24/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_24/Assign_24Assignoutput/W/Adam_1save_24/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_24/Assign_25Assignoutput/bsave_24/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_24/Assign_26Assignoutput/b/Adamsave_24/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_24/Assign_27Assignoutput/b/Adam_1save_24/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_24/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_24/RestoreV2:32save_24/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_24/restore_shardNoOp^save_24/Assign^save_24/Assign_1^save_24/Assign_10^save_24/Assign_11^save_24/Assign_12^save_24/Assign_13^save_24/Assign_14^save_24/Assign_15^save_24/Assign_16^save_24/Assign_17^save_24/Assign_18^save_24/Assign_19^save_24/Assign_2^save_24/Assign_20^save_24/Assign_21^save_24/Assign_22^save_24/Assign_23^save_24/Assign_24^save_24/Assign_25^save_24/Assign_26^save_24/Assign_27^save_24/Assign_3^save_24/Assign_4^save_24/Assign_5^save_24/Assign_6^save_24/Assign_7^save_24/Assign_8^save_24/Assign_9^save_24/LookupTableImportV2^save_24/LookupTableImportV2_1^save_24/LookupTableImportV2_2
�
 save_24/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_24/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_24/RestoreV2_1	RestoreV2save_24/Const save_24/RestoreV2_1/tensor_names$save_24/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_24/Assign_28Assignembedding/emb_matrixsave_24/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_24/Assign_29Assignembedding/emb_matrix/Adamsave_24/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_24/Assign_30Assignembedding/emb_matrix/Adam_1save_24/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_24/restore_shard_1NoOp^save_24/Assign_28^save_24/Assign_29^save_24/Assign_30"/device:CPU:0
8
save_24/restore_all/NoOpNoOp^save_24/restore_shard
K
save_24/restore_all/NoOp_1NoOp^save_24/restore_shard_1"/device:CPU:0
S
save_24/restore_allNoOp^save_24/restore_all/NoOp^save_24/restore_all/NoOp_1
S
save_25/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_25/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_2d263a3404f9470785bf6a38cfda3d43/part
~
save_25/StringJoin
StringJoinsave_25/Constsave_25/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_25/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_25/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_25/ShardedFilenameShardedFilenamesave_25/StringJoinsave_25/ShardedFilename/shardsave_25/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_25/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_25/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_25/SaveV2SaveV2save_25/ShardedFilenamesave_25/SaveV2/tensor_namessave_25/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_25/control_dependencyIdentitysave_25/ShardedFilename^save_25/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_25/ShardedFilename*
_output_shapes
: 
p
save_25/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_25/ShardedFilename_1ShardedFilenamesave_25/StringJoinsave_25/ShardedFilename_1/shardsave_25/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_25/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_25/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_25/SaveV2_1SaveV2save_25/ShardedFilename_1save_25/SaveV2_1/tensor_names!save_25/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_25/control_dependency_1Identitysave_25/ShardedFilename_1^save_25/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_25/ShardedFilename_1*
_output_shapes
: 
�
.save_25/MergeV2Checkpoints/checkpoint_prefixesPacksave_25/ShardedFilenamesave_25/ShardedFilename_1^save_25/control_dependency^save_25/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_25/MergeV2CheckpointsMergeV2Checkpoints.save_25/MergeV2Checkpoints/checkpoint_prefixessave_25/Const"/device:CPU:0*
delete_old_dirs(
�
save_25/IdentityIdentitysave_25/Const^save_25/MergeV2Checkpoints^save_25/control_dependency^save_25/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_25/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_25/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_25/RestoreV2	RestoreV2save_25/Constsave_25/RestoreV2/tensor_names"save_25/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_25/AssignAssignVariablesave_25/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
�
save_25/Assign_1Assignbeta1_powersave_25/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_25/Assign_2Assignbeta2_powersave_25/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_25/Assign_3Assigncnn_max_pool_2/Wsave_25/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_25/Assign_4Assigncnn_max_pool_2/W/Adamsave_25/RestoreV2:4*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_25/Assign_5Assigncnn_max_pool_2/W/Adam_1save_25/RestoreV2:5*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_25/Assign_6Assigncnn_max_pool_2/bsave_25/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_25/Assign_7Assigncnn_max_pool_2/b/Adamsave_25/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_25/Assign_8Assigncnn_max_pool_2/b/Adam_1save_25/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_25/Assign_9Assigncnn_max_pool_3/Wsave_25/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_25/Assign_10Assigncnn_max_pool_3/W/Adamsave_25/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_25/Assign_11Assigncnn_max_pool_3/W/Adam_1save_25/RestoreV2:11*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_25/Assign_12Assigncnn_max_pool_3/bsave_25/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_25/Assign_13Assigncnn_max_pool_3/b/Adamsave_25/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_25/Assign_14Assigncnn_max_pool_3/b/Adam_1save_25/RestoreV2:14*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_25/Assign_15Assigncnn_max_pool_4/Wsave_25/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_25/Assign_16Assigncnn_max_pool_4/W/Adamsave_25/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_25/Assign_17Assigncnn_max_pool_4/W/Adam_1save_25/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_25/Assign_18Assigncnn_max_pool_4/bsave_25/RestoreV2:18*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_25/Assign_19Assigncnn_max_pool_4/b/Adamsave_25/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_25/Assign_20Assigncnn_max_pool_4/b/Adam_1save_25/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_25/Assign_21Assignglobal_stepsave_25/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_25/LookupTableImportV2LookupTableImportV2label_tablesave_25/RestoreV2:22save_25/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_25/LookupTableImportV2_1LookupTableImportV2	out_tablesave_25/RestoreV2:24save_25/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_25/Assign_22Assignoutput/Wsave_25/RestoreV2:26*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_25/Assign_23Assignoutput/W/Adamsave_25/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_25/Assign_24Assignoutput/W/Adam_1save_25/RestoreV2:28*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_25/Assign_25Assignoutput/bsave_25/RestoreV2:29*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_25/Assign_26Assignoutput/b/Adamsave_25/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_25/Assign_27Assignoutput/b/Adam_1save_25/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_25/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_25/RestoreV2:32save_25/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_25/restore_shardNoOp^save_25/Assign^save_25/Assign_1^save_25/Assign_10^save_25/Assign_11^save_25/Assign_12^save_25/Assign_13^save_25/Assign_14^save_25/Assign_15^save_25/Assign_16^save_25/Assign_17^save_25/Assign_18^save_25/Assign_19^save_25/Assign_2^save_25/Assign_20^save_25/Assign_21^save_25/Assign_22^save_25/Assign_23^save_25/Assign_24^save_25/Assign_25^save_25/Assign_26^save_25/Assign_27^save_25/Assign_3^save_25/Assign_4^save_25/Assign_5^save_25/Assign_6^save_25/Assign_7^save_25/Assign_8^save_25/Assign_9^save_25/LookupTableImportV2^save_25/LookupTableImportV2_1^save_25/LookupTableImportV2_2
�
 save_25/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_25/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_25/RestoreV2_1	RestoreV2save_25/Const save_25/RestoreV2_1/tensor_names$save_25/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_25/Assign_28Assignembedding/emb_matrixsave_25/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_25/Assign_29Assignembedding/emb_matrix/Adamsave_25/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_25/Assign_30Assignembedding/emb_matrix/Adam_1save_25/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_25/restore_shard_1NoOp^save_25/Assign_28^save_25/Assign_29^save_25/Assign_30"/device:CPU:0
8
save_25/restore_all/NoOpNoOp^save_25/restore_shard
K
save_25/restore_all/NoOp_1NoOp^save_25/restore_shard_1"/device:CPU:0
S
save_25/restore_allNoOp^save_25/restore_all/NoOp^save_25/restore_all/NoOp_1
S
save_26/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_26/StringJoin/inputs_1Const*<
value3B1 B+_temp_c002c254796d4fb59b81ed8fb9b870ae/part*
dtype0*
_output_shapes
: 
~
save_26/StringJoin
StringJoinsave_26/Constsave_26/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_26/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_26/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_26/ShardedFilenameShardedFilenamesave_26/StringJoinsave_26/ShardedFilename/shardsave_26/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_26/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
save_26/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_26/SaveV2SaveV2save_26/ShardedFilenamesave_26/SaveV2/tensor_namessave_26/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_26/control_dependencyIdentitysave_26/ShardedFilename^save_26/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_26/ShardedFilename*
_output_shapes
: 
p
save_26/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_26/ShardedFilename_1ShardedFilenamesave_26/StringJoinsave_26/ShardedFilename_1/shardsave_26/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_26/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0
}
!save_26/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_26/SaveV2_1SaveV2save_26/ShardedFilename_1save_26/SaveV2_1/tensor_names!save_26/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_26/control_dependency_1Identitysave_26/ShardedFilename_1^save_26/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*,
_class"
 loc:@save_26/ShardedFilename_1
�
.save_26/MergeV2Checkpoints/checkpoint_prefixesPacksave_26/ShardedFilenamesave_26/ShardedFilename_1^save_26/control_dependency^save_26/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_26/MergeV2CheckpointsMergeV2Checkpoints.save_26/MergeV2Checkpoints/checkpoint_prefixessave_26/Const"/device:CPU:0*
delete_old_dirs(
�
save_26/IdentityIdentitysave_26/Const^save_26/MergeV2Checkpoints^save_26/control_dependency^save_26/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_26/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_26/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_26/RestoreV2	RestoreV2save_26/Constsave_26/RestoreV2/tensor_names"save_26/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_26/AssignAssignVariablesave_26/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
�
save_26/Assign_1Assignbeta1_powersave_26/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_26/Assign_2Assignbeta2_powersave_26/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_26/Assign_3Assigncnn_max_pool_2/Wsave_26/RestoreV2:3*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_26/Assign_4Assigncnn_max_pool_2/W/Adamsave_26/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_26/Assign_5Assigncnn_max_pool_2/W/Adam_1save_26/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_26/Assign_6Assigncnn_max_pool_2/bsave_26/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_26/Assign_7Assigncnn_max_pool_2/b/Adamsave_26/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_26/Assign_8Assigncnn_max_pool_2/b/Adam_1save_26/RestoreV2:8*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_26/Assign_9Assigncnn_max_pool_3/Wsave_26/RestoreV2:9*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_26/Assign_10Assigncnn_max_pool_3/W/Adamsave_26/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_26/Assign_11Assigncnn_max_pool_3/W/Adam_1save_26/RestoreV2:11*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_26/Assign_12Assigncnn_max_pool_3/bsave_26/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_26/Assign_13Assigncnn_max_pool_3/b/Adamsave_26/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_26/Assign_14Assigncnn_max_pool_3/b/Adam_1save_26/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_26/Assign_15Assigncnn_max_pool_4/Wsave_26/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_26/Assign_16Assigncnn_max_pool_4/W/Adamsave_26/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_26/Assign_17Assigncnn_max_pool_4/W/Adam_1save_26/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_26/Assign_18Assigncnn_max_pool_4/bsave_26/RestoreV2:18*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_26/Assign_19Assigncnn_max_pool_4/b/Adamsave_26/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_26/Assign_20Assigncnn_max_pool_4/b/Adam_1save_26/RestoreV2:20*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save_26/Assign_21Assignglobal_stepsave_26/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_26/LookupTableImportV2LookupTableImportV2label_tablesave_26/RestoreV2:22save_26/RestoreV2:23*	
Tin0*

Tout0	*
_class
loc:@label_table
�
save_26/LookupTableImportV2_1LookupTableImportV2	out_tablesave_26/RestoreV2:24save_26/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_26/Assign_22Assignoutput/Wsave_26/RestoreV2:26*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_26/Assign_23Assignoutput/W/Adamsave_26/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_26/Assign_24Assignoutput/W/Adam_1save_26/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_26/Assign_25Assignoutput/bsave_26/RestoreV2:29*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_26/Assign_26Assignoutput/b/Adamsave_26/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_26/Assign_27Assignoutput/b/Adam_1save_26/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_26/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_26/RestoreV2:32save_26/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0
�
save_26/restore_shardNoOp^save_26/Assign^save_26/Assign_1^save_26/Assign_10^save_26/Assign_11^save_26/Assign_12^save_26/Assign_13^save_26/Assign_14^save_26/Assign_15^save_26/Assign_16^save_26/Assign_17^save_26/Assign_18^save_26/Assign_19^save_26/Assign_2^save_26/Assign_20^save_26/Assign_21^save_26/Assign_22^save_26/Assign_23^save_26/Assign_24^save_26/Assign_25^save_26/Assign_26^save_26/Assign_27^save_26/Assign_3^save_26/Assign_4^save_26/Assign_5^save_26/Assign_6^save_26/Assign_7^save_26/Assign_8^save_26/Assign_9^save_26/LookupTableImportV2^save_26/LookupTableImportV2_1^save_26/LookupTableImportV2_2
�
 save_26/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_26/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_26/RestoreV2_1	RestoreV2save_26/Const save_26/RestoreV2_1/tensor_names$save_26/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_26/Assign_28Assignembedding/emb_matrixsave_26/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_26/Assign_29Assignembedding/emb_matrix/Adamsave_26/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_26/Assign_30Assignembedding/emb_matrix/Adam_1save_26/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_26/restore_shard_1NoOp^save_26/Assign_28^save_26/Assign_29^save_26/Assign_30"/device:CPU:0
8
save_26/restore_all/NoOpNoOp^save_26/restore_shard
K
save_26/restore_all/NoOp_1NoOp^save_26/restore_shard_1"/device:CPU:0
S
save_26/restore_allNoOp^save_26/restore_all/NoOp^save_26/restore_all/NoOp_1
S
save_27/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_27/StringJoin/inputs_1Const*<
value3B1 B+_temp_567c6a5d33c641b4a2f82a6db03df98f/part*
dtype0*
_output_shapes
: 
~
save_27/StringJoin
StringJoinsave_27/Constsave_27/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_27/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_27/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
save_27/ShardedFilenameShardedFilenamesave_27/StringJoinsave_27/ShardedFilename/shardsave_27/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_27/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_27/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_27/SaveV2SaveV2save_27/ShardedFilenamesave_27/SaveV2/tensor_namessave_27/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_27/control_dependencyIdentitysave_27/ShardedFilename^save_27/SaveV2"/device:CPU:0**
_class 
loc:@save_27/ShardedFilename*
_output_shapes
: *
T0
p
save_27/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_27/ShardedFilename_1ShardedFilenamesave_27/StringJoinsave_27/ShardedFilename_1/shardsave_27/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_27/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_27/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_27/SaveV2_1SaveV2save_27/ShardedFilename_1save_27/SaveV2_1/tensor_names!save_27/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_27/control_dependency_1Identitysave_27/ShardedFilename_1^save_27/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_27/ShardedFilename_1*
_output_shapes
: 
�
.save_27/MergeV2Checkpoints/checkpoint_prefixesPacksave_27/ShardedFilenamesave_27/ShardedFilename_1^save_27/control_dependency^save_27/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_27/MergeV2CheckpointsMergeV2Checkpoints.save_27/MergeV2Checkpoints/checkpoint_prefixessave_27/Const"/device:CPU:0*
delete_old_dirs(
�
save_27/IdentityIdentitysave_27/Const^save_27/MergeV2Checkpoints^save_27/control_dependency^save_27/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_27/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_27/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_27/RestoreV2	RestoreV2save_27/Constsave_27/RestoreV2/tensor_names"save_27/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_27/AssignAssignVariablesave_27/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_27/Assign_1Assignbeta1_powersave_27/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_27/Assign_2Assignbeta2_powersave_27/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_27/Assign_3Assigncnn_max_pool_2/Wsave_27/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_4Assigncnn_max_pool_2/W/Adamsave_27/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_5Assigncnn_max_pool_2/W/Adam_1save_27/RestoreV2:5*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_27/Assign_6Assigncnn_max_pool_2/bsave_27/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_27/Assign_7Assigncnn_max_pool_2/b/Adamsave_27/RestoreV2:7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b
�
save_27/Assign_8Assigncnn_max_pool_2/b/Adam_1save_27/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_27/Assign_9Assigncnn_max_pool_3/Wsave_27/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_10Assigncnn_max_pool_3/W/Adamsave_27/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_11Assigncnn_max_pool_3/W/Adam_1save_27/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_12Assigncnn_max_pool_3/bsave_27/RestoreV2:12*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_27/Assign_13Assigncnn_max_pool_3/b/Adamsave_27/RestoreV2:13*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_27/Assign_14Assigncnn_max_pool_3/b/Adam_1save_27/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_27/Assign_15Assigncnn_max_pool_4/Wsave_27/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_27/Assign_16Assigncnn_max_pool_4/W/Adamsave_27/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_17Assigncnn_max_pool_4/W/Adam_1save_27/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_27/Assign_18Assigncnn_max_pool_4/bsave_27/RestoreV2:18*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_27/Assign_19Assigncnn_max_pool_4/b/Adamsave_27/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_27/Assign_20Assigncnn_max_pool_4/b/Adam_1save_27/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_27/Assign_21Assignglobal_stepsave_27/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_27/LookupTableImportV2LookupTableImportV2label_tablesave_27/RestoreV2:22save_27/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
�
save_27/LookupTableImportV2_1LookupTableImportV2	out_tablesave_27/RestoreV2:24save_27/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_27/Assign_22Assignoutput/Wsave_27/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_27/Assign_23Assignoutput/W/Adamsave_27/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_27/Assign_24Assignoutput/W/Adam_1save_27/RestoreV2:28*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save_27/Assign_25Assignoutput/bsave_27/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_27/Assign_26Assignoutput/b/Adamsave_27/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_27/Assign_27Assignoutput/b/Adam_1save_27/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_27/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_27/RestoreV2:32save_27/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_27/restore_shardNoOp^save_27/Assign^save_27/Assign_1^save_27/Assign_10^save_27/Assign_11^save_27/Assign_12^save_27/Assign_13^save_27/Assign_14^save_27/Assign_15^save_27/Assign_16^save_27/Assign_17^save_27/Assign_18^save_27/Assign_19^save_27/Assign_2^save_27/Assign_20^save_27/Assign_21^save_27/Assign_22^save_27/Assign_23^save_27/Assign_24^save_27/Assign_25^save_27/Assign_26^save_27/Assign_27^save_27/Assign_3^save_27/Assign_4^save_27/Assign_5^save_27/Assign_6^save_27/Assign_7^save_27/Assign_8^save_27/Assign_9^save_27/LookupTableImportV2^save_27/LookupTableImportV2_1^save_27/LookupTableImportV2_2
�
 save_27/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_27/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_27/RestoreV2_1	RestoreV2save_27/Const save_27/RestoreV2_1/tensor_names$save_27/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_27/Assign_28Assignembedding/emb_matrixsave_27/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_27/Assign_29Assignembedding/emb_matrix/Adamsave_27/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_27/Assign_30Assignembedding/emb_matrix/Adam_1save_27/RestoreV2_1:2"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
j
save_27/restore_shard_1NoOp^save_27/Assign_28^save_27/Assign_29^save_27/Assign_30"/device:CPU:0
8
save_27/restore_all/NoOpNoOp^save_27/restore_shard
K
save_27/restore_all/NoOp_1NoOp^save_27/restore_shard_1"/device:CPU:0
S
save_27/restore_allNoOp^save_27/restore_all/NoOp^save_27/restore_all/NoOp_1
S
save_28/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_28/StringJoin/inputs_1Const*<
value3B1 B+_temp_5cf448dc2f634643910210838e72e603/part*
dtype0*
_output_shapes
: 
~
save_28/StringJoin
StringJoinsave_28/Constsave_28/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_28/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_28/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_28/ShardedFilenameShardedFilenamesave_28/StringJoinsave_28/ShardedFilename/shardsave_28/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_28/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_28/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_28/SaveV2SaveV2save_28/ShardedFilenamesave_28/SaveV2/tensor_namessave_28/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_28/control_dependencyIdentitysave_28/ShardedFilename^save_28/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_28/ShardedFilename*
_output_shapes
: 
p
save_28/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_28/ShardedFilename_1ShardedFilenamesave_28/StringJoinsave_28/ShardedFilename_1/shardsave_28/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_28/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_28/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_28/SaveV2_1SaveV2save_28/ShardedFilename_1save_28/SaveV2_1/tensor_names!save_28/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_28/control_dependency_1Identitysave_28/ShardedFilename_1^save_28/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_28/ShardedFilename_1*
_output_shapes
: 
�
.save_28/MergeV2Checkpoints/checkpoint_prefixesPacksave_28/ShardedFilenamesave_28/ShardedFilename_1^save_28/control_dependency^save_28/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_28/MergeV2CheckpointsMergeV2Checkpoints.save_28/MergeV2Checkpoints/checkpoint_prefixessave_28/Const"/device:CPU:0*
delete_old_dirs(
�
save_28/IdentityIdentitysave_28/Const^save_28/MergeV2Checkpoints^save_28/control_dependency^save_28/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_28/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_28/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_28/RestoreV2	RestoreV2save_28/Constsave_28/RestoreV2/tensor_names"save_28/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_28/AssignAssignVariablesave_28/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
�
save_28/Assign_1Assignbeta1_powersave_28/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_28/Assign_2Assignbeta2_powersave_28/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_28/Assign_3Assigncnn_max_pool_2/Wsave_28/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_4Assigncnn_max_pool_2/W/Adamsave_28/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_5Assigncnn_max_pool_2/W/Adam_1save_28/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_6Assigncnn_max_pool_2/bsave_28/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_7Assigncnn_max_pool_2/b/Adamsave_28/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_8Assigncnn_max_pool_2/b/Adam_1save_28/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_9Assigncnn_max_pool_3/Wsave_28/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_10Assigncnn_max_pool_3/W/Adamsave_28/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_11Assigncnn_max_pool_3/W/Adam_1save_28/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_12Assigncnn_max_pool_3/bsave_28/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_13Assigncnn_max_pool_3/b/Adamsave_28/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_14Assigncnn_max_pool_3/b/Adam_1save_28/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_15Assigncnn_max_pool_4/Wsave_28/RestoreV2:15*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_28/Assign_16Assigncnn_max_pool_4/W/Adamsave_28/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_17Assigncnn_max_pool_4/W/Adam_1save_28/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_28/Assign_18Assigncnn_max_pool_4/bsave_28/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_19Assigncnn_max_pool_4/b/Adamsave_28/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_28/Assign_20Assigncnn_max_pool_4/b/Adam_1save_28/RestoreV2:20*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(
�
save_28/Assign_21Assignglobal_stepsave_28/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
�
save_28/LookupTableImportV2LookupTableImportV2label_tablesave_28/RestoreV2:22save_28/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_28/LookupTableImportV2_1LookupTableImportV2	out_tablesave_28/RestoreV2:24save_28/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_28/Assign_22Assignoutput/Wsave_28/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_28/Assign_23Assignoutput/W/Adamsave_28/RestoreV2:27*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_28/Assign_24Assignoutput/W/Adam_1save_28/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_28/Assign_25Assignoutput/bsave_28/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_28/Assign_26Assignoutput/b/Adamsave_28/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_28/Assign_27Assignoutput/b/Adam_1save_28/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_28/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_28/RestoreV2:32save_28/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_28/restore_shardNoOp^save_28/Assign^save_28/Assign_1^save_28/Assign_10^save_28/Assign_11^save_28/Assign_12^save_28/Assign_13^save_28/Assign_14^save_28/Assign_15^save_28/Assign_16^save_28/Assign_17^save_28/Assign_18^save_28/Assign_19^save_28/Assign_2^save_28/Assign_20^save_28/Assign_21^save_28/Assign_22^save_28/Assign_23^save_28/Assign_24^save_28/Assign_25^save_28/Assign_26^save_28/Assign_27^save_28/Assign_3^save_28/Assign_4^save_28/Assign_5^save_28/Assign_6^save_28/Assign_7^save_28/Assign_8^save_28/Assign_9^save_28/LookupTableImportV2^save_28/LookupTableImportV2_1^save_28/LookupTableImportV2_2
�
 save_28/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_28/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_28/RestoreV2_1	RestoreV2save_28/Const save_28/RestoreV2_1/tensor_names$save_28/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_28/Assign_28Assignembedding/emb_matrixsave_28/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_28/Assign_29Assignembedding/emb_matrix/Adamsave_28/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_28/Assign_30Assignembedding/emb_matrix/Adam_1save_28/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_28/restore_shard_1NoOp^save_28/Assign_28^save_28/Assign_29^save_28/Assign_30"/device:CPU:0
8
save_28/restore_all/NoOpNoOp^save_28/restore_shard
K
save_28/restore_all/NoOp_1NoOp^save_28/restore_shard_1"/device:CPU:0
S
save_28/restore_allNoOp^save_28/restore_all/NoOp^save_28/restore_all/NoOp_1
S
save_29/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_29/StringJoin/inputs_1Const*<
value3B1 B+_temp_6b6d5620f53348d2af85f984c7da39e9/part*
dtype0*
_output_shapes
: 
~
save_29/StringJoin
StringJoinsave_29/Constsave_29/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_29/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_29/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
save_29/ShardedFilenameShardedFilenamesave_29/StringJoinsave_29/ShardedFilename/shardsave_29/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_29/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_29/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_29/SaveV2SaveV2save_29/ShardedFilenamesave_29/SaveV2/tensor_namessave_29/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_29/control_dependencyIdentitysave_29/ShardedFilename^save_29/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_29/ShardedFilename
p
save_29/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_29/ShardedFilename_1ShardedFilenamesave_29/StringJoinsave_29/ShardedFilename_1/shardsave_29/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_29/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_29/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_29/SaveV2_1SaveV2save_29/ShardedFilename_1save_29/SaveV2_1/tensor_names!save_29/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_29/control_dependency_1Identitysave_29/ShardedFilename_1^save_29/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_29/ShardedFilename_1*
_output_shapes
: 
�
.save_29/MergeV2Checkpoints/checkpoint_prefixesPacksave_29/ShardedFilenamesave_29/ShardedFilename_1^save_29/control_dependency^save_29/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_29/MergeV2CheckpointsMergeV2Checkpoints.save_29/MergeV2Checkpoints/checkpoint_prefixessave_29/Const"/device:CPU:0*
delete_old_dirs(
�
save_29/IdentityIdentitysave_29/Const^save_29/MergeV2Checkpoints^save_29/control_dependency^save_29/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_29/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_29/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_29/RestoreV2	RestoreV2save_29/Constsave_29/RestoreV2/tensor_names"save_29/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_29/AssignAssignVariablesave_29/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_1Assignbeta1_powersave_29/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_2Assignbeta2_powersave_29/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_3Assigncnn_max_pool_2/Wsave_29/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_29/Assign_4Assigncnn_max_pool_2/W/Adamsave_29/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_29/Assign_5Assigncnn_max_pool_2/W/Adam_1save_29/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_29/Assign_6Assigncnn_max_pool_2/bsave_29/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_29/Assign_7Assigncnn_max_pool_2/b/Adamsave_29/RestoreV2:7*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(
�
save_29/Assign_8Assigncnn_max_pool_2/b/Adam_1save_29/RestoreV2:8*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_29/Assign_9Assigncnn_max_pool_3/Wsave_29/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_29/Assign_10Assigncnn_max_pool_3/W/Adamsave_29/RestoreV2:10*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_29/Assign_11Assigncnn_max_pool_3/W/Adam_1save_29/RestoreV2:11*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_29/Assign_12Assigncnn_max_pool_3/bsave_29/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_29/Assign_13Assigncnn_max_pool_3/b/Adamsave_29/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_29/Assign_14Assigncnn_max_pool_3/b/Adam_1save_29/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_29/Assign_15Assigncnn_max_pool_4/Wsave_29/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_29/Assign_16Assigncnn_max_pool_4/W/Adamsave_29/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_29/Assign_17Assigncnn_max_pool_4/W/Adam_1save_29/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_29/Assign_18Assigncnn_max_pool_4/bsave_29/RestoreV2:18*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_29/Assign_19Assigncnn_max_pool_4/b/Adamsave_29/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_29/Assign_20Assigncnn_max_pool_4/b/Adam_1save_29/RestoreV2:20*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_29/Assign_21Assignglobal_stepsave_29/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_29/LookupTableImportV2LookupTableImportV2label_tablesave_29/RestoreV2:22save_29/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
�
save_29/LookupTableImportV2_1LookupTableImportV2	out_tablesave_29/RestoreV2:24save_29/RestoreV2:25*	
Tin0	*

Tout0*
_class
loc:@out_table
�
save_29/Assign_22Assignoutput/Wsave_29/RestoreV2:26*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_29/Assign_23Assignoutput/W/Adamsave_29/RestoreV2:27*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_29/Assign_24Assignoutput/W/Adam_1save_29/RestoreV2:28*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_29/Assign_25Assignoutput/bsave_29/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_29/Assign_26Assignoutput/b/Adamsave_29/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_29/Assign_27Assignoutput/b/Adam_1save_29/RestoreV2:31*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_29/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_29/RestoreV2:32save_29/RestoreV2:33*	
Tin0*

Tout0	*
_class
loc:@symbol_table
�
save_29/restore_shardNoOp^save_29/Assign^save_29/Assign_1^save_29/Assign_10^save_29/Assign_11^save_29/Assign_12^save_29/Assign_13^save_29/Assign_14^save_29/Assign_15^save_29/Assign_16^save_29/Assign_17^save_29/Assign_18^save_29/Assign_19^save_29/Assign_2^save_29/Assign_20^save_29/Assign_21^save_29/Assign_22^save_29/Assign_23^save_29/Assign_24^save_29/Assign_25^save_29/Assign_26^save_29/Assign_27^save_29/Assign_3^save_29/Assign_4^save_29/Assign_5^save_29/Assign_6^save_29/Assign_7^save_29/Assign_8^save_29/Assign_9^save_29/LookupTableImportV2^save_29/LookupTableImportV2_1^save_29/LookupTableImportV2_2
�
 save_29/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_29/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
�
save_29/RestoreV2_1	RestoreV2save_29/Const save_29/RestoreV2_1/tensor_names$save_29/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_29/Assign_28Assignembedding/emb_matrixsave_29/RestoreV2_1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_29/Assign_29Assignembedding/emb_matrix/Adamsave_29/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_29/Assign_30Assignembedding/emb_matrix/Adam_1save_29/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_29/restore_shard_1NoOp^save_29/Assign_28^save_29/Assign_29^save_29/Assign_30"/device:CPU:0
8
save_29/restore_all/NoOpNoOp^save_29/restore_shard
K
save_29/restore_all/NoOp_1NoOp^save_29/restore_shard_1"/device:CPU:0
S
save_29/restore_allNoOp^save_29/restore_all/NoOp^save_29/restore_all/NoOp_1
S
save_30/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_30/StringJoin/inputs_1Const*<
value3B1 B+_temp_f3622514525747df917a86bbc361842e/part*
dtype0*
_output_shapes
: 
~
save_30/StringJoin
StringJoinsave_30/Constsave_30/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_30/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_30/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_30/ShardedFilenameShardedFilenamesave_30/StringJoinsave_30/ShardedFilename/shardsave_30/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_30/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_30/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_30/SaveV2SaveV2save_30/ShardedFilenamesave_30/SaveV2/tensor_namessave_30/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_30/control_dependencyIdentitysave_30/ShardedFilename^save_30/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_30/ShardedFilename*
_output_shapes
: 
p
save_30/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_30/ShardedFilename_1ShardedFilenamesave_30/StringJoinsave_30/ShardedFilename_1/shardsave_30/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_30/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
}
!save_30/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_30/SaveV2_1SaveV2save_30/ShardedFilename_1save_30/SaveV2_1/tensor_names!save_30/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_30/control_dependency_1Identitysave_30/ShardedFilename_1^save_30/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_30/ShardedFilename_1*
_output_shapes
: 
�
.save_30/MergeV2Checkpoints/checkpoint_prefixesPacksave_30/ShardedFilenamesave_30/ShardedFilename_1^save_30/control_dependency^save_30/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_30/MergeV2CheckpointsMergeV2Checkpoints.save_30/MergeV2Checkpoints/checkpoint_prefixessave_30/Const"/device:CPU:0*
delete_old_dirs(
�
save_30/IdentityIdentitysave_30/Const^save_30/MergeV2Checkpoints^save_30/control_dependency^save_30/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_30/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values
�
"save_30/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_30/RestoreV2	RestoreV2save_30/Constsave_30/RestoreV2/tensor_names"save_30/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_30/AssignAssignVariablesave_30/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
�
save_30/Assign_1Assignbeta1_powersave_30/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_30/Assign_2Assignbeta2_powersave_30/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_30/Assign_3Assigncnn_max_pool_2/Wsave_30/RestoreV2:3*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_30/Assign_4Assigncnn_max_pool_2/W/Adamsave_30/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_30/Assign_5Assigncnn_max_pool_2/W/Adam_1save_30/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_30/Assign_6Assigncnn_max_pool_2/bsave_30/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_7Assigncnn_max_pool_2/b/Adamsave_30/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_8Assigncnn_max_pool_2/b/Adam_1save_30/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_9Assigncnn_max_pool_3/Wsave_30/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_30/Assign_10Assigncnn_max_pool_3/W/Adamsave_30/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_30/Assign_11Assigncnn_max_pool_3/W/Adam_1save_30/RestoreV2:11*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_30/Assign_12Assigncnn_max_pool_3/bsave_30/RestoreV2:12*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_30/Assign_13Assigncnn_max_pool_3/b/Adamsave_30/RestoreV2:13*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_30/Assign_14Assigncnn_max_pool_3/b/Adam_1save_30/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_15Assigncnn_max_pool_4/Wsave_30/RestoreV2:15*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(
�
save_30/Assign_16Assigncnn_max_pool_4/W/Adamsave_30/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_30/Assign_17Assigncnn_max_pool_4/W/Adam_1save_30/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_30/Assign_18Assigncnn_max_pool_4/bsave_30/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_19Assigncnn_max_pool_4/b/Adamsave_30/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_20Assigncnn_max_pool_4/b/Adam_1save_30/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_30/Assign_21Assignglobal_stepsave_30/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_30/LookupTableImportV2LookupTableImportV2label_tablesave_30/RestoreV2:22save_30/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_30/LookupTableImportV2_1LookupTableImportV2	out_tablesave_30/RestoreV2:24save_30/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_30/Assign_22Assignoutput/Wsave_30/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_30/Assign_23Assignoutput/W/Adamsave_30/RestoreV2:27*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_30/Assign_24Assignoutput/W/Adam_1save_30/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_30/Assign_25Assignoutput/bsave_30/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_30/Assign_26Assignoutput/b/Adamsave_30/RestoreV2:30*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_30/Assign_27Assignoutput/b/Adam_1save_30/RestoreV2:31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_30/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_30/RestoreV2:32save_30/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_30/restore_shardNoOp^save_30/Assign^save_30/Assign_1^save_30/Assign_10^save_30/Assign_11^save_30/Assign_12^save_30/Assign_13^save_30/Assign_14^save_30/Assign_15^save_30/Assign_16^save_30/Assign_17^save_30/Assign_18^save_30/Assign_19^save_30/Assign_2^save_30/Assign_20^save_30/Assign_21^save_30/Assign_22^save_30/Assign_23^save_30/Assign_24^save_30/Assign_25^save_30/Assign_26^save_30/Assign_27^save_30/Assign_3^save_30/Assign_4^save_30/Assign_5^save_30/Assign_6^save_30/Assign_7^save_30/Assign_8^save_30/Assign_9^save_30/LookupTableImportV2^save_30/LookupTableImportV2_1^save_30/LookupTableImportV2_2
�
 save_30/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_30/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_30/RestoreV2_1	RestoreV2save_30/Const save_30/RestoreV2_1/tensor_names$save_30/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_30/Assign_28Assignembedding/emb_matrixsave_30/RestoreV2_1"/device:CPU:0*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix
�
save_30/Assign_29Assignembedding/emb_matrix/Adamsave_30/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_30/Assign_30Assignembedding/emb_matrix/Adam_1save_30/RestoreV2_1:2"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
j
save_30/restore_shard_1NoOp^save_30/Assign_28^save_30/Assign_29^save_30/Assign_30"/device:CPU:0
8
save_30/restore_all/NoOpNoOp^save_30/restore_shard
K
save_30/restore_all/NoOp_1NoOp^save_30/restore_shard_1"/device:CPU:0
S
save_30/restore_allNoOp^save_30/restore_all/NoOp^save_30/restore_all/NoOp_1
S
save_31/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save_31/StringJoin/inputs_1Const*<
value3B1 B+_temp_ca8f45823dfe4e1a8c77f49dd5b07a40/part*
dtype0*
_output_shapes
: 
~
save_31/StringJoin
StringJoinsave_31/Constsave_31/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_31/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
n
save_31/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_31/ShardedFilenameShardedFilenamesave_31/StringJoinsave_31/ShardedFilename/shardsave_31/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_31/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_31/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_31/SaveV2SaveV2save_31/ShardedFilenamesave_31/SaveV2/tensor_namessave_31/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_31/control_dependencyIdentitysave_31/ShardedFilename^save_31/SaveV2"/device:CPU:0*
_output_shapes
: *
T0**
_class 
loc:@save_31/ShardedFilename
p
save_31/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
save_31/ShardedFilename_1ShardedFilenamesave_31/StringJoinsave_31/ShardedFilename_1/shardsave_31/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_31/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_31/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_31/SaveV2_1SaveV2save_31/ShardedFilename_1save_31/SaveV2_1/tensor_names!save_31/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_31/control_dependency_1Identitysave_31/ShardedFilename_1^save_31/SaveV2_1"/device:CPU:0*,
_class"
 loc:@save_31/ShardedFilename_1*
_output_shapes
: *
T0
�
.save_31/MergeV2Checkpoints/checkpoint_prefixesPacksave_31/ShardedFilenamesave_31/ShardedFilename_1^save_31/control_dependency^save_31/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
save_31/MergeV2CheckpointsMergeV2Checkpoints.save_31/MergeV2Checkpoints/checkpoint_prefixessave_31/Const"/device:CPU:0*
delete_old_dirs(
�
save_31/IdentityIdentitysave_31/Const^save_31/MergeV2Checkpoints^save_31/control_dependency^save_31/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_31/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_31/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_31/RestoreV2	RestoreV2save_31/Constsave_31/RestoreV2/tensor_names"save_31/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_31/AssignAssignVariablesave_31/RestoreV2*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_31/Assign_1Assignbeta1_powersave_31/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_31/Assign_2Assignbeta2_powersave_31/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_31/Assign_3Assigncnn_max_pool_2/Wsave_31/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_31/Assign_4Assigncnn_max_pool_2/W/Adamsave_31/RestoreV2:4*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_31/Assign_5Assigncnn_max_pool_2/W/Adam_1save_31/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_31/Assign_6Assigncnn_max_pool_2/bsave_31/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_7Assigncnn_max_pool_2/b/Adamsave_31/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_8Assigncnn_max_pool_2/b/Adam_1save_31/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_9Assigncnn_max_pool_3/Wsave_31/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_31/Assign_10Assigncnn_max_pool_3/W/Adamsave_31/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_31/Assign_11Assigncnn_max_pool_3/W/Adam_1save_31/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_31/Assign_12Assigncnn_max_pool_3/bsave_31/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_13Assigncnn_max_pool_3/b/Adamsave_31/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_31/Assign_14Assigncnn_max_pool_3/b/Adam_1save_31/RestoreV2:14*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_31/Assign_15Assigncnn_max_pool_4/Wsave_31/RestoreV2:15*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_31/Assign_16Assigncnn_max_pool_4/W/Adamsave_31/RestoreV2:16*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_31/Assign_17Assigncnn_max_pool_4/W/Adam_1save_31/RestoreV2:17*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_31/Assign_18Assigncnn_max_pool_4/bsave_31/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_19Assigncnn_max_pool_4/b/Adamsave_31/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_20Assigncnn_max_pool_4/b/Adam_1save_31/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_31/Assign_21Assignglobal_stepsave_31/RestoreV2:21*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_31/LookupTableImportV2LookupTableImportV2label_tablesave_31/RestoreV2:22save_31/RestoreV2:23*
_class
loc:@label_table*	
Tin0*

Tout0	
�
save_31/LookupTableImportV2_1LookupTableImportV2	out_tablesave_31/RestoreV2:24save_31/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_31/Assign_22Assignoutput/Wsave_31/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_31/Assign_23Assignoutput/W/Adamsave_31/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_31/Assign_24Assignoutput/W/Adam_1save_31/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_31/Assign_25Assignoutput/bsave_31/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(
�
save_31/Assign_26Assignoutput/b/Adamsave_31/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_31/Assign_27Assignoutput/b/Adam_1save_31/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_31/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_31/RestoreV2:32save_31/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_31/restore_shardNoOp^save_31/Assign^save_31/Assign_1^save_31/Assign_10^save_31/Assign_11^save_31/Assign_12^save_31/Assign_13^save_31/Assign_14^save_31/Assign_15^save_31/Assign_16^save_31/Assign_17^save_31/Assign_18^save_31/Assign_19^save_31/Assign_2^save_31/Assign_20^save_31/Assign_21^save_31/Assign_22^save_31/Assign_23^save_31/Assign_24^save_31/Assign_25^save_31/Assign_26^save_31/Assign_27^save_31/Assign_3^save_31/Assign_4^save_31/Assign_5^save_31/Assign_6^save_31/Assign_7^save_31/Assign_8^save_31/Assign_9^save_31/LookupTableImportV2^save_31/LookupTableImportV2_1^save_31/LookupTableImportV2_2
�
 save_31/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_31/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_31/RestoreV2_1	RestoreV2save_31/Const save_31/RestoreV2_1/tensor_names$save_31/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_31/Assign_28Assignembedding/emb_matrixsave_31/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_31/Assign_29Assignembedding/emb_matrix/Adamsave_31/RestoreV2_1:1"/device:CPU:0*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save_31/Assign_30Assignembedding/emb_matrix/Adam_1save_31/RestoreV2_1:2"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
j
save_31/restore_shard_1NoOp^save_31/Assign_28^save_31/Assign_29^save_31/Assign_30"/device:CPU:0
8
save_31/restore_all/NoOpNoOp^save_31/restore_shard
K
save_31/restore_all/NoOp_1NoOp^save_31/restore_shard_1"/device:CPU:0
S
save_31/restore_allNoOp^save_31/restore_all/NoOp^save_31/restore_all/NoOp_1
S
save_32/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save_32/StringJoin/inputs_1Const*<
value3B1 B+_temp_19b59d8f2cd14e82b581b38eaf7593fd/part*
dtype0*
_output_shapes
: 
~
save_32/StringJoin
StringJoinsave_32/Constsave_32/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_32/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_32/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_32/ShardedFilenameShardedFilenamesave_32/StringJoinsave_32/ShardedFilename/shardsave_32/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_32/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_32/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:"*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_32/SaveV2SaveV2save_32/ShardedFilenamesave_32/SaveV2/tensor_namessave_32/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_32/control_dependencyIdentitysave_32/ShardedFilename^save_32/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_32/ShardedFilename*
_output_shapes
: 
p
save_32/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_32/ShardedFilename_1ShardedFilenamesave_32/StringJoinsave_32/ShardedFilename_1/shardsave_32/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_32/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_32/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
�
save_32/SaveV2_1SaveV2save_32/ShardedFilename_1save_32/SaveV2_1/tensor_names!save_32/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_32/control_dependency_1Identitysave_32/ShardedFilename_1^save_32/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_32/ShardedFilename_1*
_output_shapes
: 
�
.save_32/MergeV2Checkpoints/checkpoint_prefixesPacksave_32/ShardedFilenamesave_32/ShardedFilename_1^save_32/control_dependency^save_32/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_32/MergeV2CheckpointsMergeV2Checkpoints.save_32/MergeV2Checkpoints/checkpoint_prefixessave_32/Const"/device:CPU:0*
delete_old_dirs(
�
save_32/IdentityIdentitysave_32/Const^save_32/MergeV2Checkpoints^save_32/control_dependency^save_32/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
�
save_32/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_32/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_32/RestoreV2	RestoreV2save_32/Constsave_32/RestoreV2/tensor_names"save_32/RestoreV2/shape_and_slices"/device:CPU:0*0
dtypes&
$2"			*�
_output_shapes�
�::::::::::::::::::::::::::::::::::
�
save_32/AssignAssignVariablesave_32/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
�
save_32/Assign_1Assignbeta1_powersave_32/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_32/Assign_2Assignbeta2_powersave_32/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_32/Assign_3Assigncnn_max_pool_2/Wsave_32/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_32/Assign_4Assigncnn_max_pool_2/W/Adamsave_32/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_32/Assign_5Assigncnn_max_pool_2/W/Adam_1save_32/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_32/Assign_6Assigncnn_max_pool_2/bsave_32/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_32/Assign_7Assigncnn_max_pool_2/b/Adamsave_32/RestoreV2:7*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_32/Assign_8Assigncnn_max_pool_2/b/Adam_1save_32/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_32/Assign_9Assigncnn_max_pool_3/Wsave_32/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_32/Assign_10Assigncnn_max_pool_3/W/Adamsave_32/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(*(
_output_shapes
:��
�
save_32/Assign_11Assigncnn_max_pool_3/W/Adam_1save_32/RestoreV2:11*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_32/Assign_12Assigncnn_max_pool_3/bsave_32/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_32/Assign_13Assigncnn_max_pool_3/b/Adamsave_32/RestoreV2:13*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_32/Assign_14Assigncnn_max_pool_3/b/Adam_1save_32/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�
�
save_32/Assign_15Assigncnn_max_pool_4/Wsave_32/RestoreV2:15*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W
�
save_32/Assign_16Assigncnn_max_pool_4/W/Adamsave_32/RestoreV2:16*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_32/Assign_17Assigncnn_max_pool_4/W/Adam_1save_32/RestoreV2:17*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save_32/Assign_18Assigncnn_max_pool_4/bsave_32/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_32/Assign_19Assigncnn_max_pool_4/b/Adamsave_32/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_32/Assign_20Assigncnn_max_pool_4/b/Adam_1save_32/RestoreV2:20*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_32/Assign_21Assignglobal_stepsave_32/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_32/LookupTableImportV2LookupTableImportV2label_tablesave_32/RestoreV2:22save_32/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
�
save_32/LookupTableImportV2_1LookupTableImportV2	out_tablesave_32/RestoreV2:24save_32/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_32/Assign_22Assignoutput/Wsave_32/RestoreV2:26*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(
�
save_32/Assign_23Assignoutput/W/Adamsave_32/RestoreV2:27*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*
_class
loc:@output/W
�
save_32/Assign_24Assignoutput/W/Adam_1save_32/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_32/Assign_25Assignoutput/bsave_32/RestoreV2:29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/b
�
save_32/Assign_26Assignoutput/b/Adamsave_32/RestoreV2:30*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_32/Assign_27Assignoutput/b/Adam_1save_32/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_32/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_32/RestoreV2:32save_32/RestoreV2:33*

Tout0	*
_class
loc:@symbol_table*	
Tin0
�
save_32/restore_shardNoOp^save_32/Assign^save_32/Assign_1^save_32/Assign_10^save_32/Assign_11^save_32/Assign_12^save_32/Assign_13^save_32/Assign_14^save_32/Assign_15^save_32/Assign_16^save_32/Assign_17^save_32/Assign_18^save_32/Assign_19^save_32/Assign_2^save_32/Assign_20^save_32/Assign_21^save_32/Assign_22^save_32/Assign_23^save_32/Assign_24^save_32/Assign_25^save_32/Assign_26^save_32/Assign_27^save_32/Assign_3^save_32/Assign_4^save_32/Assign_5^save_32/Assign_6^save_32/Assign_7^save_32/Assign_8^save_32/Assign_9^save_32/LookupTableImportV2^save_32/LookupTableImportV2_1^save_32/LookupTableImportV2_2
�
 save_32/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1
�
$save_32/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_32/RestoreV2_1	RestoreV2save_32/Const save_32/RestoreV2_1/tensor_names$save_32/RestoreV2_1/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2
�
save_32/Assign_28Assignembedding/emb_matrixsave_32/RestoreV2_1"/device:CPU:0* 
_output_shapes
:
��*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(
�
save_32/Assign_29Assignembedding/emb_matrix/Adamsave_32/RestoreV2_1:1"/device:CPU:0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
save_32/Assign_30Assignembedding/emb_matrix/Adam_1save_32/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_32/restore_shard_1NoOp^save_32/Assign_28^save_32/Assign_29^save_32/Assign_30"/device:CPU:0
8
save_32/restore_all/NoOpNoOp^save_32/restore_shard
K
save_32/restore_all/NoOp_1NoOp^save_32/restore_shard_1"/device:CPU:0
S
save_32/restore_allNoOp^save_32/restore_all/NoOp^save_32/restore_all/NoOp_1
S
save_33/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_33/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_d7047746e45b41b49a3ae9c2a2c389f1/part*
dtype0
~
save_33/StringJoin
StringJoinsave_33/Constsave_33/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_33/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
n
save_33/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_33/ShardedFilenameShardedFilenamesave_33/StringJoinsave_33/ShardedFilename/shardsave_33/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_33/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
save_33/SaveV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_33/SaveV2SaveV2save_33/ShardedFilenamesave_33/SaveV2/tensor_namessave_33/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powercnn_max_pool_2/Wcnn_max_pool_2/W/Adamcnn_max_pool_2/W/Adam_1cnn_max_pool_2/bcnn_max_pool_2/b/Adamcnn_max_pool_2/b/Adam_1cnn_max_pool_3/Wcnn_max_pool_3/W/Adamcnn_max_pool_3/W/Adam_1cnn_max_pool_3/bcnn_max_pool_3/b/Adamcnn_max_pool_3/b/Adam_1cnn_max_pool_4/Wcnn_max_pool_4/W/Adamcnn_max_pool_4/W/Adam_1cnn_max_pool_4/bcnn_max_pool_4/b/Adamcnn_max_pool_4/b/Adam_1global_step&label_table_lookup_table_export_values(label_table_lookup_table_export_values:1$out_table_lookup_table_export_values&out_table_lookup_table_export_values:1output/Woutput/W/Adamoutput/W/Adam_1output/boutput/b/Adamoutput/b/Adam_1'symbol_table_lookup_table_export_values)symbol_table_lookup_table_export_values:1"/device:CPU:0*0
dtypes&
$2"			
�
save_33/control_dependencyIdentitysave_33/ShardedFilename^save_33/SaveV2"/device:CPU:0*
T0**
_class 
loc:@save_33/ShardedFilename*
_output_shapes
: 
p
save_33/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save_33/ShardedFilename_1ShardedFilenamesave_33/StringJoinsave_33/ShardedFilename_1/shardsave_33/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_33/SaveV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
}
!save_33/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_33/SaveV2_1SaveV2save_33/ShardedFilename_1save_33/SaveV2_1/tensor_names!save_33/SaveV2_1/shape_and_slicesembedding/emb_matrixembedding/emb_matrix/Adamembedding/emb_matrix/Adam_1"/device:CPU:0*
dtypes
2
�
save_33/control_dependency_1Identitysave_33/ShardedFilename_1^save_33/SaveV2_1"/device:CPU:0*
T0*,
_class"
 loc:@save_33/ShardedFilename_1*
_output_shapes
: 
�
.save_33/MergeV2Checkpoints/checkpoint_prefixesPacksave_33/ShardedFilenamesave_33/ShardedFilename_1^save_33/control_dependency^save_33/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_33/MergeV2CheckpointsMergeV2Checkpoints.save_33/MergeV2Checkpoints/checkpoint_prefixessave_33/Const"/device:CPU:0*
delete_old_dirs(
�
save_33/IdentityIdentitysave_33/Const^save_33/MergeV2Checkpoints^save_33/control_dependency^save_33/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
�
save_33/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�"BVariableBbeta1_powerBbeta2_powerBcnn_max_pool_2/WBcnn_max_pool_2/W/AdamBcnn_max_pool_2/W/Adam_1Bcnn_max_pool_2/bBcnn_max_pool_2/b/AdamBcnn_max_pool_2/b/Adam_1Bcnn_max_pool_3/WBcnn_max_pool_3/W/AdamBcnn_max_pool_3/W/Adam_1Bcnn_max_pool_3/bBcnn_max_pool_3/b/AdamBcnn_max_pool_3/b/Adam_1Bcnn_max_pool_4/WBcnn_max_pool_4/W/AdamBcnn_max_pool_4/W/Adam_1Bcnn_max_pool_4/bBcnn_max_pool_4/b/AdamBcnn_max_pool_4/b/Adam_1Bglobal_stepBlabel_table-keysBlabel_table-valuesBout_table-keysBout_table-valuesBoutput/WBoutput/W/AdamBoutput/W/Adam_1Boutput/bBoutput/b/AdamBoutput/b/Adam_1Bsymbol_table-keysBsymbol_table-values*
dtype0*
_output_shapes
:"
�
"save_33/RestoreV2/shape_and_slicesConst"/device:CPU:0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:"
�
save_33/RestoreV2	RestoreV2save_33/Constsave_33/RestoreV2/tensor_names"save_33/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"			
�
save_33/AssignAssignVariablesave_33/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_33/Assign_1Assignbeta1_powersave_33/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*
_output_shapes
: 
�
save_33/Assign_2Assignbeta2_powersave_33/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(
�
save_33/Assign_3Assigncnn_max_pool_2/Wsave_33/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_33/Assign_4Assigncnn_max_pool_2/W/Adamsave_33/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W*
validate_shape(*(
_output_shapes
:��
�
save_33/Assign_5Assigncnn_max_pool_2/W/Adam_1save_33/RestoreV2:5*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/W
�
save_33/Assign_6Assigncnn_max_pool_2/bsave_33/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_33/Assign_7Assigncnn_max_pool_2/b/Adamsave_33/RestoreV2:7*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_33/Assign_8Assigncnn_max_pool_2/b/Adam_1save_33/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_2/b*
validate_shape(*
_output_shapes	
:�
�
save_33/Assign_9Assigncnn_max_pool_3/Wsave_33/RestoreV2:9*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W*
validate_shape(
�
save_33/Assign_10Assigncnn_max_pool_3/W/Adamsave_33/RestoreV2:10*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_33/Assign_11Assigncnn_max_pool_3/W/Adam_1save_33/RestoreV2:11*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/W
�
save_33/Assign_12Assigncnn_max_pool_3/bsave_33/RestoreV2:12*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_33/Assign_13Assigncnn_max_pool_3/b/Adamsave_33/RestoreV2:13*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b*
validate_shape(
�
save_33/Assign_14Assigncnn_max_pool_3/b/Adam_1save_33/RestoreV2:14*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_3/b
�
save_33/Assign_15Assigncnn_max_pool_4/Wsave_33/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_33/Assign_16Assigncnn_max_pool_4/W/Adamsave_33/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��
�
save_33/Assign_17Assigncnn_max_pool_4/W/Adam_1save_33/RestoreV2:17*#
_class
loc:@cnn_max_pool_4/W*
validate_shape(*(
_output_shapes
:��*
use_locking(*
T0
�
save_33/Assign_18Assigncnn_max_pool_4/bsave_33/RestoreV2:18*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save_33/Assign_19Assigncnn_max_pool_4/b/Adamsave_33/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b*
validate_shape(*
_output_shapes	
:�
�
save_33/Assign_20Assigncnn_max_pool_4/b/Adam_1save_33/RestoreV2:20*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*#
_class
loc:@cnn_max_pool_4/b
�
save_33/Assign_21Assignglobal_stepsave_33/RestoreV2:21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_33/LookupTableImportV2LookupTableImportV2label_tablesave_33/RestoreV2:22save_33/RestoreV2:23*

Tout0	*
_class
loc:@label_table*	
Tin0
�
save_33/LookupTableImportV2_1LookupTableImportV2	out_tablesave_33/RestoreV2:24save_33/RestoreV2:25*
_class
loc:@out_table*	
Tin0	*

Tout0
�
save_33/Assign_22Assignoutput/Wsave_33/RestoreV2:26*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_33/Assign_23Assignoutput/W/Adamsave_33/RestoreV2:27*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_33/Assign_24Assignoutput/W/Adam_1save_33/RestoreV2:28*
use_locking(*
T0*
_class
loc:@output/W*
validate_shape(*
_output_shapes
:	�
�
save_33/Assign_25Assignoutput/bsave_33/RestoreV2:29*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_33/Assign_26Assignoutput/b/Adamsave_33/RestoreV2:30*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_33/Assign_27Assignoutput/b/Adam_1save_33/RestoreV2:31*
use_locking(*
T0*
_class
loc:@output/b*
validate_shape(*
_output_shapes
:
�
save_33/LookupTableImportV2_2LookupTableImportV2symbol_tablesave_33/RestoreV2:32save_33/RestoreV2:33*
_class
loc:@symbol_table*	
Tin0*

Tout0	
�
save_33/restore_shardNoOp^save_33/Assign^save_33/Assign_1^save_33/Assign_10^save_33/Assign_11^save_33/Assign_12^save_33/Assign_13^save_33/Assign_14^save_33/Assign_15^save_33/Assign_16^save_33/Assign_17^save_33/Assign_18^save_33/Assign_19^save_33/Assign_2^save_33/Assign_20^save_33/Assign_21^save_33/Assign_22^save_33/Assign_23^save_33/Assign_24^save_33/Assign_25^save_33/Assign_26^save_33/Assign_27^save_33/Assign_3^save_33/Assign_4^save_33/Assign_5^save_33/Assign_6^save_33/Assign_7^save_33/Assign_8^save_33/Assign_9^save_33/LookupTableImportV2^save_33/LookupTableImportV2_1^save_33/LookupTableImportV2_2
�
 save_33/RestoreV2_1/tensor_namesConst"/device:CPU:0*a
valueXBVBembedding/emb_matrixBembedding/emb_matrix/AdamBembedding/emb_matrix/Adam_1*
dtype0*
_output_shapes
:
�
$save_33/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
�
save_33/RestoreV2_1	RestoreV2save_33/Const save_33/RestoreV2_1/tensor_names$save_33/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:::
�
save_33/Assign_28Assignembedding/emb_matrixsave_33/RestoreV2_1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_33/Assign_29Assignembedding/emb_matrix/Adamsave_33/RestoreV2_1:1"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
�
save_33/Assign_30Assignembedding/emb_matrix/Adam_1save_33/RestoreV2_1:2"/device:CPU:0*
use_locking(*
T0*'
_class
loc:@embedding/emb_matrix*
validate_shape(* 
_output_shapes
:
��
j
save_33/restore_shard_1NoOp^save_33/Assign_28^save_33/Assign_29^save_33/Assign_30"/device:CPU:0
8
save_33/restore_all/NoOpNoOp^save_33/restore_shard
K
save_33/restore_all/NoOp_1NoOp^save_33/restore_shard_1"/device:CPU:0
S
save_33/restore_allNoOp^save_33/restore_all/NoOp^save_33/restore_all/NoOp_1"E
save_33/Const:0save_33/Identity:0save_33/restore_all (5 @F8"
train_op

Adam")
	iterators


Iterator:0
Iterator_1:0"�
	summaries�
�
"embedding/emb_matrix_0/grad/hist:0
&embedding/emb_matrix_0/grad/sparsity:0
cnn_max_pool_2/W_0/grad/hist:0
"cnn_max_pool_2/W_0/grad/sparsity:0
cnn_max_pool_2/b_0/grad/hist:0
"cnn_max_pool_2/b_0/grad/sparsity:0
cnn_max_pool_3/W_0/grad/hist:0
"cnn_max_pool_3/W_0/grad/sparsity:0
cnn_max_pool_3/b_0/grad/hist:0
"cnn_max_pool_3/b_0/grad/sparsity:0
cnn_max_pool_4/W_0/grad/hist:0
"cnn_max_pool_4/W_0/grad/sparsity:0
cnn_max_pool_4/b_0/grad/hist:0
"cnn_max_pool_4/b_0/grad/sparsity:0
output/W_0/grad/hist:0
output/W_0/grad/sparsity:0
output/b_0/grad/hist:0
output/b_0/grad/sparsity:0
loss_1:0
accuracy_1:0
	epoch_1:0"�
trainable_variables��
�
embedding/emb_matrix:0embedding/emb_matrix/Assignembedding/emb_matrix/read:021embedding/emb_matrix/Initializer/random_uniform:08
k
cnn_max_pool_2/W:0cnn_max_pool_2/W/Assigncnn_max_pool_2/W/read:02!cnn_max_pool_2/truncated_normal:08
`
cnn_max_pool_2/b:0cnn_max_pool_2/b/Assigncnn_max_pool_2/b/read:02cnn_max_pool_2/Const:08
k
cnn_max_pool_3/W:0cnn_max_pool_3/W/Assigncnn_max_pool_3/W/read:02!cnn_max_pool_3/truncated_normal:08
`
cnn_max_pool_3/b:0cnn_max_pool_3/b/Assigncnn_max_pool_3/b/read:02cnn_max_pool_3/Const:08
k
cnn_max_pool_4/W:0cnn_max_pool_4/W/Assigncnn_max_pool_4/W/read:02!cnn_max_pool_4/truncated_normal:08
`
cnn_max_pool_4/b:0cnn_max_pool_4/b/Assigncnn_max_pool_4/b/read:02cnn_max_pool_4/Const:08
W

output/W:0output/W/Assignoutput/W/read:02%output/W/Initializer/random_uniform:08
@

output/b:0output/b/Assignoutput/b/read:02output/Const:08"<
saveable_objects(
&
symbol_table
label_table
	out_table"�
	variables��
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0
�
embedding/emb_matrix:0embedding/emb_matrix/Assignembedding/emb_matrix/read:021embedding/emb_matrix/Initializer/random_uniform:08
k
cnn_max_pool_2/W:0cnn_max_pool_2/W/Assigncnn_max_pool_2/W/read:02!cnn_max_pool_2/truncated_normal:08
`
cnn_max_pool_2/b:0cnn_max_pool_2/b/Assigncnn_max_pool_2/b/read:02cnn_max_pool_2/Const:08
k
cnn_max_pool_3/W:0cnn_max_pool_3/W/Assigncnn_max_pool_3/W/read:02!cnn_max_pool_3/truncated_normal:08
`
cnn_max_pool_3/b:0cnn_max_pool_3/b/Assigncnn_max_pool_3/b/read:02cnn_max_pool_3/Const:08
k
cnn_max_pool_4/W:0cnn_max_pool_4/W/Assigncnn_max_pool_4/W/read:02!cnn_max_pool_4/truncated_normal:08
`
cnn_max_pool_4/b:0cnn_max_pool_4/b/Assigncnn_max_pool_4/b/read:02cnn_max_pool_4/Const:08
W

output/W:0output/W/Assignoutput/W/read:02%output/W/Initializer/random_uniform:08
@

output/b:0output/b/Assignoutput/b/read:02output/Const:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
�
embedding/emb_matrix/Adam:0 embedding/emb_matrix/Adam/Assign embedding/emb_matrix/Adam/read:02-embedding/emb_matrix/Adam/Initializer/zeros:0
�
embedding/emb_matrix/Adam_1:0"embedding/emb_matrix/Adam_1/Assign"embedding/emb_matrix/Adam_1/read:02/embedding/emb_matrix/Adam_1/Initializer/zeros:0
�
cnn_max_pool_2/W/Adam:0cnn_max_pool_2/W/Adam/Assigncnn_max_pool_2/W/Adam/read:02)cnn_max_pool_2/W/Adam/Initializer/zeros:0
�
cnn_max_pool_2/W/Adam_1:0cnn_max_pool_2/W/Adam_1/Assigncnn_max_pool_2/W/Adam_1/read:02+cnn_max_pool_2/W/Adam_1/Initializer/zeros:0
�
cnn_max_pool_2/b/Adam:0cnn_max_pool_2/b/Adam/Assigncnn_max_pool_2/b/Adam/read:02)cnn_max_pool_2/b/Adam/Initializer/zeros:0
�
cnn_max_pool_2/b/Adam_1:0cnn_max_pool_2/b/Adam_1/Assigncnn_max_pool_2/b/Adam_1/read:02+cnn_max_pool_2/b/Adam_1/Initializer/zeros:0
�
cnn_max_pool_3/W/Adam:0cnn_max_pool_3/W/Adam/Assigncnn_max_pool_3/W/Adam/read:02)cnn_max_pool_3/W/Adam/Initializer/zeros:0
�
cnn_max_pool_3/W/Adam_1:0cnn_max_pool_3/W/Adam_1/Assigncnn_max_pool_3/W/Adam_1/read:02+cnn_max_pool_3/W/Adam_1/Initializer/zeros:0
�
cnn_max_pool_3/b/Adam:0cnn_max_pool_3/b/Adam/Assigncnn_max_pool_3/b/Adam/read:02)cnn_max_pool_3/b/Adam/Initializer/zeros:0
�
cnn_max_pool_3/b/Adam_1:0cnn_max_pool_3/b/Adam_1/Assigncnn_max_pool_3/b/Adam_1/read:02+cnn_max_pool_3/b/Adam_1/Initializer/zeros:0
�
cnn_max_pool_4/W/Adam:0cnn_max_pool_4/W/Adam/Assigncnn_max_pool_4/W/Adam/read:02)cnn_max_pool_4/W/Adam/Initializer/zeros:0
�
cnn_max_pool_4/W/Adam_1:0cnn_max_pool_4/W/Adam_1/Assigncnn_max_pool_4/W/Adam_1/read:02+cnn_max_pool_4/W/Adam_1/Initializer/zeros:0
�
cnn_max_pool_4/b/Adam:0cnn_max_pool_4/b/Adam/Assigncnn_max_pool_4/b/Adam/read:02)cnn_max_pool_4/b/Adam/Initializer/zeros:0
�
cnn_max_pool_4/b/Adam_1:0cnn_max_pool_4/b/Adam_1/Assigncnn_max_pool_4/b/Adam_1/read:02+cnn_max_pool_4/b/Adam_1/Initializer/zeros:0
`
output/W/Adam:0output/W/Adam/Assignoutput/W/Adam/read:02!output/W/Adam/Initializer/zeros:0
h
output/W/Adam_1:0output/W/Adam_1/Assignoutput/W/Adam_1/read:02#output/W/Adam_1/Initializer/zeros:0
`
output/b/Adam:0output/b/Adam/Assignoutput/b/Adam/read:02!output/b/Adam/Initializer/zeros:0
h
output/b/Adam_1:0output/b/Adam_1/Assignoutput/b/Adam_1/read:02#output/b/Adam_1/Initializer/zeros:0*�

prediction�
#
label
label:0���������
6
sentence*

sentence:0������������������2
score)
inference/output:0���������6
output,
inference/label_out:0���������tensorflow/serving/predict