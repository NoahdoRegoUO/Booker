-- Command for setting search path
SET SEARCH_PATH = 'ehotels_db';

-- Commands for test Hotel Chain data
INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Adfaces', 8, ARRAY['6132735652'], ARRAY['adfaces@gmail.com', 'adfacessupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Trihotels', 9, ARRAY['6132903111'], ARRAY['trihotels@gmail.com', 'trihotelssupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Macos', 8, ARRAY['4169493425'], ARRAY['macos@gmail.com', 'macossupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('JetRocks', 10, ARRAY['4160239432'], ARRAY['jetrocks@gmail.com', 'jetrockssupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Haiz', 9, ARRAY['4165924039'], ARRAY['haiz@gmail.com', 'haizsupport@gmail.com']);

-- Commands for test Central Office data
INSERT INTO centraloffice(officeid, officeaddress, chainname)
VALUES (811, '102 Bank St, Ottawa, Ontario', 'Adfaces');

INSERT INTO centraloffice(officeid, officeaddress, chainname)
VALUES (976, '88 Colonel By Dr, Ottawa, Ontario', 'Trihotels');

INSERT INTO centraloffice(officeid, officeaddress, chainname)
VALUES (888, '23 Bremner Boulevard, Toronto, Ontario', 'Macos');

INSERT INTO centraloffice(officeid, officeaddress, chainname)
VALUES (101, '78 Harbour St, Toronto, Ontario', 'JetRocks');

INSERT INTO centraloffice(officeid, officeaddress, chainname)
VALUES (902, '62 Niagara St, Toronto, Ontario', 'Haiz');

-- Commands for test Hotel data
INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00001, 'Society Hotel', '109 Bank St, Ottawa, Ontario', '1', ARRAY['6132392312'], ARRAY['adfaces00001@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00002, 'System Hotel', '208 Bank St, Ottawa, Ontario', '2', ARRAY['6132322133'], ARRAY['adfaces00002@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00003, 'Pie Hotel', '307 Bank St, Ottawa, Ontario', '3', ARRAY['6134141515'], ARRAY['adfaces00003@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00004, 'Thought Hotel', '406 Bank St, Ottawa, Ontario', '4', ARRAY['6136833132'], ARRAY['adfaces00004@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00005, 'Ladder Hotel', '505 Bank St, Ottawa, Ontario', '5', ARRAY['6132399542'], ARRAY['adfaces00005@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00006, 'Passion Hotel', '604 Bank St, Ottawa, Ontario', '1', ARRAY['6139785942'], ARRAY['adfaces00006@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00007, 'Foundation Hotel', '703 Bank St, Ottawa, Ontario', '2', ARRAY['6138538293'], ARRAY['adfaces00007@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00008, 'Cookie Hotel', '802 Bank St, Ottawa, Ontario', '3', ARRAY['6130928943'], ARRAY['adfaces00008@gmail.com'], 'Adfaces');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00009, 'Sector Hotel', '109 Colonel By Dr, Ottawa, Ontario', '4', ARRAY['6130001232'], ARRAY['trihotels00009@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00010, 'Night Hotel', '208 Colonel By Dr, Ottawa, Ontario', '5', ARRAY['6130123456'], ARRAY['trihotels00010@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00011, 'Message Hotel', '307 Colonel By Dr, Ottawa, Ontario', '1', ARRAY['6136543210'], ARRAY['trihotels00011@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00012, 'Reputation Hotel', '406 Colonel By Dr, Ottawa, Ontario', '2', ARRAY['6130123345'], ARRAY['trihotels00012@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00013, 'Thanks Hotel', '505 Colonel By Dr, Ottawa, Ontario', '3', ARRAY['6139998343'], ARRAY['trihotels00013@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00014, 'Method Hotel', '604 Colonel By Dr, Ottawa, Ontario', '4', ARRAY['6138630576'], ARRAY['trihotels00014@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00015, 'Improvement Hotel', '703 Colonel By Dr, Ottawa, Ontario', '5', ARRAY['6132522263'], ARRAY['trihotels00015@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00016, 'Priority Hotel', '802 Colonel By Dr, Ottawa, Ontario', '1', ARRAY['6130923421'], ARRAY['trihotels00016@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00017, 'Software Hotel', '901 Colonel By Dr, Ottawa, Ontario', '2', ARRAY['6137875656'], ARRAY['trihotels00017@gmail.com'], 'Trihotels');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00018, 'Fortune Hotel', '123 Bremner Boulevard, Toronto, Ontario', '3', ARRAY['4169484899'], ARRAY['macos00018@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00019, 'Instance Hotel', '223 Bremner Boulevard, Toronto, Ontario', '4', ARRAY['4162422313'], ARRAY['macos00019@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00020, 'Editor Hotel', '323 Bremner Boulevard, Toronto, Ontario', '5', ARRAY['4160494234'], ARRAY['macos00020@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00021, 'Celebration Hotel', '423 Bremner Boulevard, Toronto, Ontario', '1', ARRAY['4169009000'], ARRAY['macos00021@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00022, 'Bingus Hotel', '523 Bremner Boulevard, Toronto, Ontario', '2', ARRAY['4168008000'], ARRAY['macos00022@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00023, 'Tale Hotel', '623 Bremner Boulevard, Toronto, Ontario', '3', ARRAY['4167007000'], ARRAY['macos00023@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00024, 'Hotel Hotel', '723 Bremner Boulevard, Toronto, Ontario', '4', ARRAY['4167232323'], ARRAY['macos00024@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00025, 'Trivago Hotel', '823 Bremner Boulevard, Toronto, Ontario', '5', ARRAY['4164164166'], ARRAY['macos00025@gmail.com'], 'Macos');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00026, 'Opinion Hotel', '178 Harbour St, Toronto, Ontario', '1', ARRAY['4167477474'], ARRAY['jetrocks00026@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00027, 'Emotion Hotel', '278 Harbour St, Toronto, Ontario', '2', ARRAY['4168484848'], ARRAY['jetrocks00027@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00028, 'Never Hotel', '378 Harbour St, Toronto, Ontario', '3', ARRAY['4169499494'], ARRAY['jetrocks00028@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00029, 'Crown Hotel', '478 Harbour St, Toronto, Ontario', '4', ARRAY['4163434434'], ARRAY['jetrocks00029@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00030, 'Candy Hotel', '578 Harbour St, Toronto, Ontario', '5', ARRAY['4160400404'], ARRAY['jetrocks00030@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00031, 'Sleeping Hotel', '678 Harbour St, Toronto, Ontario', '1', ARRAY['4165454545'], ARRAY['jetrocks00031@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00032, 'City Hotel', '778 Harbour St, Toronto, Ontario', '2', ARRAY['4162321111'], ARRAY['jetrocks00032@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00033, 'Franks Hotel', '878 Harbour St, Toronto, Ontario', '3', ARRAY['4165432423'], ARRAY['jetrocks00033@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00034, 'Activity Hotel', '978 Harbour St, Toronto, Ontario', '4', ARRAY['4169012323'], ARRAY['jetrocks00034@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00035, 'Growth Hotel', '1078 Harbour St, Toronto, Ontario', '5', ARRAY['4169995533'], ARRAY['jetrocks00035@gmail.com'], 'JetRocks');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00036, 'Aware Hotel', '162 Niagara St, Toronto, Ontario', '1', ARRAY['4160123123'], ARRAY['haiz00036@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00037, 'Alive Hotel', '262 Niagara St, Toronto, Ontario', '2', ARRAY['4160416416'], ARRAY['haiz00037@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00038, 'History Hotel', '362 Niagara St, Toronto, Ontario', '3', ARRAY['4160321321'], ARRAY['haiz00038@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00039, 'Signature Hotel', '462 Niagara St, Toronto, Ontario', '4', ARRAY['4160731731'], ARRAY['haiz00039@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00040, 'Rocket Hotel', '562 Niagara St, Toronto, Ontario', '5', ARRAY['4160888888'], ARRAY['haiz00040@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00041, 'Breathing Hotel', '662 Niagara St, Toronto, Ontario', '1', ARRAY['4160999999'], ARRAY['haiz00041@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00042, 'Underwater Hotel', '762 Niagara St, Toronto, Ontario', '2', ARRAY['4160898989'], ARRAY['haiz00042@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00043, 'Warning Hotel', '862 Niagara St, Toronto, Ontario', '3', ARRAY['4160787878'], ARRAY['haiz00043@gmail.com'], 'Haiz');

INSERT INTO hotel(hotelid, hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname) 
VALUES (00044, 'Fish Hotel', '962 Niagara St, Toronto, Ontario', '4', ARRAY['4160454554'], ARRAY['haiz00044@gmail.com'], 'Haiz');