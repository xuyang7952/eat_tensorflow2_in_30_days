�	rN�}�D@rN�}�D@!rN�}�D@	@z����?@z����?!@z����?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$rN�}�D@���9}�?A+P���RD@Y8��w��?*	,�ٮ��@2q
:Iterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2d'2s��s,@!���r�U@)'2s��s,@1���r�U@:Preprocessing2Y
"Iterator::Model::Prefetch::BatchV2�2��b0@!��~�J�X@)3O�)���?1�*[!b!@:Preprocessing2b
+Iterator::Model::Prefetch::BatchV2::Shuffled؛��Q-@!(\S��V@)/6���?1�A�4�R@:Preprocessing2z
CIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::Shuffled�)x
��?!O��J��?)�)x
��?1O��J��?:Preprocessing2F
Iterator::Model�<�+J	�?!���5�?)��
�|$�?1��	C�?:Preprocessing2P
Iterator::Model::Prefetch�k_@/܉?!l}���?)�k_@/܉?1l}���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9@z����?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���9}�?���9}�?!���9}�?      ��!       "      ��!       *      ��!       2	+P���RD@+P���RD@!+P���RD@:      ��!       B      ��!       J	8��w��?8��w��?!8��w��?R      ��!       Z	8��w��?8��w��?!8��w��?JCPU_ONLYY@z����?b Y      Y@q�,z��(�?"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQ2"CPU: B 