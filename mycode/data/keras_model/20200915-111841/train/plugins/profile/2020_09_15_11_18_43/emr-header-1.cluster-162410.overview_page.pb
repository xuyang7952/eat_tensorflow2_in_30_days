�	J�E�3@J�E�3@!J�E�3@	Ȳ4�{��?Ȳ4�{��?!Ȳ4�{��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$J�E�3@PoF�W�?A������@YM/1�门?*�v���e@�l���{�@2q
:Iterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2��G�?!O�F�T\Q@)��G�?1O�F�T\Q@:Preprocessing2�
PIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::FlatMap[0]::TextLine��1���?!{΢�,@)��1���?1{΢�,@:Advanced file read2b
+Iterator::Model::Prefetch::BatchV2::Shufflef������?!>�KO�S@);S��.�?1�Np��@:Preprocessing2Y
"Iterator::Model::Prefetch::BatchV2��W��?!5F �T@)Y�e0F$�?1i_L[K�@:Preprocessing2z
CIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::FlatMapHĔH���?!�%e��1@)����?1��z� @:Preprocessing2F
Iterator::Model0,�-X�?!��6T� @)��U�&�?1�CR���?:Preprocessing2P
Iterator::Model::PrefetchàL���x?!vLmt��?)àL���x?1vLmt��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.8% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9ǲ4�{��?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	PoF�W�?PoF�W�?!PoF�W�?      ��!       "      ��!       *      ��!       2	������@������@!������@:      ��!       B      ��!       J	M/1�门?M/1�门?!M/1�门?R      ��!       Z	M/1�门?M/1�门?!M/1�门?JCPU_ONLYYǲ4�{��?b Y      Y@q/k�9@"�
device�Your program is NOT input-bound because only 0.8% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQb�25.7581% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 