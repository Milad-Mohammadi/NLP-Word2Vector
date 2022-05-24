# NLP-Word2Vector
In this project, a Word2Vec model has been implemented for Persian language using "The Divān of Hafez" dataset.

## Pre-processing
In the preprocessing section, we optimize our dataset and remove unusable and extra items from it. This section contains steps, some of which are different in different languages. In the following, we review the steps taken in the pre-processing of this project:

1. **Read Dataset and Stop Words**:
    - [x] Read the main dataset file
    - [x] Read the stop words file

> `Stop Words`:  words that are so commonly used that they carry very little useful information.

2. **Normalize**:
    - [x] To reduce its randomness, bringing it closer to a predefined “standard”.

> Example:  Normalizes `نیم فاصله` to `نیم‌فاصله`.

3. **Tokenize**:
    - [x] Breaking the raw text into small chunks. These tokens help in understanding the context or developing the model.

Before: `الا یا ایها الساقی ادر کاسا و ناولها`<br>
After: `['الا', 'یا', 'ایها', 'الساقی', 'ادر', 'کاسا', 'و', 'ناولها']`

4. **Remove Stop Words**:
    - [x] Removing stop words such as `از` or `به`.

5. **Stemize**:
    - [x] Lowering inflection in words to their root forms.

> Example:  Stemizes `دل‌ها` to `دل`.

6. **Create Bag of words**:
    - [x] Creating an array including all words in the dataset (pre-processed till now)

7. **Convert words to sentences**:
    - [x] Converting the words array of each line to a sentence (like the original dataset).

8. **Remove duplicate words**:
    - [x] Removing duplicate words, so we will have unique words in our pre-processed dataset with size of `5773`



## Processing
After performing the preprocessing step, we have the available information optimized and in different formats (sentence, word array in each sentence and bag of words). Now we come to the part where we can do the word-embedding using many available methods.
In this project, I used `Keras`  to imlement `Skip-gram` and `Negative Sampling` to build and train my model, which I will discuss in detail below.

1. **Tokenize and build sequences**:
    - [x] Tokenize: Giving id to each word using the Keras tokenizer.
    - [x] Word2Id and Id2Word: To Create two arrays including words and word ids based on tokenized data.
    - [x] Text to Sequence: Convert the sentences to sequence to create an inverse vocabulary that includes the numeric vectors.


2. **Generate training data**:
    - [x]  Now that we have sequences including a list of integer encoded sentrences, we can create a function which iterates each word to create the target, contexts and labels.

3. **Configure the dataset for performance**:
    - [x]  To perform efficient batching for a large number of training examples for our poem dataset, we use the TensorFlow optimizer to optimize our dataset.

4. **Building the model**:
    - [x]  Defining model layers and implementing it by implementing a subclass

5. **Training the model**:
    - [x]  Defining the loss function for ease of use
    - [x]  Traning the model and computing loss and accuracy

6. **Testing and saving**:
    - [x]  Checking the similarity for some words
    - [x]  Saving the model output

> As the test output is available in the notebook file, The final Loss is `0.0228` with `99.9%` accuracy.
> Which is show in the table below.

| کلمه      |   مشابه ۱   |   مشابه ۲   |   مشابه ۳   |   مشابه ۴   |     مشابه ۵   |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
|    جام      |     حضوری   |    شکس      | دوخته‌زمن    |   مناز      |       گر    |
|    حافظ     |        می   |   بیارا     |    العین    |   ننگرد     |      سوز    |
|    دیوانه     |     لاابال   |   آشناس     |   گزارند    |   ننگرد     |     توشه  |
|   عشق     |    پاکباز   |   رمیدن     |    بنمود    |  معماییس    |    فرهادک     |
|   می     |    دیرگاه   |  گهربار     |   شرمسار    |   جاندار    |      خاتم      |



7. **Web app**:
    - [ ]  Build the Backend and load the model.
    - [ ]  Build a Frontend app to show words and similar words for a word. 
