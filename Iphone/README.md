# Iphone Google Shopping Project

By *Nguyen Tri Cao Son*

Welcome to my **Iphone Google Shopping Project**. In this [project](https://github.com/nguyentricaoson/Data_project/blob/main/Iphone/iphone.ipynb), I have scraped data of Iphone 11 to Iphone 15 from [Google Shopping](https://shopping.google.com/?pli=1) via Google Shopping API provided by [SerpAPI](https://serpapi.com/).

### Project Goal
- Successfully extract data from web using API.
- Clean and validate data to turn them into a usable format.
- Analyze price data of Iphone 11 to 15.
- Build a model to predict Iphone prices.

### Project Findings
- Data from online websites are messy. Although Google did try to standardize data, a long process of cleaning must be done before the data analysis phase.
- Python regular expression has a huge potential in cleaning and processing string datatype.
- In terms of online visibility on Google Shopping, the top Iphone providers in Viet Nam are 24hStore, Hoang Ha Mobile, Viettel Store, Viettablet, Phuc Khang Mobile, TechOne Ha Noi and Bach Long Mobile.
- Iphone 11 and 12 mostly have a storage capacity of 64GB, while in version 13, 14 and 15, the majority of phones have 128GB and higher.
- Iphone 15 has a very high proportion of pro max type compared to Iphone 11-14.

### Project shortcomings
- Iphone prices change over time. I intended to build a model that could capture the downward price trend and predict any phone price given a number of days since its release and other factors, e.g. I want to predict the price of an Iphone 16 pro max 256gb right after or a year from its release. However, a large amount of time series data must be collected to achive this goal. A machine learning model would need data from each type of Iphone over a long period of time to accurately predict its price. Unfortunately, I have only collected data from a single day, leading to an unsufficient amout of data to build a model. Ideally, I think collecting data once a month for 3 or 4 years is enough.
- The model itself is not very practical, but it's been fun to build it. Learning how to scrape data from web will probably help me with my career in the future.
