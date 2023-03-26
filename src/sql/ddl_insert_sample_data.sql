-- Command for setting search path
SET SEARCH_PATH = 'ehotels_db';

-- Commands for test Hotel Chain data
INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Adfaces', 0, ARRAY['6132735652'], ARRAY['adfaces@gmail.com', 'adfacessupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Trihotels', 0, ARRAY['6132903111'], ARRAY['trihotels@gmail.com', 'trihotelssupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Macos', 0, ARRAY['4169493425'], ARRAY['macos@gmail.com', 'macossupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('JetRocks', 0, ARRAY['4160239432'], ARRAY['jetrocks@gmail.com', 'jetrockssupport@gmail.com']);

INSERT INTO hotelchain(chainname, numberhotels, phonenumbers, contactemails) 
VALUES ('Haiz', 0, ARRAY['4165924039'], ARRAY['haiz@gmail.com', 'haizsupport@gmail.com']);

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

-- COMMANDS FOR TEST ROOM DATA
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (1, 59.63, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 1);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (2, 124.21, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 1);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (3, 141.17, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 
3, 1);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (4, 207.8, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 1);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (5, 313.2, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 1);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (6, 82.18, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 2);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (7, 100.96, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 2);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (8, 166.97, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 2);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (9, 232.38, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 2);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (10, 303.06, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['Slight Damage'], 5, 2);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (11, 80.06, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 3);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (12, 124.84, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 3);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (13, 112.47, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 3);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (14, 242.51, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 3);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (15, 323.37, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 3);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (16, 58.67, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 4);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (17, 143.53, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 4);      
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (18, 110.17, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['Slight 
Damage'], 3, 4);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (19, 243.23, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 4);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (20, 340.26, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 4);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (21, 87.27, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 5);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (22, 110.6, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 5);       
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (23, 148.91, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['Slight Damage'], 3, 5);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (24, 214.9, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 5);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (25, 319.05, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['Slight Damage'], 5, 5);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (26, 88.1, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 6);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (27, 113.97, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 6);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (28, 145.1, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 6);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (29, 218.1, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 6);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (30, 339.99, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 6);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (31, 50.73, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 7);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (32, 109.78, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['Slight Damage'], 2, 7);  
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (33, 195.52, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 7);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (34, 213.23, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['Slight Damage'], 4, 7);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (35, 347.15, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 7);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (36, 66.77, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 8);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (37, 117.42, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 8);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (38, 179.51, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 8);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (39, 210.69, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 8);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (40, 315.26, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 8);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (41, 59.79, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 9);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (42, 112.14, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 9);      
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (43, 128.0, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 
3, 9);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (44, 236.47, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 9);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (45, 323.22, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 9);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (46, 94.89, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 10);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (47, 133.62, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 10);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (48, 190.62, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 10);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (49, 205.07, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 10);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (50, 335.3, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 10);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (51, 81.18, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 11);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (52, 140.04, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 11);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (53, 192.15, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 11);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (54, 231.28, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 11);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (55, 347.35, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 11);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (56, 82.94, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 12);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (57, 116.74, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['Slight Damage'], 2, 12); 
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (58, 173.19, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 12);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (59, 216.93, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 12);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (60, 349.7, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['Slight Damage'], 5, 12);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (61, 54.61, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 13);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (62, 136.89, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 13);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (63, 188.22, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 13);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (64, 221.43, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['Slight Damage'], 4, 13);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (65, 307.12, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 13);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (66, 62.06, false, ARRAY['None'], false, 'Sea', ARRAY['Slight Damage'], 1, 14);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (67, 149.64, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 14);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (68, 168.34, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 14);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (69, 246.84, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 14);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (70, 313.09, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 14);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (71, 66.38, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 15);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (72, 146.79, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 15);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (73, 111.92, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 15);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (74, 222.92, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 15);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (75, 317.07, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 15);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (76, 88.33, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 16);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (77, 123.59, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 16);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (78, 185.39, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 16);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (79, 207.09, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 16);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (80, 301.13, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 16);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (81, 63.69, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 17);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (82, 145.89, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 17);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (83, 113.48, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 17);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (84, 205.85, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 17);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (85, 342.7, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 17);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (86, 73.72, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 18);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (87, 130.99, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 18);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (88, 158.12, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 18);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (89, 204.4, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 18);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (90, 305.8, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 18);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (91, 50.61, false, ARRAY['None'], false, 'Sea', ARRAY['Slight Damage'], 1, 19);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (92, 103.08, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 19);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (93, 190.42, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 19);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (94, 230.41, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 19);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (95, 336.53, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 19);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (96, 71.87, false, ARRAY['None'], false, 'Mountain', ARRAY['Slight Damage'], 1, 20);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (97, 126.14, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 20);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (98, 116.98, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 20);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (99, 249.59, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 20);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (100, 315.2, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 20);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (101, 57.29, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 21);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (102, 125.5, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 21);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (103, 180.1, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 21);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (104, 236.5, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['Slight Damage'], 4, 21);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (105, 308.55, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 21);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (106, 54.11, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 22);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (107, 116.05, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 22);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (108, 195.99, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
22);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (109, 234.08, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 22);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (110, 310.32, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['Slight Damage'], 5, 22);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (111, 76.71, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 23);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (112, 129.04, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 23);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (113, 100.17, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
23);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (114, 223.75, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 23);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (115, 334.81, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 23);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (116, 81.12, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 24);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (117, 124.12, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 24);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (118, 123.42, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
24);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (119, 224.85, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['None'], 4, 24);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (120, 304.88, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 24);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (121, 69.99, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 25);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (122, 144.5, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 25);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (123, 111.58, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['Slight Damage'], 3, 25);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (124, 231.27, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 25);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (125, 345.74, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 25);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (126, 67.2, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 26);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (127, 123.29, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 26);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (128, 100.39, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
26);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (129, 222.41, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['Slight Damage'], 4, 26);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (130, 300.85, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 26);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (131, 93.84, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 27);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (132, 146.24, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['Slight Damage'], 2, 27);INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (133, 157.68, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
27);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (134, 232.71, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['None'], 4, 27);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (135, 313.25, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 27);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (136, 71.8, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 28);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (137, 132.54, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['Slight Damage'], 2, 28);INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (138, 145.36, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 28);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (139, 223.86, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 28);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (140, 313.09, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 28);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (141, 88.58, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 29);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (142, 148.96, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 29);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (143, 198.61, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 29);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (144, 235.18, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['None'], 4, 29);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (145, 327.45, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 29);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (146, 92.52, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 30);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (147, 121.84, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['Slight Damage'], 2, 30);INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (148, 152.94, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 30);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (149, 209.47, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 30);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (150, 315.95, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 30);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (151, 86.23, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 31);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (152, 102.77, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 31);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (153, 192.56, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['Slight Damage'], 3, 31);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (154, 227.49, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 31);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (155, 314.76, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 31);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (156, 75.51, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 32);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (157, 131.18, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 32);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (158, 173.59, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
32);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (159, 210.99, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['Slight Damage'], 4, 32);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (160, 337.05, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 32);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (161, 77.54, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 33);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (162, 103.56, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 33);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (163, 130.42, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 33);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (164, 220.03, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 33);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (165, 339.73, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 33);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (166, 55.01, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 34);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (167, 101.81, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 34);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (168, 191.5, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 34);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (169, 233.27, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 34);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (170, 302.54, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 34);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (171, 78.44, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 35);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (172, 139.55, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 35);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (173, 160.52, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
35);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (174, 221.83, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['None'], 4, 35);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (175, 308.54, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['Slight Damage'], 5, 35);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (176, 58.76, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 36);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (177, 132.68, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 36);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (178, 148.92, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
36);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (179, 232.8, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 36);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (180, 301.14, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 36);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (181, 70.24, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 37);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (182, 142.5, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 37);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (183, 122.63, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
37);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (184, 238.82, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['Slight Damage'], 4, 37);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (185, 330.07, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 37);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (186, 70.64, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 38);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (187, 146.4, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 38);     
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (188, 108.35, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
38);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (189, 204.04, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['None'], 4, 38);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (190, 313.11, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 38);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (191, 76.68, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 39);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (192, 140.76, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['Slight Damage'], 2, 39);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (193, 169.23, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 39);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (194, 215.3, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', ARRAY['None'], 4, 39);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (195, 305.68, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['Slight Damage'], 5, 39);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (196, 73.26, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 40);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (197, 102.88, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 40);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (198, 143.93, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
40);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (199, 243.11, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 40);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (200, 346.33, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 40);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (201, 81.96, false, ARRAY['None'], false, 'Sea', ARRAY['Slight Damage'], 1, 41);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (202, 145.86, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 41);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (203, 187.96, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3, 
41);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (204, 232.46, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Mountain', 
ARRAY['None'], 4, 41);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (205, 326.17, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 41);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (206, 52.08, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 42);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (207, 130.23, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 42);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (208, 128.7, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['Slight 
Damage'], 3, 42);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (209, 230.03, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 42);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (210, 314.8, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['None'], 5, 42);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (211, 70.62, false, ARRAY['None'], false, 'Sea', ARRAY['None'], 1, 43);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (212, 106.86, false, ARRAY['Air Conditioning'], false, 'Mountain', ARRAY['None'], 2, 43);    
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (213, 146.04, false, ARRAY['Air Conditioning', 'Television'], true, 'Mountain', ARRAY['None'], 3, 43);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (214, 233.7, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 43);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (215, 328.63, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Sea', ARRAY['None'], 5, 43);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (216, 98.28, false, ARRAY['None'], false, 'Mountain', ARRAY['None'], 1, 44);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (217, 114.01, false, ARRAY['Air Conditioning'], false, 'Sea', ARRAY['None'], 2, 44);        
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (218, 116.65, false, ARRAY['Air Conditioning', 'Television'], true, 'Sea', ARRAY['None'], 3,  44);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (219, 213.71, false, ARRAY['Air Conditioning', 'Television', 'Microwave'], true, 'Sea', ARRAY['None'], 4, 44);
INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES (220, 309.81, false, ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge'], true, 'Mountain', ARRAY['Slight Damage'], 5, 44);

-- yeah that's a lot of rooms

-- Sample Data For Employees
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (1, 126149171, 'Dion Predovic', '900 Alexis Islands, Ottawa, Ontario', 17, 1);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (2, 760524348, 'Marcy Bauch', '151 Graham River, Ottawa, Ontario', 51, 1);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (3, 998902432, 'Ramon Hackett', '0607 Hills Divide, Ottawa, Ontario', 48, 1);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (4, 985628410, 'Telma Lind', '21984 Balistreri Lakes, Ottawa, Ontario', 20, 1);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (5, 507696700, 'Ella Murphy', '437 Mertz Expressway, Ottawa, Ontario', 51, 1);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (6, 360789099, 'Ethelene Parisian', '669 Gary Unions, Ottawa, Ontario', 44, 2);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (7, 545865616, 'Misti Welch', '185 Walter Track, Ottawa, Ontario', 48, 2);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (8, 257439464, 'Marta Hamill', '7406 Bridget Wells, Ottawa, Ontario', 62, 2);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (9, 721062696, 'Grady Volkman', '414 Heathcote Causeway, Ottawa, Ontario', 25, 2);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (10, 433219770, 'Mikel Conroy', '00788 Denis Meadows, Ottawa, Ontario', 66, 2);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (11, 376085857, 'Wanetta Luettgen', '660 Muller Prairie, Ottawa, Ontario', 69, 3);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (12, 710835830, 'Rupert Lynch', '776 Kenneth Glens, Ottawa, Ontario', 45, 3);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (13, 473829467, 'Lilla Rowe', '23811 Derek Courts, Ottawa, Ontario', 59, 3);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (14, 501551801, 'Karoline Lueilwitz', '1960 Kuhn Harbor, Ottawa, Ontario', 20, 3);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (15, 323222368, 'Salvador Nicolas', '330 Gusikowski Locks, Ottawa, Ontario', 34, 3);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (16, 379130818, 'Zachariah Bartell', '1829 Sanford Valley, Ottawa, Ontario', 61, 4);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (17, 731701684, 'Jovan Glover', '5188 Ines Lock, Ottawa, Ontario', 59, 4);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (18, 432791058, 'Lorena Weimann', '67503 Batz Islands, Ottawa, Ontario', 51, 4);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (19, 631588992, 'Demarcus Abernathy', '921 Judson Brooks, Ottawa, Ontario', 63, 4);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (20, 253623769, 'Tierra Morar', '07216 Wunsch Field, Ottawa, Ontario', 37, 4);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (21, 342676366, 'Jamie Hartmann', '6005 Christopher River, Ottawa, Ontario', 31, 5);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (22, 937923390, 'Rodney Robel', '175 Ralph Valleys, Ottawa, Ontario', 50, 5);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (23, 601396567, 'Kent Anderson', '45445 Daniel Fork, Ottawa, Ontario', 57, 5);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (24, 323009070, 'Karey Kuhic', '94190 Loren Mountain, Ottawa, Ontario', 25, 5);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (25, 508142836, 'Danny Greenfelder', '853 Felecia Place, Ottawa, Ontario', 46, 5);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (26, 206370721, 'Lula Kunze', '16511 Norene Union, Ottawa, Ontario', 36, 6);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (27, 118620492, 'Luke Carroll', '2642 Upton Parkway, Ottawa, Ontario', 32, 6);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (28, 537351676, 'Tajuana White', '7460 Pouros Motorway, Ottawa, Ontario', 60, 6);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (29, 932553218, 'Wilburn Crooks', '795 Stacia Viaduct, Ottawa, Ontario', 67, 6);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (30, 712083848, 'Cayla Bergstrom', '73667 Medhurst Row, Ottawa, Ontario', 36, 6);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (31, 613634382, 'Hank Marvin', '085 Weissnat Locks, Ottawa, Ontario', 44, 7);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (32, 147020119, 'Alonzo Gleason', '60786 Chi Groves, Ottawa, Ontario', 29, 7);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (33, 508304138, 'Jenniffer Shanahan', '42883 Adrien Pine, Ottawa, Ontario', 60, 7);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (34, 854163060, 'Robby Hane', '47900 Windler Ferry, Ottawa, Ontario', 21, 7);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (35, 417750032, 'Moises Yost', '0108 Heathcote Centers, Ottawa, Ontario', 36, 7);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (36, 791967203, 'Gail Bode', '509 Criselda Underpass, Ottawa, Ontario', 26, 8);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (37, 317470225, 'Julietta Nienow', '15705 Bosco Inlet, Ottawa, Ontario', 68, 8);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (38, 319896816, 'Salvatore Oreilly', '787 Alesia Causeway, Ottawa, Ontario', 47, 8);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (39, 411804492, 'Allene Spencer', '5846 Hammes Point, Ottawa, Ontario', 60, 8);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (40, 941749395, 'Fredericka Schamberger', '8154 Haley Alley, Ottawa, Ontario', 52, 8);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (41, 657030012, 'Henry Muller', '1873 Rowe Mission, Ottawa, Ontario', 19, 9);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (42, 583109353, 'Modesto Mohr', '649 Agueda Lake, Ottawa, Ontario', 18, 9);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (43, 985935000, 'Hoyt Hettinger', '2587 Beatty Haven, Ottawa, Ontario', 38, 9);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (44, 111675254, 'Hilaria Leffler', '5336 Josue Row, Ottawa, Ontario', 36, 9);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (45, 219224925, 'Zachariah Kulas', '812 Tori Islands, Ottawa, Ontario', 43, 9);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (46, 175707658, 'Florentina Goldner', '54483 Emerson Trafficway, Ottawa, Ontario', 44, 10);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (47, 354682215, 'Annamarie Durgan', '323 Dana Locks, Ottawa, Ontario', 23, 10);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (48, 905473724, 'Denver Welch', '6185 Keiko Burgs, Ottawa, Ontario', 26, 10);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (49, 383691968, 'Josiah Kovacek', '1377 Bernhard Ways, Ottawa, Ontario', 18, 10);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (50, 795318657, 'Stanford Barrows', '7689 Wilbert Island, Ottawa, Ontario', 25, 10);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (51, 896562470, 'Teodoro Will', '933 Darla Burg, Ottawa, Ontario', 43, 11);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (52, 759872726, 'Cassie Farrell', '0041 Lueilwitz Terrace, Ottawa, Ontario', 20, 11);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (53, 703010686, 'Francisco Strosin', '6177 Sid Turnpike, Ottawa, Ontario', 61, 11);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (54, 936906954, 'Royce Kemmer', '020 Irving Alley, Ottawa, Ontario', 58, 11);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (55, 712249569, 'Shelton Little', '12790 Burton Crossing, Ottawa, Ontario', 43, 11);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (56, 591478856, 'Irwin Hane', '8212 Stanton Road, Ottawa, Ontario', 36, 12);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (57, 688305001, 'Shalon Daugherty', '814 Nathanael Ferry, Ottawa, Ontario', 65, 12);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (58, 761264129, 'Brent Champlin', '422 Eddie Knoll, Ottawa, Ontario', 67, 12);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (59, 920506982, 'Dalila Hirthe', '69884 Emmerich Haven, Ottawa, Ontario', 48, 12);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (60, 171348734, 'Nelia Funk', '43098 Turner Plaza, Ottawa, Ontario', 41, 12);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (61, 726540824, 'Katrice Runolfsdottir', '46588 Anderson Cliffs, Ottawa, Ontario', 34, 13);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (62, 738259781, 'Xenia Bruen', '73740 Lebsack Expressway, Ottawa, Ontario', 47, 13);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (63, 936010748, 'Domenic Ullrich', '543 Wunsch Crossing, Ottawa, Ontario', 63, 13);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (64, 677642565, 'Arnoldo Senger', '20798 Jade Fords, Ottawa, Ontario', 34, 13);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (65, 586159493, 'Arturo Hagenes', '4541 Mraz Parks, Ottawa, Ontario', 32, 13);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (66, 227745209, 'Thanh Stanton', '9452 Trantow Trail, Ottawa, Ontario', 58, 14);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (67, 998203956, 'Rolf Johnson', '14377 Rutherford Cape, Ottawa, Ontario', 28, 14);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (68, 901750660, 'Tula Barrows', '124 Legros Plain, Ottawa, Ontario', 51, 14);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (69, 492688420, 'Retha Zulauf', '639 Bernetta Parks, Ottawa, Ontario', 17, 14);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (70, 586000502, 'Tori Marvin', '89059 Sporer Heights, Ottawa, Ontario', 38, 14);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (71, 845323327, 'Truman Collier', '33829 Kaitlin Forges, Ottawa, Ontario', 69, 15);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (72, 808283449, 'Garnet Schinner', '9233 Alexandria Crest, Ottawa, Ontario', 24, 15);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (73, 980968814, 'Bobbi Pouros', '9229 Shaina Via, Ottawa, Ontario', 27, 15);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (74, 510615153, 'Mimi Mante', '6502 Eugenia Heights, Ottawa, Ontario', 55, 15);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (75, 752738602, 'Earle Baumbach', '140 Randolph Row, Ottawa, Ontario', 49, 15);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (76, 274315642, 'Toi Oconnell', '916 Willette Springs, Ottawa, Ontario', 42, 16);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (77, 655641688, 'Mose Gislason', '82371 Upton Common, Ottawa, Ontario', 53, 16);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (78, 361693378, 'Georgann Senger', '19163 Pollich Crossing, Ottawa, Ontario', 16, 16);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (79, 579745094, 'Leonardo Kling', '5985 Wiegand Cliff, Ottawa, Ontario', 24, 16);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (80, 858275240, 'Douglas Hills', '510 Hilll Harbors, Ottawa, Ontario', 20, 16);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (81, 216532514, 'Birgit Mraz', '25028 Douglas Corner, Ottawa, Ontario', 65, 17);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (82, 922274395, 'Brinda Veum', '560 Conroy Manors, Ottawa, Ontario', 65, 17);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (83, 793950560, 'Selina Boyle', '028 Tori Overpass, Ottawa, Ontario', 40, 17);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (84, 673867798, 'Owen Hane', '7249 Curtis Parks, Ottawa, Ontario', 28, 17);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (85, 630575037, 'Franchesca Wolf', '8569 Loura Light, Ottawa, Ontario', 63, 17);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (86, 285858476, 'Troy Ullrich', '7571 Kenia Ranch, Toronto, Ontario', 29, 18);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (87, 667396400, 'Aundrea Cummerata', '4099 Gibson Mission, Toronto, Ontario', 60, 18);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (88, 569426883, 'Tom Keeling', '471 Kimiko Square, Toronto, Ontario', 63, 18);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (89, 656915217, 'Carroll Pfeffer', '421 Grant Ferry, Toronto, Ontario', 51, 18);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (90, 883929364, 'Antonietta Monahan', '099 Boyle Camp, Toronto, Ontario', 21, 18);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (91, 763554235, 'Junko Simonis', '40846 Elliot Islands, Toronto, Ontario', 24, 19);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (92, 438081034, 'Katelin Dare', '93228 Zina Islands, Toronto, Ontario', 48, 19);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (93, 956835627, 'Jaime Blanda', '75024 Lanora Prairie, Toronto, Ontario', 35, 19);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (94, 191363556, 'Stanton Douglas', '58464 Anthony Spring, Toronto, Ontario', 51, 19);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (95, 859338302, 'Zack Muller', '922 Schultz Walk, Toronto, Ontario', 66, 19);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (96, 709128129, 'Danae Ohara', '7136 Raina Hills, Toronto, Ontario', 53, 20);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (97, 645141011, 'Johnny Feeney', '39656 Lance Place, Toronto, Ontario', 38, 20);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (98, 972617204, 'Brad Yundt', '7799 Schumm Squares, Toronto, Ontario', 24, 20);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (99, 871274459, 'Vilma Torp', '832 Indira Keys, Toronto, Ontario', 48, 20);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (100, 896007529, 'Roscoe Zulauf', '65946 Rupert Curve, Toronto, Ontario', 48, 20);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (101, 264645725, 'Nila Ullrich', '41986 Stefan Cove, Toronto, Ontario', 32, 21);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (102, 656581318, 'Renate Mayert', '2453 Patrica Valley, Toronto, Ontario', 58, 21);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (103, 879966126, 'Tonette Smitham', '842 Buckridge Village, Toronto, Ontario', 18, 21);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (104, 801260824, 'Margherita Kerluke', '1431 Chasity Pine, Toronto, Ontario', 67, 21);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (105, 190403558, 'Winfred Cormier', '708 Maren Roads, Toronto, Ontario', 37, 21);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (106, 652995705, 'Scottie Marquardt', '995 Norman Pike, Toronto, Ontario', 44, 22);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (107, 171998157, 'Orval Weber', '713 Akiko Pine, Toronto, Ontario', 46, 22);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (108, 303871704, 'Veronica Kreiger', '93500 Cherilyn Camp, Toronto, Ontario', 57, 22);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (109, 795320581, 'Lincoln Steuber', '8552 Marica Villages, Toronto, Ontario', 28, 22);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (110, 148312430, 'Keith Ondricka', '60811 Edmund Trace, Toronto, Ontario', 20, 22);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (111, 843418913, 'Carson Runolfsdottir', '40543 Raynor Trail, Toronto, Ontario', 27, 23);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (112, 179375687, 'Elmer Kilback', '1399 Kovacek Isle, Toronto, Ontario', 17, 23);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (113, 133791783, 'Lynette Krajcik', '4254 Delmar Drive, Toronto, Ontario', 50, 23);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (114, 343899277, 'Ashli Kihn', '403 Allene Union, Toronto, Ontario', 49, 23);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (115, 133941426, 'Floretta Mante', '775 Hegmann Squares, Toronto, Ontario', 40, 23);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (116, 328130035, 'Sherwood Kohler', '44042 Chin Flat, Toronto, Ontario', 28, 24);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (117, 425001906, 'Marlena Gorczany', '15697 Zemlak Locks, Toronto, Ontario', 37, 24);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (118, 324474093, 'Murray Wuckert', '914 Tona Ferry, Toronto, Ontario', 56, 24);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (119, 886004212, 'Margarito Tillman', '488 Stoltenberg Mountains, Toronto, Ontario', 51, 24);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (120, 112134964, 'Lucinda Toy', '6483 Oreilly Trail, Toronto, Ontario', 62, 24);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (121, 642531272, 'Melody Blick', '8035 Alonso Lock, Toronto, Ontario', 32, 25);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (122, 169660250, 'Elliot West', '64864 Amber Court, Toronto, Ontario', 27, 25);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (123, 447832221, 'Lincoln Hand', '34760 Wuckert Spur, Toronto, Ontario', 60, 25);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (124, 325796273, 'Jamel Paucek', '469 Brent Keys, Toronto, Ontario', 18, 25);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (125, 441907084, 'Major Bosco', '004 Marks Radial, Toronto, Ontario', 20, 25);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (126, 146554277, 'Damion Douglas', '808 Dorsey Shore, Toronto, Ontario', 17, 26);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (127, 464638731, 'Anika Upton', '469 Irwin Heights, Toronto, Ontario', 35, 26);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (128, 251020428, 'Eilene Ritchie', '634 Elna Tunnel, Toronto, Ontario', 30, 26);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (129, 382741116, 'Laverne Greenholt', '74627 Kimberely Underpass, Toronto, Ontario', 21, 26);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (130, 346195948, 'Paola Heller', '6283 Hayes Crescent, Toronto, Ontario', 63, 26);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (131, 127108750, 'Melia Douglas', '8497 Viki Ridges, Toronto, Ontario', 27, 27);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (132, 572032429, 'Thad Thompson', '97734 Thomas Plaza, Toronto, Ontario', 45, 27);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (133, 727093892, 'Laurena Hickle', '8165 Heaney Field, Toronto, Ontario', 32, 27);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (134, 851831606, 'Nigel Stark', '356 Reynolds Mount, Toronto, Ontario', 46, 27);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (135, 471304438, 'Shirely Romaguera', '371 Krista Fords, Toronto, Ontario', 26, 27);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (136, 650307232, 'Ashley Hirthe', '4394 Carroll Tunnel, Toronto, Ontario', 27, 28);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (137, 420706621, 'Jody Boyer', '2980 Langworth Village, Toronto, Ontario', 38, 28);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (138, 951861370, 'Ouida Ziemann', '189 Terence Islands, Toronto, Ontario', 31, 28);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (139, 749133433, 'Bradford Kautzer', '5274 Adrian Ford, Toronto, Ontario', 55, 28);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (140, 485005366, 'Elvis Sawayn', '3946 Frankie Springs, Toronto, Ontario', 65, 28);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (141, 788740912, 'Ida Howell', '197 Brianne Mills, Toronto, Ontario', 41, 29);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (142, 635360747, 'Lauryn Sporer', '992 Cesar Point, Toronto, Ontario', 24, 29);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (143, 513520407, 'Waylon Doyle', '692 Willene Cove, Toronto, Ontario', 20, 29);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (144, 809303222, 'Emerson Brekke', '6745 Barrows Lodge, Toronto, Ontario', 65, 29);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (145, 702667403, 'Tracey Bechtelar', '7659 Brian Unions, Toronto, Ontario', 43, 29);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (146, 633067418, 'Nathanael Cole', '4187 Chad Plain, Toronto, Ontario', 41, 30);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (147, 587422633, 'Marty Pagac', '440 Von Camp, Toronto, Ontario', 64, 30);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (148, 398008899, 'Anthony Fisher', '79155 Raynor Plains, Toronto, Ontario', 49, 30);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (149, 799943529, 'Damien Boehm', '8156 Graham Expressway, Toronto, Ontario', 35, 30);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (150, 191723598, 'Tammie Nader', '6798 Ferry Union, Toronto, Ontario', 38, 30);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (151, 810830244, 'Terrell Reinger', '209 Eda Shoals, Toronto, Ontario', 54, 31);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (152, 686853941, 'Corine Rau', '13780 Madeleine Mall, Toronto, Ontario', 58, 31);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (153, 363121321, 'Laveta Cronin', '2499 Dollie Inlet, Toronto, Ontario', 43, 31);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (154, 994664895, 'Darci Strosin', '123 Crona Junction, Toronto, Ontario', 29, 31);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (155, 784891694, 'Zelda Huel', '730 Keven Mills, Toronto, Ontario', 38, 31);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (156, 128851768, 'Rufus Dibbert', '5293 Thad Lights, Toronto, Ontario', 26, 32);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (157, 390025669, 'Marisa Purdy', '040 DuBuque Forge, Toronto, Ontario', 21, 32);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (158, 666545957, 'Rocky Brown', '0518 Darius Spurs, Toronto, Ontario', 23, 32);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (159, 157305108, 'Sang Russel', '60475 Bashirian Motorway, Toronto, Ontario', 33, 32);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (160, 538113347, 'Dillon Skiles', '951 Yael Stravenue, Toronto, Ontario', 25, 32);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (161, 511643870, 'Graham Gutmann', '680 Marcia Rapid, Toronto, Ontario', 43, 33);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (162, 925093936, 'Donte Boehm', '246 Borer Bypass, Toronto, Ontario', 34, 33);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (163, 618116024, 'Melissia Schultz', '12934 Indira Lights, Toronto, Ontario', 68, 33);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (164, 196510877, 'Clyde Brakus', '5120 Bradtke Drives, Toronto, Ontario', 66, 33);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (165, 139366906, 'Justin Christiansen', '525 Sanora Corner, Toronto, Ontario', 41, 33);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (166, 767779889, 'Georgine Luettgen', '2768 Blick Orchard, Toronto, Ontario', 31, 34);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (167, 300062426, 'Cristin Hilpert', '9782 Stoltenberg Crossing, Toronto, Ontario', 64, 34);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (168, 923579921, 'Leonel Little', '0553 Rath Greens, Toronto, Ontario', 20, 34);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (169, 948223253, 'Tamesha Abernathy', '9621 Dickens Common, Toronto, Ontario', 26, 34);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (170, 206299280, 'Loreen Bradtke', '48295 Okon Mountain, Toronto, Ontario', 54, 34);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (171, 302607391, 'Alvin Kertzmann', '110 Renato Spur, Toronto, Ontario', 19, 35);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (172, 735050584, 'Angelina Watsica', '82284 Mayert Meadows, Toronto, Ontario', 63, 35);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (173, 827745530, 'Omar Schumm', '0158 Terry Wall, Toronto, Ontario', 28, 35);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (174, 686751700, 'Ricardo Rempel', '182 Okon Extension, Toronto, Ontario', 62, 35);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (175, 983800154, 'Mariel Wyman', '4341 Julio Centers, Toronto, Ontario', 47, 35);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (176, 640398694, 'Sol Hansen', '6088 Felicita Causeway, Toronto, Ontario', 41, 36);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (177, 257111135, 'Jimmy Kovacek', '84250 Jonathan Groves, Toronto, Ontario', 64, 36);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (178, 258410930, 'Lee Carter', '6167 Schulist Route, Toronto, Ontario', 54, 36);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (179, 989106191, 'Mirtha Bergnaum', '284 Tyrone Orchard, Toronto, Ontario', 17, 36);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (180, 354807190, 'Rolf Gutmann', '813 Annemarie Burg, Toronto, Ontario', 48, 36);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (181, 886196939, 'Darnell Champlin', '2554 Reinger Lake, Toronto, Ontario', 54, 37);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (182, 678975513, 'Valerie Hoppe', '97926 Bechtelar Mills, Toronto, Ontario', 36, 37);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (183, 511346792, 'Cathern Upton', '46466 Jude Isle, Toronto, Ontario', 41, 37);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (184, 225928660, 'Monica Wolff', '4426 Oconnell Parkways, Toronto, Ontario', 62, 37);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (185, 629188989, 'Omar Harber', '5767 Casper Parks, Toronto, Ontario', 69, 37);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (186, 669190729, 'Alex Quigley', '6393 Fadel Lock, Toronto, Ontario', 32, 38);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (187, 600889092, 'Allen Ritchie', '73668 Andy Locks, Toronto, Ontario', 60, 38);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (188, 800839417, 'Elfriede Mann', '2537 Paulette Drive, Toronto, Ontario', 41, 38);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (189, 602387852, 'Reuben Turner', '857 Martin Port, Toronto, Ontario', 41, 38);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (190, 154732545, 'Nicolette Farrell', '52534 Krajcik Underpass, Toronto, Ontario', 16, 38);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (191, 470226784, 'Freeman Leffler', '16094 Willms Pass, Toronto, Ontario', 42, 39);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (192, 683575946, 'Henry Braun', '8756 Sharen Walk, Toronto, Ontario', 27, 39);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (193, 762849986, 'Lemuel Kuphal', '068 Hansen Crest, Toronto, Ontario', 59, 39);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (194, 958244214, 'Eli Crist', '890 Connie Views, Toronto, Ontario', 25, 39);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (195, 362092417, 'Miguel Erdman', '92785 Venessa Camp, Toronto, Ontario', 21, 39);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (196, 758644237, 'Lang Walter', '0594 Hoeger Trafficway, Toronto, Ontario', 50, 40);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (197, 929506052, 'Ed McGlynn', '82215 Buster Stravenue, Toronto, Ontario', 29, 40);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (198, 429415894, 'Bob Schmidt', '734 Seth Glens, Toronto, Ontario', 54, 40);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (199, 675241829, 'Daryl Buckridge', '5698 Bechtelar Prairie, Toronto, Ontario', 63, 40);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (200, 580892551, 'Ruben Koelpin', '665 Lisbeth Crest, Toronto, Ontario', 25, 40);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (201, 693396617, 'Mikel Carter', '075 Ema Shoal, Toronto, Ontario', 60, 41);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (202, 825998386, 'Tamika Bernier', '20232 Sammie Crescent, Toronto, Ontario', 65, 41);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (203, 867051175, 'Major Kozey', '533 Porsha Courts, Toronto, Ontario', 21, 41);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (204, 857138481, 'Jamey Ward', '251 Branden Court, Toronto, Ontario', 39, 41);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (205, 948665826, 'Janette Predovic', '3365 Ivory Stream, Toronto, Ontario', 60, 41);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (206, 783641061, 'Matt Volkman', '0623 Verdell Ports, Toronto, Ontario', 55, 42);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (207, 977067609, 'Rodney Roob', '1196 Roberts Gateway, Toronto, Ontario', 45, 42);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (208, 969940699, 'Lise Ward', '8098 Roselle Forges, Toronto, Ontario', 61, 42);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (209, 100953915, 'Allan Bradtke', '86533 Beier Junction, Toronto, Ontario', 34, 42);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (210, 237445027, 'Chong Feest', '000 Rod Springs, Toronto, Ontario', 17, 42);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (211, 740653638, 'Jacinto Waters', '944 Hills Drive, Toronto, Ontario', 61, 43);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (212, 518906099, 'Rosario Nienow', '30710 Kenisha Glen, Toronto, Ontario', 49, 43);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (213, 734828896, 'Brittni Reinger', '22607 Rafael Fords, Toronto, Ontario', 37, 43);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (214, 883122010, 'Jeremiah Raynor', '09340 Jazmin Island, Toronto, Ontario', 23, 43);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (215, 486866287, 'Jonnie Ziemann', '05861 Runolfsson Spur, Toronto, Ontario', 25, 43);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (216, 579922934, 'Loren Batz', '049 Kattie Shores, Toronto, Ontario', 44, 44);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (217, 446898271, 'Dewitt Funk', '042 Walter Prairie, Toronto, Ontario', 51, 44);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (218, 690649497, 'Altha Tremblay', '3643 Myron Shores, Toronto, Ontario', 23, 44);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (219, 139711549, 'Denver Windler', '2122 Stroman Harbor, Toronto, Ontario', 69, 44);
INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES (220, 607710809, 'Blossom Schimmel', '0355 Candida Vista, Toronto, Ontario', 66, 44);
