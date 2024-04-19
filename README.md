# 📚 Cyclistic bike-share analysis case study 

## 👋🏻 Introduction 

**Cyclistic bike-share analysis case study:** where we put the pedal to the metal in the wild world of data analysis! This is the capstone project of the Google Data Analytics Professional Certificate, where we'll ride through a structured data analysis process, covering the steps of **Ask, Prepare, Process, Analyze, Share, and Act.** So, saddle up and let's spin those data wheels! 🚲💨

## 🚲 Backgroud
Since 2016, Cyclistic has been a successful bike-share program in Chicago, growing to include 5,824 bikes at 692 stations citywide. With flexible pricing options like single-ride passes and annual memberships, Cyclistic appeals to a wide range of customers. Recent financial analysis shows that annual memberships are more profitable than one-time rides. Director Moreno plans to focus on converting occasional riders into members to drive future growth. By analyzing historical trip data, Moreno's team aims to create effective marketing strategies tailored to Cyclistic's user base.

## 🤔 Data Step
### 1. Ask 💬
**Business Task:** Our mission is to **transform casual riders into loyal members** by delving into the differences between annual members and casual riders, uncovering the motivations behind casual riders purchasing memberships, and exploring the impact of digital media on our marketing strategies.

>#### Questions will guide the future marketing program:
>  1. How do annual members and casual riders use Cyclistic bikes differently?
>  2. Why would casual riders buy Cyclistic annual memberships?
>  3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. Prepare 📑
Data Source : [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html),the data has been made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement)

Tool :<br />
  1.SQL on Google Big Query for Data Process and Analysis step.<br />
  2.Tabalue for Data visualization.

### 3. Process ⚙️
Processing step is follow as : <br />
1. Select Sampling Data - Last Data and Period <br />
2. [Data Combining](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/blob/main/01.Data%20Combining.sql) - 3 tables of Q1 2023 are combined in 1 table.[Note - A Limited local upload size is 100 MB] <br />
3. [Data Exploring](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/blob/main/02.Data%20Exploring.sql) - check the output data as list below; <br />
   <br />3.1 Check Data Schema <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/c22a222c-03a4-4190-9f39-3db92713a2f4)<br />
   <br />3.2 Check number of row <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/1c5ff628-226b-4b50-aaf7-5ed1e4c226f9)<br />
   <br />3.3 Check number of null <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/668612ac-8437-4e3f-ba78-093f3e244304)<br />
   <br />3.4 Check duplicate of row with primay-key(ride_id) <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/e53295f2-0f2a-4c6d-a165-752b43941343)<br />
   <br />3.5 Check length of ride_id and number of group length <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/903cb584-c560-4e5d-97d4-7e1f27cf3277)<br />
   <br />3.6 Check type of bikes <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/f4c0f808-bccd-4050-b5ad-701c686f660e)<br />
   <br />3.7 Check type of member <br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/ea8adca6-83cd-414d-8f4d-986594a1d455)<br />
4. [Data Cleansing](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/blob/main/03.Data%20Cleansing.sql) - Final table for analyst with nut null and 3 columns adding: duration as ride_length_in_mins, month and day_of_week column that for process in next step<br />
   ![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/90ac5137-37c2-4446-80e2-9b0f455d7a35)<br />

### 4. Data Analyzing and Sharing 🌅 <br />
1. For Data analysis is processed by SQL for Query : [Data Analyzing](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/blob/main/04.Daya%20Analyzing.sql) <br />
2. For Sharing/Visualization is done by Tableau for [Dashbaord](https://public.tableau.com/views/CyclisticProject_17134433020110/Dashboard12?:language=th-TH&:sid=&:display_count=n&:origin=viz_share_link) <br />

Absolutely! The data has been diligently organized and is now primed for analysis. I've delved into several relevant tables to gather insights, and I've jazzed up the findings with some snazzy visuals in Tableau.<br />

Our focal question is: How do annual members and casual riders use Cyclistic bikes differently?<br />
To start off on the right foot, we're taking a polite peek into their bike preferences. Let's uncover who's pedaling what, shall we?<br />
<br />![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/52de3b81-0667-4959-b58f-213891341776) <br />
So, our trusty members make up a solid 77.71% of the whole gang, leaving the casual riders with a respectable 22.29% slice of the pie. When it comes to bike preferences, it seems like everyone's loving the classic bikes, with electric bikes not too far behind. Poor docked bikes, though, seem to be the wallflowers of the party, only getting attention from our casual riders.<br />

Now, onto the juicy details! We're diving into the numbers of trips, breaking them down by the months, days of the week, and even the quirky hours of the day. Let's see when and how our riders like to hit the road!<br />
![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/c8e74fff-7391-498e-9736-00b2808a7771)<br />
<br />

In the first quarter, we noticed something interesting: at the beginning of the year, there are fewer rides compared to March. This might be because of holidays affecting how often people ride bikes.<br />

When we looked at which days people ride, we found that both members and casual riders use bikes for work. <br />

Now, let's talk about when people ride during the day. Members like to ride early in the morning (around 4 am to 8 am) and in the late afternoon (around 2 pm to 5 pm). Casual riders, on the other hand, steadily increase their rides throughout the day, peaking in the evening. <br />

From all this, it seems like members use bikes mostly for commuting during the weekdays, while casual riders enjoy riding more on weekends for fun.Now, let's see how long these rides last and if there are any differences between casual and member riders.<br />
![image](https://github.com/natsu2412/GG-Data-Analytics-Cyclistic-Case/assets/62971260/1b99dc64-0f5a-473c-87a6-16d5fc3c14d0)<br />

Here's the scoop: casual riders are like marathon runners compared to members when it comes to trip length, clocking in longer journeys on average. Members stick to a steady pace, with trip lengths staying the same throughout the day. But casual riders? They're all over the map! They go the extra mile during between 8 am and 2 pm. And hey, they're not early birds either – their trips are shorter between 5 am and 8 am. <br />

Now that we've cracked the code on how casual and member riders roll, it's time to whip up some marketing magic to woo those casual cruisers into the membership club! Here are some playful pointers: <br />

1. Weekends are where the action's at! So, why not roll out some special deals like seasonal or weekend-only memberships? It's like a VIP pass to weekend biking bliss! <br />
2. Let's hit the hotspots! Think vibrant tourist spots or trendy hangouts where casual riders love to chill. That's where we unleash our irresistible marketing campaigns to reel them in.<br />
3. Did you know casual riders are the marathoners of the bike world? They love those long rides! How about tempting them (and even our members) with discounts for longer adventures? It's a win-win for everyone chasing those biking highs! <br />
