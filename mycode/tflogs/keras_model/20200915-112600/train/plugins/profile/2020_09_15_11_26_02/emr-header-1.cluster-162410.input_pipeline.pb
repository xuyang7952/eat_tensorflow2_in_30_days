	&�`6�!@&�`6�!@!&�`6�!@	~�`a�?~�`a�?!~�`a�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$&�`6�!@�*��p��?A )"�*& @YuXᖏ��?*�(\���f@���S㿁@2q
:Iterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2�pZ��?!�|A�G@)�pZ��?1�|A�G@:Preprocessing2�
PIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::FlatMap[0]::TextLineR��b�?!�F���U8@)R��b�?1�F���U8@:Advanced file read2b
+Iterator::Model::Prefetch::BatchV2::Shuffle��tx�?!�%���,M@)-ͭVc�?1��=jB&@:Preprocessing2Y
"Iterator::Model::Prefetch::BatchV2�:�*�?!K�]��P@)�FZ*oG�?1��9� @:Preprocessing2z
CIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::FlatMapT�^P�?!�4Im?=@)
�5��?1WQ��@:Preprocessing2F
Iterator::Modelw�$$�6�?!8R���q@)�L�Tݓ?13�
@��@:Preprocessing2P
Iterator::Model::Prefetch�t�����?!+Uߊ�?)�t�����?1+Uߊ�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 7.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9~�`a�?>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�*��p��?�*��p��?!�*��p��?      ��!       "      ��!       *      ��!       2	 )"�*& @ )"�*& @! )"�*& @:      ��!       B      ��!       J	uXᖏ��?uXᖏ��?!uXᖏ��?R      ��!       Z	uXᖏ��?uXᖏ��?!uXᖏ��?JCPU_ONLYY~�`a�?b 