	J�({KY@J�({KY@!J�({KY@	6O4^#�?6O4^#�?!6O4^#�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$J�({KY@� ��*��?A}!��/@YR��񘁪?*�rh���i@�v�����@2q
:Iterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV26����?!�ڢZ�tS@)6����?1�ڢZ�tS@:Preprocessing2�
PIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::FlatMap[0]::TextLine�G��?!�B엟�$@)�G��?1�B엟�$@:Advanced file read2b
+Iterator::Model::Prefetch::BatchV2::Shuffle��a����?!��/W0�T@)��
}���?1j���O	@:Preprocessing2Y
"Iterator::Model::Prefetch::BatchV2|����?!	l��YU@)�q75а?1�f�'��
@:Preprocessing2z
CIterator::Model::Prefetch::BatchV2::Shuffle::ParallelMapV2::FlatMap#/kb���?!-�+�a*@)����[�?1J[Oʠ@:Preprocessing2F
Iterator::ModelLP÷�n�?!���Jz�?)�(�'�?1�>m$��?:Preprocessing2P
Iterator::Model::Prefetch��j�#�}?!w��f���?)��j�#�}?1w��f���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 8.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no96O4^#�?>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	� ��*��?� ��*��?!� ��*��?      ��!       "      ��!       *      ��!       2	}!��/@}!��/@!}!��/@:      ��!       B      ��!       J	R��񘁪?R��񘁪?!R��񘁪?R      ��!       Z	R��񘁪?R��񘁪?!R��񘁪?JCPU_ONLYY6O4^#�?b 