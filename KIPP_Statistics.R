library(dplyr)

kipp_maps_updated <- read.csv(file='Resources/kipp_maps_updated.csv',check.names=F,stringsAsFactors = F) #import CSV

# Calculate Typical Math Means

math_growth <- read.csv(file='Resources/math_growth.csv',check.names=F,stringsAsFactors = F) #import math CSV

math_mean <- math_growth %>% summarize(Typical_Mean=mean(typical_math_fall_to_spring_growth), Actual_Mean=mean(actual_math_fall_to_spring_growth))

school_math_mean <- math_growth %>% group_by(school_name) %>% summarize(Typical_Mean=mean(typical_math_fall_to_spring_growth), Actual_Mean=mean(actual_math_fall_to_spring_growth))

grade_math_mean <- math_growth %>% group_by(grade_level_2019) %>% summarize(Typical_Mean=mean(typical_math_fall_to_spring_growth), Actual_Mean=mean(actual_math_fall_to_spring_growth))

program_math_mean <- math_growth %>% group_by(program_name) %>% summarize(Typical_Mean=mean(typical_math_fall_to_spring_growth), Actual_Mean=mean(actual_math_fall_to_spring_growth))

# Calculate Typical Reading Means

reading_growth <- read.csv(file='Resources/reading_growth.csv',check.names=F,stringsAsFactors = F) #import math CSV

reading_mean <- reading_growth %>% summarize(Typical_Mean=mean(typical_reading_fall_to_spring_growth), Actual_Mean=mean(actual_reading_fall_to_spring_growth))

school_reading_mean <- reading_growth %>% group_by(school_name) %>% summarize(Typical_Mean=mean(typical_reading_fall_to_spring_growth), Actual_Mean=mean(actual_reading_fall_to_spring_growth))

grade_reading_mean <- reading_growth %>% group_by(grade_level_2019) %>% summarize(Typical_Mean=mean(typical_reading_fall_to_spring_growth), Actual_Mean=mean(actual_reading_fall_to_spring_growth))

program_reading_mean <- reading_growth %>% group_by(program_name) %>% summarize(Typical_Mean=mean(typical_reading_fall_to_spring_growth), Actual_Mean=mean(actual_reading_fall_to_spring_growth))

# Overall Growth Mean t-test

t.test(math_growth$actual_math_fall_to_spring_growth, mu=10.93307) # math average t-test

t.test(reading_growth$actual_reading_fall_to_spring_growth, mu=8.946725) # reading average t-test

# School t-tests

A_math <- subset(math_growth, school_name =="School A")

t.test(A_math$actual_math_fall_to_spring_growth, mu=6.154930) # School A math

A_reading <- subset(reading_growth, school_name =="School A")

t.test(A_reading$actual_reading_fall_to_spring_growth, mu=4.439716) # School A reading

B_math <- subset(math_growth, school_name =="School B")

t.test(B_math$actual_math_fall_to_spring_growth, mu=5.886598) # School B math

B_reading <- subset(reading_growth, school_name =="School B")

t.test(B_reading$actual_reading_fall_to_spring_growth, mu=4.150171) # School B reading

C_math <- subset(math_growth, school_name =="School C")

t.test(C_math$actual_math_fall_to_spring_growth, mu=5.958199) # School C math

C_reading <- subset(reading_growth, school_name =="School C")

t.test(C_reading$actual_reading_fall_to_spring_growth, mu=4.106109) # School C reading

D_math <- subset(math_growth, school_name =="School D")

t.test(D_math$actual_math_fall_to_spring_growth, mu=6.364000) # School D math

D_reading <- subset(reading_growth, school_name =="School D")

t.test(D_reading$actual_reading_fall_to_spring_growth, mu=5.235060) # School D reading

E_math <- subset(math_growth, school_name =="School E")

t.test(E_math$actual_math_fall_to_spring_growth, mu=14.403194) # School E math

E_reading <- subset(reading_growth, school_name =="School E")

t.test(E_reading$actual_reading_fall_to_spring_growth, mu=11.651394) # School E reading

F_math <- subset(math_growth, school_name =="School F")

t.test(F_math$actual_math_fall_to_spring_growth, mu=16.137466) # School F math

F_reading <- subset(reading_growth, school_name =="School F")

t.test(F_reading$actual_reading_fall_to_spring_growth, mu=13.876344) # School F reading

G_math <- subset(math_growth, school_name =="School G")

t.test(G_math$actual_math_fall_to_spring_growth, mu=17.950570) # School G math

G_reading <- subset(reading_growth, school_name =="School G")

t.test(G_reading$actual_reading_fall_to_spring_growth, mu=15.835125) # School G reading

# Grade level t-tests

zero_math <- subset(math_growth, grade_level_2019 =="0")

t.test(zero_math$actual_math_fall_to_spring_growth, mu=20.293286) # Grade 0 math

zero_reading <- subset(reading_growth, grade_level_2019 =="0")

t.test(zero_reading$actual_reading_fall_to_spring_growth, mu=17.408027) # Grade 0 reading

one_math <- subset(math_growth, grade_level_2019 =="1")

t.test(one_math$actual_math_fall_to_spring_growth, mu=20.476364) # Grade 1 math

one_reading <- subset(reading_growth, grade_level_2019 =="1")

t.test(one_reading$actual_reading_fall_to_spring_growth, mu=17.512727) # Grade 1 reading

two_math <- subset(math_growth, grade_level_2019 =="2")

t.test(two_math$actual_math_fall_to_spring_growth, mu=11.566176) # Grade 2 math

two_reading <- subset(reading_growth, grade_level_2019 =="2")

t.test(two_reading$actual_reading_fall_to_spring_growth, mu=9.886029) # Grade 2 reading

three_math <- subset(math_growth, grade_level_2019 =="3")

t.test(three_math$actual_math_fall_to_spring_growth, mu=11.803109) # Grade 3 math

three_reading <- subset(reading_growth, grade_level_2019 =="3")

t.test(three_reading$actual_reading_fall_to_spring_growth, mu=9.845361) # Grade 3 reading

four_math <- subset(math_growth, grade_level_2019 =="4")

t.test(four_math$actual_math_fall_to_spring_growth, mu=10.053571) # Grade 4 math

four_reading <- subset(reading_growth, grade_level_2019 =="4")

t.test(four_reading$actual_reading_fall_to_spring_growth, mu=7.159292) # Grade 4 reading

five_math <- subset(math_growth, grade_level_2019 =="5")

t.test(five_math$actual_math_fall_to_spring_growth, mu=10.000000) # Grade 5 math

five_reading <- subset(reading_growth, grade_level_2019 =="5")

t.test(five_reading$actual_reading_fall_to_spring_growth, mu=6.501684) # Grade 5 reading

six_math <- subset(math_growth, grade_level_2019 =="6")

t.test(six_math$actual_math_fall_to_spring_growth, mu=5.204380) # Grade 6 math

six_reading <- subset(reading_growth, grade_level_2019 =="6")

t.test(six_reading$actual_reading_fall_to_spring_growth, mu=4.346863) # Grade 6 reading

seven_math <- subset(math_growth, grade_level_2019 =="7")

t.test(seven_math$actual_math_fall_to_spring_growth, mu=5.027778) # Grade 7 math

seven_reading <- subset(reading_growth, grade_level_2019 =="7")

t.test(seven_reading$actual_reading_fall_to_spring_growth, mu=3.672414) # Grade 7 reading

eight_math <- subset(math_growth, grade_level_2019 =="8")

t.test(eight_math$actual_math_fall_to_spring_growth, mu=3.852518) # Grade 8 math

eight_reading <- subset(reading_growth, grade_level_2019 =="8")

t.test(eight_reading$actual_reading_fall_to_spring_growth, mu=3.172043) # Grade 8 reading

# Program t-tests

fivezerofour_math <- subset(math_growth, program_name =="504")

t.test(fivezerofour_math$actual_math_fall_to_spring_growth, mu=5.833333) # 504 math

fivezerofour_reading <- subset(reading_growth, program_name =="504")

t.test(fivezerofour_reading$actual_reading_fall_to_spring_growth, mu=4.736842) # 504 reading

gened_math <- subset(math_growth, program_name =="GenEd")

t.test(gened_math$actual_math_fall_to_spring_growth, mu=11.495863) # GenEd math

gened_reading <- subset(reading_growth, program_name =="GenEd")

t.test(gened_reading$actual_reading_fall_to_spring_growth, mu=11.495863) # GenEd reading

gifted_math <- subset(math_growth, program_name =="Gifted")

t.test(gifted_math$actual_math_fall_to_spring_growth, mu=4.953216) # Gifted math

gifted_reading <- subset(reading_growth, program_name =="Gifted")

t.test(gifted_reading$actual_reading_fall_to_spring_growth, mu=2.940828) # Gifted reading

lep_math <- subset(math_growth, program_name =="LEP")

t.test(lep_math$actual_math_fall_to_spring_growth, mu=6.379310) # LEP math

lep_reading <- subset(reading_growth, program_name =="LEP")

t.test(lep_reading$actual_reading_fall_to_spring_growth, mu=5.862069) # LEP reading

sped_math <- subset(math_growth, program_name =="SPED")

t.test(sped_math$actual_math_fall_to_spring_growth, mu=10.652174) # SPED math

sped_reading <- subset(reading_growth, program_name =="SPED")

t.test(sped_reading$actual_reading_fall_to_spring_growth, mu=9.597484) # SPED reading

tier2_math <- subset(math_growth, program_name =="Tier 2")

t.test(tier2_math$actual_math_fall_to_spring_growth, mu=14.367089) # Tier 2 math

tier2_reading <- subset(reading_growth, program_name =="Tier 2")

t.test(tier2_reading$actual_reading_fall_to_spring_growth, mu=12.237500) # Tier 2 reading