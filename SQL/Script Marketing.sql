create database marketing;

use marketing;

set sql_safe_updates = 0;

ALTER TABLE market
ADD COLUMN ad_date date after date;

UPDATE market
SET AD_DATE = DATE_FORMAT(STR_TO_DATE(DATE_OLD, '%d/%m/%Y/'), '%Y/%m/%d')
where date_OLD like '%/%/%';

ALTER TABLE MARKET
DROP COLUMN DATE_OLD;

UPDATE MARKET
SET MONTH_NAME = 
CASE month_name
	WHEN 'Jan' THEN 'January'
    WHEN 'Feb' THEN 'February'
    WHEN 'Mar' THEN 'March'
    WHEN 'Apr' THEN 'April'
    WHEN 'May' THEN 'May'
    WHEN 'Jun' THEN 'June'
    WHEN 'Jul' THEN 'July'
    WHEN 'Aug' THEN 'August'
    WHEN 'Sep' THEN 'September'
    WHEN 'Oct' THEN 'October'
    WHEN 'Nov' THEN 'November'
    WHEN 'Dec' THEN 'December'
    else month_name
end;

UPDATE MARKET
SET day_of_week = 
CASE day_of_week
	WHEN 'Mon' THEN 'Monday'
    WHEN 'Tue' THEN 'Tuesday'
    WHEN 'Wed' THEN 'Wesdnesday'
    WHEN 'Thu' THEN 'Thursday'
    WHEN 'Fri' THEN 'Friday'
    WHEN 'Sat' THEN 'Saturday'
    WHEN 'Sun' THEN 'Sunday'
    else day_of_week
end;

SELECT DISTINCT COUNTRY
FROM MARKET
ORDER BY COUNTRY;

UPDATE MARKET
SET COUNTRY = 'Saudi Arabia'
WHERE COUNTRY = 'KSA';

ALTER TABLE `marketing`.`market` 
CHANGE COLUMN `year` `year` INT NULL DEFAULT NULL ,
CHANGE COLUMN `month` `month` INT NULL DEFAULT NULL ,
CHANGE COLUMN `month_name` `month_name` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `week` `week` INT NULL DEFAULT NULL ,
CHANGE COLUMN `post_hour` `post_hour` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `season` `season` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `is_holiday` `is_holiday` INT NULL DEFAULT NULL ,
CHANGE COLUMN `is_holiday (text)` `is_holiday (text)` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `is_weekend` `is_weekend` INT NULL DEFAULT NULL ,
CHANGE COLUMN `is_weekend (text)` `is_weekend (text)` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `country` `country` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `market_tier` `market_tier` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `account` `account` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `account_type` `account_type` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `platform` `platform` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `placement` `placement` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `funnel_stage` `funnel_stage` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `objective` `objective` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `theme` `theme` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `campaign_id` `campaign_id` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `campaign_name` `campaign_name` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `ad_group_id` `ad_group_id` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `ad_group_name` `ad_group_name` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `ad_id` `ad_id` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `ad_name` `ad_name` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `spend` `spend` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `impressions` `impressions` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `reach` `reach` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `frequency` `frequency` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `clicks` `clicks` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `conversions` `conversions` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `revenue` `revenue` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `video_views` `video_views` VARCHAR(50) NULL DEFAULT NULL ;
