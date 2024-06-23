-- Databricks notebook source
-- MAGIC %md
-- MAGIC 1.Creating a New database
-- MAGIC
-- MAGIC 2.Create 5 tables with 6 to 7 columns each
-- MAGIC
-- MAGIC 3.Insert 20 rows  into those tables 

-- COMMAND ----------


---creating a database
DROP DATABASE IF EXISTS ipl;
create database ipl;

-- COMMAND ----------

---creating tables
drop table if exists ipl.teams;
create table ipl.teams(team_id int,state_name string,ipl_team_name STRING,team_homeground_name string,team_city string);

drop table if exists ipl.players;
create table ipl.players(player_id int ,player_name string,team_name string,age int,country string,play_type string,
highest_batting_score float,batting_average float,bowling_economy float,wickets_taken int);

drop table if exists ipl.player_salary;
create table ipl.player_salary(player_id int,player_name string,player_salary float);

drop table if exists ipl.sponsors;
create table ipl.sponsors(sponsor_id int,sponsor_name string,sponsor_logo string,team_name string);

-- COMMAND ----------

INSERT into ipl.teams values(1,'Telanagana','Sunrisers Hyderabad','Rajiv Gandhi International Stadium','Hyderabad');
INSERT into ipl.teams values(2,'Karnataka','Royal Challengers Bengaluru','Chinnaswamy Stadium','Bengaluru');
INSERT into ipl.teams values(3,'Tamil Nadu','Chennai Super Kings','Chepauk Stadium','Chennai');
INSERT into ipl.teams values(4,'Maharastra','Mumbai Indians','Wankhede Stadium','Mumbai');
INSERT into ipl.teams values(5,'Gujarat','Gujarat Titans','Narendra Modi International Stadium','Gujarat');
INSERT into ipl.teams values(6,'Delhi','Delhi Capitals','Feroze Shah Kotla Stadium','Delhi');
INSERT into ipl.teams values(7,'West Bengal','Kolkata Knight Riders ','Eden Gardens  Stadium','Kolkata');
INSERT into ipl.teams values(8,'Punjab','Punjab Kings','Dharmasala Stadium','Punjab');
INSERT into ipl.teams values(9,'Rajasthan','Rajasthan Royals','Maharaja Stadium','Jaipur');
INSERT into ipl.teams values(10,'UttarPradesh','Lucknow Super Giants','Atal Bihari Vajpayee Stadium','Lucknow');

-- COMMAND ----------

-- MAGIC %python
-- MAGIC # Python Query for inserting the data
-- MAGIC # start_player_id = 100
-- MAGIC # end_player_id = 111
-- MAGIC # player_team='Lucknow Super Giants'
-- MAGIC
-- MAGIC # for player_id in range(start_player_id, end_player_id+1):
-- MAGIC #     insert_statement = f"INSERT INTO ipl.players VALUES ({player_id}, 'Abhishek Sharma', {player_team}, 23, 'INDIA', 'Batting All Rounder', 75, 25.48, 8.64, 11);"
-- MAGIC #     print(insert_statement)

-- COMMAND ----------

---Inserting Sunriser Hyderabad players 
INSERT INTO ipl.players VALUES (1, 'Abhishek Sharma', 'Sunrisers Hyderabad', 23, 'INDIA', 'All Rounder', 75, 133.37, 8.64, 11);
INSERT INTO ipl.players VALUES (2, 'Travis Head', 'Sunrisers Hyderabad', 30, 'AUSTRALIA', 'Batsman', 75, 130.25, NULL, NULL);
INSERT INTO ipl.players VALUES (3, 'Aiden Markram', 'Sunrisers Hyderabad', 29, 'SOUTH AFRICA', 'All Rounder', 68, 132.69, 8.27, 11);
INSERT INTO ipl.players VALUES (4, 'Rahul Tripathi', 'Sunrisers Hyderabad', 33, 'INDIA', 'Batsman', 93, 136.68, NULL, NULL);
INSERT INTO ipl.players VALUES (5, 'Heinrich Klaasen', 'Sunrisers Hyderabad', 32, 'SOUTH AFRICA', 'Wicket Keeper Batsman', 104, 152.92, NULL, NULL);
INSERT INTO ipl.players VALUES (6, 'Abdul Samad', 'Sunrisers Hyderabad', 22, 'INDIA', 'All Rounder', 33, 128.92, 9.27, 2);
INSERT INTO ipl.players VALUES (7, 'Pat Cummins', 'Sunrisers Hyderabad', 30, 'AUSTRALIA', 'Fast Bowler', 66, 143.51, 8.54, 46);
INSERT INTO ipl.players VALUES (8, 'Marco Jansen', 'Sunrisers Hyderabad', 23, 'SOUTH AFRICA', 'All Rounder', 43, 133.04, 8.53, 13);
INSERT INTO ipl.players VALUES (9, 'Bhuvneshwar Kumar', 'Sunrisers Hyderabad', 34, 'INDIA', 'Fast Bowler', 24, 110.16, 7.39, 170);
INSERT INTO ipl.players VALUES (10, 'Mayank Markande', 'Sunrisers Hyderabad', 26, 'INDIA', 'Spin Bowler', 16, 88.89, 8.07, 20);
INSERT INTO ipl.players VALUES (11, 'T Natarajan', 'Sunrisers Hyderabad', 32, 'INDIA', 'Fast Bowler', 10, 125.00, 8.36, 36);

-- COMMAND ----------

---Inserting Mumbai Indians players
INSERT INTO ipl.players VALUES (12, 'Rohit Sharma', 'Mumbai Indians', 36, 'INDIA', 'Batsman', 109, 129.68, NULL, NULL);
INSERT INTO ipl.players VALUES (13, 'Ishan Kishan', 'Mumbai Indians', 25, 'INDIA', 'Wicket Keeper Batsman', 99, 131.56, NULL, NULL);
INSERT INTO ipl.players VALUES (14, 'Tilak Varma', 'Mumbai Indians', 21, 'INDIA', 'Batsman', 84, 139.19, NULL, NULL);
INSERT INTO ipl.players VALUES (15, 'Suryakumar Yadav', 'Mumbai Indians', 33, 'INDIA', 'Batsman', 103, 173.68, NULL, NULL);
INSERT INTO ipl.players VALUES (16, 'Hardik Pandya', 'Mumbai Indians', 30, 'INDIA', 'All Rounder', 91, 142.87, 8.75, 50);
INSERT INTO ipl.players VALUES (17, 'Tim David', 'Mumbai Indians', 28, 'AUSTRALIA', 'All Rounder', 46, 157.36, NULL, NULL);
INSERT INTO ipl.players VALUES (18, 'Naman Dhir', 'Mumbai Indians', 23, 'INDIA', 'Batsman', NULL, NULL, NULL, NULL);
INSERT INTO ipl.players VALUES (19, 'Gerald Coetzee', 'Mumbai Indians', 23, 'SOUTH AFRICA', 'Fast Bowler', 33, 139.13, 9.94, 8);
INSERT INTO ipl.players VALUES (20, 'Romario Shepherd', 'Mumbai Indians', 28, 'WEST INDIES', 'Fast Bowler', 44, 141.02, 10.34, 15);
INSERT INTO ipl.players VALUES (21, 'Jasprit Bumrah', 'Mumbai Indians', 30, 'INDIA', 'Fast Bowler', 10, 82.76, 7.39, 145);
INSERT INTO ipl.players VALUES (22, 'Luke Wood', 'Mumbai Indians', 28, 'ENGLAND', 'Fast Bowler', 9, 100.00, 15.64, 1);

-- COMMAND ----------

--Inserting Delhi Capitals players
INSERT INTO ipl.players VALUES (23, 'Prithvi Shaw', 'Delhi Capitals', 24, 'INDIA', 'Batsman', 99, 147.62, NULL, NULL);
INSERT INTO ipl.players VALUES (24, 'Rishabh Pant', 'Delhi Capitals', 26, 'INDIA', 'Wicket Keeper Batsman', 128, 147.97, NULL, NULL);
INSERT INTO ipl.players VALUES (25, 'David Warner', 'Delhi Capitals', 37, 'AUSTRALIA', 'Batsman', 126, 140.81, NULL, NULL);
INSERT INTO ipl.players VALUES (26, 'Jake Fraser-McGurk', 'Delhi Capitals', 21, 'AUSTRALIA', 'Batsman', NULL, NULL, NULL, NULL);
INSERT INTO ipl.players VALUES (27, 'Abhishek Porel', 'Delhi Capitals', 21, 'INDIA', 'Batsman', 20, 100.00, NULL, NULL);
INSERT INTO ipl.players VALUES (28, 'Axar Patel', 'Delhi Capitals', 30, 'INDIA', 'All Rounder', 64, 130.75, 7.27, 54);
INSERT INTO ipl.players VALUES (29, 'Tristan Stubbs', 'Delhi Capitals', 23, 'SOUTH AFRICA', 'Wicket Keeper Batsman', 27, 112.24, NULL, NULL);
INSERT INTO ipl.players VALUES (30, 'Kuldeep Yadav', 'Delhi Capitals', 29, 'INDIA', 'Spin Bowler', 16, 77.97, 8.19, 61);
INSERT INTO ipl.players VALUES (31, 'Ishant Sharma', 'Delhi Capitals', 35, 'INDIA', 'Fast Bowler', 10, 83.33, 8.12, 84);
INSERT INTO ipl.players VALUES (32, 'Anrich Nortje', 'Delhi Capitals', 30, 'SOUTH AFRICA', 'Fast Bowler', 8, 72.73, 8.30, 52);
INSERT INTO ipl.players VALUES (33, 'Mukesh Sharma', 'Delhi Capitals', 23, 'INDIA', 'Fast Bowler', NULL, NULL, NULL, NULL);

-- COMMAND ----------

--Inserting Chennai players
INSERT INTO ipl.players VALUES (34, 'Ajinkya Rahane', 'Chennai Super Kings', 35, 'INDIA', 'Batsman', 105, 120.68, NULL, NULL);
INSERT INTO ipl.players VALUES (35, 'Rachin Ravindra', 'Chennai Super Kings', 23, 'NEW ZEALAND', 'Batsman', NULL, NULL, NULL, NULL);
INSERT INTO ipl.players VALUES (36, 'Ruturaj Gaikwad', 'Chennai Super Kings', 26, 'INDIA', 'Batsman', 101, 132.69, NULL, NULL);
INSERT INTO ipl.players VALUES (37, 'Shivam Dube', 'Chennai Super Kings', 30, 'INDIA', 'All Rounder', 95, 141.13, 8.92, 4);
INSERT INTO ipl.players VALUES (38, 'Daryl Mitchell', 'Chennai Super Kings', 32, 'NEW ZEALAND', 'Batsman', 66, 114.86, NULL, NULL);
INSERT INTO ipl.players VALUES (39, 'MS Dhoni', 'Chennai Super Kings', 42, 'INDIA', 'Wicket Keeper Batsman', 84, 135.54, NULL, NULL);
INSERT INTO ipl.players VALUES (40, 'Ravindra Jadeja', 'Chennai Super Kings', 35, 'INDIA', 'All Rounder', 62, 128.91, 7.61, 152);
INSERT INTO ipl.players VALUES (41, 'Deepak Chahar', 'Chennai Super Kings', 31, 'INDIA', 'Fast Bowler', 39, 124.19, 7.94, 59);
INSERT INTO ipl.players VALUES (42, 'Mitchell Santner', 'Chennai Super Kings', 32, 'NEW ZEALAND', 'Spin Bowler', 45, 118.42, 7.00, 16);
INSERT INTO ipl.players VALUES (43, 'Shardul Thakur', 'Chennai Super Kings', 32, 'INDIA', 'Fast Bowler', 29, 151.08, 9.13, 85);
INSERT INTO ipl.players VALUES (44, 'Maheesh Pathirana', 'Chennai Super Kings', 21, 'SRI LANKA', 'Fast Bowler', 15, 107.14, 8.38, 26);

-- COMMAND ----------

--Inserting RCB
INSERT INTO ipl.players VALUES (45, 'Virat Kohli', 'Royal Challengers Bengaluru', 35, 'INDIA', 'Batsman', 122, 129.61, NULL, NULL);
INSERT INTO ipl.players VALUES (46, 'Faf Du Plessis', 'Royal Challengers Bengaluru', 39, 'SOUTH AFRICA', 'Batsman', 96, 134.21, NULL, NULL);
INSERT INTO ipl.players VALUES (47, 'Cameron Green', 'Royal Challengers Bengaluru', 24, 'AUSTRALIA', 'All Rounder', 64, 160.20, 9.17, 6);
INSERT INTO ipl.players VALUES (48, 'Glenn Maxwell', 'Royal Challengers Bengaluru', 35, 'AUSTRALIA', 'Batsman', 106, 153.88, NULL, NULL);
INSERT INTO ipl.players VALUES (49, 'Rajat Patidar', 'Royal Challengers Bengaluru', 30, 'INDIA', 'Batsman', 112, 131.07, NULL, NULL);
INSERT INTO ipl.players VALUES (50, 'Dinesh Karthik', 'Royal Challengers Bengaluru', 38, 'INDIA', 'Wicket Keeper Batsman', 97, 132.00, NULL, NULL);
INSERT INTO ipl.players VALUES (51, 'Mahipal Lomror', 'Royal Challengers Bengaluru', 23, 'INDIA', 'Batsman', 47, 133.97, NULL, NULL);
INSERT INTO ipl.players VALUES (52, 'Lockie Ferguson', 'Royal Challengers Bengaluru', 32, 'NEW ZEALAND', 'Fast Bowler', 18, 120.00, 8.43, 36);
INSERT INTO ipl.players VALUES (53, 'Yash Dayal', 'Royal Challengers Bengaluru', 25, 'INDIA', 'Fast Bowler', NULL, NULL, 9.25, 11);
INSERT INTO ipl.players VALUES (54, 'Mayank Dagar', 'Royal Challengers Bengaluru', 27, 'INDIA', 'Spin Bowler', NULL, NULL, 7.75, 8);
INSERT INTO ipl.players VALUES (55, 'Alzarri Joseph', 'Royal Challengers Bengaluru', 27, 'WEST INDIES', 'Fast Bowler', 15, 78.94, 8.66, 26);

-- COMMAND ----------

INSERT INTO ipl.players VALUES (56, 'Shubman Gill', 'Gujarat Titans', 24, 'INDIA', 'Batsman', 104, 131.85, NULL, NULL);
INSERT INTO ipl.players VALUES (57, 'Wriddhiman Saha', 'Gujarat Titans', 38, 'INDIA', 'Wicket Keeper Batsman', 115, 128.69, NULL, NULL);
INSERT INTO ipl.players VALUES (58, 'Krunal Pandya', 'Gujarat Titans', 32, 'INDIA', 'All Rounder', 86, 129.24, 7.45, 61);
INSERT INTO ipl.players VALUES (59, 'Kane Williamson', 'Gujarat Titans', 33, 'NEW ZEALAND', 'Batsman', 89, 123.84, NULL, NULL);
INSERT INTO ipl.players VALUES (60, 'David Miller', 'Gujarat Titans', 34, 'SOUTH AFRICA', 'Batsman', 101, 138.36, NULL, NULL);
INSERT INTO ipl.players VALUES (61, 'Sai Sudharsan', 'Gujarat Titans', 22, 'INDIA', 'Batsman', 65, 137.03, NULL, NULL);
INSERT INTO ipl.players VALUES (62, 'Rahul Tewatia', 'Gujarat Titans', 30, 'INDIA', 'All Rounder', 53, 129.29, 7.72, 38);
INSERT INTO ipl.players VALUES (63, 'Mohit Sharma', 'Gujarat Titans', 35, 'INDIA', 'Fast Bowler', 30, 101.35, 8.41, 114);
INSERT INTO ipl.players VALUES (64, 'Umesh Yadav', 'Gujarat Titans', 36, 'INDIA', 'Fast Bowler', 26, 118.18, 8.50, 136);
INSERT INTO ipl.players VALUES (65, 'Spencer Johnson', 'Gujarat Titans', 27, 'AUSTRALIA', 'Fast Bowler', NULL, NULL, NULL, NULL);
INSERT INTO ipl.players VALUES (66, 'Rashid Khan', 'Gujarat Titans', 25, 'AFGHANISTAN', 'Spin Bowler', 34, 137.59, 6.55, 139);


-- COMMAND ----------

INSERT INTO ipl.players VALUES (67, 'Phil Salt', 'Kolkata Knight Riders', 27, 'ENGLAND', 'Wicket Keeper Batsman', 59, 175.00, NULL, NULL);
INSERT INTO ipl.players VALUES (68, 'Sunil Narine', 'Kolkata Knight Riders', 36, 'WEST INDIES', 'All Rounder', 75, 147.52, 6.78, 163);
INSERT INTO ipl.players VALUES (69, 'Shreyas Iyer', 'Kolkata Knight Riders', 29, 'INDIA', 'Batsman', 96, 125.38, NULL, NULL);
INSERT INTO ipl.players VALUES (70, 'Venkatesh Iyer', 'Kolkata Knight Riders', 28, 'INDIA', 'Batsman', 104, 131.60, NULL, NULL);
INSERT INTO ipl.players VALUES (71, 'Andre Russell', 'Kolkata Knight Riders', 36, 'WEST INDIES', 'All Rounder', 88, 177.88, 9.18, 99);
INSERT INTO ipl.players VALUES (72, 'Rinku Singh', 'Kolkata Knight Riders', 26, 'INDIA', 'Batsman', 67, 139.27, NULL, NULL);
INSERT INTO ipl.players VALUES (73, 'Srikar Bharat', 'Kolkata Knight Riders', 30, 'INDIA', 'Wicket Keeper Batsman', 78, 123.91, NULL, NULL);
INSERT INTO ipl.players VALUES (74, 'Mitchell Starc', 'Kolkata Knight Riders', 34, 'AUSTRALIA', 'Fast Bowler', 29, 119.83, 7.16, 41);
INSERT INTO ipl.players VALUES (75, 'Varun Chakravarthy', 'Kolkata Knight Riders', 32, 'INDIA', 'Spin Bowler', 40, 111.11, 6.95, 64);
INSERT INTO ipl.players VALUES (76, 'Harshit Rana', 'Kolkata Knight Riders', 22, 'INDIA', 'Fast Bowler', 5, 103.44, 8.66, 7);
INSERT INTO ipl.players VALUES (77, 'Nitish Rana', 'Kolkata Knight Riders', 30, 'INDIA', 'Batsman', 87, 136.58, NULL, NULL);

-- COMMAND ----------

INSERT INTO ipl.players VALUES (78, 'Arshdeep Singh', 'Punjab Kings', 23, 'INDIA', 'Fast Bowler', 75, 25.48, 8.64, 11);
INSERT INTO ipl.players VALUES (79, 'Shikhar Dhawan', 'Punjab Kings', 35, 'INDIA', 'Batsman', 92, 126.87, 0, 0);
INSERT INTO ipl.players VALUES (80, 'Harpreet Brar', 'Punjab Kings', 25, 'INDIA', 'Spin Bowler', 20, 147.06, 7.37, 12);
INSERT INTO ipl.players VALUES (81, 'Sam Curran', 'Punjab Kings', 24, 'ENGLAND', 'All Rounder', 95, 142.86, 8.19, 32);
INSERT INTO ipl.players VALUES (82, 'Johnny Bairstow', 'Punjab Kings', 31, 'ENGLAND', 'Wicket Keeper Batsman', 97, 132.31, 0, 0);
INSERT INTO ipl.players VALUES (83, 'Shashank Singh', 'Punjab Kings', 29, 'INDIA', 'Batsman', 67, 126.42, 0, 0);
INSERT INTO ipl.players VALUES (84, 'Prabhsimran Singh', 'Punjab Kings', 23, 'INDIA', 'Batsman', 55, 134.15, 0, 0);
INSERT INTO ipl.players VALUES (85, 'Jitesh Sharma', 'Punjab Kings', 28, 'INDIA', 'Batsman', 40, 120.83, 0, 0);
INSERT INTO ipl.players VALUES (86, 'Harshal Patel', 'Punjab Kings', 31, 'INDIA', 'Fast Bowler', 53, 120.41, 8.37, 89);
INSERT INTO ipl.players VALUES (87, 'Rahul Chahar', 'Punjab Kings', 22, 'INDIA', 'Spin Bowler', 22, 76.92, 7.84, 52);
INSERT INTO ipl.players VALUES (88, 'Rilee Rossouw', 'Punjab Kings', 33, 'SOUTH AFRICA', 'Batsman', 74, 134.55, 0, 0);

-- COMMAND ----------


INSERT INTO ipl.players VALUES (89, 'Yashaswi Jaiswal', 'Rajasthan Royals', 19, 'INDIA', 'Batsman', 88, 132.65, 0, 0);
INSERT INTO ipl.players VALUES (90, 'Riyan Parag', 'Rajasthan Royals', 20, 'INDIA', 'Batsman', 50, 124.18, 0, 0);
INSERT INTO ipl.players VALUES (91, 'Sanju Samson', 'Rajasthan Royals', 27, 'INDIA', 'Wicket Keeper Batsman', 119, 134.59, 0, 0);
INSERT INTO ipl.players VALUES (92, 'Dhruv Jurel', 'Rajasthan Royals', 20, 'INDIA', 'Batsman', 20, 100.00, 0, 0);
INSERT INTO ipl.players VALUES (93, 'Sandeep Sharma', 'Rajasthan Royals', 28, 'INDIA', 'Fast Bowler', 25, 108.69, 7.91, 89);
INSERT INTO ipl.players VALUES (94, 'Trent Boult', 'Rajasthan Royals', 31, 'NEW ZEALAND', 'Fast Bowler', 30, 118.18, 8.40, 67);
INSERT INTO ipl.players VALUES (95, 'Jos Butler', 'Rajasthan Royals', 31, 'ENGLAND', 'Batsman', 124, 139.36, 0, 0);
INSERT INTO ipl.players VALUES (96, 'Yuzvendra Chahal', 'Rajasthan Royals', 31, 'INDIA', 'Spin Bowler', 22, 76.92, 8.27, 103);
INSERT INTO ipl.players VALUES (97, 'Ravichandran Ashwin', 'Rajasthan Royals', 37, 'INDIA', 'Spin Bowler', 23, 76.66, 6.94, 150);
INSERT INTO ipl.players VALUES (98, 'Shimron Hetmyer', 'Rajasthan Royals', 25, 'WEST INDIES', 'Batsman', 78, 130.12, 0, 0);
INSERT INTO ipl.players VALUES (99, 'Rovman Powell', 'Rajasthan Royals', 28, 'WEST INDIES', 'All Rounder', 50, 127.39, 7.60, 25);

-- COMMAND ----------

INSERT INTO ipl.players VALUES (100, 'K L Rahul', 'Lucknow Super Giants', 31, 'INDIA', 'Wicket Keeper Batsman', 132, 136.38, NULL, NULL);
INSERT INTO ipl.players VALUES (101, 'Marcus Stoinis', 'Lucknow Super Giants', 34, 'AUSTRALIA', 'All Rounder', 65, 137.45, 9.37, 34);
INSERT INTO ipl.players VALUES (102, 'Devdutt Padikkal', 'Lucknow Super Giants', 23, 'INDIA', 'Batsman', 101, 124.38, NULL, NULL);
INSERT INTO ipl.players VALUES (103, 'Nicholas Pooran', 'Lucknow Super Giants', 28, 'WEST INDIES', 'Batsman', 77, 151.24, NULL, NULL);
INSERT INTO ipl.players VALUES (104, 'Quinton De Kock', 'Lucknow Super Giants', 31, 'SOUTH AFRICA', 'Batsman', 140, 134.42, NULL, NULL);
INSERT INTO ipl.players VALUES (105, 'Ravi Bishnoi', 'Lucknow Super Giants', 23, 'INDIA', 'Spin Bowler', NULL, NULL, 7.53, 49);
INSERT INTO ipl.players VALUES (106, 'Deepak Hooda', 'Lucknow Super Giants', 28, 'INDIA', 'Batsman', 64, 132.05, NULL, NULL);
INSERT INTO ipl.players VALUES (107, 'Ayush Badoni', 'Lucknow Super Giants', 24, 'INDIA', 'Batsman', 54, 123.28, NULL, NULL);
INSERT INTO ipl.players VALUES (108, 'Matt Henry', 'Lucknow Super Giants', 32, 'NEW ZEALAND', 'Fast Bowler', NULL, NULL, 9.97, 9);
INSERT INTO ipl.players VALUES (109, 'Yash Thakur', 'Lucknow Super Giants', 24, 'INDIA', 'Fast Bowler', NULL, NULL, 9.19, 10);
INSERT INTO ipl.players VALUES (110, 'Mayank Yadav', 'Lucknow Super Giants', 21, 'INDIA', 'Fast Bowler', NULL, NULL, 8.54, 8);
INSERT INTO ipl.players VALUES (111, 'Krunal Pandya', 'Lucknow Super Giants', 33, 'INDIA', 'All Rounder', 86, 130.52, 7.35, 61);


-- COMMAND ----------

select * from ipl.players

-- COMMAND ----------

select *,round(avg(age) OVER (partition by  country),2) as avg_age from ipl.players 
--group by team_name;

-- COMMAND ----------

select * from ipl.teams;
