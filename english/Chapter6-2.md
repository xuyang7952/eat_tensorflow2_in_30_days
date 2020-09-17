# 6-2 Three Ways of Training

There are three ways of model training: using pre-defined `fit` method, using pre-defined `tran_on_batch` method, using customized training loop.

Note: `fit_generator` method is not recommended in `tf.keras` since it has been merged into `fit`.


```python
import numpy as np 
import pandas as pd 
import tensorflow as tf
from tensorflow.keras import * 

# Time stamps
@tf.function
def printbar():
    ts = tf.timestamp()
    today_ts = ts%(24*60*60)

    hour = tf.cast(today_ts//3600+8,tf.int32)%tf.constant(24)
    minite = tf.cast((today_ts%3600)//60,tf.int32)
    second = tf.cast(tf.floor(today_ts%60),tf.int32)
    
    def timeformat(m):
        if tf.strings.length(tf.strings.format("{}",m))==1:
            return(tf.strings.format("0{}",m))
        else:
            return(tf.strings.format("{}",m))
    
    timestring = tf.strings.join([timeformat(hour),timeformat(minite),
                timeformat(second)],separator = ":")
    tf.print("=========="*8,end = "")
    tf.print(timestring)
    
```

```python
MAX_LEN = 300
BATCH_SIZE = 32
(x_train,y_train),(x_test,y_test) = datasets.reuters.load_data()
x_train = preprocessing.sequence.pad_sequences(x_train,maxlen=MAX_LEN)
x_test = preprocessing.sequence.pad_sequences(x_test,maxlen=MAX_LEN)

MAX_WORDS = x_train.max()+1
CAT_NUM = y_train.max()+1

ds_train = tf.data.Dataset.from_tensor_slices((x_train,y_train)) \
          .shuffle(buffer_size = 1000).batch(BATCH_SIZE) \
          .prefetch(tf.data.experimental.AUTOTUNE).cache()
   
ds_test = tf.data.Dataset.from_tensor_slices((x_test,y_test)) \
          .shuffle(buffer_size = 1000).batch(BATCH_SIZE) \
          .prefetch(tf.data.experimental.AUTOTUNE).cache()

```

```python

```

### 1. Pre-defined `fit` method


This is a powerful method, which supports training the data with types of numpy array, `tf.data.Dataset` and Python generator.

This method also supports complicated logical controlling through proper configuration of the callbacks.

```python
tf.keras.backend.clear_session()
def create_model():
    
    model = models.Sequential()
    model.add(layers.Embedding(MAX_WORDS,7,input_length=MAX_LEN))
    model.add(layers.Conv1D(filters = 64,kernel_size = 5,activation = "relu"))
    model.add(layers.MaxPool1D(2))
    model.add(layers.Conv1D(filters = 32,kernel_size = 3,activation = "relu"))
    model.add(layers.MaxPool1D(2))
    model.add(layers.Flatten())
    model.add(layers.Dense(CAT_NUM,activation = "softmax"))
    return(model)

def compile_model(model):
    model.compile(optimizer=optimizers.Nadam(),
                loss=losses.SparseCategoricalCrossentropy(),
                metrics=[metrics.SparseCategoricalAccuracy(),metrics.SparseTopKCategoricalAccuracy(5)]) 
    return(model)
 
model = create_model()
model.summary()
model = compile_model(model)

```

```
Model: "sequential"
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
embedding (Embedding)        (None, 300, 7)            216874    
_________________________________________________________________
conv1d (Conv1D)              (None, 296, 64)           2304      
_________________________________________________________________
max_pooling1d (MaxPooling1D) (None, 148, 64)           0         
_________________________________________________________________
conv1d_1 (Conv1D)            (None, 146, 32)           6176      
_________________________________________________________________
max_pooling1d_1 (MaxPooling1 (None, 73, 32)            0         
_________________________________________________________________
flatten (Flatten)            (None, 2336)              0         
_________________________________________________________________
dense (Dense)                (None, 46)                107502    
=================================================================
Total params: 332,856
Trainable params: 332,856
Non-trainable params: 0
_________________________________________________________________
```

```python
history = model.fit(ds_train,validation_data = ds_test,epochs = 10)
```

```python

```

```
Train for 281 steps, validate for 71 steps
Epoch 1/10
281/281 [==============================] - 11s 37ms/step - loss: 2.0231 - sparse_categorical_accuracy: 0.4636 - sparse_top_k_categorical_accuracy: 0.7450 - val_loss: 1.7346 - val_sparse_categorical_accuracy: 0.5534 - val_sparse_top_k_categorical_accuracy: 0.7560
Epoch 2/10
281/281 [==============================] - 9s 31ms/step - loss: 1.5079 - sparse_categorical_accuracy: 0.6091 - sparse_top_k_categorical_accuracy: 0.7901 - val_loss: 1.5475 - val_sparse_categorical_accuracy: 0.6109 - val_sparse_top_k_categorical_accuracy: 0.7792
Epoch 3/10
281/281 [==============================] - 9s 33ms/step - loss: 1.2204 - sparse_categorical_accuracy: 0.6823 - sparse_top_k_categorical_accuracy: 0.8448 - val_loss: 1.5455 - val_sparse_categorical_accuracy: 0.6367 - val_sparse_top_k_categorical_accuracy: 0.8001
Epoch 4/10
281/281 [==============================] - 9s 33ms/step - loss: 0.9382 - sparse_categorical_accuracy: 0.7543 - sparse_top_k_categorical_accuracy: 0.9075 - val_loss: 1.6780 - val_sparse_categorical_accuracy: 0.6398 - val_sparse_top_k_categorical_accuracy: 0.8032
Epoch 5/10
281/281 [==============================] - 10s 34ms/step - loss: 0.6791 - sparse_categorical_accuracy: 0.8255 - sparse_top_k_categorical_accuracy: 0.9513 - val_loss: 1.9426 - val_sparse_categorical_accuracy: 0.6376 - val_sparse_top_k_categorical_accuracy: 0.7956
Epoch 6/10
281/281 [==============================] - 9s 33ms/step - loss: 0.5063 - sparse_categorical_accuracy: 0.8762 - sparse_top_k_categorical_accuracy: 0.9716 - val_loss: 2.2141 - val_sparse_categorical_accuracy: 0.6291 - val_sparse_top_k_categorical_accuracy: 0.7947
Epoch 7/10
281/281 [==============================] - 10s 37ms/step - loss: 0.4031 - sparse_categorical_accuracy: 0.9050 - sparse_top_k_categorical_accuracy: 0.9817 - val_loss: 2.4126 - val_sparse_categorical_accuracy: 0.6264 - val_sparse_top_k_categorical_accuracy: 0.7947
Epoch 8/10
281/281 [==============================] - 10s 35ms/step - loss: 0.3380 - sparse_categorical_accuracy: 0.9205 - sparse_top_k_categorical_accuracy: 0.9881 - val_loss: 2.5366 - val_sparse_categorical_accuracy: 0.6242 - val_sparse_top_k_categorical_accuracy: 0.7974
Epoch 9/10
281/281 [==============================] - 10s 36ms/step - loss: 0.2921 - sparse_categorical_accuracy: 0.9299 - sparse_top_k_categorical_accuracy: 0.9909 - val_loss: 2.6564 - val_sparse_categorical_accuracy: 0.6242 - val_sparse_top_k_categorical_accuracy: 0.7983
Epoch 10/10
281/281 [==============================] - 9s 30ms/step - loss: 0.2613 - sparse_categorical_accuracy: 0.9334 - sparse_top_k_categorical_accuracy: 0.9947 - val_loss: 2.7365 - val_sparse_categorical_accuracy: 0.6220 - val_sparse_top_k_categorical_accuracy: 0.8005
```

```python

```

### 2. Pre-defined `train_on_batch` method


This pre-defined method allows fine-controlling to the training procedure for each batch without the callbacks, which is even more flexible than `fit` method.

```python
tf.keras.backend.clear_session()

def create_model():
    model = models.Sequential()

    model.add(layers.Embedding(MAX_WORDS,7,input_length=MAX_LEN))
    model.add(layers.Conv1D(filters = 64,kernel_size = 5,activation = "relu"))
    model.add(layers.MaxPool1D(2))
    model.add(layers.Conv1D(filters = 32,kernel_size = 3,activation = "relu"))
    model.add(layers.MaxPool1D(2))
    model.add(layers.Flatten())
    model.add(layers.Dense(CAT_NUM,activation = "softmax"))
    return(model)

def compile_model(model):
    model.compile(optimizer=optimizers.Nadam(),
                loss=losses.SparseCategoricalCrossentropy(),
                metrics=[metrics.SparseCategoricalAccuracy(),metrics.SparseTopKCategoricalAccuracy(5)]) 
    return(model)
 
model = create_model()
model.summary()
model = compile_model(model)

```

```
Model: "sequential"
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
embedding (Embedding)        (None, 300, 7)            216874    
_________________________________________________________________
conv1d (Conv1D)              (None, 296, 64)           2304      
_________________________________________________________________
max_pooling1d (MaxPooling1D) (None, 148, 64)           0         
_________________________________________________________________
conv1d_1 (Conv1D)            (None, 146, 32)           6176      
_________________________________________________________________
max_pooling1d_1 (MaxPooling1 (None, 73, 32)            0         
_________________________________________________________________
flatten (Flatten)            (None, 2336)              0         
_________________________________________________________________
dense (Dense)                (None, 46)                107502    
=================================================================
Total params: 332,856
Trainable params: 332,856
Non-trainable params: 0
_________________________________________________________________
```

```python
def train_model(model,ds_train,ds_valid,epoches):

    for epoch in tf.range(1,epoches+1):
        model.reset_metrics()
        
        # Reduce learning rate at the late stage of training.
        if epoch == 5:
            model.optimizer.lr.assign(model.optimizer.lr/2.0)
            tf.print("Lowering optimizer Learning Rate...\n\n")
        
        for x, y in ds_train:
            train_result = model.train_on_batch(x, y)

        for x, y in ds_valid:
            valid_result = model.test_on_batch(x, y,reset_metrics=False)
            
        if epoch%1 ==0:
            printbar()
            tf.print("epoch = ",epoch)
            print("train:",dict(zip(model.metrics_names,train_result)))
            print("valid:",dict(zip(model.metrics_names,valid_result)))
            print("")
```

```python
train_model(model,ds_train,ds_test,10)
```

```
================================================================================13:09:19
epoch =  1
train: {'loss': 0.82411176, 'sparse_categorical_accuracy': 0.77272725, 'sparse_top_k_categorical_accuracy': 0.8636364}
valid: {'loss': 1.9265995, 'sparse_categorical_accuracy': 0.5743544, 'sparse_top_k_categorical_accuracy': 0.75779164}

================================================================================13:09:27
epoch =  2
train: {'loss': 0.6006621, 'sparse_categorical_accuracy': 0.90909094, 'sparse_top_k_categorical_accuracy': 0.95454544}
valid: {'loss': 1.844159, 'sparse_categorical_accuracy': 0.6126447, 'sparse_top_k_categorical_accuracy': 0.7920748}

================================================================================13:09:35
epoch =  3
train: {'loss': 0.36935613, 'sparse_categorical_accuracy': 0.90909094, 'sparse_top_k_categorical_accuracy': 0.95454544}
valid: {'loss': 2.163433, 'sparse_categorical_accuracy': 0.63312554, 'sparse_top_k_categorical_accuracy': 0.8045414}

================================================================================13:09:42
epoch =  4
train: {'loss': 0.2304088, 'sparse_categorical_accuracy': 0.90909094, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 2.8911984, 'sparse_categorical_accuracy': 0.6344613, 'sparse_top_k_categorical_accuracy': 0.7978629}

Lowering optimizer Learning Rate...


================================================================================13:09:51
epoch =  5
train: {'loss': 0.111194365, 'sparse_categorical_accuracy': 0.95454544, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 3.6431572, 'sparse_categorical_accuracy': 0.6295637, 'sparse_top_k_categorical_accuracy': 0.7978629}

================================================================================13:09:59
epoch =  6
train: {'loss': 0.07741702, 'sparse_categorical_accuracy': 0.95454544, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 4.074161, 'sparse_categorical_accuracy': 0.6255565, 'sparse_top_k_categorical_accuracy': 0.794301}

================================================================================13:10:07
epoch =  7
train: {'loss': 0.056113098, 'sparse_categorical_accuracy': 1.0, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 4.4461513, 'sparse_categorical_accuracy': 0.6273375, 'sparse_top_k_categorical_accuracy': 0.79652715}

================================================================================13:10:17
epoch =  8
train: {'loss': 0.043448802, 'sparse_categorical_accuracy': 1.0, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 4.7687583, 'sparse_categorical_accuracy': 0.6224399, 'sparse_top_k_categorical_accuracy': 0.79741764}

================================================================================13:10:26
epoch =  9
train: {'loss': 0.035002146, 'sparse_categorical_accuracy': 1.0, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 5.130505, 'sparse_categorical_accuracy': 0.6175423, 'sparse_top_k_categorical_accuracy': 0.794301}

================================================================================13:10:34
epoch =  10
train: {'loss': 0.028303564, 'sparse_categorical_accuracy': 1.0, 'sparse_top_k_categorical_accuracy': 1.0}
valid: {'loss': 5.4559293, 'sparse_categorical_accuracy': 0.6148709, 'sparse_top_k_categorical_accuracy': 0.7947462}
```

```python

```

### 3. Customized Training Loop


Re-compilation of the model is not required in the customized training loop, just back-propagate the iterative parameters through the optimizer according to the loss function, which gives us the highest flexibility.

```python
tf.keras.backend.clear_session()

def create_model():
    
    model = models.Sequential()

    model.add(layers.Embedding(MAX_WORDS,7,input_length=MAX_LEN))
    model.add(layers.Conv1D(filters = 64,kernel_size = 5,activation = "relu"))
    model.add(layers.MaxPool1D(2))
    model.add(layers.Conv1D(filters = 32,kernel_size = 3,activation = "relu"))
    model.add(layers.MaxPool1D(2))
    model.add(layers.Flatten())
    model.add(layers.Dense(CAT_NUM,activation = "softmax"))
    return(model)

model = create_model()
model.summary()
```

```python
optimizer = optimizers.Nadam()
loss_func = losses.SparseCategoricalCrossentropy()

train_loss = metrics.Mean(name='train_loss')
train_metric = metrics.SparseCategoricalAccuracy(name='train_accuracy')

valid_loss = metrics.Mean(name='valid_loss')
valid_metric = metrics.SparseCategoricalAccuracy(name='valid_accuracy')

@tf.function
def train_step(model, features, labels):
    with tf.GradientTape() as tape:
        predictions = model(features,training = True)
        loss = loss_func(labels, predictions)
    gradients = tape.gradient(loss, model.trainable_variables)
    optimizer.apply_gradients(zip(gradients, model.trainable_variables))

    train_loss.update_state(loss)
    train_metric.update_state(labels, predictions)
    

@tf.function
def valid_step(model, features, labels):
    predictions = model(features)
    batch_loss = loss_func(labels, predictions)
    valid_loss.update_state(batch_loss)
    valid_metric.update_state(labels, predictions)
    

def train_model(model,ds_train,ds_valid,epochs):
    for epoch in tf.range(1,epochs+1):
        
        for features, labels in ds_train:
            train_step(model,features,labels)

        for features, labels in ds_valid:
            valid_step(model,features,labels)

        logs = 'Epoch={},Loss:{},Accuracy:{},Valid Loss:{},Valid Accuracy:{}'
        
        if epoch%1 ==0:
            printbar()
            tf.print(tf.strings.format(logs,
            (epoch,train_loss.result(),train_metric.result(),valid_loss.result(),valid_metric.result())))
            tf.print("")
            
        train_loss.reset_states()
        valid_loss.reset_states()
        train_metric.reset_states()
        valid_metric.reset_states()

train_model(model,ds_train,ds_test,10)

```

```python

```

```
================================================================================13:12:03
Epoch=1,Loss:2.02051544,Accuracy:0.460253835,Valid Loss:1.75700927,Valid Accuracy:0.536954582

================================================================================13:12:09
Epoch=2,Loss:1.510795,Accuracy:0.610665798,Valid Loss:1.55349839,Valid Accuracy:0.616206586

================================================================================13:12:17
Epoch=3,Loss:1.19221532,Accuracy:0.696170092,Valid Loss:1.52315605,Valid Accuracy:0.651380241

================================================================================13:12:23
Epoch=4,Loss:0.90101546,Accuracy:0.766310394,Valid Loss:1.68327653,Valid Accuracy:0.648263574

================================================================================13:12:30
Epoch=5,Loss:0.655430496,Accuracy:0.831329346,Valid Loss:1.90872383,Valid Accuracy:0.641139805

================================================================================13:12:37
Epoch=6,Loss:0.492730737,Accuracy:0.877866864,Valid Loss:2.09966016,Valid Accuracy:0.63223511

================================================================================13:12:44
Epoch=7,Loss:0.391238362,Accuracy:0.904030263,Valid Loss:2.27431226,Valid Accuracy:0.625111282

================================================================================13:12:51
Epoch=8,Loss:0.327761739,Accuracy:0.922066331,Valid Loss:2.42568827,Valid Accuracy:0.617542326

================================================================================13:12:58
Epoch=9,Loss:0.285573095,Accuracy:0.930527747,Valid Loss:2.55942106,Valid Accuracy:0.612644672

================================================================================13:13:05
Epoch=10,Loss:0.255482465,Accuracy:0.936094403,Valid Loss:2.67789412,Valid Accuracy:0.612199485
```

```python

```

Please leave comments in the WeChat official account "Python与算法之美" (Elegance of Python and Algorithms) if you want to communicate with the author about the content. The author will try best to reply given the limited time available.

You are also welcomed to join the group chat with the other readers through replying **加群 (join group)** in the WeChat official account.

![image.png](../data/Python与算法之美logo.jpg)

```python

```

```python

```
