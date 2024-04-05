-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/JZ7pyI
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `contacts` (
    `contact_id` INT  NOT NULL ,
    `first_name` VARCHAR  NOT NULL ,
    `last_name` VARCHAR  NOT NULL ,
    `email` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `contact_id`
    )
);

CREATE TABLE `category` (
    `category_id` VARCHAR  NOT NULL ,
    `category` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `category_id`
    )
);

CREATE TABLE `subcategory` (
    `subcategory_id` VARCHAR  NOT NULL ,
    `subcategory` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `subcategory_id`
    )
);

CREATE TABLE `campaign` (
    `cf_id` INT  NOT NULL ,
    `contact_id` INT  NOT NULL ,
    `company_name` VARCHAR  NOT NULL ,
    `description` VARCHAR  NOT NULL ,
    `goal` FLOAT  NOT NULL ,
    `pleged` FLOAT  NOT NULL ,
    `outcome` VARCHAR  NOT NULL ,
    `backers_count` INT  NOT NULL ,
    `country` VARCHAR(2)  NOT NULL ,
    `currency` VARCHAR(3)  NOT NULL ,
    `launched_date` DATE  NOT NULL ,
    `end_date` DATE  NOT NULL ,
    `category_id` VARCHAR  NOT NULL ,
    `subcategory_id` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `cf_id`
    )
);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_contact_id` FOREIGN KEY(`contact_id`)
REFERENCES `contacts` (`contact_id`);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_category_id` FOREIGN KEY(`category_id`)
REFERENCES `category` (`category_id`);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_subcategory_id` FOREIGN KEY(`subcategory_id`)
REFERENCES `subcategory` (`subcategory_id`);

