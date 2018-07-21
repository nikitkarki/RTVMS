INSERT INTO rtvms.user_violations VALUES('500','Failure to follow traffic lights');
INSERT INTO rtvms.user_violations VALUES('500','Failure to follow road lane laws');
INSERT INTO rtvms.user_violations VALUES('500','Failure to follow No Entry or One Way sign');
INSERT INTO rtvms.user_violations VALUES('500','Failure to follow No Entry or One Way sign');
INSERT INTO rtvms.user_violations VALUES('1000','Vehicle Body Illegally Modified');
INSERT INTO rtvms.user_violations VALUES('1000','Passengers more than legally permitted');
INSERT INTO rtvms.user_violations VALUES('500','Violated Motorcycle Helmet policy');
INSERT INTO rtvms.user_violations VALUES('500','Vehicle Lights Illegallly Modified/ Not in function');
INSERT INTO rtvms.user_violations VALUES('500','Vehicle Number Plates not clear');
INSERT INTO rtvms.user_violations VALUES('500','Vehicle Bluebook not carried');
INSERT INTO rtvms.user_violations VALUES('1500','Public Vehicle not stopping at bus-stop for passengers');
INSERT INTO rtvms.user_violations VALUES('1500','Operating Vehicle physically not safe in condition');
INSERT INTO rtvms.user_violations VALUES('1000','Operating Vehicle without a License');
INSERT INTO rtvms.user_violations VALUES('1000','Operating Vehicle without a valid License');
INSERT INTO rtvms.user_violations VALUES('5000','Operating Vehicle under influence of alcohol');
INSERT INTO rtvms.user_violations VALUES('2000','Operating Vehicle in a reckless manner');
INSERT INTO rtvms.user_violations VALUES('1000','Overspeeding than the posted Speed Limit');
INSERT INTO rtvms.user_violations VALUES('1000','Valid Bluebook not in possesion of driver');

UPDATE rtvms.user_violations SET violation_type='RoadSigns' WHERE violation_id=1
UPDATE rtvms.user_violations SET violation_type='RoadSigns' WHERE violation_id=2
UPDATE rtvms.user_violations SET violation_type='RoadSigns' WHERE violation_id=3
UPDATE rtvms.user_violations SET violation_type='RoadSigns' WHERE violation_id=4
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=5
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=6
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=7
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=8
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=9
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=10
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=11
UPDATE rtvms.user_violations SET violation_type='Vehicle' WHERE violation_id=12
UPDATE rtvms.user_violations SET violation_type='Driver' WHERE violation_id=13
UPDATE rtvms.user_violations SET violation_type='Driver' WHERE violation_id=14
UPDATE rtvms.user_violations SET violation_type='Driver' WHERE violation_id=15
UPDATE rtvms.user_violations SET violation_type='Driver' WHERE violation_id=16
UPDATE rtvms.user_violations SET violation_type='Driver' WHERE violation_id=17
UPDATE rtvms.user_violations SET violation_type='Driver' WHERE violation_id=18