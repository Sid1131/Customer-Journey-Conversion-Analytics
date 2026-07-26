/*==============================================================================
Project : Customer Journey & Conversion Analytics
Author  : Siddharth Sinha

Description:
This SQL script analyses customer browsing behaviour and purchasing
patterns using the Online Shoppers Purchasing Intention dataset.

Objectives:
• Measure overall conversion performance
• Understand visitor behaviour
• Identify high-converting traffic sources
• Analyse engagement metrics
• Segment customers
• Support business decision making

==============================================================================*/

##Total Sessions 
select count(*) as total_sessions from online_shoppers

##Conversion Rate
select 
round(sum(case when Revenue='1' then 1 else 0 end)/count(*)*100,2) as conversion_rate 
from online_shoppes

**
