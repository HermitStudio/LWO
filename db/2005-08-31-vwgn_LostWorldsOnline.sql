-- phpMyAdmin SQL Dump
-- version 2.6.1-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Aug 31, 2005 at 09:53 AM
-- Server version: 4.0.22
-- PHP Version: 4.3.11
-- 
-- Before updating scores to null where appropriate
-- 
-- 
-- Database: `vwgn_LostWorldsOnline`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `AccessLevels`
-- 

CREATE TABLE `AccessLevels` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `AccessLevels`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `ArchetypeBodyLocations`
-- 

CREATE TABLE `ArchetypeBodyLocations` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Archetype_ID` int(10) unsigned zerofill default NULL,
  `BodyLocations_ID` int(10) unsigned zerofill default NULL,
  `SlotRank` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  KEY `Archetype_ID_2` (`Archetype_ID`),
  KEY `BodyLocations_ID` (`BodyLocations_ID`)
) TYPE=InnoDB AUTO_INCREMENT=96 ;

-- 
-- Dumping data for table `ArchetypeBodyLocations`
-- 

INSERT INTO `ArchetypeBodyLocations` VALUES (0000000001, 0000000001, 0000000001, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000002, 0000000001, 0000000018, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000003, 0000000001, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000004, 0000000001, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000005, 0000000001, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000006, 0000000001, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000007, 0000000001, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000008, 0000000001, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000009, 0000000001, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000010, 0000000001, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000011, 0000000001, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000012, 0000000001, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000013, 0000000001, 0000000010, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000014, 0000000002, 0000000016, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000015, 0000000002, 0000000002, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000016, 0000000002, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000017, 0000000002, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000018, 0000000002, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000019, 0000000002, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000020, 0000000002, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000021, 0000000002, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000022, 0000000002, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000023, 0000000002, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000024, 0000000002, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000025, 0000000002, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000026, 0000000002, 0000000011, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000027, 0000000002, 0000000009, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000028, 0000000003, 0000000016, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000029, 0000000003, 0000000019, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000030, 0000000003, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000031, 0000000003, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000032, 0000000003, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000033, 0000000003, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000034, 0000000003, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000035, 0000000003, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000036, 0000000003, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000037, 0000000003, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000038, 0000000003, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000039, 0000000003, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000040, 0000000003, 0000000012, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000041, 0000000003, 0000000009, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000042, 0000000004, 0000000001, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000043, 0000000004, 0000000018, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000044, 0000000004, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000045, 0000000004, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000046, 0000000004, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000047, 0000000004, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000048, 0000000004, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000049, 0000000004, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000050, 0000000004, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000051, 0000000004, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000052, 0000000004, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000053, 0000000004, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000054, 0000000004, 0000000013, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000055, 0000000004, 0000000009, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000056, 0000000005, 0000000021, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000057, 0000000005, 0000000020, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000058, 0000000005, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000059, 0000000005, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000060, 0000000005, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000061, 0000000005, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000062, 0000000005, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000063, 0000000005, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000064, 0000000005, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000065, 0000000005, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000066, 0000000005, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000067, 0000000005, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000068, 0000000005, 0000000014, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000069, 0000000006, 0000000016, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000070, 0000000006, 0000000019, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000071, 0000000006, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000072, 0000000006, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000073, 0000000006, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000074, 0000000006, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000075, 0000000006, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000076, 0000000006, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000077, 0000000006, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000078, 0000000006, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000079, 0000000006, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000080, 0000000006, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000081, 0000000006, 0000000012, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000082, 0000000006, 0000000009, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000083, 0000000007, 0000000016, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000084, 0000000007, 0000000019, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000085, 0000000007, 0000000003, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000086, 0000000007, 0000000004, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000087, 0000000007, 0000000005, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000088, 0000000007, 0000000006, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000089, 0000000007, 0000000006, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000090, 0000000007, 0000000007, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000091, 0000000007, 0000000007, 2);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000092, 0000000007, 0000000007, 3);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000093, 0000000007, 0000000007, 4);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000094, 0000000007, 0000000008, 1);
INSERT INTO `ArchetypeBodyLocations` VALUES (0000000095, 0000000007, 0000000015, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `ArchetypeRules`
-- 

CREATE TABLE `ArchetypeRules` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Mould_ID` int(10) unsigned zerofill default NULL,
  `Archetype_ID` int(10) unsigned zerofill default NULL,
  `MinExperience` smallint(5) unsigned zerofill NOT NULL default '00000',
  `Required` tinyint(3) unsigned zerofill NOT NULL default '000',
  `Prohibited` tinyint(3) unsigned zerofill NOT NULL default '000',
  PRIMARY KEY  (`ID`),
  KEY `Mould_ID` (`Mould_ID`),
  KEY `Archetype_ID` (`Archetype_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `ArchetypeRules`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Archetypes`
-- 

CREATE TABLE `Archetypes` (
  `id` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `Description` text NOT NULL,
  `AvatarLocation` varchar(40) NOT NULL default '',
  `GlobalInstances` smallint(6) unsigned NOT NULL default '0',
  `DefautInstances` smallint(6) unsigned NOT NULL default '1',
  `Health` smallint(6) unsigned NOT NULL default '0',
  `Height` smallint(6) unsigned NOT NULL default '0',
  `HeightModified` smallint(6) unsigned NOT NULL default '0',
  `HeightModifiedSpecialStates_ID` int(10) unsigned zerofill default NULL,
  `Attacks` smallint(6) unsigned NOT NULL default '1',
  `LuckPoints` smallint(6) NOT NULL default '0',
  `MagicPoints` smallint(6) NOT NULL default '0',
  `MagicResistance` smallint(6) NOT NULL default '0',
  `PoisonPoints` smallint(6) NOT NULL default '0',
  `PoisonResistance` smallint(6) NOT NULL default '0',
  `TacticsPoints` smallint(6) NOT NULL default '0',
  `RelatedProduct_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`id`),
  KEY `HeightModifiedSpecialStates_ID` (`HeightModifiedSpecialStates_ID`),
  KEY `RelatedProduct_ID` (`RelatedProduct_ID`)
) TYPE=InnoDB AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `Archetypes`
-- 

INSERT INTO `Archetypes` VALUES (0000000001, 'Dwarf in Chain Mail with Two-Handed Axe', 'Standing in the torchlight, you study the flickering shadows searching the shifting darkness for the enemy of legends. With your long axe you know you must hit hard – and first – before it can get too close. Suddenly, the darkness comes alive! You swing… Can your fighting skill overcome this deadly foe?', '', 0, 1, 14, 3, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Archetypes` VALUES (0000000002, 'Giant Goblin with Mace and Shield', 'Slowly you lift the heavy mace to your shoulder. Lurking around the cave mouth is someone – or something – you’ve never faced before. What? Lunch, maybe, if it’s not too big or strong. It’s almost here; you leap to surprise it… Can your strength overcome this unknown foe?', '', 0, 1, 13, 4, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Archetypes` VALUES (0000000003, 'Lizard Man with Scimitar and Buckler', 'The sounds are getting louder, now. Someone, or something, from outside has entered the swamp. It tries to be quiet but it does not know the ways of your land. The sounds of broken branches and occasional splashes betray its progress. You wait, motionless, as it approaches. Suddenly, the water ripples – it’s here! Can your fighting skill overcome this unknown foe?', '', 0, 1, 16, 4, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Archetypes` VALUES (0000000004, 'Man in Chain Mail with Sword and Shield', 'Rummaging through the ruins of the Ancients has been exhausting and unprofitable. You’ve found nothing useful this time. Suddenly, you hear the sound of gravel shifting on the stones behind you. You turn and face an armed creature you’ve never seen before. Can your fighting skill overcome this unexpected foe?', 'man_in_chain.jpg', 0, 1, 12, 4, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Archetypes` VALUES (0000000005, 'Samurai with Katana', 'Honor demands that you draw your sword. It can not now be sheathed until victory. Your opponent knows this as he circles. Tonight you will write a poem about this battle. If you win. But first… Can your skills in the way of the warrior help you defeat this fierce foe?', '', 0, 1, 12, 4, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Archetypes` VALUES (0000000006, 'Skeleton with Scimitar and Shield', 'Rummaging through the ruins of the Ancients has been exhausting and unprofitable. You’ve found nothing useful this time. Suddenly, you hear the sound of gravel shifting on the stones behind you. You turn and face an armed creature you’ve never seen before. Can your fighting skill overcome this unexpected foe?', '', 0, 1, 7, 4, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Archetypes` VALUES (0000000007, 'Woman with Quarterstaff', 'There is a break in the trees. Up ahead is the ford in the river and, once across, the way home. This circuit of the forest is almost over. Suddenly, as you step into the clearing, the undergrowth parts on the other side. Whoever – or whatever – that is over there doesn’t look inclined to let you pass. Can your speed and skill overcome this unknown foe?', 'woman_with_staff.jpg', 0, 1, 10, 4, 0, NULL, 1, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `AssignedRewards`
-- 

CREATE TABLE `AssignedRewards` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Game_ID` int(10) unsigned zerofill default NULL,
  `Character_ID` int(10) unsigned zerofill default NULL,
  `Reward_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Game_ID` (`Game_ID`),
  KEY `Character_ID` (`Character_ID`),
  KEY `Reward_ID` (`Reward_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `AssignedRewards`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `BasketDiscountLines`
-- 

CREATE TABLE `BasketDiscountLines` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Basket_ID` int(10) unsigned zerofill default NULL,
  `Discount_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Basket_ID` (`Basket_ID`),
  KEY `Discount_ID` (`Discount_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `BasketDiscountLines`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `BasketProductLines`
-- 

CREATE TABLE `BasketProductLines` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Basket_ID` int(10) unsigned zerofill default NULL,
  `Product_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Basket_ID` (`Basket_ID`),
  KEY `Product_ID` (`Product_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `BasketProductLines`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Baskets`
-- 

CREATE TABLE `Baskets` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `User_ID` int(10) unsigned zerofill default NULL,
  `Expires` varchar(11) NOT NULL default '',
  `CashTotal` smallint(5) unsigned zerofill NOT NULL default '00000',
  `GoldTotal` smallint(5) unsigned zerofill NOT NULL default '00000',
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Baskets`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `BodyLocations`
-- 

CREATE TABLE `BodyLocations` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(20) NOT NULL default '',
  `DefaultText` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `BodyLocations`
-- 

INSERT INTO `BodyLocations` VALUES (0000000001, 'Helmet', 'Standard Helmet');
INSERT INTO `BodyLocations` VALUES (0000000002, 'Standard Plate', 'Standard Body Armour');
INSERT INTO `BodyLocations` VALUES (0000000003, 'Cloak', 'No Cloak');
INSERT INTO `BodyLocations` VALUES (0000000004, 'Gauntlets', 'No Gauntlets');
INSERT INTO `BodyLocations` VALUES (0000000005, 'Boots', 'No Boots');
INSERT INTO `BodyLocations` VALUES (0000000006, 'Ring', 'No Ring');
INSERT INTO `BodyLocations` VALUES (0000000007, 'Pouch Item', 'No Pouch Item');
INSERT INTO `BodyLocations` VALUES (0000000008, 'Amulet', 'No Amulet');
INSERT INTO `BodyLocations` VALUES (0000000009, 'Shield', 'Standard Shield');
INSERT INTO `BodyLocations` VALUES (0000000010, 'Two-Handed Axe', 'Standard Two-Handed Axe');
INSERT INTO `BodyLocations` VALUES (0000000011, 'Mace', 'Standard Mace');
INSERT INTO `BodyLocations` VALUES (0000000012, 'Scimitar', 'Standard Scimitar');
INSERT INTO `BodyLocations` VALUES (0000000013, 'Sword', 'Standard Sword');
INSERT INTO `BodyLocations` VALUES (0000000014, 'Katana', 'Standard Two-Handed Katana');
INSERT INTO `BodyLocations` VALUES (0000000015, 'Quarterstaff', 'Standard Two-Handed Quarterstaff');
INSERT INTO `BodyLocations` VALUES (0000000016, 'Helmet', 'No Helmet');
INSERT INTO `BodyLocations` VALUES (0000000017, 'Generic Item', 'No Generic Item');
INSERT INTO `BodyLocations` VALUES (0000000018, 'Chain Mail Armour', 'Standard Chain Mail');
INSERT INTO `BodyLocations` VALUES (0000000019, 'Body Armour', 'No Body Armour');
INSERT INTO `BodyLocations` VALUES (0000000020, 'Bone Armour', 'Standard Samurai Armour');
INSERT INTO `BodyLocations` VALUES (0000000021, 'Helm', 'Standard Samurai Helmet');

-- --------------------------------------------------------

-- 
-- Table structure for table `CharacterExperience`
-- 

CREATE TABLE `CharacterExperience` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Characters_ID` int(10) unsigned zerofill default NULL,
  `Block` tinyint(3) unsigned zerofill NOT NULL default '000',
  `Colour` varchar(15) default NULL,
  `Experience` smallint(5) unsigned zerofill NOT NULL default '00000',
  PRIMARY KEY  (`ID`),
  KEY `Characters_id` (`Characters_ID`)
) TYPE=InnoDB AUTO_INCREMENT=322 ;

-- 
-- Dumping data for table `CharacterExperience`
-- 

INSERT INTO `CharacterExperience` VALUES (0000000130, 0000000015, 001, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000131, 0000000015, 002, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000132, 0000000015, 003, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000133, 0000000015, 004, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000134, 0000000015, 005, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000135, 0000000015, 006, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000136, 0000000015, 007, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000137, 0000000015, 008, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000138, 0000000015, 009, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000139, 0000000015, 010, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000140, 0000000015, 011, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000141, 0000000015, 012, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000142, 0000000015, 013, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000143, 0000000015, 014, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000144, 0000000015, 015, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000145, 0000000015, 016, 'Yellow', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000146, 0000000015, 017, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000147, 0000000015, 018, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000148, 0000000015, 019, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000149, 0000000015, 020, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000150, 0000000015, 021, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000151, 0000000015, 022, 'Yellow', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000152, 0000000015, 023, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000153, 0000000015, 024, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000154, 0000000015, 025, 'White', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000155, 0000000015, 026, 'Black', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000156, 0000000015, 027, 'Black', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000157, 0000000015, 028, 'White', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000158, 0000000015, 029, 'White', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000159, 0000000015, 030, 'Brown', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000160, 0000000015, 031, 'Brown', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000161, 0000000015, 032, 'Brown', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000162, 0000000016, 001, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000163, 0000000016, 002, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000164, 0000000016, 003, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000165, 0000000016, 004, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000166, 0000000016, 005, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000167, 0000000016, 006, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000168, 0000000016, 007, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000169, 0000000016, 008, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000170, 0000000016, 009, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000171, 0000000016, 010, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000172, 0000000016, 011, 'Red', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000173, 0000000016, 012, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000174, 0000000016, 013, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000175, 0000000016, 014, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000176, 0000000016, 015, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000177, 0000000016, 016, 'Yellow', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000178, 0000000016, 017, 'Blue', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000179, 0000000016, 018, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000180, 0000000016, 019, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000181, 0000000016, 020, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000182, 0000000016, 021, 'Green', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000183, 0000000016, 022, 'Yellow', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000184, 0000000016, 023, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000185, 0000000016, 024, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000186, 0000000016, 025, 'White', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000187, 0000000016, 026, 'Black', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000188, 0000000016, 027, 'Black', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000189, 0000000016, 028, 'White', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000190, 0000000016, 029, 'White', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000191, 0000000016, 030, 'Brown', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000192, 0000000016, 031, 'Brown', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000193, 0000000016, 032, 'Brown', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000194, 0000000017, 001, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000195, 0000000017, 002, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000196, 0000000017, 003, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000197, 0000000017, 004, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000198, 0000000017, 005, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000199, 0000000017, 006, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000200, 0000000017, 007, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000201, 0000000017, 008, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000202, 0000000017, 009, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000203, 0000000017, 010, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000204, 0000000017, 011, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000205, 0000000017, 012, 'Orange', 00002);
INSERT INTO `CharacterExperience` VALUES (0000000206, 0000000017, 013, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000207, 0000000017, 014, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000208, 0000000017, 015, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000209, 0000000017, 016, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000210, 0000000017, 017, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000211, 0000000017, 018, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000212, 0000000017, 019, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000213, 0000000017, 020, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000214, 0000000017, 021, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000215, 0000000017, 022, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000216, 0000000017, 023, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000217, 0000000017, 024, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000218, 0000000017, 025, 'White', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000219, 0000000017, 026, 'Black', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000220, 0000000017, 027, 'Black', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000221, 0000000017, 028, 'White', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000222, 0000000017, 029, 'White', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000223, 0000000017, 030, 'Brown', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000224, 0000000017, 031, 'Brown', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000225, 0000000017, 032, 'Brown', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000226, 0000000018, 001, 'Orange', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000227, 0000000018, 002, 'Orange', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000228, 0000000018, 003, 'Orange', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000229, 0000000018, 004, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000230, 0000000018, 005, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000231, 0000000018, 006, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000232, 0000000018, 007, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000233, 0000000018, 008, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000234, 0000000018, 009, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000235, 0000000018, 010, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000236, 0000000018, 011, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000237, 0000000018, 012, 'Orange', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000238, 0000000018, 013, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000239, 0000000018, 014, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000240, 0000000018, 015, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000241, 0000000018, 016, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000242, 0000000018, 017, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000243, 0000000018, 018, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000244, 0000000018, 019, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000245, 0000000018, 020, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000246, 0000000018, 021, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000247, 0000000018, 022, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000248, 0000000018, 023, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000249, 0000000018, 024, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000250, 0000000018, 025, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000251, 0000000018, 026, 'Black', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000252, 0000000018, 027, 'Black', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000253, 0000000018, 028, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000254, 0000000018, 029, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000255, 0000000018, 030, 'Brown', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000256, 0000000018, 031, 'Brown', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000257, 0000000018, 032, 'Brown', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000258, 0000000019, 001, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000259, 0000000019, 002, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000260, 0000000019, 003, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000261, 0000000019, 004, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000262, 0000000019, 005, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000263, 0000000019, 006, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000264, 0000000019, 007, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000265, 0000000019, 008, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000266, 0000000019, 009, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000267, 0000000019, 010, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000268, 0000000019, 011, 'Red', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000269, 0000000019, 012, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000270, 0000000019, 013, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000271, 0000000019, 014, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000272, 0000000019, 015, 'Blue', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000273, 0000000019, 016, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000274, 0000000019, 017, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000275, 0000000019, 018, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000276, 0000000019, 019, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000277, 0000000019, 020, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000278, 0000000019, 021, 'Green', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000279, 0000000019, 022, 'Yellow', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000280, 0000000019, 023, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000281, 0000000019, 024, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000282, 0000000019, 025, 'White', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000283, 0000000019, 026, 'Black', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000284, 0000000019, 027, 'Black', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000285, 0000000019, 028, 'White', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000286, 0000000019, 029, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000287, 0000000019, 030, 'Brown', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000288, 0000000019, 031, 'Brown', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000289, 0000000019, 032, 'Brown', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000290, 0000000020, 001, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000291, 0000000020, 002, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000292, 0000000020, 003, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000293, 0000000020, 004, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000294, 0000000020, 005, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000295, 0000000020, 006, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000296, 0000000020, 007, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000297, 0000000020, 008, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000298, 0000000020, 009, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000299, 0000000020, 010, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000300, 0000000020, 011, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000301, 0000000020, 012, 'Orange', 00001);
INSERT INTO `CharacterExperience` VALUES (0000000302, 0000000020, 013, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000303, 0000000020, 014, 'Red', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000304, 0000000020, 015, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000305, 0000000020, 016, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000306, 0000000020, 017, 'Blue', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000307, 0000000020, 018, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000308, 0000000020, 019, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000309, 0000000020, 020, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000310, 0000000020, 021, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000311, 0000000020, 022, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000312, 0000000020, 023, 'Green', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000313, 0000000020, 024, 'Yellow', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000314, 0000000020, 025, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000315, 0000000020, 026, 'Black', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000316, 0000000020, 027, 'Black', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000317, 0000000020, 028, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000318, 0000000020, 029, 'White', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000319, 0000000020, 030, 'Brown', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000320, 0000000020, 031, 'Brown', 00000);
INSERT INTO `CharacterExperience` VALUES (0000000321, 0000000020, 032, 'Brown', 00000);

-- --------------------------------------------------------

-- 
-- Table structure for table `Characters`
-- 

CREATE TABLE `Characters` (
  `ID` int(11) unsigned zerofill NOT NULL auto_increment,
  `Archetype_ID` int(11) unsigned zerofill default NULL,
  `User_ID` int(11) unsigned zerofill default NULL,
  `Name` varchar(50) NOT NULL default '',
  `DateCreated` varchar(11) NOT NULL default '',
  `Activated` tinyint(1) unsigned zerofill NOT NULL default '0',
  `ExperiencePool` mediumint(9) NOT NULL default '500',
  `ExperienceLevel` smallint(5) unsigned zerofill NOT NULL default '00000',
  `ModHP` smallint(6) NOT NULL default '0',
  `ModAttacks` smallint(4) NOT NULL default '0',
  `ModLuck` smallint(6) NOT NULL default '0',
  `ModMagicPoints` smallint(6) NOT NULL default '0',
  `ModMagicResistance` smallint(6) NOT NULL default '0',
  `ModPoisonPoints` smallint(6) NOT NULL default '0',
  `ModPoisonResistance` smallint(6) NOT NULL default '0',
  `ModTactics` smallint(6) NOT NULL default '0',
  `Mod_Black` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_Blue` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_Brown` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_Green` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_Orange` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_Red` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_White` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Mod_Yellow` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Status` set('Alive','Dead') NOT NULL default 'Alive',
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Archetype_ID` (`Archetype_ID`)
) TYPE=InnoDB AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `Characters`
-- 

INSERT INTO `Characters` VALUES (00000000015, 00000000004, 00000000037, 'Eldred The Horrible', '1113514668', 1, 5, 00001, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 'Alive');
INSERT INTO `Characters` VALUES (00000000016, 00000000004, 00000000038, 'Thorvald Trollson', '1113520237', 1, 22, 00001, 12, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 'Alive');
INSERT INTO `Characters` VALUES (00000000017, 00000000007, 00000000038, 'Freya Roundheelsdottir', '1113520271', 1, 515, 00001, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Alive');
INSERT INTO `Characters` VALUES (00000000018, 00000000007, 00000000037, 'Jane', '1113563840', 1, 0, 00000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alive');
INSERT INTO `Characters` VALUES (00000000019, 00000000004, 00000000037, 'Jimbo', '1113564212', 1, 179, 00000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Alive');
INSERT INTO `Characters` VALUES (00000000020, 00000000007, 00000000039, 'Lara Croft', '1113564307', 1, 460, 00000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Alive');

-- --------------------------------------------------------

-- 
-- Table structure for table `ChatMessages`
-- 

CREATE TABLE `ChatMessages` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Msg` varchar(255) NOT NULL default '',
  `FromUser_ID` int(10) unsigned zerofill default NULL,
  `ToObjectType_ID` int(10) unsigned zerofill default NULL,
  `ToObject_ID` int(10) unsigned zerofill default NULL,
  `Sent` varchar(11) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `FromUser_ID` (`FromUser_ID`),
  KEY `ToObjectType_ID` (`ToObjectType_ID`)
) TYPE=InnoDB AUTO_INCREMENT=87 ;

-- 
-- Dumping data for table `ChatMessages`
-- 

INSERT INTO `ChatMessages` VALUES (0000000001, 'Test1', 0000000037, 0000000001, 0000000001, '1120414598');
INSERT INTO `ChatMessages` VALUES (0000000002, 'Test 2', 0000000037, 0000000001, 0000000001, '1120414598');
INSERT INTO `ChatMessages` VALUES (0000000003, 'test4', 0000000037, 0000000001, 0000000001, '1120415289');
INSERT INTO `ChatMessages` VALUES (0000000004, 'asdsaedsadsad', 0000000037, 0000000001, 0000000001, '1120415302');
INSERT INTO `ChatMessages` VALUES (0000000005, 'weeble', 0000000037, 0000000001, 0000000001, '1120461863');
INSERT INTO `ChatMessages` VALUES (0000000006, 'test 55', 0000000037, 0000000001, 0000000001, '1120461885');
INSERT INTO `ChatMessages` VALUES (0000000007, 'and all the people said wake up sally', 0000000037, 0000000001, 0000000001, '1120461903');
INSERT INTO `ChatMessages` VALUES (0000000008, 'weee', 0000000037, 0000000001, 0000000001, '1120465608');
INSERT INTO `ChatMessages` VALUES (0000000009, 'calling iAn in IE', 0000000037, 0000000001, 0000000001, '1120465811');
INSERT INTO `ChatMessages` VALUES (0000000010, 'so i should be able to hit enter to send this msg', 0000000037, 0000000001, 0000000001, '1120466023');
INSERT INTO `ChatMessages` VALUES (0000000011, 'but it also bounces me out of here', 0000000037, 0000000001, 0000000001, '1120466037');
INSERT INTO `ChatMessages` VALUES (0000000012, 'how about now?', 0000000037, 0000000001, 0000000001, '1120466066');
INSERT INTO `ChatMessages` VALUES (0000000013, 'GRRR', 0000000037, 0000000001, 0000000001, '1120466073');
INSERT INTO `ChatMessages` VALUES (0000000014, 'asdsadsa', 0000000037, 0000000001, 0000000001, '1120466427');
INSERT INTO `ChatMessages` VALUES (0000000015, 'sadsadsa', 0000000037, 0000000001, 0000000001, '1120466430');
INSERT INTO `ChatMessages` VALUES (0000000016, 'asdsadasdd', 0000000037, 0000000001, 0000000001, '1120466717');
INSERT INTO `ChatMessages` VALUES (0000000017, 'okay fied that annoying bug', 0000000037, 0000000001, 0000000001, '1120466726');
INSERT INTO `ChatMessages` VALUES (0000000018, 'okay all working again', 0000000037, 0000000001, 0000000001, '1120467445');
INSERT INTO `ChatMessages` VALUES (0000000019, 'seems to be', 0000000037, 0000000001, 0000000001, '1120467452');
INSERT INTO `ChatMessages` VALUES (0000000020, 'now does it scroll all the way down?', 0000000037, 0000000001, 0000000001, '1120467461');
INSERT INTO `ChatMessages` VALUES (0000000021, 'agg take a long time to get there', 0000000037, 0000000001, 0000000001, '1120467469');
INSERT INTO `ChatMessages` VALUES (0000000022, 'hmmmm', 0000000037, 0000000001, 0000000001, '1120467473');
INSERT INTO `ChatMessages` VALUES (0000000023, 'weeeee', 0000000037, 0000000001, 0000000001, '1120467476');
INSERT INTO `ChatMessages` VALUES (0000000024, 'sseeeeee', 0000000037, 0000000001, 0000000001, '1120467479');
INSERT INTO `ChatMessages` VALUES (0000000025, 'geeeeeee', 0000000037, 0000000001, 0000000001, '1120467483');
INSERT INTO `ChatMessages` VALUES (0000000026, 'weird stuttering going on on the left', 0000000037, 0000000001, 0000000001, '1120467495');
INSERT INTO `ChatMessages` VALUES (0000000027, 'nearly here', 0000000037, 0000000001, 0000000001, '1120467499');
INSERT INTO `ChatMessages` VALUES (0000000028, 'oo faster way to do this', 0000000037, 0000000001, 0000000001, '1120467511');
INSERT INTO `ChatMessages` VALUES (0000000029, 'oh well', 0000000037, 0000000001, 0000000001, '1120467515');
INSERT INTO `ChatMessages` VALUES (0000000030, 'hey', 0000000037, 0000000001, 0000000001, '1120467522');
INSERT INTO `ChatMessages` VALUES (0000000031, 'it WORKS!""""!!!!!', 0000000037, 0000000001, 0000000001, '1120467528');
INSERT INTO `ChatMessages` VALUES (0000000032, 'phew', 0000000037, 0000000001, 0000000001, '1120467706');
INSERT INTO `ChatMessages` VALUES (0000000033, 'so how does this thing render seriously uber long chat messages then?', 0000000037, 0000000001, 0000000001, '1120467761');
INSERT INTO `ChatMessages` VALUES (0000000034, 'wewt it wraps them around and around like the andrex puppy playing in the loo roll.  this is going to be seriously 1337!!!111one one (assuming i ever get it finished)', 0000000037, 0000000001, 0000000001, '1120467809');
INSERT INTO `ChatMessages` VALUES (0000000035, 'so what happens when the help is open and a new message arrives?', 0000000037, 0000000001, 0000000001, '1120467898');
INSERT INTO `ChatMessages` VALUES (0000000036, 'weee', 0000000037, 0000000001, 0000000001, '1120467926');
INSERT INTO `ChatMessages` VALUES (0000000037, 'weeeeeeeeeee testing memory usage - solid at 21600 KB with just the game ui open in FF', 0000000037, 0000000001, 0000000001, '1120468558');
INSERT INTO `ChatMessages` VALUES (0000000038, 'oo looky, two of me online', 0000000037, 0000000001, 0000000001, '1120476095');
INSERT INTO `ChatMessages` VALUES (0000000039, 'on now there are threeeeeeeeee of meeeeeee', 0000000037, 0000000001, 0000000001, '1120476142');
INSERT INTO `ChatMessages` VALUES (0000000040, 'test html inject bold? emphasis', 0000000037, 0000000001, 0000000001, '1120476171');
INSERT INTO `ChatMessages` VALUES (0000000041, 'sweet - plus break tag stripped as well', 0000000037, 0000000001, 0000000001, '1120476187');
INSERT INTO `ChatMessages` VALUES (0000000042, 'quote time """""''''''"""''''''\\"\\""""\\"""\\''''''', 0000000037, 0000000001, 0000000001, '1120476212');
INSERT INTO `ChatMessages` VALUES (0000000043, 'joy', 0000000037, 0000000001, 0000000001, '1120476218');
INSERT INTO `ChatMessages` VALUES (0000000044, 'size looks okay at 1024*768 - minimum tgt resolution', 0000000037, 0000000001, 0000000001, '1120476274');
INSERT INTO `ChatMessages` VALUES (0000000045, 'and the chat in here should be entirely seperate', 0000000037, 0000000001, 0000000004, '1120476398');
INSERT INTO `ChatMessages` VALUES (0000000046, 'hmm why has the table caption gone to the bottom', 0000000037, 0000000001, 0000000004, '1120476413');
INSERT INTO `ChatMessages` VALUES (0000000047, 'that''s a bit weird', 0000000037, 0000000001, 0000000004, '1120476421');
INSERT INTO `ChatMessages` VALUES (0000000048, 'ahh it''s ghey IE - table caption at the ruddy bottom', 0000000037, 0000000001, 0000000001, '1120476459');
INSERT INTO `ChatMessages` VALUES (0000000049, 'right worked up a storming appetite lunch time for meeee', 0000000037, 0000000001, 0000000001, '1120476816');
INSERT INTO `ChatMessages` VALUES (0000000050, 'see if this crashes in the mean time', 0000000037, 0000000001, 0000000001, '1120476835');
INSERT INTO `ChatMessages` VALUES (0000000051, 'oo no crashes', 0000000037, 0000000001, 0000000001, '1120480865');
INSERT INTO `ChatMessages` VALUES (0000000052, 'no jscript errors wooopy woo', 0000000037, 0000000001, 0000000001, '1120480877');
INSERT INTO `ChatMessages` VALUES (0000000053, 'hey', 0000000039, 0000000001, 0000000001, '1120480935');
INSERT INTO `ChatMessages` VALUES (0000000054, 'hi', 0000000037, 0000000001, 0000000001, '1120480947');
INSERT INTO `ChatMessages` VALUES (0000000055, 'this is cool :)', 0000000039, 0000000001, 0000000001, '1120480956');
INSERT INTO `ChatMessages` VALUES (0000000056, 'hmm ther''s a bug straight off i see', 0000000037, 0000000001, 0000000001, '1120480963');
INSERT INTO `ChatMessages` VALUES (0000000057, 'there we go, my session had expired', 0000000037, 0000000001, 0000000001, '1120480995');
INSERT INTO `ChatMessages` VALUES (0000000058, 'lol', 0000000039, 0000000001, 0000000001, '1120481003');
INSERT INTO `ChatMessages` VALUES (0000000059, 'nice 1', 0000000039, 0000000001, 0000000001, '1120481016');
INSERT INTO `ChatMessages` VALUES (0000000060, 'see isn''t this nice and pretty', 0000000037, 0000000001, 0000000001, '1120481018');
INSERT INTO `ChatMessages` VALUES (0000000061, 'yep', 0000000039, 0000000001, 0000000001, '1120481023');
INSERT INTO `ChatMessages` VALUES (0000000062, 'not sure what the overheads are like for the server', 0000000037, 0000000001, 0000000001, '1120481041');
INSERT INTO `ChatMessages` VALUES (0000000063, 'the server going down eailer didn''t have anything to do with you did it ;)', 0000000039, 0000000001, 0000000001, '1120481065');
INSERT INTO `ChatMessages` VALUES (0000000064, 'nope nothing to do with me at all,. ty very much', 0000000037, 0000000001, 0000000001, '1120481090');
INSERT INTO `ChatMessages` VALUES (0000000065, 'that was a joke ;)', 0000000039, 0000000001, 0000000001, '1120481098');
INSERT INTO `ChatMessages` VALUES (0000000066, 'but watch ...', 0000000037, 0000000001, 0000000001, '1120481098');
INSERT INTO `ChatMessages` VALUES (0000000067, 'there it goes, and here it is', 0000000037, 0000000001, 0000000001, '1120481123');
INSERT INTO `ChatMessages` VALUES (0000000068, 'got 6 x chat connection lost msgs', 0000000039, 0000000001, 0000000001, '1120481142');
INSERT INTO `ChatMessages` VALUES (0000000069, '^^', 0000000037, 0000000001, 0000000001, '1120481151');
INSERT INTO `ChatMessages` VALUES (0000000070, 'just a demo of error handling', 0000000037, 0000000001, 0000000001, '1120481167');
INSERT INTO `ChatMessages` VALUES (0000000071, 'right so next step i take it is games list yeah?', 0000000039, 0000000001, 0000000001, '1120481174');
INSERT INTO `ChatMessages` VALUES (0000000072, 'ahh', 0000000039, 0000000001, 0000000001, '1120481202');
INSERT INTO `ChatMessages` VALUES (0000000073, 'gotta plan the next step on paper - need to get serveral components all to come together - game list, game create (erly stage - not needing ur stuff), abort system etc.', 0000000037, 0000000001, 0000000001, '1120481248');
INSERT INTO `ChatMessages` VALUES (0000000074, 'ok', 0000000039, 0000000001, 0000000001, '1120481264');
INSERT INTO `ChatMessages` VALUES (0000000075, 'chicken and the egg sceanario', 0000000037, 0000000001, 0000000001, '1120481273');
INSERT INTO `ChatMessages` VALUES (0000000076, 'but chat is independant - it will need no modifications bar a couple of form field changes to get it working within a game, rather than a zone', 0000000037, 0000000001, 0000000001, '1120481313');
INSERT INTO `ChatMessages` VALUES (0000000077, 'right ive got a few mins before we are going to have lunch, so just wanted to ask you about the cumative effect of states, atm we have the duration handling but not sure how im supposed to handle cumative effects', 0000000039, 0000000001, 0000000001, '1120481328');
INSERT INTO `ChatMessages` VALUES (0000000078, 'in results_specialstates table i tihnk it is - off the top of my head', 0000000039, 0000000001, 0000000001, '1120481371');
INSERT INTO `ChatMessages` VALUES (0000000079, ':S', 0000000037, 0000000001, 0000000001, '1120481837');
INSERT INTO `ChatMessages` VALUES (0000000080, 'is this working again?', 0000000039, 0000000001, 0000000001, '1120481904');
INSERT INTO `ChatMessages` VALUES (0000000081, 'yay', 0000000039, 0000000001, 0000000001, '1120481910');
INSERT INTO `ChatMessages` VALUES (0000000082, 'there are two ians!', 0000000039, 0000000001, 0000000001, '1120481926');
INSERT INTO `ChatMessages` VALUES (0000000083, ':)', 0000000037, 0000000001, 0000000001, '1120549553');
INSERT INTO `ChatMessages` VALUES (0000000084, 'and i can stil interact here!', 0000000037, 0000000001, 0000000001, '1120558147');
INSERT INTO `ChatMessages` VALUES (0000000085, 'right hopefully this is still working', 0000000037, 0000000001, 0000000001, '1123326181');
INSERT INTO `ChatMessages` VALUES (0000000086, 'i wonder if i remembered (or got around) to adding something to remove old chat - or was that a cron based job - cron i think', 0000000037, 0000000001, 0000000001, '1123326219');

-- --------------------------------------------------------

-- 
-- Table structure for table `Conditions`
-- 

CREATE TABLE `Conditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `condition_sql` varchar(100) NOT NULL default '',
  `FieldName` set('Manuevers.Category','Manuevers.Colour','Manuevers.Name','Results.Odd_Page') NOT NULL default '',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `Conditions`
-- 

INSERT INTO `Conditions` VALUES (0000000001, 'Manuevers.Category!=''Thrust''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000002, 'Manuevers.Colour!=''Red''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000003, 'Manuevers.Colour!=''Blue''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000004, 'Manuevers.Category=''Jump''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000005, 'Manuevers.Colour!=''Orange''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000006, 'Manuevers.Colour=''Green''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000007, 'Manuevers.Colour=''Yellow''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000008, 'Manuevers.Colour!=''Yellow''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000009, 'Manuevers.Name=''Kick''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000010, 'Manuevers.Name!=''Wild Swing''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000011, 'Manuevers.Colour=''Brown''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000012, 'Manuevers.Colour!=''Green''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000013, 'Manuevers.Colour=''Black''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000014, 'Manuevers.Colour=''White''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000015, 'Manuevers.Category=''Extended Range''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000016, 'Manuevers.Name NOT LIKE ''%Throw%''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000017, 'Manuevers.Name=''Draw Dagger''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000018, 'Manuevers.Category=''Special''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000019, 'Manuevers.Category!=''Shield Block''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000020, 'Manuevers.Name!=''Block and Close''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000021, 'Manuevers.Category!=''Protected Attack''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000022, 'Manuevers.Category!=''Side Swing''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000023, 'Manuevers.Name NOT LIKE ''%Side Swing%''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000024, 'Manuevers.Name!=''Tail Whip''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000025, 'Manuevers.Name=''Tail Whip''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000026, 'Manuevers.Name=''Charge''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000027, 'Manuevers.Name=''Spin''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000028, 'Manuevers.Name NOT LIKE ''%Thrust%''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000029, 'Manuevers.Name=''Jump Back''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000030, 'Manuevers.Name!=''Shield Block''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000031, 'Manuevers.Category LIKE ''%Swing%''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000032, 'Manuevers.Name LIKE ''%Swing%''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000033, 'Manuevers.Name NOT LIKE ''%Kick%''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000034, 'Manuevers.Colour=''Orange''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000035, 'Manuevers.Category=''Down Swing''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000036, 'Manuevers.Name=''Down Swing''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000037, 'Manuevers.Colour=''Blue''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000038, 'Manuevers.Category=''Side Swing''', 'Manuevers.Category');
INSERT INTO `Conditions` VALUES (0000000039, 'Manuevers.Name=''Side Swing''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000040, 'Manuevers.Colour=''Red''', 'Manuevers.Colour');
INSERT INTO `Conditions` VALUES (0000000041, 'Manuevers.Name=''Draw and Throw''', 'Manuevers.Name');
INSERT INTO `Conditions` VALUES (0000000042, 'Results.Odd_Page=''7''', 'Results.Odd_Page');
INSERT INTO `Conditions` VALUES (0000000043, 'Manuevers.Category!=''Extended Range''', 'Manuevers.Category');

-- --------------------------------------------------------

-- 
-- Table structure for table `Countries`
-- 

CREATE TABLE `Countries` (
  `ID` smallint(5) unsigned NOT NULL auto_increment,
  `CountryName` varchar(100) default NULL,
  `FlagPictureLink` tinytext,
  UNIQUE KEY `ID` (`ID`),
  KEY `CountryName` (`CountryName`)
) TYPE=InnoDB AUTO_INCREMENT=235 ;

-- 
-- Dumping data for table `Countries`
-- 

INSERT INTO `Countries` VALUES (1, 'Albania', '');
INSERT INTO `Countries` VALUES (2, 'Algeria', '');
INSERT INTO `Countries` VALUES (3, 'American Samoa', '');
INSERT INTO `Countries` VALUES (4, 'Andorra', '');
INSERT INTO `Countries` VALUES (5, 'Angola', '');
INSERT INTO `Countries` VALUES (6, 'Anguilla', '');
INSERT INTO `Countries` VALUES (7, 'Antartica', '');
INSERT INTO `Countries` VALUES (8, 'Antigua & Barbuda', '');
INSERT INTO `Countries` VALUES (9, 'Argentina', '');
INSERT INTO `Countries` VALUES (10, 'Armenia', '');
INSERT INTO `Countries` VALUES (11, 'Aruba', '');
INSERT INTO `Countries` VALUES (12, 'Ascension Island', '');
INSERT INTO `Countries` VALUES (13, 'Australia', '');
INSERT INTO `Countries` VALUES (14, 'Austria', '');
INSERT INTO `Countries` VALUES (15, 'Azerbaijan', '');
INSERT INTO `Countries` VALUES (16, 'Bahamas', '');
INSERT INTO `Countries` VALUES (17, 'Bahrain', '');
INSERT INTO `Countries` VALUES (18, 'Bangladesh', '');
INSERT INTO `Countries` VALUES (19, 'Barbados', '');
INSERT INTO `Countries` VALUES (20, 'Belarus', '');
INSERT INTO `Countries` VALUES (21, 'Belgium', '');
INSERT INTO `Countries` VALUES (22, 'Belize', '');
INSERT INTO `Countries` VALUES (23, 'Benin', '');
INSERT INTO `Countries` VALUES (24, 'Bermuda', '');
INSERT INTO `Countries` VALUES (25, 'Bhutan', '');
INSERT INTO `Countries` VALUES (26, 'Bolivia', '');
INSERT INTO `Countries` VALUES (27, 'Bosnia and Herzegovina', '');
INSERT INTO `Countries` VALUES (28, 'Botswana', '');
INSERT INTO `Countries` VALUES (29, 'Bouvet Island', '');
INSERT INTO `Countries` VALUES (30, 'Brazil', '');
INSERT INTO `Countries` VALUES (31, 'British Indian Ocean Territory', '');
INSERT INTO `Countries` VALUES (32, 'Brunei Darussalam', '');
INSERT INTO `Countries` VALUES (33, 'Bulgaria', '');
INSERT INTO `Countries` VALUES (34, 'Burkina Faso', '');
INSERT INTO `Countries` VALUES (35, 'Burundi', '');
INSERT INTO `Countries` VALUES (36, 'Cambodia', '');
INSERT INTO `Countries` VALUES (37, 'Cameroon', '');
INSERT INTO `Countries` VALUES (38, 'Canada', '');
INSERT INTO `Countries` VALUES (39, 'Cape Verde', '');
INSERT INTO `Countries` VALUES (40, 'Cayman Islands', '');
INSERT INTO `Countries` VALUES (41, 'Central African Republic', '');
INSERT INTO `Countries` VALUES (42, 'Chad', '');
INSERT INTO `Countries` VALUES (43, 'Chile', '');
INSERT INTO `Countries` VALUES (44, 'China', '');
INSERT INTO `Countries` VALUES (45, 'Christmas Island', '');
INSERT INTO `Countries` VALUES (46, 'Cocos (Keeling) Islands', '');
INSERT INTO `Countries` VALUES (47, 'Colombia', '');
INSERT INTO `Countries` VALUES (48, 'Comoros', '');
INSERT INTO `Countries` VALUES (49, 'Congo, Democratic People''s Republic', '');
INSERT INTO `Countries` VALUES (50, 'Congo, Republic of', '');
INSERT INTO `Countries` VALUES (51, 'Cook Islands', '');
INSERT INTO `Countries` VALUES (52, 'Costa Rica', '');
INSERT INTO `Countries` VALUES (53, 'Cote d''Ivoire', '');
INSERT INTO `Countries` VALUES (54, 'Croatia/Hrvatska', '');
INSERT INTO `Countries` VALUES (55, 'Cyprus', '');
INSERT INTO `Countries` VALUES (56, 'Czech Republic', '');
INSERT INTO `Countries` VALUES (57, 'Denmark', '');
INSERT INTO `Countries` VALUES (58, 'Djibouti', '');
INSERT INTO `Countries` VALUES (59, 'Dominica', '');
INSERT INTO `Countries` VALUES (60, 'Dominican Republic', '');
INSERT INTO `Countries` VALUES (61, 'East Timor', '');
INSERT INTO `Countries` VALUES (62, 'Ecuador', '');
INSERT INTO `Countries` VALUES (63, 'Egypt', '');
INSERT INTO `Countries` VALUES (64, 'El Salvador', '');
INSERT INTO `Countries` VALUES (65, 'Equatorial Guinea', '');
INSERT INTO `Countries` VALUES (66, 'Eritrea', '');
INSERT INTO `Countries` VALUES (67, 'Estonia', '');
INSERT INTO `Countries` VALUES (68, 'Ethiopia', '');
INSERT INTO `Countries` VALUES (69, 'Falkland Islands (Malvina)', '');
INSERT INTO `Countries` VALUES (70, 'Faroe Islands', '');
INSERT INTO `Countries` VALUES (71, 'Fiji', '');
INSERT INTO `Countries` VALUES (72, 'Finland', '');
INSERT INTO `Countries` VALUES (73, 'France', '');
INSERT INTO `Countries` VALUES (74, 'French Guiana', '');
INSERT INTO `Countries` VALUES (75, 'French Polynesia', '');
INSERT INTO `Countries` VALUES (76, 'French Southern Territories', '');
INSERT INTO `Countries` VALUES (77, 'Gabon', '');
INSERT INTO `Countries` VALUES (78, 'Gambia', '');
INSERT INTO `Countries` VALUES (79, 'Georgia', '');
INSERT INTO `Countries` VALUES (80, 'Germany', '');
INSERT INTO `Countries` VALUES (81, 'Ghana', '');
INSERT INTO `Countries` VALUES (82, 'Gibraltar', '');
INSERT INTO `Countries` VALUES (83, 'Great Britain', '');
INSERT INTO `Countries` VALUES (84, 'Greece', '');
INSERT INTO `Countries` VALUES (85, 'Greenland', '');
INSERT INTO `Countries` VALUES (86, 'Grenada', '');
INSERT INTO `Countries` VALUES (87, 'Guadeloupe', '');
INSERT INTO `Countries` VALUES (88, 'Guam', '');
INSERT INTO `Countries` VALUES (89, 'Guatemala', '');
INSERT INTO `Countries` VALUES (90, 'Guernsey', '');
INSERT INTO `Countries` VALUES (91, 'Guinea', '');
INSERT INTO `Countries` VALUES (92, 'Guinea-Bissau', '');
INSERT INTO `Countries` VALUES (93, 'Guyana', '');
INSERT INTO `Countries` VALUES (94, 'Haiti', '');
INSERT INTO `Countries` VALUES (95, 'Heard and McDonald Islands', '');
INSERT INTO `Countries` VALUES (96, 'Holy See (City Vatican State)', '');
INSERT INTO `Countries` VALUES (97, 'Honduras', '');
INSERT INTO `Countries` VALUES (98, 'Hong Kong', '');
INSERT INTO `Countries` VALUES (99, 'Hungary', '');
INSERT INTO `Countries` VALUES (100, 'Iceland', '');
INSERT INTO `Countries` VALUES (101, 'India', '');
INSERT INTO `Countries` VALUES (102, 'Indonesia', '');
INSERT INTO `Countries` VALUES (103, 'Ireland', '');
INSERT INTO `Countries` VALUES (104, 'Isle of Man', '');
INSERT INTO `Countries` VALUES (105, 'Israel', '');
INSERT INTO `Countries` VALUES (106, 'Italy', '');
INSERT INTO `Countries` VALUES (107, 'Jamaica', '');
INSERT INTO `Countries` VALUES (108, 'Japan', '');
INSERT INTO `Countries` VALUES (109, 'Jersey', '');
INSERT INTO `Countries` VALUES (110, 'Jordan', '');
INSERT INTO `Countries` VALUES (111, 'Kazakhstan', '');
INSERT INTO `Countries` VALUES (112, 'Kenya', '');
INSERT INTO `Countries` VALUES (113, 'Kiribati', '');
INSERT INTO `Countries` VALUES (114, 'Korea, Republic of', '');
INSERT INTO `Countries` VALUES (115, 'Kuwait', '');
INSERT INTO `Countries` VALUES (116, 'Kyrgyzstan', '');
INSERT INTO `Countries` VALUES (117, 'Lao People''s Democratic Republic', '');
INSERT INTO `Countries` VALUES (118, 'Latvia', '');
INSERT INTO `Countries` VALUES (119, 'Lebanon', '');
INSERT INTO `Countries` VALUES (120, 'Lesotho', '');
INSERT INTO `Countries` VALUES (121, 'Liberia', '');
INSERT INTO `Countries` VALUES (122, 'Liechtenstein', '');
INSERT INTO `Countries` VALUES (123, 'Lithuania', '');
INSERT INTO `Countries` VALUES (124, 'Luxembourg', '');
INSERT INTO `Countries` VALUES (125, 'Macau', '');
INSERT INTO `Countries` VALUES (126, 'Macedonia, Former Yugoslav Republic', '');
INSERT INTO `Countries` VALUES (127, 'Madagascar', '');
INSERT INTO `Countries` VALUES (128, 'Malawi', '');
INSERT INTO `Countries` VALUES (129, 'Malaysia', '');
INSERT INTO `Countries` VALUES (130, 'Maldives', '');
INSERT INTO `Countries` VALUES (131, 'Mali', '');
INSERT INTO `Countries` VALUES (132, 'Malta', '');
INSERT INTO `Countries` VALUES (133, 'Marshall Islands', '');
INSERT INTO `Countries` VALUES (134, 'Martinique', '');
INSERT INTO `Countries` VALUES (135, 'Mauritania', '');
INSERT INTO `Countries` VALUES (136, 'Mauritius', '');
INSERT INTO `Countries` VALUES (137, 'Mayotte', '');
INSERT INTO `Countries` VALUES (138, 'Mexico', '');
INSERT INTO `Countries` VALUES (139, 'Micronesia, Federal State of', '');
INSERT INTO `Countries` VALUES (140, 'Moldova, Republic of', '');
INSERT INTO `Countries` VALUES (141, 'Monaco', '');
INSERT INTO `Countries` VALUES (142, 'Mongolia', '');
INSERT INTO `Countries` VALUES (143, 'Montserrat', '');
INSERT INTO `Countries` VALUES (144, 'Morocco', '');
INSERT INTO `Countries` VALUES (145, 'Mozambique', '');
INSERT INTO `Countries` VALUES (146, 'Namibia', '');
INSERT INTO `Countries` VALUES (147, 'Nauru', '');
INSERT INTO `Countries` VALUES (148, 'Nepal', '');
INSERT INTO `Countries` VALUES (149, 'Netherlands', '');
INSERT INTO `Countries` VALUES (150, 'Netherlands Antilles', '');
INSERT INTO `Countries` VALUES (151, 'New Caledonia', '');
INSERT INTO `Countries` VALUES (152, 'New Zealand', '');
INSERT INTO `Countries` VALUES (153, 'Nicaragua', '');
INSERT INTO `Countries` VALUES (154, 'Niger', '');
INSERT INTO `Countries` VALUES (155, 'Nigeria', '');
INSERT INTO `Countries` VALUES (156, 'Niue', '');
INSERT INTO `Countries` VALUES (157, 'Norfolk Island', '');
INSERT INTO `Countries` VALUES (158, 'Northern Mariana Island', '');
INSERT INTO `Countries` VALUES (159, 'Norway', '');
INSERT INTO `Countries` VALUES (160, 'Oman', '');
INSERT INTO `Countries` VALUES (161, 'Pakistan', '');
INSERT INTO `Countries` VALUES (162, 'Palau', '');
INSERT INTO `Countries` VALUES (163, 'Panama', '');
INSERT INTO `Countries` VALUES (164, 'Papua New Guinea', '');
INSERT INTO `Countries` VALUES (165, 'Paraguay', '');
INSERT INTO `Countries` VALUES (166, 'Peru', '');
INSERT INTO `Countries` VALUES (167, 'Philippines', '');
INSERT INTO `Countries` VALUES (168, 'Pitcairn Island', '');
INSERT INTO `Countries` VALUES (169, 'Poland', '');
INSERT INTO `Countries` VALUES (170, 'Portugal', '');
INSERT INTO `Countries` VALUES (171, 'Puerto Rico', '');
INSERT INTO `Countries` VALUES (172, 'Qatar', '');
INSERT INTO `Countries` VALUES (173, 'Reunion Island', '');
INSERT INTO `Countries` VALUES (174, 'Romania', '');
INSERT INTO `Countries` VALUES (175, 'Russian Federation', '');
INSERT INTO `Countries` VALUES (176, 'Rwanda', '');
INSERT INTO `Countries` VALUES (177, 'Saint Kitts and Nevis', '');
INSERT INTO `Countries` VALUES (178, 'Saint Lucia', '');
INSERT INTO `Countries` VALUES (179, 'Saint Vincent and the Grenadines', '');
INSERT INTO `Countries` VALUES (180, 'San Marino', '');
INSERT INTO `Countries` VALUES (181, 'Sao Tome & Principe', '');
INSERT INTO `Countries` VALUES (182, 'Saudi Arabia', '');
INSERT INTO `Countries` VALUES (183, 'Senegal', '');
INSERT INTO `Countries` VALUES (184, 'Seychelles', '');
INSERT INTO `Countries` VALUES (185, 'Sierra Leone', '');
INSERT INTO `Countries` VALUES (186, 'Singapore', '');
INSERT INTO `Countries` VALUES (187, 'Slovak Republic', '');
INSERT INTO `Countries` VALUES (188, 'Slovenia', '');
INSERT INTO `Countries` VALUES (189, 'Solomon Islands', '');
INSERT INTO `Countries` VALUES (190, 'Somalia', '');
INSERT INTO `Countries` VALUES (191, 'South Africa', '');
INSERT INTO `Countries` VALUES (192, 'South Georgia and the South Sandwich Islands', '');
INSERT INTO `Countries` VALUES (193, 'Spain', '');
INSERT INTO `Countries` VALUES (194, 'Sri Lanka', '');
INSERT INTO `Countries` VALUES (195, 'St Pierre and Miquelon', '');
INSERT INTO `Countries` VALUES (196, 'St. Helena', '');
INSERT INTO `Countries` VALUES (197, 'Suriname', '');
INSERT INTO `Countries` VALUES (198, 'Svalbard And Jan Mayen Island', '');
INSERT INTO `Countries` VALUES (199, 'Swaziland', '');
INSERT INTO `Countries` VALUES (200, 'Sweden', '');
INSERT INTO `Countries` VALUES (201, 'Switzerland', '');
INSERT INTO `Countries` VALUES (202, 'Taiwan', '');
INSERT INTO `Countries` VALUES (203, 'Tajikistan', '');
INSERT INTO `Countries` VALUES (204, 'Tanzania', '');
INSERT INTO `Countries` VALUES (205, 'Thailand', '');
INSERT INTO `Countries` VALUES (206, 'Togo', '');
INSERT INTO `Countries` VALUES (207, 'Tokelau', '');
INSERT INTO `Countries` VALUES (208, 'Tonga', '');
INSERT INTO `Countries` VALUES (209, 'Trinidad and Tobago', '');
INSERT INTO `Countries` VALUES (210, 'Tunisia', '');
INSERT INTO `Countries` VALUES (211, 'Turkey', '');
INSERT INTO `Countries` VALUES (212, 'Turkmenistan', '');
INSERT INTO `Countries` VALUES (213, 'Turks and Ciacos Islands', '');
INSERT INTO `Countries` VALUES (214, 'Tuvalu', '');
INSERT INTO `Countries` VALUES (215, 'US Minor Outlying Islands', '');
INSERT INTO `Countries` VALUES (216, 'Uganda', '');
INSERT INTO `Countries` VALUES (217, 'Ukraine', '');
INSERT INTO `Countries` VALUES (218, 'United Arab Emirates', '');
INSERT INTO `Countries` VALUES (219, 'United Kingdom', '');
INSERT INTO `Countries` VALUES (220, 'United States', '');
INSERT INTO `Countries` VALUES (221, 'Uruguay', '');
INSERT INTO `Countries` VALUES (222, 'Uzbekistan', '');
INSERT INTO `Countries` VALUES (223, 'Vanuatu', '');
INSERT INTO `Countries` VALUES (224, 'Venezuela', '');
INSERT INTO `Countries` VALUES (225, 'Vietnam', '');
INSERT INTO `Countries` VALUES (226, 'Virgin Island (British)', '');
INSERT INTO `Countries` VALUES (227, 'Virgin Islands (USA)', '');
INSERT INTO `Countries` VALUES (228, 'Wallis And Futuna Islands', '');
INSERT INTO `Countries` VALUES (229, 'Western Sahara', '');
INSERT INTO `Countries` VALUES (230, 'Western Samoa', '');
INSERT INTO `Countries` VALUES (231, 'Yemen', '');
INSERT INTO `Countries` VALUES (232, 'Yugoslavia', '');
INSERT INTO `Countries` VALUES (233, 'Zambia', '');
INSERT INTO `Countries` VALUES (234, 'Zimbabwe', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `DiscountLines`
-- 

CREATE TABLE `DiscountLines` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Discount_ID` int(10) unsigned zerofill default NULL,
  `Product_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Discount_ID` (`Discount_ID`),
  KEY `Product_ID` (`Product_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `DiscountLines`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Discounts`
-- 

CREATE TABLE `Discounts` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `LinesRequired` tinyint(4) NOT NULL default '0',
  `CashValue` smallint(5) unsigned zerofill NOT NULL default '00000',
  `GoldValue` smallint(5) unsigned zerofill NOT NULL default '00000',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Discounts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `EventConditions`
-- 

CREATE TABLE `EventConditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Event_ID` int(10) unsigned zerofill default NULL,
  `ObjectType_ID` int(10) unsigned zerofill default NULL,
  `Object_ID` int(10) unsigned zerofill default NULL,
  `Prohibited` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Required` tinyint(1) unsigned zerofill NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Event_ID` (`Event_ID`),
  KEY `ObjectType_ID` (`ObjectType_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `EventConditions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `EventRewards`
-- 

CREATE TABLE `EventRewards` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Event_ID` int(10) unsigned zerofill default NULL,
  `Place` tinyint(4) NOT NULL default '0',
  `Reward_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Event_ID` (`Event_ID`),
  KEY `Reward_ID` (`Reward_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `EventRewards`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Events`
-- 

CREATE TABLE `Events` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `Description` blob NOT NULL,
  `EventType` set('Ladder','Tournament') NOT NULL default '',
  `GroupEvent` tinyint(1) unsigned zerofill NOT NULL default '0',
  `IsOpen` tinyint(1) unsigned zerofill NOT NULL default '1',
  `AllowItems` tinyint(1) unsigned zerofill NOT NULL default '1',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Events`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `GameTurns`
-- 

CREATE TABLE `GameTurns` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Game_ID` int(10) unsigned zerofill default NULL,
  `P1_GfxLocation` varchar(50) NOT NULL default '',
  `P1_HP` smallint(6) NOT NULL default '0',
  `P1_Height` smallint(6) NOT NULL default '0',
  `P1_HeightMod` smallint(6) NOT NULL default '0',
  `P1_Manuever_ID` int(10) unsigned zerofill default NULL,
  `P1_Result_ID` int(11) unsigned zerofill default NULL,
  `P1_DamageDone` smallint(6) NOT NULL default '0',
  `P2_GfxLocation` varchar(50) NOT NULL default '',
  `P2_HP` smallint(6) NOT NULL default '0',
  `P2_Height` smallint(6) NOT NULL default '0',
  `P2_HeightMod` smallint(6) NOT NULL default '0',
  `P2_Manuever_ID` int(10) unsigned zerofill default NULL,
  `P2_Result_ID` int(11) unsigned zerofill default NULL,
  `P2_DamageDone` smallint(6) NOT NULL default '0',
  `NextGameTurn_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Game_ID` (`Game_ID`),
  KEY `P1_Manuever_ID` (`P1_Manuever_ID`),
  KEY `P2_Manuever_ID` (`P2_Manuever_ID`),
  KEY `NextGameTurn_ID` (`NextGameTurn_ID`)
) TYPE=InnoDB AUTO_INCREMENT=75 ;

-- 
-- Dumping data for table `GameTurns`
-- 

INSERT INTO `GameTurns` VALUES (0000000001, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000002, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000003, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000004, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000005, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000006, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000007, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000008, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000009, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000010, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000011, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000012, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000013, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000014, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000015, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000016, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000017, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000018, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000019, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000020, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000021, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000022, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000023, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000024, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000025, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000026, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000027, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000028, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000029, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000030, 0000000005, '', 11, 4, 0, 0000000170, NULL, 0, '', 24, 4, 0, 0000000085, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000031, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000032, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000033, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000034, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000035, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000036, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000037, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000038, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000039, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000040, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000041, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000042, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000043, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000044, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000045, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000046, 0000000005, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000047, 0000000006, '', 11, 4, 0, 0000000170, NULL, 0, '', 24, 4, 0, 0000000085, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000048, 0000000006, '', 11, 4, 0, 0000000170, NULL, 0, '', 24, 4, 0, 0000000085, NULL, 3, 0000000050);
INSERT INTO `GameTurns` VALUES (0000000049, 0000000006, '', 8, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000050, 0000000006, '', 8, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000051, 0000000007, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000052, 0000000007, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000053, 0000000007, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000054, 0000000007, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000055, 0000000007, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000056, 0000000007, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000057, 0000000008, '', 11, 4, 0, 0000000170, NULL, 0, '', 24, 4, 0, 0000000085, NULL, 3, 0000000058);
INSERT INTO `GameTurns` VALUES (0000000058, 0000000008, '', 8, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000059, 0000000009, '', 11, 4, 0, 0000000170, NULL, 0, '', 24, 4, 0, 0000000085, NULL, 3, 0000000062);
INSERT INTO `GameTurns` VALUES (0000000060, 0000000009, '', 8, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000061, 0000000009, '', 8, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000062, 0000000009, '', 8, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000063, 0000000010, '', 11, 4, 0, 0000000170, 00000000098, 0, '', 24, 4, 0, 0000000085, 00000000208, 3, 0000000066);
INSERT INTO `GameTurns` VALUES (0000000064, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000065, 0000000010, '', 11, 4, 0, 0000000170, 00000000098, 0, '', 24, 4, 0, 0000000085, 00000000208, 3, 0000000071);
INSERT INTO `GameTurns` VALUES (0000000066, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000067, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000068, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000069, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000070, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000071, 0000000010, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000072, 0000000011, '', 11, 4, 0, 0000000170, 00000000098, 0, '', 24, 4, 0, 0000000085, 00000000208, 3, 0000000073);
INSERT INTO `GameTurns` VALUES (0000000073, 0000000011, '', 9, 4, 0, NULL, NULL, 0, '', 36, 4, 0, NULL, NULL, 0, NULL);
INSERT INTO `GameTurns` VALUES (0000000074, 0000000028, '', 11, 4, 0, NULL, NULL, 0, '', 24, 4, 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `GameTurns_Conditions`
-- 

CREATE TABLE `GameTurns_Conditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Game_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Player` set('P1','P2') NOT NULL default '',
  `Conditions_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Duration` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Conditions_ID` (`Conditions_ID`),
  KEY `Game_ID` (`Game_ID`)
) TYPE=InnoDB AUTO_INCREMENT=253 ;

-- 
-- Dumping data for table `GameTurns_Conditions`
-- 

INSERT INTO `GameTurns_Conditions` VALUES (0000000001, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000002, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000003, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000004, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000005, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000006, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000007, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000008, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000009, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000010, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000011, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000012, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000013, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000014, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000015, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000016, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000017, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000018, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000019, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000020, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000021, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000022, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000023, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000024, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000025, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000026, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000027, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000028, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000029, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000030, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000031, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000032, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000033, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000034, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000035, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000036, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000037, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000038, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000039, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000040, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000041, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000042, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000043, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000044, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000045, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000046, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000047, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000048, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000049, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000050, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000051, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000052, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000053, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000054, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000055, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000056, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000057, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000058, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000059, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000060, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000061, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000062, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000063, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000064, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000065, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000066, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000067, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000068, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000069, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000070, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000071, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000072, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000073, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000074, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000075, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000076, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000077, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000078, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000079, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000080, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000081, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000082, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000083, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000084, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000085, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000086, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000087, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000088, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000089, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000090, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000091, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000092, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000093, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000094, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000095, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000096, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000097, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000098, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000099, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000100, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000101, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000102, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000103, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000104, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000105, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000106, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000107, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000108, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000109, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000110, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000111, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000112, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000113, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000114, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000115, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000116, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000117, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000118, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000119, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000120, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000121, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000122, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000123, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000124, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000125, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000126, 0000000005, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000127, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000128, 0000000005, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000137, 0000000006, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000138, 0000000006, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000139, 0000000006, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000140, 0000000006, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000141, 0000000006, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000142, 0000000006, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000143, 0000000006, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000144, 0000000006, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000145, 0000000006, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000146, 0000000006, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000147, 0000000006, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000148, 0000000006, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000149, 0000000006, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000150, 0000000006, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000151, 0000000006, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000152, 0000000006, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000153, 0000000006, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000154, 0000000006, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000155, 0000000006, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000156, 0000000006, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000157, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000158, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000159, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000160, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000161, 0000000007, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000162, 0000000007, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000163, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000164, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000165, 0000000007, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000166, 0000000007, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000167, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000168, 0000000007, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000169, 0000000007, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000170, 0000000007, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000171, 0000000008, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000172, 0000000008, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000173, 0000000008, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000174, 0000000008, 'P2', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000175, 0000000008, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000176, 0000000008, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000177, 0000000008, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000178, 0000000008, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000179, 0000000008, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000194, 0000000009, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000195, 0000000009, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000196, 0000000009, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000197, 0000000009, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000198, 0000000009, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000237, 0000000010, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000238, 0000000010, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000239, 0000000010, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000240, 0000000010, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000241, 0000000010, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000246, 0000000011, 'P1', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000247, 0000000011, 'P1', 0000000005, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000248, 0000000011, 'P2', 0000000001, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000249, 0000000011, 'P2', 0000000002, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000250, 0000000011, 'P2', 0000000028, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000251, 0000000028, 'P1', 0000000015, 1);
INSERT INTO `GameTurns_Conditions` VALUES (0000000252, 0000000028, 'P2', 0000000015, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `GameTurns_ScoreMods`
-- 

CREATE TABLE `GameTurns_ScoreMods` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Game_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Player` set('P1','P2') NOT NULL default '',
  `Score_Mods_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Duration` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Game_ID` (`Game_ID`),
  KEY `Score_Mods_ID` (`Score_Mods_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `GameTurns_ScoreMods`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `GameTurns_SpecialStates`
-- 

CREATE TABLE `GameTurns_SpecialStates` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Game_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Player` set('P1','P2') NOT NULL default '',
  `SpecialStates_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Duration` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Game_ID` (`Game_ID`),
  KEY `SpecialStates_ID` (`SpecialStates_ID`)
) TYPE=InnoDB AUTO_INCREMENT=48 ;

-- 
-- Dumping data for table `GameTurns_SpecialStates`
-- 

INSERT INTO `GameTurns_SpecialStates` VALUES (0000000001, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000002, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000003, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000004, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000005, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000006, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000007, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000008, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000009, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000010, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000011, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000012, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000013, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000014, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000015, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000016, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000017, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000018, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000019, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000020, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000021, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000022, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000023, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000024, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000025, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000026, 0000000005, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000027, 0000000005, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000028, 0000000007, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000029, 0000000007, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000030, 0000000007, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000031, 0000000007, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000032, 0000000007, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000033, 0000000007, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000034, 0000000007, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000035, 0000000007, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000036, 0000000008, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000037, 0000000008, 'P2', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000046, 0000000028, 'P1', 0000000013, 1);
INSERT INTO `GameTurns_SpecialStates` VALUES (0000000047, 0000000028, 'P2', 0000000013, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `Games`
-- 

CREATE TABLE `Games` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `Zone_ID` int(10) unsigned zerofill default NULL,
  `RestrictedKey` varchar(32) default NULL,
  `1stGameTurn_ID` int(10) unsigned zerofill default NULL,
  `P1_User_ID` int(10) unsigned zerofill default NULL,
  `P1_Character_ID` int(10) unsigned zerofill default NULL,
  `P1_Final_HP` smallint(6) NOT NULL default '0',
  `P1_ExpAwarded` smallint(6) unsigned zerofill NOT NULL default '000000',
  `P2_User_ID` int(10) unsigned zerofill default NULL,
  `P2_Character_ID` int(10) unsigned zerofill default NULL,
  `P2_Final_HP` smallint(6) NOT NULL default '0',
  `P2_ExpAwarded` smallint(6) unsigned zerofill NOT NULL default '000000',
  `Status` set('Open','Confirm','Setup','Turn','Process','Compile','Closed','Abort') NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `Zone_ID` (`Zone_ID`),
  KEY `1stGameTurn_ID` (`1stGameTurn_ID`),
  KEY `P1_User_ID` (`P1_User_ID`),
  KEY `P1_Character_ID` (`P1_Character_ID`),
  KEY `P2_User_ID` (`P2_User_ID`),
  KEY `P2_Character_ID` (`P2_Character_ID`)
) TYPE=InnoDB AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `Games`
-- 

INSERT INTO `Games` VALUES (0000000001, 'Test', 0000000001, '', NULL, NULL, NULL, 0, 000000, NULL, NULL, 0, 000000, '');
INSERT INTO `Games` VALUES (0000000002, 'Test2', 0000000001, '', NULL, NULL, NULL, 0, 000000, NULL, NULL, 0, 000000, '');
INSERT INTO `Games` VALUES (0000000003, 'Test3', 0000000002, '', NULL, NULL, NULL, 0, 000000, NULL, NULL, 0, 000000, '');
INSERT INTO `Games` VALUES (0000000004, 'Test4', 0000000001, '', NULL, NULL, NULL, 0, 000000, NULL, NULL, 0, 000000, '');
INSERT INTO `Games` VALUES (0000000005, 'Corrie Setup Debug Test', 0000000001, NULL, 0000000046, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000006, 'Corrie Process Debug Test', 0000000001, 'Null', 0000000048, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000007, 'Corrie Setup and Process Debug Test', 0000000001, NULL, 0000000056, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000008, 'Corrie Process Only Debug Extends Test', 0000000001, NULL, 0000000057, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000009, 'Setup and Process extends Test (after debug)', 0000000001, NULL, 0000000059, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000010, 'Corrie Character Test 1', 0000000001, NULL, 0000000065, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000011, 'Corrie Character Test 2', 0000000001, NULL, 0000000072, 0000000039, 0000000020, 0, 000000, 0000000038, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000012, '1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000013, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000014, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000015, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000016, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000017, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000018, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000019, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000020, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000021, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000022, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000023, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000024, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000025, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000026, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000027, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000028, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, 0000000074, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Turn');
INSERT INTO `Games` VALUES (0000000029, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');
INSERT INTO `Games` VALUES (0000000030, 'AUTOTEST 2005-08-26 Game #1', 0000000001, NULL, NULL, 0000000039, 0000000020, 0, 000000, 0000000039, 0000000016, 0, 000000, 'Setup');

-- --------------------------------------------------------

-- 
-- Table structure for table `GroupMembers`
-- 

CREATE TABLE `GroupMembers` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Group_ID` int(10) unsigned zerofill default NULL,
  `User_ID` int(10) unsigned zerofill default NULL,
  `AccessLevel_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Group_ID` (`Group_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `AccessLevel_ID` (`AccessLevel_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `GroupMembers`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Groups`
-- 

CREATE TABLE `Groups` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `Description` blob NOT NULL,
  `Key` varchar(32) NOT NULL default '',
  `CommonObjectType_ID` int(10) unsigned zerofill default NULL,
  `CommonObject_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `CommonObjectType_ID` (`CommonObjectType_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Groups`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Items`
-- 

CREATE TABLE `Items` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Mould_ID` int(10) unsigned zerofill default NULL,
  `User_ID` int(10) unsigned zerofill default NULL,
  `AssignedCharacter_ID` int(10) unsigned zerofill default NULL,
  `AssignedArchetypeBodyLocation_ID` int(10) unsigned zerofill default NULL,
  `AssignedAt` varchar(11) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `Mould_ID` (`Mould_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `AssignedArchetypeBodyLocation_ID` (`AssignedArchetypeBodyLocation_ID`),
  KEY `AssignedCharacter_ID` (`AssignedCharacter_ID`)
) TYPE=InnoDB AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `Items`
-- 

INSERT INTO `Items` VALUES (0000000003, 0000000001, 0000000037, 0000000015, 0000000043, '');
INSERT INTO `Items` VALUES (0000000004, 0000000002, 0000000037, 0000000015, NULL, '');
INSERT INTO `Items` VALUES (0000000005, 0000000002, 0000000037, 0000000015, NULL, '');
INSERT INTO `Items` VALUES (0000000006, 0000000002, 0000000037, 0000000015, NULL, '');
INSERT INTO `Items` VALUES (0000000007, 0000000002, 0000000037, 0000000015, NULL, '');
INSERT INTO `Items` VALUES (0000000008, 0000000003, 0000000037, 0000000015, NULL, '');
INSERT INTO `Items` VALUES (0000000010, 0000000005, 0000000037, 0000000015, NULL, '');
INSERT INTO `Items` VALUES (0000000011, 0000000004, 0000000037, 0000000015, NULL, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `LicenseRestrictions`
-- 

CREATE TABLE `LicenseRestrictions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Subscription_ID` int(10) unsigned zerofill default NULL,
  `BuyArchetypes` tinyint(1) unsigned zerofill NOT NULL default '1',
  `BuyEvents` tinyint(1) unsigned zerofill NOT NULL default '1',
  `BuyItems` tinyint(1) unsigned zerofill NOT NULL default '1',
  `ManageGroups` tinyint(1) unsigned zerofill NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  KEY `Subscription_ID` (`Subscription_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `LicenseRestrictions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `LocationRules`
-- 

CREATE TABLE `LocationRules` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Mould_ID` int(10) unsigned zerofill default NULL,
  `BodyLocations_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Mould_ID` (`Mould_ID`),
  KEY `BodyLocations_ID` (`BodyLocations_ID`)
) TYPE=InnoDB AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `LocationRules`
-- 

INSERT INTO `LocationRules` VALUES (0000000001, 0000000002, 0000000007);
INSERT INTO `LocationRules` VALUES (0000000002, 0000000004, 0000000007);
INSERT INTO `LocationRules` VALUES (0000000003, 0000000003, 0000000012);
INSERT INTO `LocationRules` VALUES (0000000004, 0000000003, 0000000013);
INSERT INTO `LocationRules` VALUES (0000000005, 0000000001, 0000000002);
INSERT INTO `LocationRules` VALUES (0000000006, 0000000001, 0000000018);
INSERT INTO `LocationRules` VALUES (0000000007, 0000000001, 0000000019);
INSERT INTO `LocationRules` VALUES (0000000008, 0000000001, 0000000020);
INSERT INTO `LocationRules` VALUES (0000000009, 0000000005, 0000000002);
INSERT INTO `LocationRules` VALUES (0000000010, 0000000005, 0000000018);
INSERT INTO `LocationRules` VALUES (0000000011, 0000000005, 0000000019);
INSERT INTO `LocationRules` VALUES (0000000012, 0000000005, 0000000020);

-- --------------------------------------------------------

-- 
-- Table structure for table `Manuevers`
-- 

CREATE TABLE `Manuevers` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Category` varchar(50) NOT NULL default '',
  `Class` tinyint(3) NOT NULL default '1',
  `Name` varchar(50) NOT NULL default '',
  `Description` text NOT NULL,
  `Archetype_ID` int(10) unsigned zerofill default NULL,
  `Block` tinyint(3) unsigned zerofill NOT NULL default '000',
  `Colour` varchar(20) NOT NULL default '',
  `PG` tinyint(3) unsigned zerofill NOT NULL default '000',
  `PG_X` tinyint(3) unsigned zerofill NOT NULL default '000',
  `Mod` smallint(6) NOT NULL default '0',
  `ModSpecial` smallint(6) NOT NULL default '0',
  `ModSpecialState_ID` int(10) unsigned zerofill default NULL,
  `CanDual` tinyint(1) unsigned zerofill NOT NULL default '0',
  `IsExtended` tinyint(1) unsigned zerofill NOT NULL default '0',
  `IsNull` tinyint(1) unsigned zerofill NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Archetype_ID` (`Archetype_ID`),
  KEY `ModSpecialState_ID` (`ModSpecialState_ID`)
) TYPE=InnoDB AUTO_INCREMENT=225 ;

-- 
-- Dumping data for table `Manuevers`
-- 

INSERT INTO `Manuevers` VALUES (0000000001, 'Down Swing', 1, 'Bash', 'The most powerful Overhead Swing, strong enough to smash a shield. Follow-through could cause you to fall down. Effective for heavy-ended weapons.', 0000000001, 001, 'Orange', 036, 050, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000002, 'Down Swing', 1, 'Smash', 'Overhead Swing. Not as powerful as Bash, but faster. Effective for heavy-ended weapons.', 0000000001, 002, 'Orange', 024, 050, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000003, 'Side Swing', 2, 'Strong', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000001, 003, 'Orange', 028, 064, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000004, 'Side Swing', 2, 'High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000001, 004, 'Red', 010, 064, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000005, 'Side Swing', 2, 'Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000001, 005, 'Blue', 002, 058, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000006, 'Thrust', 3, 'Hook Shield', 'Attempt to pull opponents shield away. Vulnerable to Side Swings and other Thrusts.', 0000000001, 006, 'Red', 032, 054, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000007, 'Thrust', 3, 'Hook Leg', 'Attempt to pull opponent’s leg away. Vulnerable to head hits. ', 0000000001, 007, 'Blue', 014, 060, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000008, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000001, 015, 'Blue', 034, 056, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000009, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000001, 016, 'Yellow', 040, 058, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000010, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000001, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000011, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000001, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000012, 'Jump', 8, 'Up', 'Avoids Low attacks, but vulnerable to High attacks.', 0000000001, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000013, 'Jump', 8, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000001, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000014, 'Jump', 8, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000001, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000015, 'Jump', 8, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000001, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000016, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000001, 025, 'White', 050, 000, 5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000017, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000001, 026, 'Black', 064, 000, 3, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000018, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000001, 027, 'Black', 058, 000, 3, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000019, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000001, 029, 'White', 060, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000020, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000001, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000021, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000001, 031, 'Brown', 052, 000, -4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000022, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000001, 032, 'Brown', 062, 000, -4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000023, 'Down Swing', 1, 'Bash', 'The most powerful Overhead Swing, strong enough to smash a shield. Follow-through could cause you to fall down. Effective for heavy-ended weapons.', 0000000002, 001, 'Orange', 036, 050, 4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000024, 'Down Swing', 1, 'Smash', 'Overhead Swing. Not as powerful as Bash, but faster. Effective for heavy-ended weapons.', 0000000002, 002, 'Orange', 024, 050, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000025, 'Side Swing', 2, 'Strong', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000002, 003, 'Orange', 028, 064, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000026, 'Side Swing', 2, 'High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000002, 004, 'Red', 010, 064, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000027, 'Side Swing', 2, 'Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000002, 005, 'Blue', 002, 058, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000028, 'Thrust', 3, 'High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000002, 006, 'Red', 032, 054, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000029, 'Thrust', 3, 'Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000002, 007, 'Blue', 014, 060, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000030, 'Fake', 4, 'High', 'Starts High, scores Low. Effective if you are prohibited from doing Low (e.g. blue) moves. Vulnerable to Blocks.', 0000000002, 008, 'Red', 042, 058, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000031, 'Protected Attack', 5, 'Down Swing', 'Not as effective as other Down Swings, but safer.', 0000000002, 012, 'Orange', 044, 056, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000032, 'Protected Attack', 5, 'Side Swing', 'Not as effective as other Down Swings, but safer.', 0000000002, 013, 'Blue', 048, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000033, 'Protected Attack', 5, 'Thrust', 'Not as effective as other Down Swings, but safer.', 0000000002, 014, 'Red', 006, 056, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000034, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000002, 015, 'Blue', 034, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000035, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000002, 016, 'Yellow', 040, 058, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000036, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000002, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000037, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000002, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000038, 'Shield Block', 7, 'High', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000002, 019, 'Green', 026, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000039, 'Shield Block', 7, 'Low', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000002, 020, 'Green', 004, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000040, 'Jump', 8, 'Up', 'Avoids Low attacks, but vulnerable to High attacks.', 0000000002, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000041, 'Jump', 8, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000002, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000042, 'Jump', 8, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000002, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000043, 'Jump', 8, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000002, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000044, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000002, 025, 'White', 050, 000, 4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000045, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000002, 026, 'Black', 064, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000046, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000002, 027, 'Black', 058, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000047, 'Extended Range', 99, 'Thrust High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000002, 028, 'White', 054, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000048, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000002, 029, 'White', 060, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000049, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000002, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000050, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000002, 031, 'Brown', 052, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000051, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000002, 032, 'Brown', 062, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000052, 'Down Swing', 1, 'Smash', 'Overhead Swing. Not as powerful as Bash, but faster. Effective for heavy-ended weapons.', 0000000003, 002, 'Orange', 024, 050, 4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000053, 'Side Swing', 2, 'Strong', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000003, 003, 'Orange', 028, 064, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000054, 'Side Swing', 2, 'High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000003, 004, 'Red', 010, 064, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000055, 'Side Swing', 2, 'Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000003, 005, 'Blue', 002, 058, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000056, 'Thrust', 3, 'High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000003, 006, 'Red', 032, 054, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000057, 'Thrust', 3, 'Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000003, 007, 'Blue', 014, 060, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000058, 'Fake', 4, 'High', 'Starts High, scores Low. Effective if you are prohibited from doing Low (e.g. blue) moves. Vulnerable to Blocks.', 0000000003, 008, 'Red', 042, 058, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000059, 'Fake', 4, 'Low', 'Starts Low, scores High. Effective if you are prohibited from doing High (e.g. Red) moves. Vulnerable to Blocks.', 0000000003, 009, 'Blue', 012, 064, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000060, 'Fake', 4, 'Side Swing', 'Appears to be a Swing, but ends in Thrust. Effective if you are prohibited from Thrusting, but not a strong attack.', 0000000003, 010, 'Blue', 022, 054, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000061, 'Fake', 4, 'Thrust', 'Appears to be a Thrust but ends in a Swing. Effective if you are prohibited from Swinging but not a strong attack.', 0000000003, 011, 'Red', 038, 058, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000062, 'Protected Attack', 5, 'Down Swing', 'Not as effective as other Down Swings, but safer.', 0000000003, 012, 'Orange', 044, 056, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000063, 'Protected Attack', 5, 'Side Swing', 'Not as effective as other Down Swings, but safer.', 0000000003, 013, 'Blue', 048, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000064, 'Protected Attack', 5, 'Thrust', 'Not as effective as other Down Swings, but safer.', 0000000003, 014, 'Red', 006, 056, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000065, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000003, 015, 'Blue', 034, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000066, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000003, 016, 'Yellow', 040, 058, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000067, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000003, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000068, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000003, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000069, 'Special', 6, 'Shield Block', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000003, 019, 'Green', 026, 056, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000070, 'Special', 6, 'Tail Whip', 'Powerful tail action but good chance of being scored on.', 0000000003, 020, 'Green', 004, 056, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000071, 'Jump', 7, 'Up', 'Low attacks, but vulnerable to High attacks.', 0000000003, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000072, 'Jump', 7, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000003, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000073, 'Jump', 7, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000003, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000074, 'Jump', 7, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000003, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000075, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000003, 025, 'White', 050, 000, 5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000076, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000003, 026, 'Black', 064, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000077, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000003, 027, 'Black', 058, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000078, 'Extended Range', 99, 'Thrust High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000003, 028, 'White', 054, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000079, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000003, 029, 'White', 060, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000080, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000003, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000081, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000003, 031, 'Brown', 052, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000082, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000003, 032, 'Brown', 062, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000083, 'Down Swing', 1, 'Smash', 'Overhead Swing. Not as powerful as Bash, but faster. Effective for heavy-ended weapons.', 0000000004, 002, 'Orange', 024, 050, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000084, 'Side Swing', 2, 'Strong', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000004, 003, 'Orange', 028, 064, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000085, 'Side Swing', 2, 'High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000004, 004, 'Red', 010, 064, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000086, 'Side Swing', 2, 'Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000004, 005, 'Blue', 002, 058, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000087, 'Thrust', 3, 'High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000004, 006, 'Red', 032, 054, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000088, 'Thrust', 3, 'Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000004, 007, 'Blue', 014, 060, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000089, 'Fake', 4, 'High', 'Starts High, scores Low. Effective if you are prohibited from doing Low (e.g. blue) moves. Vulnerable to Blocks.', 0000000004, 008, 'Red', 042, 058, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000090, 'Fake', 4, 'Low', 'Starts Low, scores High. Effective if you are prohibited from doing High (e.g. Red) moves. Vulnerable to Blocks.', 0000000004, 009, 'Blue', 012, 064, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000091, 'Fake', 4, 'Side Swing', 'Appears to be a Swing, but ends in Thrust. Effective if you are prohibited from Thrusting, but not a strong attack.', 0000000004, 010, 'Blue', 022, 054, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000092, 'Fake', 4, 'Thrust', 'Appears to be a Thrust but ends in a Swing. Effective if you are prohibited from Swinging but not a strong attack.', 0000000004, 011, 'Red', 038, 058, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000093, 'Protected Attack', 5, 'Down Swing', 'Not as effective as other Down Swings, but safer.', 0000000004, 012, 'Orange', 044, 056, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000094, 'Protected Attack', 5, 'Side Swing', 'Not as effective as other Down Swings, but safer.', 0000000004, 013, 'Blue', 048, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000095, 'Protected Attack', 5, 'Thrust', 'Not as effective as other Down Swings, but safer.', 0000000004, 014, 'Red', 006, 056, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000096, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000004, 015, 'Blue', 034, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000097, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000004, 016, 'Yellow', 040, 058, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000098, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000004, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000099, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000004, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000100, 'Shield Block', 7, 'High', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000004, 019, 'Green', 026, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000101, 'Shield Block', 7, 'Low', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000004, 020, 'Green', 004, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000102, 'Jump', 8, 'Up', 'Avoids Low attacks, but vulnerable to High attacks', 0000000004, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000103, 'Jump', 8, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000004, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000104, 'Jump', 8, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000004, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000105, 'Jump', 8, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000004, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000106, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000004, 025, 'White', 050, 000, 3, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000107, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000004, 026, 'Black', 064, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000108, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000004, 027, 'Black', 058, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000109, 'Extended Range', 99, 'Thrust High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000004, 028, 'White', 054, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000110, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000004, 029, 'White', 060, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000111, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000004, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000112, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000004, 031, 'Brown', 052, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000113, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000004, 032, 'Brown', 062, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000114, 'Down Swing', 1, 'Bash', 'The most powerful Overhead Swing, strong enough to smash a shield. Follow-through could cause you to fall down. Effective for heavy-ended weapons.', 0000000005, 001, 'Orange', 036, 050, 4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000115, 'Down Swing', 1, 'Split Helm', 'Overhead Swing.', 0000000005, 002, 'Orange', 024, 050, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000116, 'Side Swing', 2, 'Spin', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000005, 003, 'Orange', 028, 064, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000117, 'Side Swing', 2, 'Head', 'Not as powerful as Spin, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000005, 004, 'Red', 010, 064, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000118, 'Side Swing', 2, 'Body', 'Similar to Side Swing Head, but aimed at the body. Not as powerful as Spin, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000005, 005, 'Blue', 002, 058, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000119, 'Thrust', 3, 'Head', 'Fast, aggressive attack to the head, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000005, 006, 'Red', 032, 064, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000120, 'Thrust', 3, 'Body', 'Fast, aggressive attack to the body. Vulnerable to head hits. Effective for pointed Weapons.', 0000000005, 007, 'Blue', 014, 060, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000121, 'Block and Strike', 4, 'Swing', 'Block opponents attack by striking his weapon and using the recoil to swing into him.', 0000000005, 008, 'Red', 012, 064, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000122, 'Block and Strike', 4, 'Thrust', 'Block opponents attack by striking his weapon and using the recoil to thrust into him.', 0000000005, 011, 'Red', 022, 054, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000123, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000005, 015, 'Blue', 034, 056, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000124, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000005, 016, 'Yellow', 040, 058, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000125, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000005, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000126, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000005, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000127, 'Jump', 8, 'Up', 'Avoids Low attacks, but vulnerable to High attacks.', 0000000005, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000128, 'Jump', 8, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000005, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000129, 'Jump', 8, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000005, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000130, 'Jump', 8, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000005, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000131, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000005, 025, 'White', 050, 000, 4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000132, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000005, 026, 'Black', 064, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000133, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000005, 027, 'Black', 058, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000134, 'Extended Range', 99, 'Thrust High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000005, 028, 'White', 054, 000, -1, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000135, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000005, 029, 'White', 060, 000, -1, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000136, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000005, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000137, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000005, 031, 'Brown', 052, 000, -4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000138, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000005, 032, 'Brown', 062, 000, -4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000139, 'Down Swing', 1, 'Smash', 'Overhead Swing. Not as powerful as Bash, but faster. Effective for heavy-ended weapons.', 0000000006, 002, 'Orange', 024, 050, 4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000140, 'Side Swing', 2, 'Strong', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000006, 003, 'Orange', 028, 064, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000141, 'Side Swing', 2, 'High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000006, 004, 'Red', 010, 064, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000142, 'Side Swing', 2, 'Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000006, 005, 'Blue', 002, 058, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000143, 'Thrust', 3, 'High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000006, 006, 'Red', 032, 054, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000144, 'Thrust', 3, 'Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000006, 007, 'Blue', 014, 060, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000145, 'Fake', 4, 'High', 'Starts High, scores Low. Effective if you are prohibited from doing Low (e.g. blue) moves. Vulnerable to Blocks.', 0000000006, 008, 'Red', 042, 058, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000146, 'Fake', 4, 'Low', 'Starts Low, scores High. Effective if you are prohibited from doing High (e.g. Red) moves. Vulnerable to Blocks.', 0000000006, 009, 'Blue', 012, 064, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000147, 'Fake', 4, 'Side Swing', 'Appears to be a Swing, but ends in Thrust. Effective if you are prohibited from Thrusting, but not a strong attack.', 0000000006, 010, 'Blue', 022, 054, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000148, 'Fake', 4, 'Thrust', 'Appears to be a Thrust but ends in a Swing. Effective if you are prohibited from Swinging but not a strong attack.', 0000000006, 011, 'Red', 038, 058, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000149, 'Protected Attack', 5, 'Down Swing', 'Not as effective as other Down Swings, but safer.', 0000000006, 012, 'Orange', 044, 056, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000150, 'Protected Attack', 5, 'Side Swing', 'Not as effective as other Down Swings, but safer.', 0000000006, 013, 'Blue', 048, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000151, 'Protected Attack', 5, 'Thrust', 'Not as effective as other Down Swings, but safer.', 0000000006, 014, 'Red', 006, 056, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000152, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000006, 015, 'Blue', 034, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000153, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000006, 016, 'Yellow', 040, 058, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000154, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000006, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000155, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000006, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000156, 'Shield Block', 7, 'High', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000006, 019, 'Green', 026, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000157, 'Shield Block', 7, 'Low', 'Attack using Shield to strike opponent off balance. Vulnerable to Shield-Smashing attacks.', 0000000006, 020, 'Green', 004, 056, 1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000158, 'Jump', 8, 'Up', 'Avoids Low attacks, but vulnerable to High attacks.', 0000000006, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000159, 'Jump', 8, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000006, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000160, 'Jump', 8, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000006, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000161, 'Jump', 8, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000006, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000162, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000006, 025, 'White', 050, 000, 4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000163, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000006, 026, 'Black', 064, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000164, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000006, 027, 'Black', 058, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000165, 'Extended Range', 99, 'Thrust High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000006, 028, 'White', 054, 000, 5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000166, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000006, 029, 'White', 060, 000, -5, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000167, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000006, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000168, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000006, 031, 'Brown', 052, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000169, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000006, 032, 'Brown', 062, 000, -6, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000170, 'Down Swing', 1, 'Bash', 'The most powerful Overhead Swing, strong enough to smash a shield. Follow-through could cause you to fall down. Effective for heavy-ended weapons.', 0000000007, 001, 'Orange', 036, 050, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000171, 'Down Swing', 1, 'Smash', 'Overhead Swing. Not as powerful as Bash, but faster. Effective for heavy-ended weapons.', 0000000007, 002, 'Orange', 024, 050, 2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000172, 'Side Swing', 2, 'Strong', 'The most powerful Side Swing. Good chance to hit – and be hit. Follow-though could spin you around. Effective for slashing weapons.', 0000000007, 003, 'Orange', 028, 064, 1, 0, NULL, 1, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000173, 'Side Swing', 2, 'High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000007, 004, 'Red', 010, 064, 0, 0, NULL, 1, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000174, 'Side Swing', 2, 'Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000007, 005, 'Blue', 002, 058, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000175, 'Thrust', 3, 'High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000007, 006, 'Red', 032, 054, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000176, 'Thrust', 3, 'Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000007, 007, 'Blue', 014, 060, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000177, 'Block and Strike', 4, 'Swing', 'Block opponents attack by striking his weapon and using the recoil to swing into him.', 0000000007, 008, 'Red', 044, 064, -1, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000178, 'Block and Strike', 4, 'Thrust', 'Block opponents attack by striking his weapon and using the recoil to thrust into him.', 0000000007, 009, 'Blue', 022, 060, -2, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000179, 'Fake', 5, 'Low', 'Starts Low, scores High. Effective if you are prohibited from doing High (e.g. Red) moves. Vulnerable to Blocks.', 0000000007, 013, 'Blue', 012, 064, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000180, 'Fake', 5, 'High', 'Starts High, scores Low. Effective if you are prohibited from doing Low (e.g. blue) moves. Vulnerable to Blocks.', 0000000007, 014, 'Red', 042, 058, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000181, 'Special', 6, 'Kick', 'Dangerous attempt to knock opponent down. Very vulnerable unless opponent cannot attack.', 0000000007, 015, 'Blue', 034, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000182, 'Special', 6, 'Wild Swing', 'Desperate, un-aimed swing. Very vulnerable.', 0000000007, 016, 'Yellow', 040, 058, 3, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000183, 'Special', 6, 'Dislodge Weapon', 'Attempt to disarm opponent. Effective against Thrusts and Fakes, but vulnerable to aggressive or shielded attacks.', 0000000007, 017, 'Blue', 030, 058, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000184, 'Special', 6, 'Retrieve Weapon', 'Attempt to pick up a lost weapon. Dangerous unless opponent cannot attack.', 0000000007, 018, 'Green', 046, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000185, 'Block', 7, 'High', 'Block opponents attack by striking High.', 0000000007, 019, 'Green', 026, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000186, 'Block', 7, 'Low', 'Block opponents attack by striking Low.', 0000000007, 020, 'Green', 004, 056, 0, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000187, 'Jump', 8, 'Up', 'Avoids Low attacks, but vulnerable to High attacks.', 0000000007, 021, 'Green', 018, 052, -6, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000188, 'Jump', 8, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000007, 022, 'Yellow', 008, 052, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000189, 'Jump', 8, 'Duck', 'Effective against High attacks. Vulnerable to Low and Down Swings. Can be used to slip behind opponent.', 0000000007, 023, 'Green', 020, 052, -5, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000190, 'Jump', 8, 'Away', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000007, 024, 'Yellow', 016, 062, -4, 0, NULL, 0, 0, 0);
INSERT INTO `Manuevers` VALUES (0000000191, 'Extended Range', 99, 'Charge', 'Aggressively closes range to opponent. Very vulnerable to attack.', 0000000007, 025, 'White', 050, 000, 3, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000192, 'Extended Range', 99, 'Swing High', 'Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000007, 026, 'Black', 064, 000, 1, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000193, 'Extended Range', 99, 'Swing Low', 'Similar to Side Swing High, but aimed at the legs. Not as powerful as Strong, but safer and faster. Follow-though can still spin you, though. Effective for slashing weapons.', 0000000007, 027, 'Black', 058, 000, 1, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000194, 'Extended Range', 99, 'Thrust High', 'Fast, aggressive attack to the body, but vulnerable to Side Swings and other Thrusts. Effective for pointed weapons.', 0000000007, 028, 'White', 054, 000, -1, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000195, 'Extended Range', 99, 'Thrust Low', 'Fast, aggressive attack to the legs. Vulnerable to head hits. Effective for pointed Weapons.', 0000000007, 029, 'White', 060, 000, -1, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000196, 'Extended Range', 99, 'Block and Close', 'A protective move to close range and block your opponent.', 0000000007, 030, 'Brown', 056, 000, 0, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000197, 'Extended Range', 99, 'Dodge', 'Effective against Down Swings and Thrusts, but vulnerable to Side Swings. Can sometimes be used to slip behind opponent.', 0000000007, 031, 'Brown', 052, 000, -4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000198, 'Extended Range', 99, 'Jump Back', 'Effective against Swings, but vulnerable to Thrusts. Can move you to Extended Range and cause your opponent to fall down or turn around.', 0000000007, 032, 'Brown', 062, 000, -4, 0, NULL, 0, 1, 0);
INSERT INTO `Manuevers` VALUES (0000000199, '', 4, '', '', 0000000001, 008, 'Red', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000200, '', 4, '', '', 0000000001, 009, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000201, '', 4, '', '', 0000000001, 010, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000202, '', 4, '', '', 0000000001, 011, 'Red', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000203, '', 5, '', '', 0000000001, 012, 'Orange', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000204, '', 5, '', '', 0000000001, 013, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000205, '', 5, '', '', 0000000001, 014, 'Red', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000206, '', 7, '', '', 0000000001, 019, 'Green', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000207, '', 7, '', '', 0000000001, 020, 'Green', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000208, '', 99, '', '', 0000000001, 028, 'White', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000209, '', 4, '', '', 0000000002, 009, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000210, '', 4, '', '', 0000000002, 010, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000211, '', 4, '', '', 0000000002, 011, 'Red', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000212, '', 1, '', '', 0000000003, 001, 'Orange', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000213, '', 1, '', '', 0000000004, 001, 'Orange', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000214, '', 4, '', '', 0000000005, 009, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000215, '', 4, '', '', 0000000005, 010, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000216, '', 5, '', '', 0000000005, 012, 'Orange', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000217, '', 5, '', '', 0000000005, 013, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000218, '', 5, '', '', 0000000005, 014, 'Red', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000219, '', 7, '', '', 0000000005, 019, 'Green', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000220, '', 7, '', '', 0000000005, 020, 'Green', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000221, '', 1, '', '', 0000000006, 001, 'Orange', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000222, '', 4, '', '', 0000000007, 010, 'Blue', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000223, '', 4, '', '', 0000000007, 011, 'Red', 000, 000, 0, 0, NULL, 0, 0, 1);
INSERT INTO `Manuevers` VALUES (0000000224, '', 5, '', '', 0000000007, 012, 'Orange', 000, 000, 0, 0, NULL, 0, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `Moulds`
-- 

CREATE TABLE `Moulds` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(40) NOT NULL default '',
  `Description` text NOT NULL,
  `GfxLocation` varchar(50) NOT NULL default '',
  `IsReward` tinyint(1) unsigned zerofill NOT NULL default '0',
  `ModHP` tinyint(4) NOT NULL default '0',
  `ModLuckPoints` tinyint(4) NOT NULL default '0',
  `ModMagicPoints` tinyint(4) NOT NULL default '0',
  `ModMagicResistance` tinyint(4) NOT NULL default '0',
  `ModPoisonPoints` tinyint(4) NOT NULL default '0',
  `ModPoisonResistance` tinyint(4) NOT NULL default '0',
  `ModTactics` tinyint(4) NOT NULL default '0',
  `RelatedProduct_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `RelatedProduct_ID` (`RelatedProduct_ID`)
) TYPE=InnoDB AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `Moulds`
-- 

INSERT INTO `Moulds` VALUES (0000000001, 'Mithril Armour', 'Super light weight armour crafted from the finest mithril metals', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `Moulds` VALUES (0000000002, 'Magic Orb', 'A Magical Orb', '', 0, 0, -1, 3, 0, 0, 0, 0, NULL);
INSERT INTO `Moulds` VALUES (0000000003, 'Bronze Sword', 'A Bronze Sword of the Ancients', '', 0, 0, 0, 0, 0, 0, 0, 1, NULL);
INSERT INTO `Moulds` VALUES (0000000004, 'Pixie Dust', 'Magical Pixie Dust (damaging to your health!)', '', 0, -2, 0, 5, 0, 0, 0, 0, NULL);
INSERT INTO `Moulds` VALUES (0000000005, 'Bone Armour', 'Armour crafted from the tusks of red Dragons', '', 0, 2, 0, 0, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `Moulds_Conditions`
-- 

CREATE TABLE `Moulds_Conditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Moulds_ID` int(10) unsigned zerofill default NULL,
  `Conditions_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Duration` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Moulds_ID` (`Moulds_ID`),
  KEY `Conditions_ID` (`Conditions_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Moulds_Conditions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Moulds_Score_Modifiers`
-- 

CREATE TABLE `Moulds_Score_Modifiers` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Moulds_ID` int(10) unsigned zerofill default NULL,
  `Score_Mods_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Duration` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  KEY `Score_Mods_ID` (`Score_Mods_ID`),
  KEY `Moulds_ID` (`Moulds_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Moulds_Score_Modifiers`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Move_Logic`
-- 

CREATE TABLE `Move_Logic` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Archetype_ID` int(10) unsigned zerofill default NULL,
  `PG` tinyint(3) unsigned zerofill NOT NULL default '000',
  `ManueverLookup` set('2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40','42','44','46','48','50','52','54','56','58','60','62','64') NOT NULL default '',
  `PageLookup` set('2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40','42','44','46','48','50','52','54','56','58','60','62','64') NOT NULL default '',
  `Results_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Results_ID` (`Results_ID`),
  KEY `Archetype_ID` (`Archetype_ID`)
) TYPE=InnoDB AUTO_INCREMENT=4481 ;

-- 
-- Dumping data for table `Move_Logic`
-- 

INSERT INTO `Move_Logic` VALUES (0000000001, 0000000001, 049, '2', '2', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000002, 0000000001, 000, '2', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000003, 0000000001, 000, '2', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000004, 0000000001, 013, '2', '8', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000005, 0000000001, 013, '2', '10', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000006, 0000000001, 000, '2', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000007, 0000000001, 049, '2', '14', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000008, 0000000001, 057, '2', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000009, 0000000001, 037, '2', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000010, 0000000001, 031, '2', '20', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000011, 0000000001, 000, '2', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000012, 0000000001, 013, '2', '24', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000013, 0000000001, 000, '2', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000014, 0000000001, 013, '2', '28', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000015, 0000000001, 049, '2', '30', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000016, 0000000001, 013, '2', '32', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000017, 0000000001, 041, '2', '34', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000018, 0000000001, 013, '2', '36', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000019, 0000000001, 000, '2', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000020, 0000000001, 049, '2', '40', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000021, 0000000001, 000, '2', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000022, 0000000001, 000, '2', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000023, 0000000001, 027, '2', '46', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000024, 0000000001, 000, '2', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000025, 0000000001, 005, '4', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000026, 0000000001, 000, '4', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000027, 0000000001, 000, '4', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000028, 0000000001, 033, '4', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000029, 0000000001, 003, '4', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000030, 0000000001, 000, '4', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000031, 0000000001, 011, '4', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000032, 0000000001, 057, '4', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000033, 0000000001, 037, '4', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000034, 0000000001, 029, '4', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000035, 0000000001, 000, '4', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000036, 0000000001, 015, '4', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000037, 0000000001, 000, '4', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000038, 0000000001, 003, '4', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000039, 0000000001, 015, '4', '30', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000040, 0000000001, 009, '4', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000041, 0000000001, 025, '4', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000042, 0000000001, 015, '4', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000043, 0000000001, 000, '4', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000044, 0000000001, 005, '4', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000045, 0000000001, 000, '4', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000046, 0000000001, 000, '4', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000047, 0000000001, 043, '4', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000048, 0000000001, 000, '4', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000049, 0000000001, 053, '6', '2', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000050, 0000000001, 000, '6', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000051, 0000000001, 000, '6', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000052, 0000000001, 033, '6', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000053, 0000000001, 003, '6', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000054, 0000000001, 000, '6', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000055, 0000000001, 049, '6', '14', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000056, 0000000001, 053, '6', '16', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000057, 0000000001, 013, '6', '18', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000058, 0000000001, 029, '6', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000059, 0000000001, 000, '6', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000060, 0000000001, 031, '6', '24', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000061, 0000000001, 000, '6', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000062, 0000000001, 031, '6', '28', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000063, 0000000001, 005, '6', '30', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000064, 0000000001, 045, '6', '32', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000065, 0000000001, 013, '6', '34', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000066, 0000000001, 053, '6', '36', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000067, 0000000001, 000, '6', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000068, 0000000001, 031, '6', '40', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000069, 0000000001, 000, '6', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000070, 0000000001, 000, '6', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000071, 0000000001, 053, '6', '46', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000072, 0000000001, 000, '6', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000073, 0000000001, 005, '8', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000074, 0000000001, 000, '8', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000075, 0000000001, 000, '8', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000076, 0000000001, 033, '8', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000077, 0000000001, 003, '8', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000078, 0000000001, 000, '8', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000079, 0000000001, 021, '8', '14', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000080, 0000000001, 057, '8', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000081, 0000000001, 037, '8', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000082, 0000000001, 029, '8', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000083, 0000000001, 000, '8', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000084, 0000000001, 015, '8', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000085, 0000000001, 000, '8', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000086, 0000000001, 003, '8', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000087, 0000000001, 003, '8', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000088, 0000000001, 009, '8', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000089, 0000000001, 019, '8', '34', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000090, 0000000001, 015, '8', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000091, 0000000001, 000, '8', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000092, 0000000001, 005, '8', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000093, 0000000001, 000, '8', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000094, 0000000001, 000, '8', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000095, 0000000001, 043, '8', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000096, 0000000001, 000, '8', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000097, 0000000001, 031, '10', '2', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000098, 0000000001, 000, '10', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000099, 0000000001, 000, '10', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000100, 0000000001, 053, '10', '8', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000101, 0000000001, 045, '10', '10', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000102, 0000000001, 000, '10', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000103, 0000000001, 007, '10', '14', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000104, 0000000001, 057, '10', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000105, 0000000001, 013, '10', '18', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000106, 0000000001, 023, '10', '20', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000107, 0000000001, 000, '10', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000108, 0000000001, 045, '10', '24', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000109, 0000000001, 000, '10', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000110, 0000000001, 031, '10', '28', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000111, 0000000001, 003, '10', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000112, 0000000001, 053, '10', '32', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000113, 0000000001, 025, '10', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000114, 0000000001, 031, '10', '36', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000115, 0000000001, 000, '10', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000116, 0000000001, 053, '10', '40', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000117, 0000000001, 000, '10', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000118, 0000000001, 000, '10', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000119, 0000000001, 043, '10', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000120, 0000000001, 000, '10', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000121, 0000000001, 031, '12', '2', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000122, 0000000001, 000, '12', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000123, 0000000001, 000, '12', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000124, 0000000001, 031, '12', '8', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000125, 0000000001, 053, '12', '10', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000126, 0000000001, 000, '12', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000127, 0000000001, 011, '12', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000128, 0000000001, 057, '12', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000129, 0000000001, 013, '12', '18', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000130, 0000000001, 029, '12', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000131, 0000000001, 000, '12', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000132, 0000000001, 045, '12', '24', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000133, 0000000001, 000, '12', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000134, 0000000001, 031, '12', '28', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000135, 0000000001, 003, '12', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000136, 0000000001, 045, '12', '32', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000137, 0000000001, 025, '12', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000138, 0000000001, 031, '12', '36', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000139, 0000000001, 000, '12', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000140, 0000000001, 053, '12', '40', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000141, 0000000001, 000, '12', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000142, 0000000001, 000, '12', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000143, 0000000001, 029, '12', '46', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000144, 0000000001, 000, '12', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000145, 0000000001, 049, '14', '2', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000146, 0000000001, 000, '14', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000147, 0000000001, 000, '14', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000148, 0000000001, 023, '14', '8', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000149, 0000000001, 013, '14', '10', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000150, 0000000001, 000, '14', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000151, 0000000001, 013, '14', '14', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000152, 0000000001, 019, '14', '16', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000153, 0000000001, 037, '14', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000154, 0000000001, 053, '14', '20', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000155, 0000000001, 000, '14', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000156, 0000000001, 013, '14', '24', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000157, 0000000001, 000, '14', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000158, 0000000001, 013, '14', '28', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000159, 0000000001, 005, '14', '30', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000160, 0000000001, 013, '14', '32', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000161, 0000000001, 013, '14', '34', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000162, 0000000001, 013, '14', '36', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000163, 0000000001, 000, '14', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000164, 0000000001, 049, '14', '40', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000165, 0000000001, 000, '14', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000166, 0000000001, 000, '14', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000167, 0000000001, 053, '14', '46', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000168, 0000000001, 000, '14', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000169, 0000000001, 051, '16', '2', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000170, 0000000001, 000, '16', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000171, 0000000001, 000, '16', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000172, 0000000001, 061, '16', '8', 0000000031);
INSERT INTO `Move_Logic` VALUES (0000000173, 0000000001, 051, '16', '10', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000174, 0000000001, 000, '16', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000175, 0000000001, 011, '16', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000176, 0000000001, 057, '16', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000177, 0000000001, 061, '16', '18', 0000000031);
INSERT INTO `Move_Logic` VALUES (0000000178, 0000000001, 061, '16', '20', 0000000031);
INSERT INTO `Move_Logic` VALUES (0000000179, 0000000001, 000, '16', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000180, 0000000001, 019, '16', '24', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000181, 0000000001, 000, '16', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000182, 0000000001, 021, '16', '28', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000183, 0000000001, 051, '16', '30', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000184, 0000000001, 009, '16', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000185, 0000000001, 041, '16', '34', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000186, 0000000001, 041, '16', '36', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000187, 0000000001, 000, '16', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000188, 0000000001, 021, '16', '40', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000189, 0000000001, 000, '16', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000190, 0000000001, 000, '16', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000191, 0000000001, 043, '16', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000192, 0000000001, 000, '16', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000193, 0000000001, 005, '18', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000194, 0000000001, 000, '18', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000195, 0000000001, 000, '18', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000196, 0000000001, 033, '18', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000197, 0000000001, 003, '18', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000198, 0000000001, 000, '18', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000199, 0000000001, 011, '18', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000200, 0000000001, 057, '18', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000201, 0000000001, 037, '18', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000202, 0000000001, 029, '18', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000203, 0000000001, 000, '18', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000204, 0000000001, 015, '18', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000205, 0000000001, 000, '18', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000206, 0000000001, 003, '18', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000207, 0000000001, 003, '18', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000208, 0000000001, 009, '18', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000209, 0000000001, 041, '18', '34', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000210, 0000000001, 015, '18', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000211, 0000000001, 000, '18', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000212, 0000000001, 021, '18', '40', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000213, 0000000001, 000, '18', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000214, 0000000001, 000, '18', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000215, 0000000001, 043, '18', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000216, 0000000001, 000, '18', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000217, 0000000001, 005, '20', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000218, 0000000001, 000, '20', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000219, 0000000001, 000, '20', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000220, 0000000001, 033, '20', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000221, 0000000001, 021, '20', '10', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000222, 0000000001, 000, '20', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000223, 0000000001, 011, '20', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000224, 0000000001, 057, '20', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000225, 0000000001, 037, '20', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000226, 0000000001, 029, '20', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000227, 0000000001, 000, '20', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000228, 0000000001, 015, '20', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000229, 0000000001, 000, '20', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000230, 0000000001, 021, '20', '28', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000231, 0000000001, 003, '20', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000232, 0000000001, 009, '20', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000233, 0000000001, 025, '20', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000234, 0000000001, 015, '20', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000235, 0000000001, 000, '20', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000236, 0000000001, 005, '20', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000237, 0000000001, 000, '20', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000238, 0000000001, 000, '20', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000239, 0000000001, 043, '20', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000240, 0000000001, 000, '20', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000241, 0000000001, 049, '22', '2', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000242, 0000000001, 000, '22', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000243, 0000000001, 000, '22', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000244, 0000000001, 023, '22', '8', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000245, 0000000001, 013, '22', '10', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000246, 0000000001, 000, '22', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000247, 0000000001, 013, '22', '14', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000248, 0000000001, 019, '22', '16', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000249, 0000000001, 037, '22', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000250, 0000000001, 053, '22', '20', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000251, 0000000001, 000, '22', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000252, 0000000001, 015, '22', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000253, 0000000001, 000, '22', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000254, 0000000001, 003, '22', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000255, 0000000001, 005, '22', '30', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000256, 0000000001, 031, '22', '32', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000257, 0000000001, 025, '22', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000258, 0000000001, 013, '22', '36', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000259, 0000000001, 000, '22', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000260, 0000000001, 049, '22', '40', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000261, 0000000001, 000, '22', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000262, 0000000001, 000, '22', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000263, 0000000001, 043, '22', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000264, 0000000001, 000, '22', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000265, 0000000001, 053, '24', '2', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000266, 0000000001, 000, '24', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000267, 0000000001, 000, '24', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000268, 0000000001, 033, '24', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000269, 0000000001, 045, '24', '10', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000270, 0000000001, 000, '24', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000271, 0000000001, 011, '24', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000272, 0000000001, 001, '24', '16', 0000000001);
INSERT INTO `Move_Logic` VALUES (0000000273, 0000000001, 053, '24', '18', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000274, 0000000001, 007, '24', '20', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000275, 0000000001, 000, '24', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000276, 0000000001, 007, '24', '24', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000277, 0000000001, 000, '24', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000278, 0000000001, 053, '24', '28', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000279, 0000000001, 003, '24', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000280, 0000000001, 045, '24', '32', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000281, 0000000001, 053, '24', '34', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000282, 0000000001, 015, '24', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000283, 0000000001, 000, '24', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000284, 0000000001, 021, '24', '40', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000285, 0000000001, 000, '24', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000286, 0000000001, 000, '24', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000287, 0000000001, 041, '24', '46', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000288, 0000000001, 000, '24', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000289, 0000000001, 005, '26', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000290, 0000000001, 000, '26', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000291, 0000000001, 000, '26', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000292, 0000000001, 033, '26', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000293, 0000000001, 003, '26', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000294, 0000000001, 000, '26', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000295, 0000000001, 011, '26', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000296, 0000000001, 057, '26', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000297, 0000000001, 037, '26', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000298, 0000000001, 029, '26', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000299, 0000000001, 000, '26', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000300, 0000000001, 015, '26', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000301, 0000000001, 000, '26', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000302, 0000000001, 003, '26', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000303, 0000000001, 003, '26', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000304, 0000000001, 009, '26', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000305, 0000000001, 025, '26', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000306, 0000000001, 015, '26', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000307, 0000000001, 000, '26', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000308, 0000000001, 005, '26', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000309, 0000000001, 000, '26', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000310, 0000000001, 000, '26', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000311, 0000000001, 043, '26', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000312, 0000000001, 000, '26', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000313, 0000000001, 007, '28', '2', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000314, 0000000001, 000, '28', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000315, 0000000001, 000, '28', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000316, 0000000001, 053, '28', '8', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000317, 0000000001, 003, '28', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000318, 0000000001, 000, '28', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000319, 0000000001, 011, '28', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000320, 0000000001, 023, '28', '16', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000321, 0000000001, 037, '28', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000322, 0000000001, 023, '28', '20', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000323, 0000000001, 000, '28', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000324, 0000000001, 053, '28', '24', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000325, 0000000001, 000, '28', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000326, 0000000001, 019, '28', '28', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000327, 0000000001, 031, '28', '30', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000328, 0000000001, 009, '28', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000329, 0000000001, 025, '28', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000330, 0000000001, 031, '28', '36', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000331, 0000000001, 000, '28', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000332, 0000000001, 041, '28', '40', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000333, 0000000001, 000, '28', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000334, 0000000001, 000, '28', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000335, 0000000001, 029, '28', '46', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000336, 0000000001, 000, '28', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000337, 0000000001, 049, '30', '2', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000338, 0000000001, 000, '30', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000339, 0000000001, 000, '30', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000340, 0000000001, 033, '30', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000341, 0000000001, 003, '30', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000342, 0000000001, 000, '30', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000343, 0000000001, 011, '30', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000344, 0000000001, 057, '30', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000345, 0000000001, 037, '30', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000346, 0000000001, 029, '30', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000347, 0000000001, 000, '30', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000348, 0000000001, 015, '30', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000349, 0000000001, 000, '30', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000350, 0000000001, 003, '30', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000351, 0000000001, 027, '30', '30', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000352, 0000000001, 027, '30', '32', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000353, 0000000001, 025, '30', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000354, 0000000001, 015, '30', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000355, 0000000001, 000, '30', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000356, 0000000001, 005, '30', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000357, 0000000001, 000, '30', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000358, 0000000001, 000, '30', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000359, 0000000001, 027, '30', '46', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000360, 0000000001, 000, '30', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000361, 0000000001, 053, '32', '2', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000362, 0000000001, 000, '32', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000363, 0000000001, 000, '32', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000364, 0000000001, 033, '32', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000365, 0000000001, 003, '32', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000366, 0000000001, 000, '32', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000367, 0000000001, 053, '32', '14', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000368, 0000000001, 019, '32', '16', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000369, 0000000001, 013, '32', '18', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000370, 0000000001, 029, '32', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000371, 0000000001, 000, '32', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000372, 0000000001, 045, '32', '24', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000373, 0000000001, 000, '32', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000374, 0000000001, 053, '32', '28', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000375, 0000000001, 003, '32', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000376, 0000000001, 031, '32', '32', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000377, 0000000001, 025, '32', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000378, 0000000001, 053, '32', '36', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000379, 0000000001, 000, '32', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000380, 0000000001, 031, '32', '40', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000381, 0000000001, 000, '32', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000382, 0000000001, 000, '32', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000383, 0000000001, 043, '32', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000384, 0000000001, 000, '32', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000385, 0000000001, 005, '34', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000386, 0000000001, 000, '34', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000387, 0000000001, 000, '34', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000388, 0000000001, 033, '34', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000389, 0000000001, 003, '34', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000390, 0000000001, 000, '34', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000391, 0000000001, 011, '34', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000392, 0000000001, 001, '34', '16', 0000000001);
INSERT INTO `Move_Logic` VALUES (0000000393, 0000000001, 037, '34', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000394, 0000000001, 029, '34', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000395, 0000000001, 000, '34', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000396, 0000000001, 015, '34', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000397, 0000000001, 000, '34', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000398, 0000000001, 017, '34', '28', 0000000009);
INSERT INTO `Move_Logic` VALUES (0000000399, 0000000001, 003, '34', '30', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000400, 0000000001, 017, '34', '32', 0000000009);
INSERT INTO `Move_Logic` VALUES (0000000401, 0000000001, 025, '34', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000402, 0000000001, 041, '34', '36', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000403, 0000000001, 000, '34', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000404, 0000000001, 041, '34', '40', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000405, 0000000001, 000, '34', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000406, 0000000001, 000, '34', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000407, 0000000001, 027, '34', '46', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000408, 0000000001, 000, '34', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000409, 0000000001, 005, '36', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000410, 0000000001, 000, '36', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000411, 0000000001, 000, '36', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000412, 0000000001, 033, '36', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000413, 0000000001, 003, '36', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000414, 0000000001, 000, '36', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000415, 0000000001, 063, '36', '14', 0000000032);
INSERT INTO `Move_Logic` VALUES (0000000416, 0000000001, 063, '36', '16', 0000000032);
INSERT INTO `Move_Logic` VALUES (0000000417, 0000000001, 007, '36', '18', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000418, 0000000001, 007, '36', '20', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000419, 0000000001, 000, '36', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000420, 0000000001, 015, '36', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000421, 0000000001, 000, '36', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000422, 0000000001, 007, '36', '28', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000423, 0000000001, 027, '36', '30', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000424, 0000000001, 009, '36', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000425, 0000000001, 007, '36', '34', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000426, 0000000001, 063, '36', '36', 0000000032);
INSERT INTO `Move_Logic` VALUES (0000000427, 0000000001, 000, '36', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000428, 0000000001, 007, '36', '40', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000429, 0000000001, 000, '36', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000430, 0000000001, 000, '36', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000431, 0000000001, 007, '36', '46', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000432, 0000000001, 000, '36', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000433, 0000000001, 031, '38', '2', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000434, 0000000001, 000, '38', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000435, 0000000001, 000, '38', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000436, 0000000001, 053, '38', '8', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000437, 0000000001, 045, '38', '10', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000438, 0000000001, 000, '38', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000439, 0000000001, 007, '38', '14', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000440, 0000000001, 057, '38', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000441, 0000000001, 013, '38', '18', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000442, 0000000001, 029, '38', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000443, 0000000001, 000, '38', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000444, 0000000001, 045, '38', '24', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000445, 0000000001, 000, '38', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000446, 0000000001, 003, '38', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000447, 0000000001, 005, '38', '30', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000448, 0000000001, 045, '38', '32', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000449, 0000000001, 025, '38', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000450, 0000000001, 031, '38', '36', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000451, 0000000001, 000, '38', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000452, 0000000001, 005, '38', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000453, 0000000001, 000, '38', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000454, 0000000001, 000, '38', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000455, 0000000001, 043, '38', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000456, 0000000001, 000, '38', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000457, 0000000001, 049, '40', '2', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000458, 0000000001, 000, '40', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000459, 0000000001, 000, '40', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000460, 0000000001, 033, '40', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000461, 0000000001, 003, '40', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000462, 0000000001, 000, '40', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000463, 0000000001, 049, '40', '14', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000464, 0000000001, 023, '40', '16', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000465, 0000000001, 023, '40', '18', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000466, 0000000001, 053, '40', '20', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000467, 0000000001, 000, '40', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000468, 0000000001, 023, '40', '24', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000469, 0000000001, 000, '40', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000470, 0000000001, 003, '40', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000471, 0000000001, 005, '40', '30', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000472, 0000000001, 009, '40', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000473, 0000000001, 025, '40', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000474, 0000000001, 041, '40', '36', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000475, 0000000001, 000, '40', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000476, 0000000001, 005, '40', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000477, 0000000001, 000, '40', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000478, 0000000001, 000, '40', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000479, 0000000001, 043, '40', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000480, 0000000001, 000, '40', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000481, 0000000001, 049, '42', '2', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000482, 0000000001, 000, '42', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000483, 0000000001, 000, '42', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000484, 0000000001, 013, '42', '8', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000485, 0000000001, 013, '42', '10', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000486, 0000000001, 000, '42', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000487, 0000000001, 049, '42', '14', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000488, 0000000001, 057, '42', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000489, 0000000001, 037, '42', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000490, 0000000001, 031, '42', '20', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000491, 0000000001, 000, '42', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000492, 0000000001, 013, '42', '24', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000493, 0000000001, 000, '42', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000494, 0000000001, 013, '42', '28', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000495, 0000000001, 005, '42', '30', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000496, 0000000001, 009, '42', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000497, 0000000001, 041, '42', '34', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000498, 0000000001, 013, '42', '36', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000499, 0000000001, 000, '42', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000500, 0000000001, 049, '42', '40', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000501, 0000000001, 000, '42', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000502, 0000000001, 000, '42', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000503, 0000000001, 027, '42', '46', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000504, 0000000001, 000, '42', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000505, 0000000001, 005, '44', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000506, 0000000001, 000, '44', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000507, 0000000001, 000, '44', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000508, 0000000001, 033, '44', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000509, 0000000001, 045, '44', '10', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000510, 0000000001, 000, '44', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000511, 0000000001, 053, '44', '14', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000512, 0000000001, 057, '44', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000513, 0000000001, 007, '44', '18', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000514, 0000000001, 053, '44', '20', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000515, 0000000001, 000, '44', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000516, 0000000001, 031, '44', '24', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000517, 0000000001, 000, '44', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000518, 0000000001, 031, '44', '28', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000519, 0000000001, 053, '44', '30', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000520, 0000000001, 045, '44', '32', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000521, 0000000001, 013, '44', '34', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000522, 0000000001, 053, '44', '36', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000523, 0000000001, 000, '44', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000524, 0000000001, 031, '44', '40', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000525, 0000000001, 000, '44', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000526, 0000000001, 000, '44', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000527, 0000000001, 027, '44', '46', 0000000014);
INSERT INTO `Move_Logic` VALUES (0000000528, 0000000001, 000, '44', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000529, 0000000001, 005, '46', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000530, 0000000001, 000, '46', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000531, 0000000001, 000, '46', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000532, 0000000001, 033, '46', '8', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000533, 0000000001, 003, '46', '10', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000534, 0000000001, 000, '46', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000535, 0000000001, 011, '46', '14', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000536, 0000000001, 001, '46', '16', 0000000001);
INSERT INTO `Move_Logic` VALUES (0000000537, 0000000001, 037, '46', '18', 0000000019);
INSERT INTO `Move_Logic` VALUES (0000000538, 0000000001, 029, '46', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000539, 0000000001, 000, '46', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000540, 0000000001, 015, '46', '24', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000541, 0000000001, 000, '46', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000542, 0000000001, 003, '46', '28', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000543, 0000000001, 015, '46', '30', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000544, 0000000001, 009, '46', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000545, 0000000001, 025, '46', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000546, 0000000001, 015, '46', '36', 0000000008);
INSERT INTO `Move_Logic` VALUES (0000000547, 0000000001, 000, '46', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000548, 0000000001, 005, '46', '40', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000549, 0000000001, 000, '46', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000550, 0000000001, 000, '46', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000551, 0000000001, 043, '46', '46', 0000000022);
INSERT INTO `Move_Logic` VALUES (0000000552, 0000000001, 000, '46', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000553, 0000000001, 005, '48', '2', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000554, 0000000001, 000, '48', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000000555, 0000000001, 000, '48', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000000556, 0000000001, 019, '48', '8', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000557, 0000000001, 045, '48', '10', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000558, 0000000001, 000, '48', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000559, 0000000001, 049, '48', '14', 0000000025);
INSERT INTO `Move_Logic` VALUES (0000000560, 0000000001, 057, '48', '16', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000561, 0000000001, 019, '48', '18', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000562, 0000000001, 029, '48', '20', 0000000015);
INSERT INTO `Move_Logic` VALUES (0000000563, 0000000001, 000, '48', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000564, 0000000001, 031, '48', '24', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000565, 0000000001, 000, '48', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000000566, 0000000001, 031, '48', '28', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000567, 0000000001, 019, '48', '30', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000568, 0000000001, 009, '48', '32', 0000000005);
INSERT INTO `Move_Logic` VALUES (0000000569, 0000000001, 025, '48', '34', 0000000013);
INSERT INTO `Move_Logic` VALUES (0000000570, 0000000001, 031, '48', '36', 0000000016);
INSERT INTO `Move_Logic` VALUES (0000000571, 0000000001, 000, '48', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000572, 0000000001, 019, '48', '40', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000573, 0000000001, 000, '48', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000000574, 0000000001, 000, '48', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000000575, 0000000001, 019, '48', '46', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000576, 0000000001, 000, '48', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000000577, 0000000001, 045, '50', '50', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000578, 0000000001, 023, '50', '52', 0000000012);
INSERT INTO `Move_Logic` VALUES (0000000579, 0000000001, 000, '50', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000580, 0000000001, 053, '50', '56', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000581, 0000000001, 041, '50', '58', 0000000021);
INSERT INTO `Move_Logic` VALUES (0000000582, 0000000001, 011, '50', '60', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000583, 0000000001, 019, '50', '62', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000584, 0000000001, 019, '50', '64', 0000000010);
INSERT INTO `Move_Logic` VALUES (0000000585, 0000000001, 021, '52', '50', 0000000011);
INSERT INTO `Move_Logic` VALUES (0000000586, 0000000001, 061, '52', '52', 0000000031);
INSERT INTO `Move_Logic` VALUES (0000000587, 0000000001, 000, '52', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000588, 0000000001, 057, '52', '56', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000589, 0000000001, 005, '52', '58', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000590, 0000000001, 011, '52', '60', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000591, 0000000001, 057, '52', '62', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000592, 0000000001, 051, '52', '64', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000593, 0000000001, 053, '54', '50', 0000000027);
INSERT INTO `Move_Logic` VALUES (0000000594, 0000000001, 033, '54', '52', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000595, 0000000001, 000, '54', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000596, 0000000001, 045, '54', '56', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000597, 0000000001, 035, '54', '58', 0000000018);
INSERT INTO `Move_Logic` VALUES (0000000598, 0000000001, 011, '54', '60', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000599, 0000000001, 035, '54', '62', 0000000018);
INSERT INTO `Move_Logic` VALUES (0000000600, 0000000001, 003, '54', '64', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000601, 0000000001, 039, '56', '50', 0000000020);
INSERT INTO `Move_Logic` VALUES (0000000602, 0000000001, 061, '56', '52', 0000000031);
INSERT INTO `Move_Logic` VALUES (0000000603, 0000000001, 000, '56', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000604, 0000000001, 045, '56', '56', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000605, 0000000001, 051, '56', '58', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000606, 0000000001, 055, '56', '60', 0000000028);
INSERT INTO `Move_Logic` VALUES (0000000607, 0000000001, 057, '56', '62', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000608, 0000000001, 003, '56', '64', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000609, 0000000001, 039, '58', '50', 0000000020);
INSERT INTO `Move_Logic` VALUES (0000000610, 0000000001, 033, '58', '52', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000611, 0000000001, 000, '58', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000612, 0000000001, 047, '58', '56', 0000000024);
INSERT INTO `Move_Logic` VALUES (0000000613, 0000000001, 005, '58', '58', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000614, 0000000001, 013, '58', '60', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000615, 0000000001, 057, '58', '62', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000616, 0000000001, 051, '58', '64', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000617, 0000000001, 013, '60', '50', 0000000007);
INSERT INTO `Move_Logic` VALUES (0000000618, 0000000001, 033, '60', '52', 0000000017);
INSERT INTO `Move_Logic` VALUES (0000000619, 0000000001, 000, '60', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000620, 0000000001, 057, '60', '56', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000621, 0000000001, 005, '60', '58', 0000000003);
INSERT INTO `Move_Logic` VALUES (0000000622, 0000000001, 011, '60', '60', 0000000006);
INSERT INTO `Move_Logic` VALUES (0000000623, 0000000001, 057, '60', '62', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000624, 0000000001, 047, '60', '64', 0000000024);
INSERT INTO `Move_Logic` VALUES (0000000625, 0000000001, 039, '62', '50', 0000000020);
INSERT INTO `Move_Logic` VALUES (0000000626, 0000000001, 061, '62', '52', 0000000031);
INSERT INTO `Move_Logic` VALUES (0000000627, 0000000001, 000, '62', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000628, 0000000001, 057, '62', '56', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000629, 0000000001, 051, '62', '58', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000630, 0000000001, 055, '62', '60', 0000000028);
INSERT INTO `Move_Logic` VALUES (0000000631, 0000000001, 057, '62', '62', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000632, 0000000001, 051, '62', '64', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000633, 0000000001, 007, '64', '50', 0000000004);
INSERT INTO `Move_Logic` VALUES (0000000634, 0000000001, 059, '64', '52', 0000000030);
INSERT INTO `Move_Logic` VALUES (0000000635, 0000000001, 000, '64', '54', NULL);
INSERT INTO `Move_Logic` VALUES (0000000636, 0000000001, 045, '64', '56', 0000000023);
INSERT INTO `Move_Logic` VALUES (0000000637, 0000000001, 051, '64', '58', 0000000026);
INSERT INTO `Move_Logic` VALUES (0000000638, 0000000001, 055, '64', '60', 0000000028);
INSERT INTO `Move_Logic` VALUES (0000000639, 0000000001, 057, '64', '62', 0000000029);
INSERT INTO `Move_Logic` VALUES (0000000640, 0000000001, 003, '64', '64', 0000000002);
INSERT INTO `Move_Logic` VALUES (0000000641, 0000000002, 049, '2', '2', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000642, 0000000002, 063, '2', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000643, 0000000002, 013, '2', '6', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000644, 0000000002, 013, '2', '8', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000645, 0000000002, 013, '2', '10', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000646, 0000000002, 000, '2', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000647, 0000000002, 049, '2', '14', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000648, 0000000002, 057, '2', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000649, 0000000002, 037, '2', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000650, 0000000002, 031, '2', '20', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000651, 0000000002, 000, '2', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000652, 0000000002, 013, '2', '24', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000653, 0000000002, 013, '2', '26', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000654, 0000000002, 013, '2', '28', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000655, 0000000002, 049, '2', '30', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000656, 0000000002, 013, '2', '32', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000657, 0000000002, 041, '2', '34', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000658, 0000000002, 013, '2', '36', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000659, 0000000002, 000, '2', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000660, 0000000002, 049, '2', '40', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000661, 0000000002, 049, '2', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000662, 0000000002, 015, '2', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000663, 0000000002, 027, '2', '46', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000000664, 0000000002, 013, '2', '48', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000665, 0000000002, 005, '4', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000666, 0000000002, 059, '4', '4', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000667, 0000000002, 059, '4', '6', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000668, 0000000002, 033, '4', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000669, 0000000002, 003, '4', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000670, 0000000002, 000, '4', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000671, 0000000002, 011, '4', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000672, 0000000002, 057, '4', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000673, 0000000002, 037, '4', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000674, 0000000002, 059, '4', '20', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000675, 0000000002, 000, '4', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000676, 0000000002, 015, '4', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000677, 0000000002, 017, '4', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000678, 0000000002, 003, '4', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000679, 0000000002, 015, '4', '30', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000680, 0000000002, 009, '4', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000681, 0000000002, 059, '4', '34', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000682, 0000000002, 015, '4', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000683, 0000000002, 000, '4', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000684, 0000000002, 005, '4', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000685, 0000000002, 059, '4', '42', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000686, 0000000002, 015, '4', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000687, 0000000002, 043, '4', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000688, 0000000002, 059, '4', '48', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000689, 0000000002, 053, '6', '2', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000690, 0000000002, 063, '6', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000691, 0000000002, 017, '6', '6', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000692, 0000000002, 033, '6', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000693, 0000000002, 003, '6', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000694, 0000000002, 000, '6', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000695, 0000000002, 049, '6', '14', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000696, 0000000002, 053, '6', '16', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000697, 0000000002, 013, '6', '18', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000698, 0000000002, 029, '6', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000699, 0000000002, 000, '6', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000700, 0000000002, 015, '6', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000701, 0000000002, 017, '6', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000702, 0000000002, 045, '6', '28', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000703, 0000000002, 005, '6', '30', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000704, 0000000002, 045, '6', '32', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000705, 0000000002, 013, '6', '34', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000706, 0000000002, 053, '6', '36', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000707, 0000000002, 000, '6', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000708, 0000000002, 031, '6', '40', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000709, 0000000002, 053, '6', '42', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000710, 0000000002, 045, '6', '44', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000711, 0000000002, 053, '6', '46', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000712, 0000000002, 045, '6', '48', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000713, 0000000002, 005, '8', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000714, 0000000002, 063, '8', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000715, 0000000002, 009, '8', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000716, 0000000002, 033, '8', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000717, 0000000002, 003, '8', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000718, 0000000002, 000, '8', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000719, 0000000002, 021, '8', '14', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000720, 0000000002, 057, '8', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000721, 0000000002, 037, '8', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000722, 0000000002, 029, '8', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000723, 0000000002, 000, '8', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000724, 0000000002, 015, '8', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000725, 0000000002, 017, '8', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000726, 0000000002, 003, '8', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000727, 0000000002, 003, '8', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000728, 0000000002, 009, '8', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000729, 0000000002, 019, '8', '34', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000000730, 0000000002, 015, '8', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000731, 0000000002, 000, '8', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000732, 0000000002, 005, '8', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000733, 0000000002, 005, '8', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000734, 0000000002, 015, '8', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000735, 0000000002, 043, '8', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000736, 0000000002, 003, '8', '48', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000737, 0000000002, 031, '10', '2', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000738, 0000000002, 053, '10', '4', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000739, 0000000002, 009, '10', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000740, 0000000002, 053, '10', '8', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000741, 0000000002, 045, '10', '10', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000742, 0000000002, 000, '10', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000743, 0000000002, 007, '10', '14', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000000744, 0000000002, 057, '10', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000745, 0000000002, 013, '10', '18', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000746, 0000000002, 023, '10', '20', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000000747, 0000000002, 000, '10', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000748, 0000000002, 045, '10', '24', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000749, 0000000002, 017, '10', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000750, 0000000002, 031, '10', '28', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000751, 0000000002, 003, '10', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000752, 0000000002, 053, '10', '32', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000753, 0000000002, 025, '10', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000754, 0000000002, 031, '10', '36', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000755, 0000000002, 000, '10', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000756, 0000000002, 053, '10', '40', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000757, 0000000002, 031, '10', '42', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000758, 0000000002, 045, '10', '44', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000759, 0000000002, 043, '10', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000760, 0000000002, 045, '10', '48', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000761, 0000000002, 031, '12', '2', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000762, 0000000002, 063, '12', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000763, 0000000002, 009, '12', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000764, 0000000002, 031, '12', '8', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000765, 0000000002, 053, '12', '10', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000766, 0000000002, 000, '12', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000767, 0000000002, 011, '12', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000768, 0000000002, 057, '12', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000769, 0000000002, 013, '12', '18', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000770, 0000000002, 029, '12', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000771, 0000000002, 000, '12', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000772, 0000000002, 045, '12', '24', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000773, 0000000002, 017, '12', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000774, 0000000002, 031, '12', '28', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000775, 0000000002, 003, '12', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000776, 0000000002, 045, '12', '32', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000777, 0000000002, 025, '12', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000778, 0000000002, 031, '12', '36', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000779, 0000000002, 000, '12', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000780, 0000000002, 053, '12', '40', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000781, 0000000002, 049, '12', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000782, 0000000002, 015, '12', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000783, 0000000002, 029, '12', '46', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000784, 0000000002, 045, '12', '48', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000785, 0000000002, 049, '14', '2', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000786, 0000000002, 063, '14', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000787, 0000000002, 049, '14', '6', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000788, 0000000002, 023, '14', '8', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000000789, 0000000002, 013, '14', '10', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000790, 0000000002, 000, '14', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000791, 0000000002, 013, '14', '14', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000792, 0000000002, 019, '14', '16', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000000793, 0000000002, 037, '14', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000794, 0000000002, 053, '14', '20', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000795, 0000000002, 000, '14', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000796, 0000000002, 013, '14', '24', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000797, 0000000002, 013, '14', '26', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000798, 0000000002, 013, '14', '28', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000799, 0000000002, 005, '14', '30', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000800, 0000000002, 013, '14', '32', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000801, 0000000002, 013, '14', '34', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000802, 0000000002, 013, '14', '36', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000803, 0000000002, 000, '14', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000804, 0000000002, 049, '14', '40', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000805, 0000000002, 049, '14', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000806, 0000000002, 013, '14', '44', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000807, 0000000002, 053, '14', '46', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000808, 0000000002, 049, '14', '48', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000809, 0000000002, 057, '16', '2', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000810, 0000000002, 057, '16', '4', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000811, 0000000002, 009, '16', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000812, 0000000002, 061, '16', '8', 0000000063);
INSERT INTO `Move_Logic` VALUES (0000000813, 0000000002, 057, '16', '10', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000814, 0000000002, 000, '16', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000815, 0000000002, 011, '16', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000816, 0000000002, 057, '16', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000817, 0000000002, 061, '16', '18', 0000000063);
INSERT INTO `Move_Logic` VALUES (0000000818, 0000000002, 061, '16', '20', 0000000063);
INSERT INTO `Move_Logic` VALUES (0000000819, 0000000002, 000, '16', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000820, 0000000002, 019, '16', '24', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000000821, 0000000002, 057, '16', '26', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000822, 0000000002, 021, '16', '28', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000823, 0000000002, 057, '16', '30', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000824, 0000000002, 009, '16', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000825, 0000000002, 041, '16', '34', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000826, 0000000002, 041, '16', '36', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000827, 0000000002, 000, '16', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000828, 0000000002, 021, '16', '40', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000829, 0000000002, 057, '16', '42', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000830, 0000000002, 057, '16', '44', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000831, 0000000002, 043, '16', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000832, 0000000002, 057, '16', '48', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000833, 0000000002, 005, '18', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000834, 0000000002, 063, '18', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000835, 0000000002, 017, '18', '6', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000836, 0000000002, 033, '18', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000837, 0000000002, 003, '18', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000838, 0000000002, 000, '18', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000839, 0000000002, 011, '18', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000840, 0000000002, 057, '18', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000841, 0000000002, 037, '18', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000842, 0000000002, 029, '18', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000843, 0000000002, 000, '18', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000844, 0000000002, 015, '18', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000845, 0000000002, 017, '18', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000846, 0000000002, 003, '18', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000847, 0000000002, 003, '18', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000848, 0000000002, 009, '18', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000849, 0000000002, 041, '18', '34', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000850, 0000000002, 015, '18', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000851, 0000000002, 000, '18', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000852, 0000000002, 021, '18', '40', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000853, 0000000002, 005, '18', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000854, 0000000002, 015, '18', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000855, 0000000002, 043, '18', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000856, 0000000002, 003, '18', '48', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000857, 0000000002, 005, '20', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000858, 0000000002, 063, '20', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000859, 0000000002, 009, '20', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000860, 0000000002, 033, '20', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000861, 0000000002, 021, '20', '10', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000862, 0000000002, 000, '20', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000863, 0000000002, 011, '20', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000864, 0000000002, 057, '20', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000865, 0000000002, 037, '20', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000866, 0000000002, 029, '20', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000867, 0000000002, 000, '20', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000868, 0000000002, 015, '20', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000869, 0000000002, 017, '20', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000870, 0000000002, 021, '20', '28', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000871, 0000000002, 003, '20', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000872, 0000000002, 009, '20', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000873, 0000000002, 025, '20', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000874, 0000000002, 015, '20', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000875, 0000000002, 000, '20', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000876, 0000000002, 005, '20', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000877, 0000000002, 005, '20', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000878, 0000000002, 015, '20', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000879, 0000000002, 043, '20', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000880, 0000000002, 003, '20', '48', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000881, 0000000002, 049, '22', '2', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000882, 0000000002, 063, '22', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000883, 0000000002, 009, '22', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000884, 0000000002, 023, '22', '8', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000000885, 0000000002, 013, '22', '10', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000886, 0000000002, 000, '22', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000887, 0000000002, 013, '22', '14', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000888, 0000000002, 019, '22', '16', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000000889, 0000000002, 037, '22', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000890, 0000000002, 053, '22', '20', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000891, 0000000002, 000, '22', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000892, 0000000002, 015, '22', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000893, 0000000002, 017, '22', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000894, 0000000002, 003, '22', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000895, 0000000002, 005, '22', '30', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000896, 0000000002, 031, '22', '32', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000897, 0000000002, 025, '22', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000898, 0000000002, 013, '22', '36', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000899, 0000000002, 000, '22', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000900, 0000000002, 049, '22', '40', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000901, 0000000002, 049, '22', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000902, 0000000002, 013, '22', '44', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000000903, 0000000002, 043, '22', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000904, 0000000002, 049, '22', '48', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000905, 0000000002, 053, '24', '2', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000906, 0000000002, 041, '24', '4', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000907, 0000000002, 017, '24', '6', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000908, 0000000002, 033, '24', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000909, 0000000002, 045, '24', '10', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000910, 0000000002, 000, '24', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000911, 0000000002, 011, '24', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000912, 0000000002, 001, '24', '16', 0000000033);
INSERT INTO `Move_Logic` VALUES (0000000913, 0000000002, 053, '24', '18', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000914, 0000000002, 007, '24', '20', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000000915, 0000000002, 000, '24', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000916, 0000000002, 007, '24', '24', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000000917, 0000000002, 017, '24', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000918, 0000000002, 053, '24', '28', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000919, 0000000002, 003, '24', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000920, 0000000002, 045, '24', '32', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000000921, 0000000002, 053, '24', '34', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000922, 0000000002, 015, '24', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000923, 0000000002, 000, '24', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000924, 0000000002, 021, '24', '40', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000000925, 0000000002, 005, '24', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000926, 0000000002, 015, '24', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000927, 0000000002, 041, '24', '46', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000928, 0000000002, 017, '24', '48', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000929, 0000000002, 005, '26', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000930, 0000000002, 063, '26', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000931, 0000000002, 059, '26', '6', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000932, 0000000002, 033, '26', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000933, 0000000002, 003, '26', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000934, 0000000002, 000, '26', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000935, 0000000002, 011, '26', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000936, 0000000002, 057, '26', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000937, 0000000002, 059, '26', '18', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000938, 0000000002, 029, '26', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000939, 0000000002, 000, '26', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000940, 0000000002, 015, '26', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000941, 0000000002, 059, '26', '26', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000942, 0000000002, 003, '26', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000943, 0000000002, 003, '26', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000944, 0000000002, 009, '26', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000945, 0000000002, 025, '26', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000946, 0000000002, 059, '26', '36', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000947, 0000000002, 000, '26', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000948, 0000000002, 005, '26', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000949, 0000000002, 059, '26', '42', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000950, 0000000002, 059, '26', '44', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000951, 0000000002, 043, '26', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000000952, 0000000002, 059, '26', '48', 0000000062);
INSERT INTO `Move_Logic` VALUES (0000000953, 0000000002, 007, '28', '2', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000000954, 0000000002, 031, '28', '4', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000955, 0000000002, 055, '28', '6', 0000000060);
INSERT INTO `Move_Logic` VALUES (0000000956, 0000000002, 053, '28', '8', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000957, 0000000002, 003, '28', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000958, 0000000002, 000, '28', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000959, 0000000002, 011, '28', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000960, 0000000002, 023, '28', '16', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000000961, 0000000002, 037, '28', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000962, 0000000002, 023, '28', '20', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000000963, 0000000002, 000, '28', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000964, 0000000002, 053, '28', '24', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000000965, 0000000002, 055, '28', '26', 0000000060);
INSERT INTO `Move_Logic` VALUES (0000000966, 0000000002, 019, '28', '28', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000000967, 0000000002, 031, '28', '30', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000968, 0000000002, 009, '28', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000969, 0000000002, 025, '28', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000970, 0000000002, 031, '28', '36', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000000971, 0000000002, 000, '28', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000972, 0000000002, 041, '28', '40', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000000973, 0000000002, 005, '28', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000974, 0000000002, 015, '28', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000975, 0000000002, 029, '28', '46', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000976, 0000000002, 003, '28', '48', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000977, 0000000002, 049, '30', '2', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000000978, 0000000002, 063, '30', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000000979, 0000000002, 009, '30', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000000980, 0000000002, 033, '30', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000000981, 0000000002, 003, '30', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000982, 0000000002, 000, '30', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000000983, 0000000002, 011, '30', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000000984, 0000000002, 057, '30', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000000985, 0000000002, 037, '30', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000000986, 0000000002, 029, '30', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000000987, 0000000002, 000, '30', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000000988, 0000000002, 015, '30', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000989, 0000000002, 017, '30', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000000990, 0000000002, 003, '30', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000000991, 0000000002, 027, '30', '30', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000000992, 0000000002, 027, '30', '32', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000000993, 0000000002, 025, '30', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000000994, 0000000002, 015, '30', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000995, 0000000002, 000, '30', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000000996, 0000000002, 005, '30', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000000997, 0000000002, 027, '30', '42', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000000998, 0000000002, 015, '30', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000000999, 0000000002, 027, '30', '46', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000001000, 0000000002, 003, '30', '48', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001001, 0000000002, 053, '32', '2', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001002, 0000000002, 053, '32', '4', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001003, 0000000002, 045, '32', '6', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001004, 0000000002, 033, '32', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001005, 0000000002, 003, '32', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001006, 0000000002, 000, '32', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001007, 0000000002, 053, '32', '14', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001008, 0000000002, 019, '32', '16', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001009, 0000000002, 013, '32', '18', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001010, 0000000002, 029, '32', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000001011, 0000000002, 000, '32', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001012, 0000000002, 045, '32', '24', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001013, 0000000002, 017, '32', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001014, 0000000002, 053, '32', '28', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001015, 0000000002, 003, '32', '30', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001016, 0000000002, 031, '32', '32', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001017, 0000000002, 025, '32', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000001018, 0000000002, 053, '32', '36', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001019, 0000000002, 000, '32', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001020, 0000000002, 031, '32', '40', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001021, 0000000002, 053, '32', '42', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001022, 0000000002, 045, '32', '44', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001023, 0000000002, 043, '32', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000001024, 0000000002, 017, '32', '48', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001025, 0000000002, 005, '34', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001026, 0000000002, 063, '34', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000001027, 0000000002, 013, '34', '6', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001028, 0000000002, 033, '34', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001029, 0000000002, 051, '34', '10', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001030, 0000000002, 000, '34', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001031, 0000000002, 011, '34', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001032, 0000000002, 001, '34', '16', 0000000033);
INSERT INTO `Move_Logic` VALUES (0000001033, 0000000002, 037, '34', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000001034, 0000000002, 029, '34', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000001035, 0000000002, 000, '34', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001036, 0000000002, 015, '34', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001037, 0000000002, 051, '34', '26', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001038, 0000000002, 051, '34', '28', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001039, 0000000002, 051, '34', '30', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001040, 0000000002, 051, '34', '32', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001041, 0000000002, 051, '34', '34', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001042, 0000000002, 041, '34', '36', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000001043, 0000000002, 000, '34', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001044, 0000000002, 041, '34', '40', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000001045, 0000000002, 005, '34', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001046, 0000000002, 015, '34', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001047, 0000000002, 027, '34', '46', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000001048, 0000000002, 051, '34', '48', 0000000058);
INSERT INTO `Move_Logic` VALUES (0000001049, 0000000002, 005, '36', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001050, 0000000002, 007, '36', '4', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001051, 0000000002, 055, '36', '6', 0000000060);
INSERT INTO `Move_Logic` VALUES (0000001052, 0000000002, 033, '36', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001053, 0000000002, 003, '36', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001054, 0000000002, 000, '36', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001055, 0000000002, 011, '36', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001056, 0000000002, 001, '36', '16', 0000000033);
INSERT INTO `Move_Logic` VALUES (0000001057, 0000000002, 007, '36', '18', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001058, 0000000002, 007, '36', '20', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001059, 0000000002, 000, '36', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001060, 0000000002, 015, '36', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001061, 0000000002, 055, '36', '26', 0000000060);
INSERT INTO `Move_Logic` VALUES (0000001062, 0000000002, 007, '36', '28', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001063, 0000000002, 027, '36', '30', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000001064, 0000000002, 009, '36', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001065, 0000000002, 007, '36', '34', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001066, 0000000002, 041, '36', '36', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000001067, 0000000002, 000, '36', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001068, 0000000002, 007, '36', '40', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001069, 0000000002, 005, '36', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001070, 0000000002, 055, '36', '44', 0000000060);
INSERT INTO `Move_Logic` VALUES (0000001071, 0000000002, 007, '36', '46', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001072, 0000000002, 055, '36', '48', 0000000060);
INSERT INTO `Move_Logic` VALUES (0000001073, 0000000002, 031, '38', '2', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001074, 0000000002, 053, '38', '4', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001075, 0000000002, 009, '38', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001076, 0000000002, 053, '38', '8', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001077, 0000000002, 045, '38', '10', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001078, 0000000002, 000, '38', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001079, 0000000002, 007, '38', '14', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001080, 0000000002, 057, '38', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001081, 0000000002, 019, '38', '18', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001082, 0000000002, 029, '38', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000001083, 0000000002, 000, '38', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001084, 0000000002, 045, '38', '24', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001085, 0000000002, 017, '38', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001086, 0000000002, 003, '38', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001087, 0000000002, 005, '38', '30', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001088, 0000000002, 045, '38', '32', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001089, 0000000002, 025, '38', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000001090, 0000000002, 031, '38', '36', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001091, 0000000002, 000, '38', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001092, 0000000002, 005, '38', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001093, 0000000002, 031, '38', '42', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001094, 0000000002, 045, '38', '44', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001095, 0000000002, 043, '38', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000001096, 0000000002, 045, '38', '48', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001097, 0000000002, 049, '40', '2', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001098, 0000000002, 063, '40', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000001099, 0000000002, 031, '40', '6', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001100, 0000000002, 033, '40', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001101, 0000000002, 003, '40', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001102, 0000000002, 000, '40', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001103, 0000000002, 049, '40', '14', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001104, 0000000002, 023, '40', '16', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000001105, 0000000002, 023, '40', '18', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000001106, 0000000002, 053, '40', '20', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001107, 0000000002, 000, '40', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001108, 0000000002, 023, '40', '24', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000001109, 0000000002, 013, '40', '26', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001110, 0000000002, 003, '40', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001111, 0000000002, 005, '40', '30', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001112, 0000000002, 009, '40', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001113, 0000000002, 025, '40', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000001114, 0000000002, 041, '40', '36', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000001115, 0000000002, 000, '40', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001116, 0000000002, 005, '40', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001117, 0000000002, 049, '40', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001118, 0000000002, 015, '40', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001119, 0000000002, 043, '40', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000001120, 0000000002, 005, '40', '48', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001121, 0000000002, 049, '42', '2', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001122, 0000000002, 063, '42', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000001123, 0000000002, 009, '42', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001124, 0000000002, 013, '42', '8', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001125, 0000000002, 013, '42', '10', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001126, 0000000002, 000, '42', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001127, 0000000002, 049, '42', '14', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001128, 0000000002, 057, '42', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001129, 0000000002, 037, '42', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000001130, 0000000002, 031, '42', '20', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001131, 0000000002, 000, '42', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001132, 0000000002, 013, '42', '24', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001133, 0000000002, 017, '42', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001134, 0000000002, 013, '42', '28', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001135, 0000000002, 005, '42', '30', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001136, 0000000002, 009, '42', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001137, 0000000002, 041, '42', '34', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000001138, 0000000002, 013, '42', '36', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001139, 0000000002, 000, '42', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001140, 0000000002, 049, '42', '40', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001141, 0000000002, 049, '42', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001142, 0000000002, 015, '42', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001143, 0000000002, 027, '42', '46', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000001144, 0000000002, 049, '42', '48', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001145, 0000000002, 005, '44', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001146, 0000000002, 053, '44', '4', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001147, 0000000002, 045, '44', '6', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001148, 0000000002, 033, '44', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001149, 0000000002, 045, '44', '10', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001150, 0000000002, 000, '44', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001151, 0000000002, 053, '44', '14', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001152, 0000000002, 057, '44', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001153, 0000000002, 007, '44', '18', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001154, 0000000002, 053, '44', '20', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001155, 0000000002, 000, '44', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001156, 0000000002, 015, '44', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001157, 0000000002, 017, '44', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001158, 0000000002, 031, '44', '28', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001159, 0000000002, 053, '44', '30', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001160, 0000000002, 045, '44', '32', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001161, 0000000002, 013, '44', '34', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001162, 0000000002, 053, '44', '36', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001163, 0000000002, 000, '44', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001164, 0000000002, 031, '44', '40', 0000000048);
INSERT INTO `Move_Logic` VALUES (0000001165, 0000000002, 005, '44', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001166, 0000000002, 045, '44', '44', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001167, 0000000002, 027, '44', '46', 0000000046);
INSERT INTO `Move_Logic` VALUES (0000001168, 0000000002, 045, '44', '48', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001169, 0000000002, 005, '46', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001170, 0000000002, 063, '46', '4', 0000000064);
INSERT INTO `Move_Logic` VALUES (0000001171, 0000000002, 009, '46', '6', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001172, 0000000002, 033, '46', '8', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001173, 0000000002, 003, '46', '10', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001174, 0000000002, 000, '46', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001175, 0000000002, 011, '46', '14', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001176, 0000000002, 001, '46', '16', 0000000033);
INSERT INTO `Move_Logic` VALUES (0000001177, 0000000002, 037, '46', '18', 0000000051);
INSERT INTO `Move_Logic` VALUES (0000001178, 0000000002, 029, '46', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000001179, 0000000002, 000, '46', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001180, 0000000002, 015, '46', '24', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001181, 0000000002, 017, '46', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001182, 0000000002, 003, '46', '28', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001183, 0000000002, 015, '46', '30', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001184, 0000000002, 009, '46', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001185, 0000000002, 025, '46', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000001186, 0000000002, 015, '46', '36', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001187, 0000000002, 000, '46', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001188, 0000000002, 005, '46', '40', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001189, 0000000002, 005, '46', '42', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001190, 0000000002, 015, '46', '44', 0000000040);
INSERT INTO `Move_Logic` VALUES (0000001191, 0000000002, 043, '46', '46', 0000000054);
INSERT INTO `Move_Logic` VALUES (0000001192, 0000000002, 003, '46', '48', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001193, 0000000002, 005, '48', '2', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001194, 0000000002, 019, '48', '4', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001195, 0000000002, 045, '48', '6', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001196, 0000000002, 019, '48', '8', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001197, 0000000002, 045, '48', '10', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001198, 0000000002, 000, '48', '12', NULL);
INSERT INTO `Move_Logic` VALUES (0000001199, 0000000002, 049, '48', '14', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001200, 0000000002, 057, '48', '16', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001201, 0000000002, 019, '48', '18', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001202, 0000000002, 029, '48', '20', 0000000047);
INSERT INTO `Move_Logic` VALUES (0000001203, 0000000002, 000, '48', '22', NULL);
INSERT INTO `Move_Logic` VALUES (0000001204, 0000000002, 019, '48', '24', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001205, 0000000002, 017, '48', '26', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001206, 0000000002, 019, '48', '28', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001207, 0000000002, 019, '48', '30', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001208, 0000000002, 009, '48', '32', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001209, 0000000002, 025, '48', '34', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000001210, 0000000002, 019, '48', '36', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001211, 0000000002, 000, '48', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000001212, 0000000002, 019, '48', '40', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001213, 0000000002, 049, '48', '42', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001214, 0000000002, 025, '48', '44', 0000000045);
INSERT INTO `Move_Logic` VALUES (0000001215, 0000000002, 019, '48', '46', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001216, 0000000002, 049, '48', '48', 0000000057);
INSERT INTO `Move_Logic` VALUES (0000001217, 0000000002, 045, '50', '50', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001218, 0000000002, 023, '50', '52', 0000000044);
INSERT INTO `Move_Logic` VALUES (0000001219, 0000000002, 009, '50', '54', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001220, 0000000002, 017, '50', '56', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001221, 0000000002, 041, '50', '58', 0000000053);
INSERT INTO `Move_Logic` VALUES (0000001222, 0000000002, 011, '50', '60', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001223, 0000000002, 019, '50', '62', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001224, 0000000002, 019, '50', '64', 0000000042);
INSERT INTO `Move_Logic` VALUES (0000001225, 0000000002, 021, '52', '50', 0000000043);
INSERT INTO `Move_Logic` VALUES (0000001226, 0000000002, 061, '52', '52', 0000000063);
INSERT INTO `Move_Logic` VALUES (0000001227, 0000000002, 009, '52', '54', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001228, 0000000002, 057, '52', '56', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001229, 0000000002, 005, '52', '58', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001230, 0000000002, 011, '52', '60', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001231, 0000000002, 057, '52', '62', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001232, 0000000002, 057, '52', '64', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001233, 0000000002, 053, '54', '50', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001234, 0000000002, 033, '54', '52', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001235, 0000000002, 045, '54', '54', 0000000055);
INSERT INTO `Move_Logic` VALUES (0000001236, 0000000002, 017, '54', '56', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001237, 0000000002, 035, '54', '58', 0000000050);
INSERT INTO `Move_Logic` VALUES (0000001238, 0000000002, 011, '54', '60', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001239, 0000000002, 035, '54', '62', 0000000050);
INSERT INTO `Move_Logic` VALUES (0000001240, 0000000002, 003, '54', '64', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001241, 0000000002, 039, '56', '50', 0000000052);
INSERT INTO `Move_Logic` VALUES (0000001242, 0000000002, 061, '56', '52', 0000000063);
INSERT INTO `Move_Logic` VALUES (0000001243, 0000000002, 009, '56', '54', 0000000037);
INSERT INTO `Move_Logic` VALUES (0000001244, 0000000002, 017, '56', '56', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001245, 0000000002, 057, '56', '58', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001246, 0000000002, 057, '56', '60', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001247, 0000000002, 057, '56', '62', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001248, 0000000002, 003, '56', '64', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001249, 0000000002, 039, '58', '50', 0000000052);
INSERT INTO `Move_Logic` VALUES (0000001250, 0000000002, 033, '58', '52', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001251, 0000000002, 057, '58', '54', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001252, 0000000002, 047, '58', '56', 0000000056);
INSERT INTO `Move_Logic` VALUES (0000001253, 0000000002, 005, '58', '58', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001254, 0000000002, 013, '58', '60', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001255, 0000000002, 057, '58', '62', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001256, 0000000002, 057, '58', '64', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001257, 0000000002, 013, '60', '50', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001258, 0000000002, 033, '60', '52', 0000000049);
INSERT INTO `Move_Logic` VALUES (0000001259, 0000000002, 013, '60', '54', 0000000039);
INSERT INTO `Move_Logic` VALUES (0000001260, 0000000002, 057, '60', '56', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001261, 0000000002, 005, '60', '58', 0000000035);
INSERT INTO `Move_Logic` VALUES (0000001262, 0000000002, 011, '60', '60', 0000000038);
INSERT INTO `Move_Logic` VALUES (0000001263, 0000000002, 057, '60', '62', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001264, 0000000002, 047, '60', '64', 0000000056);
INSERT INTO `Move_Logic` VALUES (0000001265, 0000000002, 039, '62', '50', 0000000052);
INSERT INTO `Move_Logic` VALUES (0000001266, 0000000002, 061, '62', '52', 0000000063);
INSERT INTO `Move_Logic` VALUES (0000001267, 0000000002, 057, '62', '54', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001268, 0000000002, 057, '62', '56', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001269, 0000000002, 057, '62', '58', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001270, 0000000002, 057, '62', '60', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001271, 0000000002, 057, '62', '62', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001272, 0000000002, 057, '62', '64', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001273, 0000000002, 007, '64', '50', 0000000036);
INSERT INTO `Move_Logic` VALUES (0000001274, 0000000002, 035, '64', '52', 0000000050);
INSERT INTO `Move_Logic` VALUES (0000001275, 0000000002, 053, '64', '54', 0000000059);
INSERT INTO `Move_Logic` VALUES (0000001276, 0000000002, 017, '64', '56', 0000000041);
INSERT INTO `Move_Logic` VALUES (0000001277, 0000000002, 057, '64', '58', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001278, 0000000002, 057, '64', '60', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001279, 0000000002, 057, '64', '62', 0000000061);
INSERT INTO `Move_Logic` VALUES (0000001280, 0000000002, 003, '64', '64', 0000000034);
INSERT INTO `Move_Logic` VALUES (0000001281, 0000000003, 049, '2', '2', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001282, 0000000003, 063, '2', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001283, 0000000003, 013, '2', '6', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001284, 0000000003, 013, '2', '8', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001285, 0000000003, 013, '2', '10', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001286, 0000000003, 013, '2', '12', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001287, 0000000003, 049, '2', '14', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001288, 0000000003, 057, '2', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001289, 0000000003, 037, '2', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001290, 0000000003, 031, '2', '20', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001291, 0000000003, 049, '2', '22', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001292, 0000000003, 013, '2', '24', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001293, 0000000003, 017, '2', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001294, 0000000003, 013, '2', '28', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001295, 0000000003, 049, '2', '30', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001296, 0000000003, 013, '2', '32', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001297, 0000000003, 041, '2', '34', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001298, 0000000003, 000, '2', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001299, 0000000003, 013, '2', '38', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001300, 0000000003, 049, '2', '40', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001301, 0000000003, 013, '2', '42', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001302, 0000000003, 015, '2', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001303, 0000000003, 027, '2', '46', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001304, 0000000003, 013, '2', '48', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001305, 0000000003, 005, '4', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001306, 0000000003, 059, '4', '4', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001307, 0000000003, 059, '4', '6', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001308, 0000000003, 033, '4', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001309, 0000000003, 003, '4', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001310, 0000000003, 019, '4', '12', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001311, 0000000003, 011, '4', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001312, 0000000003, 057, '4', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001313, 0000000003, 037, '4', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001314, 0000000003, 019, '4', '20', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001315, 0000000003, 011, '4', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001316, 0000000003, 015, '4', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001317, 0000000003, 017, '4', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001318, 0000000003, 003, '4', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001319, 0000000003, 015, '4', '30', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001320, 0000000003, 009, '4', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001321, 0000000003, 059, '4', '34', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001322, 0000000003, 000, '4', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001323, 0000000003, 003, '4', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001324, 0000000003, 005, '4', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001325, 0000000003, 019, '4', '42', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001326, 0000000003, 015, '4', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001327, 0000000003, 043, '4', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001328, 0000000003, 019, '4', '48', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001329, 0000000003, 053, '6', '2', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001330, 0000000003, 063, '6', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001331, 0000000003, 053, '6', '6', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001332, 0000000003, 033, '6', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001333, 0000000003, 003, '6', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001334, 0000000003, 003, '6', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001335, 0000000003, 049, '6', '14', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001336, 0000000003, 053, '6', '16', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001337, 0000000003, 013, '6', '18', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001338, 0000000003, 029, '6', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001339, 0000000003, 011, '6', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001340, 0000000003, 031, '6', '24', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001341, 0000000003, 017, '6', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001342, 0000000003, 045, '6', '28', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001343, 0000000003, 005, '6', '30', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001344, 0000000003, 045, '6', '32', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001345, 0000000003, 013, '6', '34', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001346, 0000000003, 000, '6', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001347, 0000000003, 003, '6', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001348, 0000000003, 031, '6', '40', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001349, 0000000003, 053, '6', '42', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001350, 0000000003, 045, '6', '44', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001351, 0000000003, 053, '6', '46', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001352, 0000000003, 045, '6', '48', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001353, 0000000003, 005, '8', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001354, 0000000003, 063, '8', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001355, 0000000003, 009, '8', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001356, 0000000003, 033, '8', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001357, 0000000003, 003, '8', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001358, 0000000003, 003, '8', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001359, 0000000003, 021, '8', '14', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001360, 0000000003, 057, '8', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001361, 0000000003, 037, '8', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001362, 0000000003, 029, '8', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001363, 0000000003, 021, '8', '22', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001364, 0000000003, 015, '8', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001365, 0000000003, 017, '8', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001366, 0000000003, 003, '8', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001367, 0000000003, 003, '8', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001368, 0000000003, 009, '8', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001369, 0000000003, 041, '8', '34', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001370, 0000000003, 000, '8', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001371, 0000000003, 003, '8', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001372, 0000000003, 005, '8', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001373, 0000000003, 003, '8', '42', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001374, 0000000003, 015, '8', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001375, 0000000003, 043, '8', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001376, 0000000003, 003, '8', '48', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001377, 0000000003, 031, '10', '2', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001378, 0000000003, 053, '10', '4', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001379, 0000000003, 031, '10', '6', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001380, 0000000003, 053, '10', '8', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001381, 0000000003, 045, '10', '10', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001382, 0000000003, 003, '10', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001383, 0000000003, 007, '10', '14', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001384, 0000000003, 057, '10', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001385, 0000000003, 013, '10', '18', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001386, 0000000003, 023, '10', '20', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001387, 0000000003, 007, '10', '22', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001388, 0000000003, 045, '10', '24', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001389, 0000000003, 017, '10', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001390, 0000000003, 031, '10', '28', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001391, 0000000003, 003, '10', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001392, 0000000003, 053, '10', '32', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001393, 0000000003, 025, '10', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001394, 0000000003, 000, '10', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001395, 0000000003, 045, '10', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001396, 0000000003, 053, '10', '40', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001397, 0000000003, 031, '10', '42', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001398, 0000000003, 045, '10', '44', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001399, 0000000003, 043, '10', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001400, 0000000003, 045, '10', '48', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001401, 0000000003, 031, '12', '2', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001402, 0000000003, 063, '12', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001403, 0000000003, 009, '12', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001404, 0000000003, 031, '12', '8', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001405, 0000000003, 053, '12', '10', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001406, 0000000003, 045, '12', '12', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001407, 0000000003, 011, '12', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001408, 0000000003, 057, '12', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001409, 0000000003, 013, '12', '18', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001410, 0000000003, 019, '12', '20', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001411, 0000000003, 011, '12', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001412, 0000000003, 019, '12', '24', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001413, 0000000003, 031, '12', '26', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001414, 0000000003, 031, '12', '28', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001415, 0000000003, 003, '12', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001416, 0000000003, 045, '12', '32', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001417, 0000000003, 025, '12', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001418, 0000000003, 000, '12', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001419, 0000000003, 045, '12', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001420, 0000000003, 053, '12', '40', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001421, 0000000003, 049, '12', '42', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001422, 0000000003, 015, '12', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001423, 0000000003, 029, '12', '46', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001424, 0000000003, 045, '12', '48', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001425, 0000000003, 049, '14', '2', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001426, 0000000003, 063, '14', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001427, 0000000003, 053, '14', '6', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001428, 0000000003, 023, '14', '8', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001429, 0000000003, 013, '14', '10', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001430, 0000000003, 013, '14', '12', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001431, 0000000003, 013, '14', '14', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001432, 0000000003, 013, '14', '16', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001433, 0000000003, 037, '14', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001434, 0000000003, 053, '14', '20', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001435, 0000000003, 011, '14', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001436, 0000000003, 015, '14', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001437, 0000000003, 013, '14', '26', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001438, 0000000003, 013, '14', '28', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001439, 0000000003, 005, '14', '30', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001440, 0000000003, 013, '14', '32', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001441, 0000000003, 013, '14', '34', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001442, 0000000003, 000, '14', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001443, 0000000003, 013, '14', '38', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001444, 0000000003, 049, '14', '40', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001445, 0000000003, 049, '14', '42', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001446, 0000000003, 019, '14', '44', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001447, 0000000003, 053, '14', '46', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001448, 0000000003, 049, '14', '48', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001449, 0000000003, 057, '16', '2', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001450, 0000000003, 057, '16', '4', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001451, 0000000003, 009, '16', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001452, 0000000003, 061, '16', '8', 0000000095);
INSERT INTO `Move_Logic` VALUES (0000001453, 0000000003, 057, '16', '10', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001454, 0000000003, 057, '16', '12', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001455, 0000000003, 011, '16', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001456, 0000000003, 057, '16', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001457, 0000000003, 057, '16', '18', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001458, 0000000003, 057, '16', '20', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001459, 0000000003, 011, '16', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001460, 0000000003, 019, '16', '24', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001461, 0000000003, 057, '16', '26', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001462, 0000000003, 021, '16', '28', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001463, 0000000003, 057, '16', '30', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001464, 0000000003, 009, '16', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001465, 0000000003, 041, '16', '34', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001466, 0000000003, 000, '16', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001467, 0000000003, 057, '16', '38', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001468, 0000000003, 021, '16', '40', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001469, 0000000003, 057, '16', '42', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001470, 0000000003, 057, '16', '44', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001471, 0000000003, 043, '16', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001472, 0000000003, 057, '16', '48', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001473, 0000000003, 005, '18', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001474, 0000000003, 019, '18', '4', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001475, 0000000003, 017, '18', '6', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001476, 0000000003, 033, '18', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001477, 0000000003, 003, '18', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001478, 0000000003, 003, '18', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001479, 0000000003, 011, '18', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001480, 0000000003, 057, '18', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001481, 0000000003, 037, '18', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001482, 0000000003, 029, '18', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001483, 0000000003, 011, '18', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001484, 0000000003, 015, '18', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001485, 0000000003, 017, '18', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001486, 0000000003, 005, '18', '28', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001487, 0000000003, 003, '18', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001488, 0000000003, 009, '18', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001489, 0000000003, 041, '18', '34', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001490, 0000000003, 000, '18', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001491, 0000000003, 003, '18', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001492, 0000000003, 021, '18', '40', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001493, 0000000003, 005, '18', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001494, 0000000003, 015, '18', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001495, 0000000003, 043, '18', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001496, 0000000003, 003, '18', '48', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001497, 0000000003, 005, '20', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001498, 0000000003, 063, '20', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001499, 0000000003, 009, '20', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001500, 0000000003, 033, '20', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001501, 0000000003, 021, '20', '10', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001502, 0000000003, 003, '20', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001503, 0000000003, 011, '20', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001504, 0000000003, 057, '20', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001505, 0000000003, 037, '20', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001506, 0000000003, 029, '20', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001507, 0000000003, 011, '20', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001508, 0000000003, 015, '20', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001509, 0000000003, 017, '20', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001510, 0000000003, 021, '20', '28', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001511, 0000000003, 003, '20', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001512, 0000000003, 009, '20', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001513, 0000000003, 025, '20', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001514, 0000000003, 000, '20', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001515, 0000000003, 003, '20', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001516, 0000000003, 005, '20', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001517, 0000000003, 005, '20', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001518, 0000000003, 015, '20', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001519, 0000000003, 043, '20', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001520, 0000000003, 003, '20', '48', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001521, 0000000003, 019, '22', '2', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001522, 0000000003, 063, '22', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001523, 0000000003, 009, '22', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001524, 0000000003, 023, '22', '8', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001525, 0000000003, 013, '22', '10', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001526, 0000000003, 013, '22', '12', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001527, 0000000003, 013, '22', '14', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001528, 0000000003, 019, '22', '16', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001529, 0000000003, 037, '22', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001530, 0000000003, 053, '22', '20', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001531, 0000000003, 019, '22', '22', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001532, 0000000003, 015, '22', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001533, 0000000003, 017, '22', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001534, 0000000003, 003, '22', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001535, 0000000003, 005, '22', '30', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001536, 0000000003, 031, '22', '32', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001537, 0000000003, 025, '22', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001538, 0000000003, 000, '22', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001539, 0000000003, 003, '22', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001540, 0000000003, 049, '22', '40', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001541, 0000000003, 049, '22', '42', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001542, 0000000003, 013, '22', '44', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001543, 0000000003, 043, '22', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001544, 0000000003, 049, '22', '48', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001545, 0000000003, 053, '24', '2', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001546, 0000000003, 041, '24', '4', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001547, 0000000003, 017, '24', '6', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001548, 0000000003, 033, '24', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001549, 0000000003, 045, '24', '10', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001550, 0000000003, 045, '24', '12', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001551, 0000000003, 011, '24', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001552, 0000000003, 001, '24', '16', 0000000065);
INSERT INTO `Move_Logic` VALUES (0000001553, 0000000003, 053, '24', '18', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001554, 0000000003, 007, '24', '20', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001555, 0000000003, 011, '24', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001556, 0000000003, 007, '24', '24', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001557, 0000000003, 017, '24', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001558, 0000000003, 053, '24', '28', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001559, 0000000003, 003, '24', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001560, 0000000003, 045, '24', '32', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001561, 0000000003, 053, '24', '34', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001562, 0000000003, 000, '24', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001563, 0000000003, 045, '24', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001564, 0000000003, 021, '24', '40', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001565, 0000000003, 005, '24', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001566, 0000000003, 015, '24', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001567, 0000000003, 041, '24', '46', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001568, 0000000003, 017, '24', '48', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001569, 0000000003, 005, '26', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001570, 0000000003, 063, '26', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001571, 0000000003, 059, '26', '6', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001572, 0000000003, 033, '26', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001573, 0000000003, 003, '26', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001574, 0000000003, 003, '26', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001575, 0000000003, 011, '26', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001576, 0000000003, 057, '26', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001577, 0000000003, 019, '26', '18', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001578, 0000000003, 019, '26', '20', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001579, 0000000003, 011, '26', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001580, 0000000003, 015, '26', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001581, 0000000003, 017, '26', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001582, 0000000003, 005, '26', '28', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001583, 0000000003, 003, '26', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001584, 0000000003, 009, '26', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001585, 0000000003, 025, '26', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001586, 0000000003, 000, '26', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001587, 0000000003, 003, '26', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001588, 0000000003, 005, '26', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001589, 0000000003, 059, '26', '42', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001590, 0000000003, 019, '26', '44', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001591, 0000000003, 043, '26', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001592, 0000000003, 059, '26', '48', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001593, 0000000003, 007, '28', '2', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001594, 0000000003, 063, '28', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001595, 0000000003, 053, '28', '6', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001596, 0000000003, 053, '28', '8', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001597, 0000000003, 003, '28', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001598, 0000000003, 053, '28', '12', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001599, 0000000003, 011, '28', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001600, 0000000003, 023, '28', '16', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001601, 0000000003, 053, '28', '18', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001602, 0000000003, 023, '28', '20', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001603, 0000000003, 011, '28', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001604, 0000000003, 053, '28', '24', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001605, 0000000003, 055, '28', '26', 0000000092);
INSERT INTO `Move_Logic` VALUES (0000001606, 0000000003, 019, '28', '28', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001607, 0000000003, 031, '28', '30', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001608, 0000000003, 009, '28', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001609, 0000000003, 025, '28', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001610, 0000000003, 000, '28', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001611, 0000000003, 027, '28', '38', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001612, 0000000003, 041, '28', '40', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001613, 0000000003, 005, '28', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001614, 0000000003, 015, '28', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001615, 0000000003, 029, '28', '46', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001616, 0000000003, 003, '28', '48', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001617, 0000000003, 049, '30', '2', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001618, 0000000003, 063, '30', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001619, 0000000003, 009, '30', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001620, 0000000003, 033, '30', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001621, 0000000003, 003, '30', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001622, 0000000003, 003, '30', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001623, 0000000003, 011, '30', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001624, 0000000003, 057, '30', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001625, 0000000003, 037, '30', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001626, 0000000003, 029, '30', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001627, 0000000003, 027, '30', '22', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001628, 0000000003, 015, '30', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001629, 0000000003, 017, '30', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001630, 0000000003, 003, '30', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001631, 0000000003, 027, '30', '30', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001632, 0000000003, 027, '30', '32', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001633, 0000000003, 025, '30', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001634, 0000000003, 000, '30', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001635, 0000000003, 027, '30', '38', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001636, 0000000003, 005, '30', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001637, 0000000003, 027, '30', '42', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001638, 0000000003, 015, '30', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001639, 0000000003, 027, '30', '46', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001640, 0000000003, 003, '30', '48', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001641, 0000000003, 053, '32', '2', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001642, 0000000003, 063, '32', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001643, 0000000003, 045, '32', '6', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001644, 0000000003, 033, '32', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001645, 0000000003, 003, '32', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001646, 0000000003, 045, '32', '12', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001647, 0000000003, 053, '32', '14', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001648, 0000000003, 053, '32', '16', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001649, 0000000003, 013, '32', '18', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001650, 0000000003, 029, '32', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001651, 0000000003, 053, '32', '22', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001652, 0000000003, 045, '32', '24', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001653, 0000000003, 017, '32', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001654, 0000000003, 053, '32', '28', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001655, 0000000003, 003, '32', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001656, 0000000003, 031, '32', '32', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001657, 0000000003, 025, '32', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001658, 0000000003, 000, '32', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001659, 0000000003, 045, '32', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001660, 0000000003, 031, '32', '40', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001661, 0000000003, 053, '32', '42', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001662, 0000000003, 045, '32', '44', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001663, 0000000003, 043, '32', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001664, 0000000003, 017, '32', '48', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001665, 0000000003, 005, '34', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001666, 0000000003, 063, '34', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001667, 0000000003, 009, '34', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001668, 0000000003, 033, '34', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001669, 0000000003, 003, '34', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001670, 0000000003, 051, '34', '12', 0000000090);
INSERT INTO `Move_Logic` VALUES (0000001671, 0000000003, 011, '34', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001672, 0000000003, 001, '34', '16', 0000000065);
INSERT INTO `Move_Logic` VALUES (0000001673, 0000000003, 037, '34', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001674, 0000000003, 029, '34', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001675, 0000000003, 051, '34', '22', 0000000090);
INSERT INTO `Move_Logic` VALUES (0000001676, 0000000003, 015, '34', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001677, 0000000003, 051, '34', '26', 0000000090);
INSERT INTO `Move_Logic` VALUES (0000001678, 0000000003, 017, '34', '28', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001679, 0000000003, 003, '34', '30', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001680, 0000000003, 009, '34', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001681, 0000000003, 025, '34', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001682, 0000000003, 000, '34', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001683, 0000000003, 003, '34', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001684, 0000000003, 041, '34', '40', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001685, 0000000003, 005, '34', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001686, 0000000003, 015, '34', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001687, 0000000003, 027, '34', '46', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001688, 0000000003, 017, '34', '48', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001689, 0000000003, 005, '36', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001690, 0000000003, 041, '36', '4', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001691, 0000000003, 007, '36', '6', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001692, 0000000003, 033, '36', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001693, 0000000003, 003, '36', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001694, 0000000003, 003, '36', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001695, 0000000003, 011, '36', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001696, 0000000003, 001, '36', '16', 0000000065);
INSERT INTO `Move_Logic` VALUES (0000001697, 0000000003, 007, '36', '18', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001698, 0000000003, 007, '36', '20', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001699, 0000000003, 011, '36', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001700, 0000000003, 015, '36', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001701, 0000000003, 055, '36', '26', 0000000092);
INSERT INTO `Move_Logic` VALUES (0000001702, 0000000003, 007, '36', '28', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001703, 0000000003, 027, '36', '30', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001704, 0000000003, 009, '36', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001705, 0000000003, 007, '36', '34', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001706, 0000000003, 000, '36', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001707, 0000000003, 003, '36', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001708, 0000000003, 007, '36', '40', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001709, 0000000003, 053, '36', '42', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001710, 0000000003, 055, '36', '44', 0000000092);
INSERT INTO `Move_Logic` VALUES (0000001711, 0000000003, 007, '36', '46', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001712, 0000000003, 055, '36', '48', 0000000092);
INSERT INTO `Move_Logic` VALUES (0000001713, 0000000003, 031, '38', '2', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001714, 0000000003, 053, '38', '4', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001715, 0000000003, 019, '38', '6', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001716, 0000000003, 053, '38', '8', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001717, 0000000003, 019, '38', '10', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001718, 0000000003, 045, '38', '12', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001719, 0000000003, 007, '38', '14', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001720, 0000000003, 057, '38', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001721, 0000000003, 019, '38', '18', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001722, 0000000003, 029, '38', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001723, 0000000003, 019, '38', '22', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001724, 0000000003, 019, '38', '24', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001725, 0000000003, 017, '38', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001726, 0000000003, 003, '38', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001727, 0000000003, 005, '38', '30', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001728, 0000000003, 045, '38', '32', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001729, 0000000003, 025, '38', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001730, 0000000003, 000, '38', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001731, 0000000003, 045, '38', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001732, 0000000003, 005, '38', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001733, 0000000003, 031, '38', '42', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001734, 0000000003, 045, '38', '44', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001735, 0000000003, 043, '38', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001736, 0000000003, 017, '38', '48', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001737, 0000000003, 049, '40', '2', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001738, 0000000003, 019, '40', '4', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001739, 0000000003, 031, '40', '6', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001740, 0000000003, 033, '40', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001741, 0000000003, 003, '40', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001742, 0000000003, 041, '40', '12', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001743, 0000000003, 049, '40', '14', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001744, 0000000003, 023, '40', '16', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001745, 0000000003, 023, '40', '18', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001746, 0000000003, 053, '40', '20', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001747, 0000000003, 013, '40', '22', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001748, 0000000003, 023, '40', '24', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001749, 0000000003, 013, '40', '26', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001750, 0000000003, 003, '40', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001751, 0000000003, 005, '40', '30', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001752, 0000000003, 009, '40', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001753, 0000000003, 025, '40', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001754, 0000000003, 000, '40', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001755, 0000000003, 003, '40', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001756, 0000000003, 005, '40', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001757, 0000000003, 049, '40', '42', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001758, 0000000003, 015, '40', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001759, 0000000003, 043, '40', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001760, 0000000003, 005, '40', '48', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001761, 0000000003, 019, '42', '2', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001762, 0000000003, 063, '42', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001763, 0000000003, 013, '42', '6', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001764, 0000000003, 013, '42', '8', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001765, 0000000003, 013, '42', '10', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001766, 0000000003, 049, '42', '12', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001767, 0000000003, 013, '42', '14', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001768, 0000000003, 057, '42', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001769, 0000000003, 019, '42', '18', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001770, 0000000003, 031, '42', '20', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001771, 0000000003, 049, '42', '22', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001772, 0000000003, 013, '42', '24', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001773, 0000000003, 013, '42', '26', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001774, 0000000003, 013, '42', '28', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001775, 0000000003, 005, '42', '30', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001776, 0000000003, 009, '42', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001777, 0000000003, 041, '42', '34', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001778, 0000000003, 000, '42', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001779, 0000000003, 013, '42', '38', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001780, 0000000003, 049, '42', '40', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001781, 0000000003, 049, '42', '42', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001782, 0000000003, 013, '42', '44', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001783, 0000000003, 027, '42', '46', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001784, 0000000003, 049, '42', '48', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001785, 0000000003, 005, '44', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001786, 0000000003, 019, '44', '4', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001787, 0000000003, 045, '44', '6', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001788, 0000000003, 033, '44', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001789, 0000000003, 045, '44', '10', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001790, 0000000003, 003, '44', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001791, 0000000003, 031, '44', '14', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001792, 0000000003, 057, '44', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001793, 0000000003, 007, '44', '18', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001794, 0000000003, 053, '44', '20', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001795, 0000000003, 053, '44', '22', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001796, 0000000003, 031, '44', '24', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001797, 0000000003, 017, '44', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001798, 0000000003, 031, '44', '28', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001799, 0000000003, 031, '44', '30', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001800, 0000000003, 045, '44', '32', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001801, 0000000003, 013, '44', '34', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001802, 0000000003, 000, '44', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001803, 0000000003, 045, '44', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001804, 0000000003, 031, '44', '40', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001805, 0000000003, 005, '44', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001806, 0000000003, 045, '44', '44', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001807, 0000000003, 027, '44', '46', 0000000078);
INSERT INTO `Move_Logic` VALUES (0000001808, 0000000003, 045, '44', '48', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001809, 0000000003, 005, '46', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001810, 0000000003, 063, '46', '4', 0000000096);
INSERT INTO `Move_Logic` VALUES (0000001811, 0000000003, 009, '46', '6', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001812, 0000000003, 033, '46', '8', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001813, 0000000003, 003, '46', '10', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001814, 0000000003, 003, '46', '12', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001815, 0000000003, 011, '46', '14', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001816, 0000000003, 001, '46', '16', 0000000065);
INSERT INTO `Move_Logic` VALUES (0000001817, 0000000003, 037, '46', '18', 0000000083);
INSERT INTO `Move_Logic` VALUES (0000001818, 0000000003, 029, '46', '20', 0000000079);
INSERT INTO `Move_Logic` VALUES (0000001819, 0000000003, 011, '46', '22', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001820, 0000000003, 015, '46', '24', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001821, 0000000003, 017, '46', '26', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001822, 0000000003, 003, '46', '28', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001823, 0000000003, 015, '46', '30', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001824, 0000000003, 009, '46', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001825, 0000000003, 025, '46', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001826, 0000000003, 000, '46', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001827, 0000000003, 003, '46', '38', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001828, 0000000003, 005, '46', '40', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001829, 0000000003, 005, '46', '42', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001830, 0000000003, 015, '46', '44', 0000000072);
INSERT INTO `Move_Logic` VALUES (0000001831, 0000000003, 043, '46', '46', 0000000086);
INSERT INTO `Move_Logic` VALUES (0000001832, 0000000003, 003, '46', '48', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001833, 0000000003, 005, '48', '2', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001834, 0000000003, 019, '48', '4', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001835, 0000000003, 045, '48', '6', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001836, 0000000003, 031, '48', '8', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001837, 0000000003, 045, '48', '10', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001838, 0000000003, 045, '48', '12', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001839, 0000000003, 049, '48', '14', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001840, 0000000003, 057, '48', '16', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001841, 0000000003, 031, '48', '18', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001842, 0000000003, 019, '48', '20', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001843, 0000000003, 049, '48', '22', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001844, 0000000003, 031, '48', '24', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001845, 0000000003, 019, '48', '26', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001846, 0000000003, 031, '48', '28', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001847, 0000000003, 031, '48', '30', 0000000080);
INSERT INTO `Move_Logic` VALUES (0000001848, 0000000003, 009, '48', '32', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001849, 0000000003, 025, '48', '34', 0000000077);
INSERT INTO `Move_Logic` VALUES (0000001850, 0000000003, 000, '48', '36', NULL);
INSERT INTO `Move_Logic` VALUES (0000001851, 0000000003, 045, '48', '38', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001852, 0000000003, 013, '48', '40', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001853, 0000000003, 049, '48', '42', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001854, 0000000003, 045, '48', '44', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001855, 0000000003, 053, '48', '46', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001856, 0000000003, 049, '48', '48', 0000000089);
INSERT INTO `Move_Logic` VALUES (0000001857, 0000000003, 045, '50', '50', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001858, 0000000003, 023, '50', '52', 0000000076);
INSERT INTO `Move_Logic` VALUES (0000001859, 0000000003, 009, '50', '54', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001860, 0000000003, 053, '50', '56', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001861, 0000000003, 041, '50', '58', 0000000085);
INSERT INTO `Move_Logic` VALUES (0000001862, 0000000003, 011, '50', '60', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001863, 0000000003, 019, '50', '62', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001864, 0000000003, 019, '50', '64', 0000000074);
INSERT INTO `Move_Logic` VALUES (0000001865, 0000000003, 021, '52', '50', 0000000075);
INSERT INTO `Move_Logic` VALUES (0000001866, 0000000003, 061, '52', '52', 0000000095);
INSERT INTO `Move_Logic` VALUES (0000001867, 0000000003, 009, '52', '54', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001868, 0000000003, 057, '52', '56', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001869, 0000000003, 005, '52', '58', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001870, 0000000003, 011, '52', '60', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001871, 0000000003, 057, '52', '62', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001872, 0000000003, 057, '52', '64', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001873, 0000000003, 053, '54', '50', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001874, 0000000003, 033, '54', '52', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001875, 0000000003, 045, '54', '54', 0000000087);
INSERT INTO `Move_Logic` VALUES (0000001876, 0000000003, 017, '54', '56', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001877, 0000000003, 035, '54', '58', 0000000082);
INSERT INTO `Move_Logic` VALUES (0000001878, 0000000003, 011, '54', '60', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001879, 0000000003, 035, '54', '62', 0000000082);
INSERT INTO `Move_Logic` VALUES (0000001880, 0000000003, 003, '54', '64', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001881, 0000000003, 039, '56', '50', 0000000084);
INSERT INTO `Move_Logic` VALUES (0000001882, 0000000003, 057, '56', '52', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001883, 0000000003, 009, '56', '54', 0000000069);
INSERT INTO `Move_Logic` VALUES (0000001884, 0000000003, 017, '56', '56', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001885, 0000000003, 057, '56', '58', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001886, 0000000003, 057, '56', '60', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001887, 0000000003, 057, '56', '62', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001888, 0000000003, 059, '56', '64', 0000000094);
INSERT INTO `Move_Logic` VALUES (0000001889, 0000000003, 039, '58', '50', 0000000084);
INSERT INTO `Move_Logic` VALUES (0000001890, 0000000003, 033, '58', '52', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001891, 0000000003, 057, '58', '54', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001892, 0000000003, 047, '58', '56', 0000000088);
INSERT INTO `Move_Logic` VALUES (0000001893, 0000000003, 005, '58', '58', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001894, 0000000003, 013, '58', '60', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001895, 0000000003, 057, '58', '62', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001896, 0000000003, 057, '58', '64', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001897, 0000000003, 013, '60', '50', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001898, 0000000003, 033, '60', '52', 0000000081);
INSERT INTO `Move_Logic` VALUES (0000001899, 0000000003, 013, '60', '54', 0000000071);
INSERT INTO `Move_Logic` VALUES (0000001900, 0000000003, 057, '60', '56', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001901, 0000000003, 005, '60', '58', 0000000067);
INSERT INTO `Move_Logic` VALUES (0000001902, 0000000003, 011, '60', '60', 0000000070);
INSERT INTO `Move_Logic` VALUES (0000001903, 0000000003, 057, '60', '62', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001904, 0000000003, 047, '60', '64', 0000000088);
INSERT INTO `Move_Logic` VALUES (0000001905, 0000000003, 039, '62', '50', 0000000084);
INSERT INTO `Move_Logic` VALUES (0000001906, 0000000003, 061, '62', '52', 0000000095);
INSERT INTO `Move_Logic` VALUES (0000001907, 0000000003, 057, '62', '54', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001908, 0000000003, 057, '62', '56', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001909, 0000000003, 057, '62', '58', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001910, 0000000003, 057, '62', '60', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001911, 0000000003, 057, '62', '62', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001912, 0000000003, 057, '62', '64', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001913, 0000000003, 007, '64', '50', 0000000068);
INSERT INTO `Move_Logic` VALUES (0000001914, 0000000003, 035, '64', '52', 0000000082);
INSERT INTO `Move_Logic` VALUES (0000001915, 0000000003, 053, '64', '54', 0000000091);
INSERT INTO `Move_Logic` VALUES (0000001916, 0000000003, 017, '64', '56', 0000000073);
INSERT INTO `Move_Logic` VALUES (0000001917, 0000000003, 057, '64', '58', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001918, 0000000003, 057, '64', '60', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001919, 0000000003, 057, '64', '62', 0000000093);
INSERT INTO `Move_Logic` VALUES (0000001920, 0000000003, 003, '64', '64', 0000000066);
INSERT INTO `Move_Logic` VALUES (0000001921, 0000000004, 049, '2', '2', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001922, 0000000004, 063, '2', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000001923, 0000000004, 013, '2', '6', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001924, 0000000004, 019, '2', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001925, 0000000004, 013, '2', '10', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001926, 0000000004, 013, '2', '12', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001927, 0000000004, 049, '2', '14', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001928, 0000000004, 057, '2', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000001929, 0000000004, 037, '2', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000001930, 0000000004, 019, '2', '20', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001931, 0000000004, 049, '2', '22', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001932, 0000000004, 013, '2', '24', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001933, 0000000004, 013, '2', '26', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001934, 0000000004, 013, '2', '28', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001935, 0000000004, 049, '2', '30', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001936, 0000000004, 013, '2', '32', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001937, 0000000004, 041, '2', '34', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000001938, 0000000004, 013, '2', '36', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001939, 0000000004, 013, '2', '38', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001940, 0000000004, 049, '2', '40', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001941, 0000000004, 049, '2', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001942, 0000000004, 015, '2', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000001943, 0000000004, 027, '2', '46', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000001944, 0000000004, 013, '2', '48', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000001945, 0000000004, 005, '4', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000001946, 0000000004, 059, '4', '4', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001947, 0000000004, 059, '4', '6', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001948, 0000000004, 033, '4', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000001949, 0000000004, 003, '4', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001950, 0000000004, 059, '4', '12', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001951, 0000000004, 011, '4', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000001952, 0000000004, 057, '4', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000001953, 0000000004, 037, '4', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000001954, 0000000004, 059, '4', '20', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001955, 0000000004, 011, '4', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000001956, 0000000004, 015, '4', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000001957, 0000000004, 017, '4', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000001958, 0000000004, 003, '4', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001959, 0000000004, 015, '4', '30', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000001960, 0000000004, 009, '4', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000001961, 0000000004, 059, '4', '34', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001962, 0000000004, 015, '4', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000001963, 0000000004, 003, '4', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001964, 0000000004, 005, '4', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000001965, 0000000004, 059, '4', '42', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001966, 0000000004, 015, '4', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000001967, 0000000004, 043, '4', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000001968, 0000000004, 059, '4', '48', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000001969, 0000000004, 019, '6', '2', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001970, 0000000004, 063, '6', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000001971, 0000000004, 017, '6', '6', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000001972, 0000000004, 033, '6', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000001973, 0000000004, 003, '6', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001974, 0000000004, 003, '6', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001975, 0000000004, 049, '6', '14', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000001976, 0000000004, 019, '6', '16', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001977, 0000000004, 019, '6', '18', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001978, 0000000004, 029, '6', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000001979, 0000000004, 011, '6', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000001980, 0000000004, 015, '6', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000001981, 0000000004, 017, '6', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000001982, 0000000004, 045, '6', '28', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000001983, 0000000004, 005, '6', '30', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000001984, 0000000004, 045, '6', '32', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000001985, 0000000004, 019, '6', '34', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001986, 0000000004, 019, '6', '36', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001987, 0000000004, 019, '6', '38', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001988, 0000000004, 019, '6', '40', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001989, 0000000004, 019, '6', '42', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001990, 0000000004, 045, '6', '44', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000001991, 0000000004, 019, '6', '46', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000001992, 0000000004, 045, '6', '48', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000001993, 0000000004, 005, '8', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000001994, 0000000004, 063, '8', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000001995, 0000000004, 009, '8', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000001996, 0000000004, 033, '8', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000001997, 0000000004, 003, '8', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001998, 0000000004, 003, '8', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000001999, 0000000004, 021, '8', '14', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002000, 0000000004, 057, '8', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002001, 0000000004, 037, '8', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002002, 0000000004, 029, '8', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002003, 0000000004, 021, '8', '22', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002004, 0000000004, 015, '8', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002005, 0000000004, 017, '8', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002006, 0000000004, 003, '8', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002007, 0000000004, 003, '8', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002008, 0000000004, 009, '8', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002009, 0000000004, 019, '8', '34', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002010, 0000000004, 015, '8', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002011, 0000000004, 003, '8', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002012, 0000000004, 005, '8', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002013, 0000000004, 005, '8', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002014, 0000000004, 015, '8', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002015, 0000000004, 043, '8', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002016, 0000000004, 003, '8', '48', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002017, 0000000004, 031, '10', '2', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002018, 0000000004, 053, '10', '4', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002019, 0000000004, 009, '10', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002020, 0000000004, 019, '10', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002021, 0000000004, 045, '10', '10', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002022, 0000000004, 003, '10', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002023, 0000000004, 007, '10', '14', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002024, 0000000004, 057, '10', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002025, 0000000004, 013, '10', '18', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002026, 0000000004, 023, '10', '20', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002027, 0000000004, 007, '10', '22', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002028, 0000000004, 045, '10', '24', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002029, 0000000004, 017, '10', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002030, 0000000004, 031, '10', '28', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002031, 0000000004, 003, '10', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002032, 0000000004, 053, '10', '32', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002033, 0000000004, 025, '10', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002034, 0000000004, 031, '10', '36', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002035, 0000000004, 045, '10', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002036, 0000000004, 053, '10', '40', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002037, 0000000004, 031, '10', '42', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002038, 0000000004, 045, '10', '44', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002039, 0000000004, 043, '10', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002040, 0000000004, 045, '10', '48', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002041, 0000000004, 031, '12', '2', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002042, 0000000004, 063, '12', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002043, 0000000004, 009, '12', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002044, 0000000004, 019, '12', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002045, 0000000004, 053, '12', '10', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002046, 0000000004, 045, '12', '12', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002047, 0000000004, 011, '12', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002048, 0000000004, 057, '12', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002049, 0000000004, 013, '12', '18', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002050, 0000000004, 029, '12', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002051, 0000000004, 011, '12', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002052, 0000000004, 045, '12', '24', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002053, 0000000004, 017, '12', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002054, 0000000004, 031, '12', '28', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002055, 0000000004, 003, '12', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002056, 0000000004, 045, '12', '32', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002057, 0000000004, 025, '12', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002058, 0000000004, 031, '12', '36', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002059, 0000000004, 045, '12', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002060, 0000000004, 053, '12', '40', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002061, 0000000004, 049, '12', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002062, 0000000004, 015, '12', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002063, 0000000004, 029, '12', '46', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002064, 0000000004, 045, '12', '48', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002065, 0000000004, 049, '14', '2', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002066, 0000000004, 063, '14', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002067, 0000000004, 049, '14', '6', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002068, 0000000004, 023, '14', '8', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002069, 0000000004, 013, '14', '10', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002070, 0000000004, 003, '14', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002071, 0000000004, 013, '14', '14', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002072, 0000000004, 019, '14', '16', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002073, 0000000004, 037, '14', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002074, 0000000004, 053, '14', '20', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002075, 0000000004, 011, '14', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002076, 0000000004, 013, '14', '24', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002077, 0000000004, 013, '14', '26', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002078, 0000000004, 013, '14', '28', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002079, 0000000004, 005, '14', '30', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002080, 0000000004, 013, '14', '32', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002081, 0000000004, 013, '14', '34', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002082, 0000000004, 013, '14', '36', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002083, 0000000004, 013, '14', '38', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002084, 0000000004, 049, '14', '40', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002085, 0000000004, 049, '14', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002086, 0000000004, 013, '14', '44', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002087, 0000000004, 053, '14', '46', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002088, 0000000004, 049, '14', '48', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002089, 0000000004, 057, '16', '2', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002090, 0000000004, 057, '16', '4', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002091, 0000000004, 009, '16', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002092, 0000000004, 061, '16', '8', 0000000127);
INSERT INTO `Move_Logic` VALUES (0000002093, 0000000004, 057, '16', '10', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002094, 0000000004, 057, '16', '12', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002095, 0000000004, 011, '16', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002096, 0000000004, 057, '16', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002097, 0000000004, 061, '16', '18', 0000000127);
INSERT INTO `Move_Logic` VALUES (0000002098, 0000000004, 061, '16', '20', 0000000127);
INSERT INTO `Move_Logic` VALUES (0000002099, 0000000004, 011, '16', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002100, 0000000004, 019, '16', '24', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002101, 0000000004, 057, '16', '26', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002102, 0000000004, 021, '16', '28', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002103, 0000000004, 057, '16', '30', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002104, 0000000004, 009, '16', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002105, 0000000004, 041, '16', '34', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002106, 0000000004, 041, '16', '36', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002107, 0000000004, 057, '16', '38', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002108, 0000000004, 021, '16', '40', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002109, 0000000004, 057, '16', '42', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002110, 0000000004, 057, '16', '44', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002111, 0000000004, 043, '16', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002112, 0000000004, 057, '16', '48', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002113, 0000000004, 005, '18', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002114, 0000000004, 063, '18', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002115, 0000000004, 017, '18', '6', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002116, 0000000004, 033, '18', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002117, 0000000004, 003, '18', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002118, 0000000004, 003, '18', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002119, 0000000004, 011, '18', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002120, 0000000004, 057, '18', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002121, 0000000004, 037, '18', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002122, 0000000004, 029, '18', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002123, 0000000004, 011, '18', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002124, 0000000004, 015, '18', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002125, 0000000004, 017, '18', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002126, 0000000004, 003, '18', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002127, 0000000004, 003, '18', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002128, 0000000004, 009, '18', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002129, 0000000004, 041, '18', '34', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002130, 0000000004, 015, '18', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002131, 0000000004, 003, '18', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002132, 0000000004, 021, '18', '40', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002133, 0000000004, 005, '18', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002134, 0000000004, 015, '18', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002135, 0000000004, 043, '18', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002136, 0000000004, 003, '18', '48', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002137, 0000000004, 005, '20', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002138, 0000000004, 063, '20', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002139, 0000000004, 009, '20', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002140, 0000000004, 033, '20', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002141, 0000000004, 021, '20', '10', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002142, 0000000004, 003, '20', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002143, 0000000004, 011, '20', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002144, 0000000004, 057, '20', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002145, 0000000004, 037, '20', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002146, 0000000004, 029, '20', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002147, 0000000004, 011, '20', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002148, 0000000004, 015, '20', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002149, 0000000004, 017, '20', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002150, 0000000004, 021, '20', '28', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002151, 0000000004, 003, '20', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002152, 0000000004, 009, '20', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002153, 0000000004, 025, '20', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002154, 0000000004, 015, '20', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002155, 0000000004, 003, '20', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002156, 0000000004, 005, '20', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002157, 0000000004, 005, '20', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002158, 0000000004, 015, '20', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002159, 0000000004, 043, '20', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002160, 0000000004, 003, '20', '48', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002161, 0000000004, 049, '22', '2', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002162, 0000000004, 063, '22', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002163, 0000000004, 009, '22', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002164, 0000000004, 023, '22', '8', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002165, 0000000004, 013, '22', '10', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002166, 0000000004, 013, '22', '12', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002167, 0000000004, 013, '22', '14', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002168, 0000000004, 019, '22', '16', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002169, 0000000004, 037, '22', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002170, 0000000004, 053, '22', '20', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002171, 0000000004, 019, '22', '22', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002172, 0000000004, 015, '22', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002173, 0000000004, 017, '22', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002174, 0000000004, 003, '22', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002175, 0000000004, 005, '22', '30', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002176, 0000000004, 031, '22', '32', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002177, 0000000004, 025, '22', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002178, 0000000004, 013, '22', '36', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002179, 0000000004, 003, '22', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002180, 0000000004, 049, '22', '40', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002181, 0000000004, 049, '22', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002182, 0000000004, 013, '22', '44', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002183, 0000000004, 043, '22', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002184, 0000000004, 049, '22', '48', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002185, 0000000004, 053, '24', '2', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002186, 0000000004, 041, '24', '4', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002187, 0000000004, 017, '24', '6', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002188, 0000000004, 033, '24', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002189, 0000000004, 045, '24', '10', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002190, 0000000004, 045, '24', '12', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002191, 0000000004, 011, '24', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002192, 0000000004, 001, '24', '16', 0000000097);
INSERT INTO `Move_Logic` VALUES (0000002193, 0000000004, 053, '24', '18', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002194, 0000000004, 007, '24', '20', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002195, 0000000004, 011, '24', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002196, 0000000004, 007, '24', '24', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002197, 0000000004, 017, '24', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002198, 0000000004, 003, '24', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002199, 0000000004, 003, '24', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002200, 0000000004, 045, '24', '32', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002201, 0000000004, 053, '24', '34', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002202, 0000000004, 015, '24', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002203, 0000000004, 045, '24', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002204, 0000000004, 021, '24', '40', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002205, 0000000004, 005, '24', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002206, 0000000004, 015, '24', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002207, 0000000004, 041, '24', '46', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002208, 0000000004, 017, '24', '48', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002209, 0000000004, 005, '26', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002210, 0000000004, 063, '26', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002211, 0000000004, 059, '26', '6', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002212, 0000000004, 033, '26', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002213, 0000000004, 003, '26', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002214, 0000000004, 059, '26', '12', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002215, 0000000004, 011, '26', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002216, 0000000004, 057, '26', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002217, 0000000004, 059, '26', '18', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002218, 0000000004, 029, '26', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002219, 0000000004, 011, '26', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002220, 0000000004, 015, '26', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002221, 0000000004, 059, '26', '26', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002222, 0000000004, 003, '26', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002223, 0000000004, 003, '26', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002224, 0000000004, 009, '26', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002225, 0000000004, 025, '26', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002226, 0000000004, 059, '26', '36', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002227, 0000000004, 003, '26', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002228, 0000000004, 005, '26', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002229, 0000000004, 059, '26', '42', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002230, 0000000004, 059, '26', '44', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002231, 0000000004, 043, '26', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002232, 0000000004, 059, '26', '48', 0000000126);
INSERT INTO `Move_Logic` VALUES (0000002233, 0000000004, 007, '28', '2', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002234, 0000000004, 031, '28', '4', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002235, 0000000004, 045, '28', '6', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002236, 0000000004, 019, '28', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002237, 0000000004, 003, '28', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002238, 0000000004, 053, '28', '12', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002239, 0000000004, 011, '28', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002240, 0000000004, 023, '28', '16', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002241, 0000000004, 037, '28', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002242, 0000000004, 023, '28', '20', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002243, 0000000004, 011, '28', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002244, 0000000004, 053, '28', '24', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002245, 0000000004, 053, '28', '26', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002246, 0000000004, 019, '28', '28', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002247, 0000000004, 031, '28', '30', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002248, 0000000004, 009, '28', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002249, 0000000004, 025, '28', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002250, 0000000004, 031, '28', '36', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002251, 0000000004, 027, '28', '38', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002252, 0000000004, 041, '28', '40', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002253, 0000000004, 005, '28', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002254, 0000000004, 015, '28', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002255, 0000000004, 029, '28', '46', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002256, 0000000004, 003, '28', '48', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002257, 0000000004, 049, '30', '2', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002258, 0000000004, 063, '30', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002259, 0000000004, 009, '30', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002260, 0000000004, 033, '30', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002261, 0000000004, 003, '30', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002262, 0000000004, 003, '30', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002263, 0000000004, 011, '30', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002264, 0000000004, 057, '30', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002265, 0000000004, 037, '30', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002266, 0000000004, 029, '30', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002267, 0000000004, 027, '30', '22', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002268, 0000000004, 015, '30', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002269, 0000000004, 017, '30', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002270, 0000000004, 003, '30', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002271, 0000000004, 027, '30', '30', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002272, 0000000004, 027, '30', '32', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002273, 0000000004, 025, '30', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002274, 0000000004, 015, '30', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002275, 0000000004, 027, '30', '38', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002276, 0000000004, 005, '30', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002277, 0000000004, 027, '30', '42', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002278, 0000000004, 015, '30', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002279, 0000000004, 027, '30', '46', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002280, 0000000004, 003, '30', '48', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002281, 0000000004, 053, '32', '2', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002282, 0000000004, 053, '32', '4', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002283, 0000000004, 045, '32', '6', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002284, 0000000004, 033, '32', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002285, 0000000004, 003, '32', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002286, 0000000004, 045, '32', '12', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002287, 0000000004, 053, '32', '14', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002288, 0000000004, 019, '32', '16', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002289, 0000000004, 013, '32', '18', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002290, 0000000004, 029, '32', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002291, 0000000004, 053, '32', '22', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002292, 0000000004, 045, '32', '24', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002293, 0000000004, 017, '32', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002294, 0000000004, 053, '32', '28', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002295, 0000000004, 003, '32', '30', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002296, 0000000004, 031, '32', '32', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002297, 0000000004, 025, '32', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002298, 0000000004, 053, '32', '36', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002299, 0000000004, 045, '32', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002300, 0000000004, 031, '32', '40', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002301, 0000000004, 053, '32', '42', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002302, 0000000004, 045, '32', '44', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002303, 0000000004, 043, '32', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002304, 0000000004, 017, '32', '48', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002305, 0000000004, 005, '34', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002306, 0000000004, 063, '34', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002307, 0000000004, 011, '34', '6', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002308, 0000000004, 033, '34', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002309, 0000000004, 051, '34', '10', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002310, 0000000004, 003, '34', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002311, 0000000004, 011, '34', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002312, 0000000004, 001, '34', '16', 0000000097);
INSERT INTO `Move_Logic` VALUES (0000002313, 0000000004, 037, '34', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002314, 0000000004, 029, '34', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002315, 0000000004, 051, '34', '22', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002316, 0000000004, 015, '34', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002317, 0000000004, 051, '34', '26', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002318, 0000000004, 051, '34', '28', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002319, 0000000004, 051, '34', '30', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002320, 0000000004, 051, '34', '32', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002321, 0000000004, 051, '34', '34', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002322, 0000000004, 041, '34', '36', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002323, 0000000004, 003, '34', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002324, 0000000004, 041, '34', '40', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002325, 0000000004, 005, '34', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002326, 0000000004, 015, '34', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002327, 0000000004, 027, '34', '46', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002328, 0000000004, 051, '34', '48', 0000000122);
INSERT INTO `Move_Logic` VALUES (0000002329, 0000000004, 005, '36', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002330, 0000000004, 007, '36', '4', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002331, 0000000004, 055, '36', '6', 0000000124);
INSERT INTO `Move_Logic` VALUES (0000002332, 0000000004, 033, '36', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002333, 0000000004, 003, '36', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002334, 0000000004, 003, '36', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002335, 0000000004, 011, '36', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002336, 0000000004, 001, '36', '16', 0000000097);
INSERT INTO `Move_Logic` VALUES (0000002337, 0000000004, 007, '36', '18', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002338, 0000000004, 007, '36', '20', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002339, 0000000004, 011, '36', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002340, 0000000004, 015, '36', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002341, 0000000004, 055, '36', '26', 0000000124);
INSERT INTO `Move_Logic` VALUES (0000002342, 0000000004, 007, '36', '28', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002343, 0000000004, 027, '36', '30', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002344, 0000000004, 009, '36', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002345, 0000000004, 007, '36', '34', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002346, 0000000004, 015, '36', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002347, 0000000004, 003, '36', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002348, 0000000004, 007, '36', '40', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002349, 0000000004, 005, '36', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002350, 0000000004, 055, '36', '44', 0000000124);
INSERT INTO `Move_Logic` VALUES (0000002351, 0000000004, 007, '36', '46', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002352, 0000000004, 055, '36', '48', 0000000124);
INSERT INTO `Move_Logic` VALUES (0000002353, 0000000004, 031, '38', '2', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002354, 0000000004, 053, '38', '4', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002355, 0000000004, 009, '38', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002356, 0000000004, 019, '38', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002357, 0000000004, 045, '38', '10', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002358, 0000000004, 045, '38', '12', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002359, 0000000004, 007, '38', '14', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002360, 0000000004, 057, '38', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002361, 0000000004, 013, '38', '18', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002362, 0000000004, 029, '38', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002363, 0000000004, 009, '38', '22', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002364, 0000000004, 045, '38', '24', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002365, 0000000004, 017, '38', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002366, 0000000004, 003, '38', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002367, 0000000004, 005, '38', '30', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002368, 0000000004, 045, '38', '32', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002369, 0000000004, 025, '38', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002370, 0000000004, 031, '38', '36', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002371, 0000000004, 045, '38', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002372, 0000000004, 005, '38', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002373, 0000000004, 031, '38', '42', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002374, 0000000004, 045, '38', '44', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002375, 0000000004, 043, '38', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002376, 0000000004, 045, '38', '48', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002377, 0000000004, 049, '40', '2', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002378, 0000000004, 063, '40', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002379, 0000000004, 031, '40', '6', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002380, 0000000004, 033, '40', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002381, 0000000004, 003, '40', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002382, 0000000004, 041, '40', '12', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002383, 0000000004, 049, '40', '14', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002384, 0000000004, 023, '40', '16', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002385, 0000000004, 023, '40', '18', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002386, 0000000004, 053, '40', '20', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002387, 0000000004, 013, '40', '22', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002388, 0000000004, 023, '40', '24', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002389, 0000000004, 013, '40', '26', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002390, 0000000004, 003, '40', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002391, 0000000004, 005, '40', '30', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002392, 0000000004, 009, '40', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002393, 0000000004, 025, '40', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002394, 0000000004, 041, '40', '36', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002395, 0000000004, 003, '40', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002396, 0000000004, 005, '40', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002397, 0000000004, 049, '40', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002398, 0000000004, 015, '40', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002399, 0000000004, 043, '40', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002400, 0000000004, 005, '40', '48', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002401, 0000000004, 049, '42', '2', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002402, 0000000004, 063, '42', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002403, 0000000004, 009, '42', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002404, 0000000004, 019, '42', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002405, 0000000004, 013, '42', '10', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002406, 0000000004, 049, '42', '12', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002407, 0000000004, 049, '42', '14', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002408, 0000000004, 057, '42', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002409, 0000000004, 037, '42', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002410, 0000000004, 031, '42', '20', 0000000112);
INSERT INTO `Move_Logic` VALUES (0000002411, 0000000004, 049, '42', '22', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002412, 0000000004, 013, '42', '24', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002413, 0000000004, 017, '42', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002414, 0000000004, 013, '42', '28', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002415, 0000000004, 005, '42', '30', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002416, 0000000004, 009, '42', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002417, 0000000004, 041, '42', '34', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002418, 0000000004, 013, '42', '36', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002419, 0000000004, 013, '42', '38', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002420, 0000000004, 049, '42', '40', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002421, 0000000004, 049, '42', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002422, 0000000004, 015, '42', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002423, 0000000004, 027, '42', '46', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002424, 0000000004, 049, '42', '48', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002425, 0000000004, 005, '44', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002426, 0000000004, 019, '44', '4', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002427, 0000000004, 045, '44', '6', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002428, 0000000004, 033, '44', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002429, 0000000004, 045, '44', '10', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002430, 0000000004, 003, '44', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002431, 0000000004, 019, '44', '14', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002432, 0000000004, 057, '44', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002433, 0000000004, 007, '44', '18', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002434, 0000000004, 019, '44', '20', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002435, 0000000004, 019, '44', '22', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002436, 0000000004, 015, '44', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002437, 0000000004, 017, '44', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002438, 0000000004, 019, '44', '28', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002439, 0000000004, 019, '44', '30', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002440, 0000000004, 045, '44', '32', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002441, 0000000004, 019, '44', '34', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002442, 0000000004, 019, '44', '36', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002443, 0000000004, 045, '44', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002444, 0000000004, 019, '44', '40', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002445, 0000000004, 005, '44', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002446, 0000000004, 045, '44', '44', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002447, 0000000004, 027, '44', '46', 0000000110);
INSERT INTO `Move_Logic` VALUES (0000002448, 0000000004, 045, '44', '48', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002449, 0000000004, 005, '46', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002450, 0000000004, 063, '46', '4', 0000000128);
INSERT INTO `Move_Logic` VALUES (0000002451, 0000000004, 009, '46', '6', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002452, 0000000004, 033, '46', '8', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002453, 0000000004, 003, '46', '10', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002454, 0000000004, 003, '46', '12', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002455, 0000000004, 011, '46', '14', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002456, 0000000004, 001, '46', '16', 0000000097);
INSERT INTO `Move_Logic` VALUES (0000002457, 0000000004, 037, '46', '18', 0000000115);
INSERT INTO `Move_Logic` VALUES (0000002458, 0000000004, 029, '46', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002459, 0000000004, 011, '46', '22', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002460, 0000000004, 015, '46', '24', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002461, 0000000004, 017, '46', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002462, 0000000004, 003, '46', '28', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002463, 0000000004, 015, '46', '30', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002464, 0000000004, 009, '46', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002465, 0000000004, 025, '46', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002466, 0000000004, 015, '46', '36', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002467, 0000000004, 003, '46', '38', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002468, 0000000004, 005, '46', '40', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002469, 0000000004, 005, '46', '42', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002470, 0000000004, 015, '46', '44', 0000000104);
INSERT INTO `Move_Logic` VALUES (0000002471, 0000000004, 043, '46', '46', 0000000118);
INSERT INTO `Move_Logic` VALUES (0000002472, 0000000004, 003, '46', '48', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002473, 0000000004, 005, '48', '2', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002474, 0000000004, 019, '48', '4', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002475, 0000000004, 045, '48', '6', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002476, 0000000004, 019, '48', '8', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002477, 0000000004, 045, '48', '10', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002478, 0000000004, 045, '48', '12', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002479, 0000000004, 049, '48', '14', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002480, 0000000004, 057, '48', '16', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002481, 0000000004, 019, '48', '18', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002482, 0000000004, 029, '48', '20', 0000000111);
INSERT INTO `Move_Logic` VALUES (0000002483, 0000000004, 049, '48', '22', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002484, 0000000004, 019, '48', '24', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002485, 0000000004, 017, '48', '26', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002486, 0000000004, 019, '48', '28', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002487, 0000000004, 019, '48', '30', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002488, 0000000004, 009, '48', '32', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002489, 0000000004, 025, '48', '34', 0000000109);
INSERT INTO `Move_Logic` VALUES (0000002490, 0000000004, 019, '48', '36', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002491, 0000000004, 045, '48', '38', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002492, 0000000004, 019, '48', '40', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002493, 0000000004, 049, '48', '42', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002494, 0000000004, 045, '48', '44', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002495, 0000000004, 019, '48', '46', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002496, 0000000004, 049, '48', '48', 0000000121);
INSERT INTO `Move_Logic` VALUES (0000002497, 0000000004, 045, '50', '50', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002498, 0000000004, 023, '50', '52', 0000000108);
INSERT INTO `Move_Logic` VALUES (0000002499, 0000000004, 009, '50', '54', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002500, 0000000004, 017, '50', '56', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002501, 0000000004, 041, '50', '58', 0000000117);
INSERT INTO `Move_Logic` VALUES (0000002502, 0000000004, 011, '50', '60', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002503, 0000000004, 019, '50', '62', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002504, 0000000004, 019, '50', '64', 0000000106);
INSERT INTO `Move_Logic` VALUES (0000002505, 0000000004, 021, '52', '50', 0000000107);
INSERT INTO `Move_Logic` VALUES (0000002506, 0000000004, 061, '52', '52', 0000000127);
INSERT INTO `Move_Logic` VALUES (0000002507, 0000000004, 009, '52', '54', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002508, 0000000004, 057, '52', '56', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002509, 0000000004, 005, '52', '58', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002510, 0000000004, 011, '52', '60', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002511, 0000000004, 057, '52', '62', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002512, 0000000004, 057, '52', '64', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002513, 0000000004, 053, '54', '50', 0000000123);
INSERT INTO `Move_Logic` VALUES (0000002514, 0000000004, 033, '54', '52', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002515, 0000000004, 045, '54', '54', 0000000119);
INSERT INTO `Move_Logic` VALUES (0000002516, 0000000004, 017, '54', '56', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002517, 0000000004, 035, '54', '58', 0000000114);
INSERT INTO `Move_Logic` VALUES (0000002518, 0000000004, 011, '54', '60', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002519, 0000000004, 035, '54', '62', 0000000114);
INSERT INTO `Move_Logic` VALUES (0000002520, 0000000004, 003, '54', '64', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002521, 0000000004, 039, '56', '50', 0000000116);
INSERT INTO `Move_Logic` VALUES (0000002522, 0000000004, 061, '56', '52', 0000000127);
INSERT INTO `Move_Logic` VALUES (0000002523, 0000000004, 009, '56', '54', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002524, 0000000004, 017, '56', '56', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002525, 0000000004, 057, '56', '58', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002526, 0000000004, 057, '56', '60', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002527, 0000000004, 057, '56', '62', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002528, 0000000004, 003, '56', '64', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002529, 0000000004, 039, '58', '50', 0000000116);
INSERT INTO `Move_Logic` VALUES (0000002530, 0000000004, 033, '58', '52', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002531, 0000000004, 047, '58', '54', 0000000120);
INSERT INTO `Move_Logic` VALUES (0000002532, 0000000004, 047, '58', '56', 0000000120);
INSERT INTO `Move_Logic` VALUES (0000002533, 0000000004, 005, '58', '58', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002534, 0000000004, 011, '58', '60', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002535, 0000000004, 057, '58', '62', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002536, 0000000004, 057, '58', '64', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002537, 0000000004, 013, '60', '50', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002538, 0000000004, 033, '60', '52', 0000000113);
INSERT INTO `Move_Logic` VALUES (0000002539, 0000000004, 013, '60', '54', 0000000103);
INSERT INTO `Move_Logic` VALUES (0000002540, 0000000004, 057, '60', '56', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002541, 0000000004, 005, '60', '58', 0000000099);
INSERT INTO `Move_Logic` VALUES (0000002542, 0000000004, 011, '60', '60', 0000000102);
INSERT INTO `Move_Logic` VALUES (0000002543, 0000000004, 057, '60', '62', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002544, 0000000004, 047, '60', '64', 0000000120);
INSERT INTO `Move_Logic` VALUES (0000002545, 0000000004, 039, '62', '50', 0000000116);
INSERT INTO `Move_Logic` VALUES (0000002546, 0000000004, 061, '62', '52', 0000000127);
INSERT INTO `Move_Logic` VALUES (0000002547, 0000000004, 057, '62', '54', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002548, 0000000004, 057, '62', '56', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002549, 0000000004, 057, '62', '58', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002550, 0000000004, 057, '62', '60', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002551, 0000000004, 057, '62', '62', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002552, 0000000004, 057, '62', '64', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002553, 0000000004, 007, '64', '50', 0000000100);
INSERT INTO `Move_Logic` VALUES (0000002554, 0000000004, 035, '64', '52', 0000000114);
INSERT INTO `Move_Logic` VALUES (0000002555, 0000000004, 009, '64', '54', 0000000101);
INSERT INTO `Move_Logic` VALUES (0000002556, 0000000004, 017, '64', '56', 0000000105);
INSERT INTO `Move_Logic` VALUES (0000002557, 0000000004, 057, '64', '58', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002558, 0000000004, 035, '64', '60', 0000000114);
INSERT INTO `Move_Logic` VALUES (0000002559, 0000000004, 057, '64', '62', 0000000125);
INSERT INTO `Move_Logic` VALUES (0000002560, 0000000004, 003, '64', '64', 0000000098);
INSERT INTO `Move_Logic` VALUES (0000002561, 0000000005, 049, '2', '2', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002562, 0000000005, 000, '2', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002563, 0000000005, 000, '2', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002564, 0000000005, 013, '2', '8', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002565, 0000000005, 013, '2', '10', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002566, 0000000005, 013, '2', '12', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002567, 0000000005, 049, '2', '14', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002568, 0000000005, 057, '2', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002569, 0000000005, 037, '2', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002570, 0000000005, 031, '2', '20', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002571, 0000000005, 049, '2', '22', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002572, 0000000005, 013, '2', '24', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002573, 0000000005, 000, '2', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002574, 0000000005, 013, '2', '28', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002575, 0000000005, 049, '2', '30', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002576, 0000000005, 013, '2', '32', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002577, 0000000005, 041, '2', '34', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002578, 0000000005, 013, '2', '36', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002579, 0000000005, 000, '2', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002580, 0000000005, 049, '2', '40', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002581, 0000000005, 000, '2', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002582, 0000000005, 000, '2', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002583, 0000000005, 027, '2', '46', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002584, 0000000005, 000, '2', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002585, 0000000005, 005, '4', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002586, 0000000005, 000, '4', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002587, 0000000005, 000, '4', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002588, 0000000005, 033, '4', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002589, 0000000005, 003, '4', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002590, 0000000005, 019, '4', '12', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002591, 0000000005, 011, '4', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002592, 0000000005, 057, '4', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002593, 0000000005, 037, '4', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002594, 0000000005, 019, '4', '20', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002595, 0000000005, 063, '4', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002596, 0000000005, 055, '4', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002597, 0000000005, 000, '4', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002598, 0000000005, 041, '4', '28', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002599, 0000000005, 015, '4', '30', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002600, 0000000005, 009, '4', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002601, 0000000005, 019, '4', '34', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002602, 0000000005, 015, '4', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002603, 0000000005, 000, '4', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002604, 0000000005, 005, '4', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002605, 0000000005, 000, '4', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002606, 0000000005, 000, '4', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002607, 0000000005, 043, '4', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002608, 0000000005, 000, '4', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002609, 0000000005, 053, '6', '2', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002610, 0000000005, 000, '6', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002611, 0000000005, 000, '6', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002612, 0000000005, 033, '6', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002613, 0000000005, 003, '6', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002614, 0000000005, 053, '6', '12', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002615, 0000000005, 049, '6', '14', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002616, 0000000005, 053, '6', '16', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002617, 0000000005, 013, '6', '18', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002618, 0000000005, 029, '6', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002619, 0000000005, 013, '6', '22', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002620, 0000000005, 031, '6', '24', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002621, 0000000005, 000, '6', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002622, 0000000005, 031, '6', '28', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002623, 0000000005, 005, '6', '30', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002624, 0000000005, 045, '6', '32', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002625, 0000000005, 013, '6', '34', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002626, 0000000005, 053, '6', '36', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002627, 0000000005, 000, '6', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002628, 0000000005, 031, '6', '40', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002629, 0000000005, 000, '6', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002630, 0000000005, 000, '6', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002631, 0000000005, 053, '6', '46', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002632, 0000000005, 000, '6', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002633, 0000000005, 005, '8', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002634, 0000000005, 000, '8', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002635, 0000000005, 000, '8', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002636, 0000000005, 033, '8', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002637, 0000000005, 003, '8', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002638, 0000000005, 063, '8', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002639, 0000000005, 021, '8', '14', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002640, 0000000005, 057, '8', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002641, 0000000005, 037, '8', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002642, 0000000005, 029, '8', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002643, 0000000005, 021, '8', '22', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002644, 0000000005, 055, '8', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002645, 0000000005, 000, '8', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002646, 0000000005, 059, '8', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000002647, 0000000005, 003, '8', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002648, 0000000005, 009, '8', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002649, 0000000005, 019, '8', '34', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002650, 0000000005, 015, '8', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002651, 0000000005, 000, '8', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002652, 0000000005, 005, '8', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002653, 0000000005, 000, '8', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002654, 0000000005, 000, '8', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002655, 0000000005, 043, '8', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002656, 0000000005, 000, '8', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002657, 0000000005, 031, '10', '2', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002658, 0000000005, 000, '10', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002659, 0000000005, 000, '10', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002660, 0000000005, 053, '10', '8', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002661, 0000000005, 045, '10', '10', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002662, 0000000005, 063, '10', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002663, 0000000005, 007, '10', '14', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002664, 0000000005, 057, '10', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002665, 0000000005, 013, '10', '18', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002666, 0000000005, 023, '10', '20', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000002667, 0000000005, 007, '10', '22', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002668, 0000000005, 045, '10', '24', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002669, 0000000005, 000, '10', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002670, 0000000005, 031, '10', '28', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002671, 0000000005, 003, '10', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002672, 0000000005, 053, '10', '32', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002673, 0000000005, 025, '10', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002674, 0000000005, 031, '10', '36', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002675, 0000000005, 000, '10', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002676, 0000000005, 053, '10', '40', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002677, 0000000005, 000, '10', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002678, 0000000005, 000, '10', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002679, 0000000005, 043, '10', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002680, 0000000005, 000, '10', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002681, 0000000005, 031, '12', '2', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002682, 0000000005, 000, '12', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002683, 0000000005, 000, '12', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002684, 0000000005, 031, '12', '8', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002685, 0000000005, 053, '12', '10', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002686, 0000000005, 045, '12', '12', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002687, 0000000005, 011, '12', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002688, 0000000005, 057, '12', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002689, 0000000005, 013, '12', '18', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002690, 0000000005, 029, '12', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002691, 0000000005, 063, '12', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002692, 0000000005, 045, '12', '24', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002693, 0000000005, 000, '12', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002694, 0000000005, 059, '12', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000002695, 0000000005, 003, '12', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002696, 0000000005, 045, '12', '32', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002697, 0000000005, 025, '12', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002698, 0000000005, 031, '12', '36', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002699, 0000000005, 000, '12', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002700, 0000000005, 053, '12', '40', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002701, 0000000005, 000, '12', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002702, 0000000005, 000, '12', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002703, 0000000005, 029, '12', '46', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002704, 0000000005, 000, '12', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002705, 0000000005, 049, '14', '2', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002706, 0000000005, 000, '14', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002707, 0000000005, 000, '14', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002708, 0000000005, 023, '14', '8', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000002709, 0000000005, 013, '14', '10', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002710, 0000000005, 013, '14', '12', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002711, 0000000005, 013, '14', '14', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002712, 0000000005, 019, '14', '16', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002713, 0000000005, 037, '14', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002714, 0000000005, 053, '14', '20', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002715, 0000000005, 063, '14', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002716, 0000000005, 013, '14', '24', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002717, 0000000005, 000, '14', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002718, 0000000005, 013, '14', '28', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002719, 0000000005, 005, '14', '30', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002720, 0000000005, 013, '14', '32', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002721, 0000000005, 013, '14', '34', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002722, 0000000005, 013, '14', '36', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002723, 0000000005, 000, '14', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002724, 0000000005, 049, '14', '40', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002725, 0000000005, 000, '14', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002726, 0000000005, 000, '14', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002727, 0000000005, 053, '14', '46', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002728, 0000000005, 000, '14', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002729, 0000000005, 051, '16', '2', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000002730, 0000000005, 000, '16', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002731, 0000000005, 000, '16', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002732, 0000000005, 061, '16', '8', 0000000159);
INSERT INTO `Move_Logic` VALUES (0000002733, 0000000005, 051, '16', '10', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000002734, 0000000005, 057, '16', '12', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002735, 0000000005, 011, '16', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002736, 0000000005, 057, '16', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002737, 0000000005, 061, '16', '18', 0000000159);
INSERT INTO `Move_Logic` VALUES (0000002738, 0000000005, 061, '16', '20', 0000000159);
INSERT INTO `Move_Logic` VALUES (0000002739, 0000000005, 063, '16', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002740, 0000000005, 019, '16', '24', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002741, 0000000005, 000, '16', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002742, 0000000005, 021, '16', '28', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002743, 0000000005, 051, '16', '30', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000002744, 0000000005, 009, '16', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002745, 0000000005, 041, '16', '34', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002746, 0000000005, 041, '16', '36', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002747, 0000000005, 000, '16', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002748, 0000000005, 021, '16', '40', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002749, 0000000005, 000, '16', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002750, 0000000005, 000, '16', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002751, 0000000005, 043, '16', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002752, 0000000005, 000, '16', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002753, 0000000005, 005, '18', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002754, 0000000005, 000, '18', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002755, 0000000005, 000, '18', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002756, 0000000005, 033, '18', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002757, 0000000005, 003, '18', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002758, 0000000005, 063, '18', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002759, 0000000005, 011, '18', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002760, 0000000005, 057, '18', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002761, 0000000005, 037, '18', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002762, 0000000005, 029, '18', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002763, 0000000005, 063, '18', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002764, 0000000005, 055, '18', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002765, 0000000005, 000, '18', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002766, 0000000005, 059, '18', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000002767, 0000000005, 003, '18', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002768, 0000000005, 009, '18', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002769, 0000000005, 041, '18', '34', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002770, 0000000005, 015, '18', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002771, 0000000005, 000, '18', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002772, 0000000005, 021, '18', '40', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002773, 0000000005, 000, '18', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002774, 0000000005, 000, '18', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002775, 0000000005, 043, '18', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002776, 0000000005, 000, '18', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002777, 0000000005, 005, '20', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002778, 0000000005, 000, '20', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002779, 0000000005, 000, '20', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002780, 0000000005, 033, '20', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002781, 0000000005, 021, '20', '10', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002782, 0000000005, 063, '20', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002783, 0000000005, 011, '20', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002784, 0000000005, 057, '20', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002785, 0000000005, 037, '20', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002786, 0000000005, 029, '20', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002787, 0000000005, 063, '20', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002788, 0000000005, 055, '20', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002789, 0000000005, 000, '20', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002790, 0000000005, 021, '20', '28', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002791, 0000000005, 003, '20', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002792, 0000000005, 009, '20', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002793, 0000000005, 025, '20', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002794, 0000000005, 015, '20', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002795, 0000000005, 000, '20', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002796, 0000000005, 005, '20', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002797, 0000000005, 000, '20', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002798, 0000000005, 000, '20', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002799, 0000000005, 043, '20', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002800, 0000000005, 000, '20', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002801, 0000000005, 049, '22', '2', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002802, 0000000005, 000, '22', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002803, 0000000005, 000, '22', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002804, 0000000005, 023, '22', '8', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000002805, 0000000005, 013, '22', '10', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002806, 0000000005, 013, '22', '12', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002807, 0000000005, 013, '22', '14', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002808, 0000000005, 019, '22', '16', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002809, 0000000005, 037, '22', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002810, 0000000005, 053, '22', '20', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002811, 0000000005, 019, '22', '22', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002812, 0000000005, 055, '22', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002813, 0000000005, 000, '22', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002814, 0000000005, 059, '22', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000002815, 0000000005, 005, '22', '30', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002816, 0000000005, 031, '22', '32', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002817, 0000000005, 025, '22', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002818, 0000000005, 013, '22', '36', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002819, 0000000005, 000, '22', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002820, 0000000005, 049, '22', '40', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002821, 0000000005, 000, '22', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002822, 0000000005, 000, '22', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002823, 0000000005, 043, '22', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002824, 0000000005, 000, '22', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002825, 0000000005, 053, '24', '2', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002826, 0000000005, 000, '24', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002827, 0000000005, 000, '24', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002828, 0000000005, 033, '24', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002829, 0000000005, 045, '24', '10', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002830, 0000000005, 045, '24', '12', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002831, 0000000005, 011, '24', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002832, 0000000005, 001, '24', '16', 0000000129);
INSERT INTO `Move_Logic` VALUES (0000002833, 0000000005, 053, '24', '18', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002834, 0000000005, 007, '24', '20', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002835, 0000000005, 053, '24', '22', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002836, 0000000005, 055, '24', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002837, 0000000005, 000, '24', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002838, 0000000005, 053, '24', '28', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002839, 0000000005, 003, '24', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002840, 0000000005, 045, '24', '32', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002841, 0000000005, 053, '24', '34', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002842, 0000000005, 015, '24', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002843, 0000000005, 000, '24', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002844, 0000000005, 021, '24', '40', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000002845, 0000000005, 000, '24', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002846, 0000000005, 000, '24', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002847, 0000000005, 041, '24', '46', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002848, 0000000005, 000, '24', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002849, 0000000005, 005, '26', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002850, 0000000005, 000, '26', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002851, 0000000005, 000, '26', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002852, 0000000005, 033, '26', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002853, 0000000005, 003, '26', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002854, 0000000005, 019, '26', '12', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002855, 0000000005, 011, '26', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002856, 0000000005, 057, '26', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002857, 0000000005, 019, '26', '18', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002858, 0000000005, 019, '26', '20', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002859, 0000000005, 063, '26', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002860, 0000000005, 055, '26', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002861, 0000000005, 000, '26', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002862, 0000000005, 041, '26', '28', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002863, 0000000005, 003, '26', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002864, 0000000005, 009, '26', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002865, 0000000005, 025, '26', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002866, 0000000005, 015, '26', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002867, 0000000005, 000, '26', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002868, 0000000005, 005, '26', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002869, 0000000005, 000, '26', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002870, 0000000005, 000, '26', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002871, 0000000005, 043, '26', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002872, 0000000005, 000, '26', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002873, 0000000005, 007, '28', '2', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002874, 0000000005, 000, '28', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002875, 0000000005, 000, '28', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002876, 0000000005, 053, '28', '8', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002877, 0000000005, 003, '28', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002878, 0000000005, 053, '28', '12', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002879, 0000000005, 011, '28', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002880, 0000000005, 023, '28', '16', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000002881, 0000000005, 037, '28', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002882, 0000000005, 023, '28', '20', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000002883, 0000000005, 063, '28', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002884, 0000000005, 053, '28', '24', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002885, 0000000005, 000, '28', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002886, 0000000005, 041, '28', '28', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002887, 0000000005, 031, '28', '30', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002888, 0000000005, 009, '28', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002889, 0000000005, 025, '28', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002890, 0000000005, 031, '28', '36', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002891, 0000000005, 000, '28', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002892, 0000000005, 041, '28', '40', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002893, 0000000005, 000, '28', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002894, 0000000005, 000, '28', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002895, 0000000005, 029, '28', '46', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002896, 0000000005, 000, '28', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002897, 0000000005, 049, '30', '2', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000002898, 0000000005, 000, '30', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002899, 0000000005, 000, '30', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002900, 0000000005, 033, '30', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002901, 0000000005, 003, '30', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002902, 0000000005, 063, '30', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002903, 0000000005, 011, '30', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002904, 0000000005, 057, '30', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000002905, 0000000005, 037, '30', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002906, 0000000005, 029, '30', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002907, 0000000005, 027, '30', '22', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002908, 0000000005, 055, '30', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002909, 0000000005, 000, '30', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002910, 0000000005, 059, '30', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000002911, 0000000005, 027, '30', '30', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002912, 0000000005, 027, '30', '32', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002913, 0000000005, 025, '30', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002914, 0000000005, 015, '30', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002915, 0000000005, 000, '30', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002916, 0000000005, 005, '30', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002917, 0000000005, 000, '30', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002918, 0000000005, 000, '30', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002919, 0000000005, 027, '30', '46', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002920, 0000000005, 000, '30', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002921, 0000000005, 053, '32', '2', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002922, 0000000005, 000, '32', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002923, 0000000005, 000, '32', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002924, 0000000005, 033, '32', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002925, 0000000005, 003, '32', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002926, 0000000005, 045, '32', '12', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002927, 0000000005, 053, '32', '14', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002928, 0000000005, 019, '32', '16', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000002929, 0000000005, 013, '32', '18', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000002930, 0000000005, 029, '32', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002931, 0000000005, 053, '32', '22', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002932, 0000000005, 045, '32', '24', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002933, 0000000005, 000, '32', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002934, 0000000005, 053, '32', '28', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002935, 0000000005, 003, '32', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002936, 0000000005, 031, '32', '32', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002937, 0000000005, 025, '32', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002938, 0000000005, 053, '32', '36', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002939, 0000000005, 000, '32', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002940, 0000000005, 031, '32', '40', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002941, 0000000005, 000, '32', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002942, 0000000005, 000, '32', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002943, 0000000005, 043, '32', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000002944, 0000000005, 000, '32', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002945, 0000000005, 005, '34', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002946, 0000000005, 000, '34', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002947, 0000000005, 000, '34', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002948, 0000000005, 033, '34', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002949, 0000000005, 003, '34', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002950, 0000000005, 063, '34', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002951, 0000000005, 011, '34', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002952, 0000000005, 001, '34', '16', 0000000129);
INSERT INTO `Move_Logic` VALUES (0000002953, 0000000005, 037, '34', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000002954, 0000000005, 029, '34', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000002955, 0000000005, 063, '34', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002956, 0000000005, 055, '34', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002957, 0000000005, 000, '34', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002958, 0000000005, 017, '34', '28', 0000000137);
INSERT INTO `Move_Logic` VALUES (0000002959, 0000000005, 003, '34', '30', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002960, 0000000005, 017, '34', '32', 0000000137);
INSERT INTO `Move_Logic` VALUES (0000002961, 0000000005, 025, '34', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000002962, 0000000005, 041, '34', '36', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002963, 0000000005, 000, '34', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002964, 0000000005, 041, '34', '40', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000002965, 0000000005, 000, '34', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002966, 0000000005, 000, '34', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002967, 0000000005, 027, '34', '46', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002968, 0000000005, 000, '34', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002969, 0000000005, 005, '36', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000002970, 0000000005, 000, '36', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002971, 0000000005, 000, '36', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002972, 0000000005, 033, '36', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000002973, 0000000005, 003, '36', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000002974, 0000000005, 063, '36', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002975, 0000000005, 011, '36', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000002976, 0000000005, 001, '36', '16', 0000000129);
INSERT INTO `Move_Logic` VALUES (0000002977, 0000000005, 007, '36', '18', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002978, 0000000005, 007, '36', '20', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002979, 0000000005, 063, '36', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000002980, 0000000005, 055, '36', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000002981, 0000000005, 000, '36', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000002982, 0000000005, 007, '36', '28', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002983, 0000000005, 027, '36', '30', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000002984, 0000000005, 009, '36', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000002985, 0000000005, 007, '36', '34', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002986, 0000000005, 015, '36', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000002987, 0000000005, 000, '36', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000002988, 0000000005, 007, '36', '40', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002989, 0000000005, 000, '36', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000002990, 0000000005, 000, '36', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000002991, 0000000005, 007, '36', '46', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000002992, 0000000005, 000, '36', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000002993, 0000000005, 031, '38', '2', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000002994, 0000000005, 000, '38', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000002995, 0000000005, 000, '38', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000002996, 0000000005, 053, '38', '8', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000002997, 0000000005, 045, '38', '10', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002998, 0000000005, 045, '38', '12', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000002999, 0000000005, 007, '38', '14', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000003000, 0000000005, 057, '38', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003001, 0000000005, 013, '38', '18', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003002, 0000000005, 029, '38', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000003003, 0000000005, 063, '38', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000003004, 0000000005, 045, '38', '24', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003005, 0000000005, 000, '38', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000003006, 0000000005, 059, '38', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000003007, 0000000005, 005, '38', '30', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003008, 0000000005, 045, '38', '32', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003009, 0000000005, 025, '38', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000003010, 0000000005, 031, '38', '36', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003011, 0000000005, 000, '38', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003012, 0000000005, 005, '38', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003013, 0000000005, 000, '38', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000003014, 0000000005, 000, '38', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000003015, 0000000005, 043, '38', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000003016, 0000000005, 000, '38', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003017, 0000000005, 049, '40', '2', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003018, 0000000005, 000, '40', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000003019, 0000000005, 000, '40', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003020, 0000000005, 033, '40', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000003021, 0000000005, 003, '40', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000003022, 0000000005, 041, '40', '12', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000003023, 0000000005, 049, '40', '14', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003024, 0000000005, 023, '40', '16', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000003025, 0000000005, 023, '40', '18', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000003026, 0000000005, 053, '40', '20', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003027, 0000000005, 013, '40', '22', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003028, 0000000005, 023, '40', '24', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000003029, 0000000005, 000, '40', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000003030, 0000000005, 059, '40', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000003031, 0000000005, 005, '40', '30', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003032, 0000000005, 009, '40', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003033, 0000000005, 025, '40', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000003034, 0000000005, 041, '40', '36', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000003035, 0000000005, 000, '40', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003036, 0000000005, 005, '40', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003037, 0000000005, 000, '40', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000003038, 0000000005, 000, '40', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000003039, 0000000005, 043, '40', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000003040, 0000000005, 000, '40', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003041, 0000000005, 049, '42', '2', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003042, 0000000005, 000, '42', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000003043, 0000000005, 000, '42', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003044, 0000000005, 013, '42', '8', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003045, 0000000005, 013, '42', '10', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003046, 0000000005, 049, '42', '12', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003047, 0000000005, 049, '42', '14', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003048, 0000000005, 057, '42', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003049, 0000000005, 037, '42', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000003050, 0000000005, 031, '42', '20', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003051, 0000000005, 049, '42', '22', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003052, 0000000005, 013, '42', '24', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003053, 0000000005, 000, '42', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000003054, 0000000005, 013, '42', '28', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003055, 0000000005, 005, '42', '30', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003056, 0000000005, 009, '42', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003057, 0000000005, 041, '42', '34', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000003058, 0000000005, 013, '42', '36', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003059, 0000000005, 000, '42', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003060, 0000000005, 049, '42', '40', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003061, 0000000005, 000, '42', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000003062, 0000000005, 000, '42', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000003063, 0000000005, 027, '42', '46', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000003064, 0000000005, 000, '42', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003065, 0000000005, 005, '44', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003066, 0000000005, 000, '44', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000003067, 0000000005, 000, '44', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003068, 0000000005, 033, '44', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000003069, 0000000005, 045, '44', '10', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003070, 0000000005, 031, '44', '12', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003071, 0000000005, 053, '44', '14', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003072, 0000000005, 057, '44', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003073, 0000000005, 007, '44', '18', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000003074, 0000000005, 053, '44', '20', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003075, 0000000005, 031, '44', '22', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003076, 0000000005, 031, '44', '24', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003077, 0000000005, 000, '44', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000003078, 0000000005, 031, '44', '28', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003079, 0000000005, 053, '44', '30', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003080, 0000000005, 045, '44', '32', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003081, 0000000005, 013, '44', '34', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003082, 0000000005, 053, '44', '36', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003083, 0000000005, 000, '44', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003084, 0000000005, 031, '44', '40', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003085, 0000000005, 000, '44', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000003086, 0000000005, 000, '44', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000003087, 0000000005, 027, '44', '46', 0000000142);
INSERT INTO `Move_Logic` VALUES (0000003088, 0000000005, 000, '44', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003089, 0000000005, 005, '46', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003090, 0000000005, 000, '46', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000003091, 0000000005, 000, '46', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003092, 0000000005, 033, '46', '8', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000003093, 0000000005, 003, '46', '10', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000003094, 0000000005, 063, '46', '12', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000003095, 0000000005, 011, '46', '14', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000003096, 0000000005, 001, '46', '16', 0000000129);
INSERT INTO `Move_Logic` VALUES (0000003097, 0000000005, 037, '46', '18', 0000000147);
INSERT INTO `Move_Logic` VALUES (0000003098, 0000000005, 029, '46', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000003099, 0000000005, 063, '46', '22', 0000000160);
INSERT INTO `Move_Logic` VALUES (0000003100, 0000000005, 055, '46', '24', 0000000156);
INSERT INTO `Move_Logic` VALUES (0000003101, 0000000005, 000, '46', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000003102, 0000000005, 059, '46', '28', 0000000158);
INSERT INTO `Move_Logic` VALUES (0000003103, 0000000005, 015, '46', '30', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000003104, 0000000005, 009, '46', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003105, 0000000005, 025, '46', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000003106, 0000000005, 015, '46', '36', 0000000136);
INSERT INTO `Move_Logic` VALUES (0000003107, 0000000005, 000, '46', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003108, 0000000005, 005, '46', '40', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003109, 0000000005, 000, '46', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000003110, 0000000005, 000, '46', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000003111, 0000000005, 043, '46', '46', 0000000150);
INSERT INTO `Move_Logic` VALUES (0000003112, 0000000005, 000, '46', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003113, 0000000005, 005, '48', '2', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003114, 0000000005, 000, '48', '4', NULL);
INSERT INTO `Move_Logic` VALUES (0000003115, 0000000005, 000, '48', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003116, 0000000005, 019, '48', '8', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003117, 0000000005, 045, '48', '10', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003118, 0000000005, 045, '48', '12', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003119, 0000000005, 049, '48', '14', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003120, 0000000005, 057, '48', '16', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003121, 0000000005, 019, '48', '18', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003122, 0000000005, 029, '48', '20', 0000000143);
INSERT INTO `Move_Logic` VALUES (0000003123, 0000000005, 049, '48', '22', 0000000153);
INSERT INTO `Move_Logic` VALUES (0000003124, 0000000005, 031, '48', '24', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003125, 0000000005, 000, '48', '26', NULL);
INSERT INTO `Move_Logic` VALUES (0000003126, 0000000005, 031, '48', '28', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003127, 0000000005, 019, '48', '30', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003128, 0000000005, 009, '48', '32', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003129, 0000000005, 025, '48', '34', 0000000141);
INSERT INTO `Move_Logic` VALUES (0000003130, 0000000005, 031, '48', '36', 0000000144);
INSERT INTO `Move_Logic` VALUES (0000003131, 0000000005, 000, '48', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003132, 0000000005, 019, '48', '40', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003133, 0000000005, 000, '48', '42', NULL);
INSERT INTO `Move_Logic` VALUES (0000003134, 0000000005, 000, '48', '44', NULL);
INSERT INTO `Move_Logic` VALUES (0000003135, 0000000005, 019, '48', '46', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003136, 0000000005, 000, '48', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003137, 0000000005, 045, '50', '50', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003138, 0000000005, 023, '50', '52', 0000000140);
INSERT INTO `Move_Logic` VALUES (0000003139, 0000000005, 009, '50', '54', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003140, 0000000005, 053, '50', '56', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003141, 0000000005, 041, '50', '58', 0000000149);
INSERT INTO `Move_Logic` VALUES (0000003142, 0000000005, 011, '50', '60', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000003143, 0000000005, 019, '50', '62', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003144, 0000000005, 019, '50', '64', 0000000138);
INSERT INTO `Move_Logic` VALUES (0000003145, 0000000005, 021, '52', '50', 0000000139);
INSERT INTO `Move_Logic` VALUES (0000003146, 0000000005, 061, '52', '52', 0000000159);
INSERT INTO `Move_Logic` VALUES (0000003147, 0000000005, 009, '52', '54', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003148, 0000000005, 057, '52', '56', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003149, 0000000005, 005, '52', '58', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003150, 0000000005, 011, '52', '60', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000003151, 0000000005, 057, '52', '62', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003152, 0000000005, 051, '52', '64', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003153, 0000000005, 053, '54', '50', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003154, 0000000005, 033, '54', '52', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000003155, 0000000005, 045, '54', '54', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003156, 0000000005, 045, '54', '56', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003157, 0000000005, 035, '54', '58', 0000000146);
INSERT INTO `Move_Logic` VALUES (0000003158, 0000000005, 011, '54', '60', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000003159, 0000000005, 035, '54', '62', 0000000146);
INSERT INTO `Move_Logic` VALUES (0000003160, 0000000005, 003, '54', '64', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000003161, 0000000005, 039, '56', '50', 0000000148);
INSERT INTO `Move_Logic` VALUES (0000003162, 0000000005, 061, '56', '52', 0000000159);
INSERT INTO `Move_Logic` VALUES (0000003163, 0000000005, 009, '56', '54', 0000000133);
INSERT INTO `Move_Logic` VALUES (0000003164, 0000000005, 045, '56', '56', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003165, 0000000005, 051, '56', '58', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003166, 0000000005, 051, '56', '60', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003167, 0000000005, 057, '56', '62', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003168, 0000000005, 003, '56', '64', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000003169, 0000000005, 039, '58', '50', 0000000148);
INSERT INTO `Move_Logic` VALUES (0000003170, 0000000005, 033, '58', '52', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000003171, 0000000005, 051, '58', '54', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003172, 0000000005, 047, '58', '56', 0000000152);
INSERT INTO `Move_Logic` VALUES (0000003173, 0000000005, 005, '58', '58', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003174, 0000000005, 013, '58', '60', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003175, 0000000005, 057, '58', '62', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003176, 0000000005, 051, '58', '64', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003177, 0000000005, 013, '60', '50', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003178, 0000000005, 033, '60', '52', 0000000145);
INSERT INTO `Move_Logic` VALUES (0000003179, 0000000005, 013, '60', '54', 0000000135);
INSERT INTO `Move_Logic` VALUES (0000003180, 0000000005, 057, '60', '56', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003181, 0000000005, 005, '60', '58', 0000000131);
INSERT INTO `Move_Logic` VALUES (0000003182, 0000000005, 011, '60', '60', 0000000134);
INSERT INTO `Move_Logic` VALUES (0000003183, 0000000005, 057, '60', '62', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003184, 0000000005, 047, '60', '64', 0000000152);
INSERT INTO `Move_Logic` VALUES (0000003185, 0000000005, 039, '62', '50', 0000000148);
INSERT INTO `Move_Logic` VALUES (0000003186, 0000000005, 061, '62', '52', 0000000159);
INSERT INTO `Move_Logic` VALUES (0000003187, 0000000005, 051, '62', '54', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003188, 0000000005, 057, '62', '56', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003189, 0000000005, 051, '62', '58', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003190, 0000000005, 051, '62', '60', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003191, 0000000005, 057, '62', '62', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003192, 0000000005, 051, '62', '64', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003193, 0000000005, 007, '64', '50', 0000000132);
INSERT INTO `Move_Logic` VALUES (0000003194, 0000000005, 035, '64', '52', 0000000146);
INSERT INTO `Move_Logic` VALUES (0000003195, 0000000005, 053, '64', '54', 0000000155);
INSERT INTO `Move_Logic` VALUES (0000003196, 0000000005, 045, '64', '56', 0000000151);
INSERT INTO `Move_Logic` VALUES (0000003197, 0000000005, 051, '64', '58', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003198, 0000000005, 051, '64', '60', 0000000154);
INSERT INTO `Move_Logic` VALUES (0000003199, 0000000005, 057, '64', '62', 0000000157);
INSERT INTO `Move_Logic` VALUES (0000003200, 0000000005, 003, '64', '64', 0000000130);
INSERT INTO `Move_Logic` VALUES (0000003201, 0000000006, 049, '2', '2', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003202, 0000000006, 063, '2', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003203, 0000000006, 013, '2', '6', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003204, 0000000006, 019, '2', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003205, 0000000006, 013, '2', '10', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003206, 0000000006, 013, '2', '12', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003207, 0000000006, 049, '2', '14', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003208, 0000000006, 057, '2', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003209, 0000000006, 037, '2', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003210, 0000000006, 019, '2', '20', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003211, 0000000006, 019, '2', '22', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003212, 0000000006, 013, '2', '24', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003213, 0000000006, 013, '2', '26', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003214, 0000000006, 013, '2', '28', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003215, 0000000006, 049, '2', '30', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003216, 0000000006, 013, '2', '32', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003217, 0000000006, 041, '2', '34', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003218, 0000000006, 013, '2', '36', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003219, 0000000006, 013, '2', '38', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003220, 0000000006, 049, '2', '40', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003221, 0000000006, 049, '2', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003222, 0000000006, 015, '2', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003223, 0000000006, 027, '2', '46', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003224, 0000000006, 013, '2', '48', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003225, 0000000006, 005, '4', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003226, 0000000006, 059, '4', '4', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003227, 0000000006, 059, '4', '6', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003228, 0000000006, 033, '4', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003229, 0000000006, 003, '4', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003230, 0000000006, 059, '4', '12', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003231, 0000000006, 011, '4', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003232, 0000000006, 057, '4', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003233, 0000000006, 037, '4', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003234, 0000000006, 059, '4', '20', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003235, 0000000006, 011, '4', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003236, 0000000006, 015, '4', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003237, 0000000006, 017, '4', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003238, 0000000006, 003, '4', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003239, 0000000006, 015, '4', '30', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003240, 0000000006, 009, '4', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003241, 0000000006, 059, '4', '34', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003242, 0000000006, 015, '4', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003243, 0000000006, 003, '4', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003244, 0000000006, 005, '4', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003245, 0000000006, 059, '4', '42', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003246, 0000000006, 015, '4', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003247, 0000000006, 043, '4', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003248, 0000000006, 059, '4', '48', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003249, 0000000006, 005, '6', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003250, 0000000006, 063, '6', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003251, 0000000006, 017, '6', '6', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003252, 0000000006, 033, '6', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003253, 0000000006, 003, '6', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003254, 0000000006, 003, '6', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003255, 0000000006, 049, '6', '14', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003256, 0000000006, 019, '6', '16', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003257, 0000000006, 017, '6', '18', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003258, 0000000006, 045, '6', '20', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003259, 0000000006, 005, '6', '22', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003260, 0000000006, 045, '6', '24', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003261, 0000000006, 025, '6', '26', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003262, 0000000006, 015, '6', '28', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003263, 0000000006, 003, '6', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003264, 0000000006, 005, '6', '32', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003265, 0000000006, 005, '6', '34', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003266, 0000000006, 045, '6', '36', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003267, 0000000006, 043, '6', '38', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003268, 0000000006, 045, '6', '40', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003269, 0000000006, 005, '6', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003270, 0000000006, 063, '6', '44', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003271, 0000000006, 009, '6', '46', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003272, 0000000006, 033, '6', '48', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003273, 0000000006, 005, '8', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003274, 0000000006, 063, '8', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003275, 0000000006, 009, '8', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003276, 0000000006, 033, '8', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003277, 0000000006, 003, '8', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003278, 0000000006, 003, '8', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003279, 0000000006, 021, '8', '14', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003280, 0000000006, 057, '8', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003281, 0000000006, 037, '8', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003282, 0000000006, 029, '8', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003283, 0000000006, 021, '8', '22', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003284, 0000000006, 015, '8', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003285, 0000000006, 017, '8', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003286, 0000000006, 003, '8', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003287, 0000000006, 003, '8', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003288, 0000000006, 009, '8', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003289, 0000000006, 019, '8', '34', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003290, 0000000006, 015, '8', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003291, 0000000006, 003, '8', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003292, 0000000006, 005, '8', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003293, 0000000006, 005, '8', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003294, 0000000006, 015, '8', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003295, 0000000006, 043, '8', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003296, 0000000006, 003, '8', '48', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003297, 0000000006, 031, '10', '2', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003298, 0000000006, 053, '10', '4', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003299, 0000000006, 009, '10', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003300, 0000000006, 019, '10', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003301, 0000000006, 045, '10', '10', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003302, 0000000006, 003, '10', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003303, 0000000006, 007, '10', '14', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003304, 0000000006, 057, '10', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003305, 0000000006, 013, '10', '18', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003306, 0000000006, 023, '10', '20', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003307, 0000000006, 007, '10', '22', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003308, 0000000006, 045, '10', '24', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003309, 0000000006, 017, '10', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003310, 0000000006, 031, '10', '28', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003311, 0000000006, 003, '10', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003312, 0000000006, 053, '10', '32', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003313, 0000000006, 025, '10', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003314, 0000000006, 031, '10', '36', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003315, 0000000006, 045, '10', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003316, 0000000006, 053, '10', '40', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003317, 0000000006, 031, '10', '42', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003318, 0000000006, 045, '10', '44', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003319, 0000000006, 043, '10', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003320, 0000000006, 045, '10', '48', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003321, 0000000006, 031, '12', '2', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003322, 0000000006, 063, '12', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003323, 0000000006, 009, '12', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003324, 0000000006, 019, '12', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003325, 0000000006, 053, '12', '10', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003326, 0000000006, 045, '12', '12', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003327, 0000000006, 011, '12', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003328, 0000000006, 057, '12', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003329, 0000000006, 013, '12', '18', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003330, 0000000006, 029, '12', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003331, 0000000006, 011, '12', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003332, 0000000006, 045, '12', '24', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003333, 0000000006, 017, '12', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003334, 0000000006, 031, '12', '28', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003335, 0000000006, 003, '12', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003336, 0000000006, 045, '12', '32', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003337, 0000000006, 025, '12', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003338, 0000000006, 031, '12', '36', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003339, 0000000006, 045, '12', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003340, 0000000006, 053, '12', '40', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003341, 0000000006, 049, '12', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003342, 0000000006, 015, '12', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003343, 0000000006, 031, '12', '46', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003344, 0000000006, 045, '12', '48', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003345, 0000000006, 049, '14', '2', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003346, 0000000006, 063, '14', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003347, 0000000006, 049, '14', '6', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003348, 0000000006, 023, '14', '8', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003349, 0000000006, 003, '14', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003350, 0000000006, 003, '14', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003351, 0000000006, 011, '14', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003352, 0000000006, 019, '14', '16', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003353, 0000000006, 037, '14', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003354, 0000000006, 029, '14', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003355, 0000000006, 011, '14', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003356, 0000000006, 015, '14', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003357, 0000000006, 017, '14', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003358, 0000000006, 003, '14', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003359, 0000000006, 005, '14', '30', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003360, 0000000006, 009, '14', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003361, 0000000006, 025, '14', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003362, 0000000006, 015, '14', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003363, 0000000006, 003, '14', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003364, 0000000006, 049, '14', '40', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003365, 0000000006, 049, '14', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003366, 0000000006, 015, '14', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003367, 0000000006, 043, '14', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003368, 0000000006, 049, '14', '48', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003369, 0000000006, 057, '16', '2', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003370, 0000000006, 057, '16', '4', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003371, 0000000006, 009, '16', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003372, 0000000006, 061, '16', '8', 0000000191);
INSERT INTO `Move_Logic` VALUES (0000003373, 0000000006, 057, '16', '10', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003374, 0000000006, 057, '16', '12', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003375, 0000000006, 011, '16', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003376, 0000000006, 057, '16', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003377, 0000000006, 061, '16', '18', 0000000191);
INSERT INTO `Move_Logic` VALUES (0000003378, 0000000006, 061, '16', '20', 0000000191);
INSERT INTO `Move_Logic` VALUES (0000003379, 0000000006, 011, '16', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003380, 0000000006, 019, '16', '24', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003381, 0000000006, 057, '16', '26', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003382, 0000000006, 021, '16', '28', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003383, 0000000006, 057, '16', '30', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003384, 0000000006, 009, '16', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003385, 0000000006, 041, '16', '34', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003386, 0000000006, 041, '16', '36', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003387, 0000000006, 057, '16', '38', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003388, 0000000006, 021, '16', '40', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003389, 0000000006, 057, '16', '42', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003390, 0000000006, 057, '16', '44', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003391, 0000000006, 043, '16', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003392, 0000000006, 057, '16', '48', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003393, 0000000006, 005, '18', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003394, 0000000006, 063, '18', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003395, 0000000006, 017, '18', '6', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003396, 0000000006, 033, '18', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003397, 0000000006, 003, '18', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003398, 0000000006, 003, '18', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003399, 0000000006, 011, '18', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003400, 0000000006, 057, '18', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003401, 0000000006, 037, '18', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003402, 0000000006, 029, '18', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003403, 0000000006, 011, '18', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003404, 0000000006, 015, '18', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003405, 0000000006, 017, '18', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003406, 0000000006, 003, '18', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003407, 0000000006, 003, '18', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003408, 0000000006, 009, '18', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003409, 0000000006, 041, '18', '34', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003410, 0000000006, 015, '18', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003411, 0000000006, 003, '18', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003412, 0000000006, 021, '18', '40', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003413, 0000000006, 005, '18', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003414, 0000000006, 015, '18', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003415, 0000000006, 043, '18', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003416, 0000000006, 003, '18', '48', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003417, 0000000006, 005, '20', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003418, 0000000006, 063, '20', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003419, 0000000006, 009, '20', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003420, 0000000006, 033, '20', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003421, 0000000006, 021, '20', '10', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003422, 0000000006, 003, '20', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003423, 0000000006, 011, '20', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003424, 0000000006, 057, '20', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003425, 0000000006, 037, '20', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003426, 0000000006, 029, '20', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003427, 0000000006, 011, '20', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003428, 0000000006, 015, '20', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003429, 0000000006, 017, '20', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003430, 0000000006, 021, '20', '28', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003431, 0000000006, 003, '20', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003432, 0000000006, 009, '20', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003433, 0000000006, 025, '20', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003434, 0000000006, 015, '20', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003435, 0000000006, 003, '20', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003436, 0000000006, 005, '20', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003437, 0000000006, 005, '20', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003438, 0000000006, 015, '20', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003439, 0000000006, 043, '20', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003440, 0000000006, 003, '20', '48', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003441, 0000000006, 049, '22', '2', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003442, 0000000006, 063, '22', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003443, 0000000006, 009, '22', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003444, 0000000006, 023, '22', '8', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003445, 0000000006, 003, '22', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003446, 0000000006, 003, '22', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003447, 0000000006, 011, '22', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003448, 0000000006, 019, '22', '16', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003449, 0000000006, 037, '22', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003450, 0000000006, 053, '22', '20', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003451, 0000000006, 011, '22', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003452, 0000000006, 015, '22', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003453, 0000000006, 017, '22', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003454, 0000000006, 003, '22', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003455, 0000000006, 005, '22', '30', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003456, 0000000006, 009, '22', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003457, 0000000006, 025, '22', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003458, 0000000006, 015, '22', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003459, 0000000006, 003, '22', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003460, 0000000006, 049, '22', '40', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003461, 0000000006, 049, '22', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003462, 0000000006, 015, '22', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003463, 0000000006, 043, '22', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003464, 0000000006, 049, '22', '48', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003465, 0000000006, 053, '24', '2', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003466, 0000000006, 041, '24', '4', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003467, 0000000006, 017, '24', '6', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003468, 0000000006, 033, '24', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003469, 0000000006, 045, '24', '10', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003470, 0000000006, 045, '24', '12', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003471, 0000000006, 011, '24', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003472, 0000000006, 001, '24', '16', 0000000161);
INSERT INTO `Move_Logic` VALUES (0000003473, 0000000006, 053, '24', '18', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003474, 0000000006, 007, '24', '20', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003475, 0000000006, 011, '24', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003476, 0000000006, 007, '24', '24', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003477, 0000000006, 017, '24', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003478, 0000000006, 003, '24', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003479, 0000000006, 003, '24', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003480, 0000000006, 045, '24', '32', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003481, 0000000006, 053, '24', '34', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003482, 0000000006, 015, '24', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003483, 0000000006, 045, '24', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003484, 0000000006, 021, '24', '40', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003485, 0000000006, 005, '24', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003486, 0000000006, 015, '24', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003487, 0000000006, 041, '24', '46', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003488, 0000000006, 017, '24', '48', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003489, 0000000006, 005, '26', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003490, 0000000006, 063, '26', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003491, 0000000006, 059, '26', '6', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003492, 0000000006, 033, '26', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003493, 0000000006, 003, '26', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003494, 0000000006, 059, '26', '12', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003495, 0000000006, 011, '26', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003496, 0000000006, 057, '26', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003497, 0000000006, 059, '26', '18', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003498, 0000000006, 029, '26', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003499, 0000000006, 011, '26', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003500, 0000000006, 015, '26', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003501, 0000000006, 059, '26', '26', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003502, 0000000006, 003, '26', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003503, 0000000006, 003, '26', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003504, 0000000006, 009, '26', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003505, 0000000006, 025, '26', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003506, 0000000006, 059, '26', '36', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003507, 0000000006, 003, '26', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003508, 0000000006, 005, '26', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003509, 0000000006, 059, '26', '42', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003510, 0000000006, 059, '26', '44', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003511, 0000000006, 043, '26', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003512, 0000000006, 059, '26', '48', 0000000190);
INSERT INTO `Move_Logic` VALUES (0000003513, 0000000006, 007, '28', '2', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003514, 0000000006, 031, '28', '4', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003515, 0000000006, 045, '28', '6', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003516, 0000000006, 019, '28', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003517, 0000000006, 003, '28', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003518, 0000000006, 053, '28', '12', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003519, 0000000006, 011, '28', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003520, 0000000006, 023, '28', '16', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003521, 0000000006, 037, '28', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003522, 0000000006, 023, '28', '20', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003523, 0000000006, 011, '28', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003524, 0000000006, 053, '28', '24', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003525, 0000000006, 053, '28', '26', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003526, 0000000006, 019, '28', '28', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003527, 0000000006, 031, '28', '30', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003528, 0000000006, 009, '28', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003529, 0000000006, 025, '28', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003530, 0000000006, 031, '28', '36', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003531, 0000000006, 027, '28', '38', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003532, 0000000006, 041, '28', '40', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003533, 0000000006, 005, '28', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003534, 0000000006, 015, '28', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003535, 0000000006, 031, '28', '46', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003536, 0000000006, 003, '28', '48', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003537, 0000000006, 049, '30', '2', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003538, 0000000006, 063, '30', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003539, 0000000006, 009, '30', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003540, 0000000006, 033, '30', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003541, 0000000006, 003, '30', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003542, 0000000006, 003, '30', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003543, 0000000006, 011, '30', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003544, 0000000006, 057, '30', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003545, 0000000006, 037, '30', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003546, 0000000006, 029, '30', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003547, 0000000006, 027, '30', '22', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003548, 0000000006, 015, '30', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003549, 0000000006, 017, '30', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003550, 0000000006, 003, '30', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003551, 0000000006, 027, '30', '30', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003552, 0000000006, 027, '30', '32', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003553, 0000000006, 025, '30', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003554, 0000000006, 015, '30', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003555, 0000000006, 027, '30', '38', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003556, 0000000006, 005, '30', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003557, 0000000006, 027, '30', '42', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003558, 0000000006, 015, '30', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003559, 0000000006, 027, '30', '46', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003560, 0000000006, 003, '30', '48', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003561, 0000000006, 005, '32', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003562, 0000000006, 063, '32', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003563, 0000000006, 045, '32', '6', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003564, 0000000006, 033, '32', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003565, 0000000006, 003, '32', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003566, 0000000006, 045, '32', '12', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003567, 0000000006, 011, '32', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003568, 0000000006, 019, '32', '16', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003569, 0000000006, 037, '32', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003570, 0000000006, 029, '32', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003571, 0000000006, 011, '32', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003572, 0000000006, 045, '32', '24', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003573, 0000000006, 017, '32', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003574, 0000000006, 003, '32', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003575, 0000000006, 003, '32', '30', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003576, 0000000006, 009, '32', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003577, 0000000006, 025, '32', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003578, 0000000006, 015, '32', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003579, 0000000006, 045, '32', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003580, 0000000006, 005, '32', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003581, 0000000006, 005, '32', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003582, 0000000006, 045, '32', '44', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003583, 0000000006, 043, '32', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003584, 0000000006, 017, '32', '48', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003585, 0000000006, 005, '34', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003586, 0000000006, 063, '34', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003587, 0000000006, 011, '34', '6', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003588, 0000000006, 033, '34', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003589, 0000000006, 051, '34', '10', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003590, 0000000006, 003, '34', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003591, 0000000006, 011, '34', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003592, 0000000006, 001, '34', '16', 0000000161);
INSERT INTO `Move_Logic` VALUES (0000003593, 0000000006, 037, '34', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003594, 0000000006, 041, '34', '20', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003595, 0000000006, 051, '34', '22', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003596, 0000000006, 015, '34', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003597, 0000000006, 051, '34', '26', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003598, 0000000006, 051, '34', '28', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003599, 0000000006, 051, '34', '30', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003600, 0000000006, 051, '34', '32', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003601, 0000000006, 051, '34', '34', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003602, 0000000006, 041, '34', '36', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003603, 0000000006, 003, '34', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003604, 0000000006, 041, '34', '40', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003605, 0000000006, 005, '34', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003606, 0000000006, 015, '34', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003607, 0000000006, 027, '34', '46', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003608, 0000000006, 051, '34', '48', 0000000186);
INSERT INTO `Move_Logic` VALUES (0000003609, 0000000006, 005, '36', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003610, 0000000006, 007, '36', '4', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003611, 0000000006, 055, '36', '6', 0000000188);
INSERT INTO `Move_Logic` VALUES (0000003612, 0000000006, 033, '36', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003613, 0000000006, 003, '36', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003614, 0000000006, 003, '36', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003615, 0000000006, 011, '36', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003616, 0000000006, 001, '36', '16', 0000000161);
INSERT INTO `Move_Logic` VALUES (0000003617, 0000000006, 007, '36', '18', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003618, 0000000006, 007, '36', '20', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003619, 0000000006, 011, '36', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003620, 0000000006, 015, '36', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003621, 0000000006, 055, '36', '26', 0000000188);
INSERT INTO `Move_Logic` VALUES (0000003622, 0000000006, 007, '36', '28', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003623, 0000000006, 027, '36', '30', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003624, 0000000006, 009, '36', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003625, 0000000006, 007, '36', '34', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003626, 0000000006, 015, '36', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003627, 0000000006, 003, '36', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003628, 0000000006, 007, '36', '40', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003629, 0000000006, 005, '36', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003630, 0000000006, 055, '36', '44', 0000000188);
INSERT INTO `Move_Logic` VALUES (0000003631, 0000000006, 007, '36', '46', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003632, 0000000006, 055, '36', '48', 0000000188);
INSERT INTO `Move_Logic` VALUES (0000003633, 0000000006, 031, '38', '2', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003634, 0000000006, 053, '38', '4', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003635, 0000000006, 009, '38', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003636, 0000000006, 019, '38', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003637, 0000000006, 045, '38', '10', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003638, 0000000006, 045, '38', '12', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003639, 0000000006, 007, '38', '14', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003640, 0000000006, 057, '38', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003641, 0000000006, 013, '38', '18', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003642, 0000000006, 029, '38', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003643, 0000000006, 009, '38', '22', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003644, 0000000006, 045, '38', '24', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003645, 0000000006, 017, '38', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003646, 0000000006, 003, '38', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003647, 0000000006, 005, '38', '30', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003648, 0000000006, 045, '38', '32', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003649, 0000000006, 025, '38', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003650, 0000000006, 031, '38', '36', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003651, 0000000006, 045, '38', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003652, 0000000006, 005, '38', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003653, 0000000006, 031, '38', '42', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003654, 0000000006, 045, '38', '44', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003655, 0000000006, 043, '38', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003656, 0000000006, 045, '38', '48', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003657, 0000000006, 049, '40', '2', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003658, 0000000006, 063, '40', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003659, 0000000006, 031, '40', '6', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003660, 0000000006, 033, '40', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003661, 0000000006, 003, '40', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003662, 0000000006, 041, '40', '12', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003663, 0000000006, 049, '40', '14', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003664, 0000000006, 029, '40', '16', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003665, 0000000006, 023, '40', '18', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003666, 0000000006, 053, '40', '20', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003667, 0000000006, 013, '40', '22', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003668, 0000000006, 023, '40', '24', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003669, 0000000006, 013, '40', '26', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003670, 0000000006, 003, '40', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003671, 0000000006, 005, '40', '30', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003672, 0000000006, 009, '40', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003673, 0000000006, 025, '40', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003674, 0000000006, 041, '40', '36', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003675, 0000000006, 003, '40', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003676, 0000000006, 005, '40', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003677, 0000000006, 049, '40', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003678, 0000000006, 015, '40', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003679, 0000000006, 043, '40', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003680, 0000000006, 005, '40', '48', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003681, 0000000006, 049, '42', '2', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003682, 0000000006, 063, '42', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003683, 0000000006, 009, '42', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003684, 0000000006, 019, '42', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003685, 0000000006, 013, '42', '10', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003686, 0000000006, 049, '42', '12', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003687, 0000000006, 049, '42', '14', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003688, 0000000006, 057, '42', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003689, 0000000006, 037, '42', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003690, 0000000006, 031, '42', '20', 0000000176);
INSERT INTO `Move_Logic` VALUES (0000003691, 0000000006, 049, '42', '22', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003692, 0000000006, 013, '42', '24', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003693, 0000000006, 017, '42', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003694, 0000000006, 013, '42', '28', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003695, 0000000006, 005, '42', '30', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003696, 0000000006, 009, '42', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003697, 0000000006, 041, '42', '34', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003698, 0000000006, 013, '42', '36', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003699, 0000000006, 013, '42', '38', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003700, 0000000006, 049, '42', '40', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003701, 0000000006, 049, '42', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003702, 0000000006, 015, '42', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003703, 0000000006, 027, '42', '46', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003704, 0000000006, 049, '42', '48', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003705, 0000000006, 005, '44', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003706, 0000000006, 019, '44', '4', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003707, 0000000006, 045, '44', '6', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003708, 0000000006, 033, '44', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003709, 0000000006, 045, '44', '10', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003710, 0000000006, 003, '44', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003711, 0000000006, 019, '44', '14', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003712, 0000000006, 057, '44', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003713, 0000000006, 007, '44', '18', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003714, 0000000006, 019, '44', '20', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003715, 0000000006, 019, '44', '22', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003716, 0000000006, 015, '44', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003717, 0000000006, 017, '44', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003718, 0000000006, 019, '44', '28', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003719, 0000000006, 019, '44', '30', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003720, 0000000006, 045, '44', '32', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003721, 0000000006, 019, '44', '34', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003722, 0000000006, 019, '44', '36', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003723, 0000000006, 045, '44', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003724, 0000000006, 049, '44', '40', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003725, 0000000006, 005, '44', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003726, 0000000006, 045, '44', '44', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003727, 0000000006, 027, '44', '46', 0000000174);
INSERT INTO `Move_Logic` VALUES (0000003728, 0000000006, 045, '44', '48', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003729, 0000000006, 005, '46', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003730, 0000000006, 063, '46', '4', 0000000192);
INSERT INTO `Move_Logic` VALUES (0000003731, 0000000006, 009, '46', '6', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003732, 0000000006, 033, '46', '8', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003733, 0000000006, 003, '46', '10', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003734, 0000000006, 003, '46', '12', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003735, 0000000006, 011, '46', '14', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003736, 0000000006, 001, '46', '16', 0000000161);
INSERT INTO `Move_Logic` VALUES (0000003737, 0000000006, 037, '46', '18', 0000000179);
INSERT INTO `Move_Logic` VALUES (0000003738, 0000000006, 029, '46', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003739, 0000000006, 011, '46', '22', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003740, 0000000006, 015, '46', '24', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003741, 0000000006, 017, '46', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003742, 0000000006, 003, '46', '28', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003743, 0000000006, 015, '46', '30', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003744, 0000000006, 009, '46', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003745, 0000000006, 025, '46', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003746, 0000000006, 015, '46', '36', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003747, 0000000006, 003, '46', '38', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003748, 0000000006, 005, '46', '40', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003749, 0000000006, 005, '46', '42', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003750, 0000000006, 015, '46', '44', 0000000168);
INSERT INTO `Move_Logic` VALUES (0000003751, 0000000006, 043, '46', '46', 0000000182);
INSERT INTO `Move_Logic` VALUES (0000003752, 0000000006, 003, '46', '48', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003753, 0000000006, 005, '48', '2', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003754, 0000000006, 019, '48', '4', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003755, 0000000006, 045, '48', '6', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003756, 0000000006, 019, '48', '8', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003757, 0000000006, 045, '48', '10', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003758, 0000000006, 045, '48', '12', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003759, 0000000006, 049, '48', '14', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003760, 0000000006, 057, '48', '16', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003761, 0000000006, 019, '48', '18', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003762, 0000000006, 029, '48', '20', 0000000175);
INSERT INTO `Move_Logic` VALUES (0000003763, 0000000006, 049, '48', '22', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003764, 0000000006, 019, '48', '24', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003765, 0000000006, 017, '48', '26', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003766, 0000000006, 019, '48', '28', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003767, 0000000006, 019, '48', '30', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003768, 0000000006, 009, '48', '32', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003769, 0000000006, 025, '48', '34', 0000000173);
INSERT INTO `Move_Logic` VALUES (0000003770, 0000000006, 019, '48', '36', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003771, 0000000006, 045, '48', '38', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003772, 0000000006, 019, '48', '40', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003773, 0000000006, 049, '48', '42', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003774, 0000000006, 045, '48', '44', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003775, 0000000006, 019, '48', '46', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003776, 0000000006, 049, '48', '48', 0000000185);
INSERT INTO `Move_Logic` VALUES (0000003777, 0000000006, 045, '50', '50', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003778, 0000000006, 023, '50', '52', 0000000172);
INSERT INTO `Move_Logic` VALUES (0000003779, 0000000006, 009, '50', '54', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003780, 0000000006, 017, '50', '56', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003781, 0000000006, 041, '50', '58', 0000000181);
INSERT INTO `Move_Logic` VALUES (0000003782, 0000000006, 011, '50', '60', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003783, 0000000006, 019, '50', '62', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003784, 0000000006, 019, '50', '64', 0000000170);
INSERT INTO `Move_Logic` VALUES (0000003785, 0000000006, 021, '52', '50', 0000000171);
INSERT INTO `Move_Logic` VALUES (0000003786, 0000000006, 061, '52', '52', 0000000191);
INSERT INTO `Move_Logic` VALUES (0000003787, 0000000006, 009, '52', '54', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003788, 0000000006, 057, '52', '56', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003789, 0000000006, 005, '52', '58', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003790, 0000000006, 011, '52', '60', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003791, 0000000006, 057, '52', '62', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003792, 0000000006, 057, '52', '64', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003793, 0000000006, 053, '54', '50', 0000000187);
INSERT INTO `Move_Logic` VALUES (0000003794, 0000000006, 033, '54', '52', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003795, 0000000006, 045, '54', '54', 0000000183);
INSERT INTO `Move_Logic` VALUES (0000003796, 0000000006, 017, '54', '56', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003797, 0000000006, 035, '54', '58', 0000000178);
INSERT INTO `Move_Logic` VALUES (0000003798, 0000000006, 011, '54', '60', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003799, 0000000006, 035, '54', '62', 0000000178);
INSERT INTO `Move_Logic` VALUES (0000003800, 0000000006, 003, '54', '64', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003801, 0000000006, 039, '56', '50', 0000000180);
INSERT INTO `Move_Logic` VALUES (0000003802, 0000000006, 061, '56', '52', 0000000191);
INSERT INTO `Move_Logic` VALUES (0000003803, 0000000006, 009, '56', '54', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003804, 0000000006, 017, '56', '56', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003805, 0000000006, 057, '56', '58', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003806, 0000000006, 057, '56', '60', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003807, 0000000006, 057, '56', '62', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003808, 0000000006, 003, '56', '64', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003809, 0000000006, 039, '58', '50', 0000000180);
INSERT INTO `Move_Logic` VALUES (0000003810, 0000000006, 033, '58', '52', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003811, 0000000006, 047, '58', '54', 0000000184);
INSERT INTO `Move_Logic` VALUES (0000003812, 0000000006, 047, '58', '56', 0000000184);
INSERT INTO `Move_Logic` VALUES (0000003813, 0000000006, 005, '58', '58', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003814, 0000000006, 011, '58', '60', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003815, 0000000006, 057, '58', '62', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003816, 0000000006, 057, '58', '64', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003817, 0000000006, 013, '60', '50', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003818, 0000000006, 033, '60', '52', 0000000177);
INSERT INTO `Move_Logic` VALUES (0000003819, 0000000006, 013, '60', '54', 0000000167);
INSERT INTO `Move_Logic` VALUES (0000003820, 0000000006, 057, '60', '56', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003821, 0000000006, 005, '60', '58', 0000000163);
INSERT INTO `Move_Logic` VALUES (0000003822, 0000000006, 011, '60', '60', 0000000166);
INSERT INTO `Move_Logic` VALUES (0000003823, 0000000006, 057, '60', '62', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003824, 0000000006, 047, '60', '64', 0000000184);
INSERT INTO `Move_Logic` VALUES (0000003825, 0000000006, 039, '62', '50', 0000000180);
INSERT INTO `Move_Logic` VALUES (0000003826, 0000000006, 061, '62', '52', 0000000191);
INSERT INTO `Move_Logic` VALUES (0000003827, 0000000006, 057, '62', '54', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003828, 0000000006, 057, '62', '56', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003829, 0000000006, 057, '62', '58', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003830, 0000000006, 057, '62', '60', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003831, 0000000006, 057, '62', '62', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003832, 0000000006, 057, '62', '64', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003833, 0000000006, 007, '64', '50', 0000000164);
INSERT INTO `Move_Logic` VALUES (0000003834, 0000000006, 035, '64', '52', 0000000178);
INSERT INTO `Move_Logic` VALUES (0000003835, 0000000006, 009, '64', '54', 0000000165);
INSERT INTO `Move_Logic` VALUES (0000003836, 0000000006, 017, '64', '56', 0000000169);
INSERT INTO `Move_Logic` VALUES (0000003837, 0000000006, 057, '64', '58', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003838, 0000000006, 035, '64', '60', 0000000178);
INSERT INTO `Move_Logic` VALUES (0000003839, 0000000006, 057, '64', '62', 0000000189);
INSERT INTO `Move_Logic` VALUES (0000003840, 0000000006, 003, '64', '64', 0000000162);
INSERT INTO `Move_Logic` VALUES (0000003841, 0000000007, 049, '2', '2', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003842, 0000000007, 059, '2', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003843, 0000000007, 000, '2', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003844, 0000000007, 019, '2', '8', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003845, 0000000007, 013, '2', '10', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003846, 0000000007, 019, '2', '12', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003847, 0000000007, 049, '2', '14', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003848, 0000000007, 057, '2', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000003849, 0000000007, 037, '2', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000003850, 0000000007, 019, '2', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003851, 0000000007, 059, '2', '22', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003852, 0000000007, 013, '2', '24', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003853, 0000000007, 013, '2', '26', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003854, 0000000007, 013, '2', '28', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003855, 0000000007, 049, '2', '30', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003856, 0000000007, 013, '2', '32', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003857, 0000000007, 041, '2', '34', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000003858, 0000000007, 013, '2', '36', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003859, 0000000007, 000, '2', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003860, 0000000007, 049, '2', '40', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003861, 0000000007, 049, '2', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003862, 0000000007, 015, '2', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003863, 0000000007, 027, '2', '46', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000003864, 0000000007, 000, '2', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003865, 0000000007, 005, '4', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003866, 0000000007, 019, '4', '4', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003867, 0000000007, 000, '4', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003868, 0000000007, 033, '4', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000003869, 0000000007, 003, '4', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003870, 0000000007, 003, '4', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003871, 0000000007, 011, '4', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000003872, 0000000007, 057, '4', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000003873, 0000000007, 037, '4', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000003874, 0000000007, 029, '4', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000003875, 0000000007, 011, '4', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000003876, 0000000007, 015, '4', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003877, 0000000007, 059, '4', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003878, 0000000007, 003, '4', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003879, 0000000007, 015, '4', '30', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003880, 0000000007, 009, '4', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000003881, 0000000007, 025, '4', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000003882, 0000000007, 015, '4', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003883, 0000000007, 000, '4', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003884, 0000000007, 005, '4', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003885, 0000000007, 005, '4', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003886, 0000000007, 015, '4', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003887, 0000000007, 043, '4', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000003888, 0000000007, 000, '4', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003889, 0000000007, 019, '6', '2', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003890, 0000000007, 059, '6', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003891, 0000000007, 000, '6', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003892, 0000000007, 033, '6', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000003893, 0000000007, 003, '6', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003894, 0000000007, 003, '6', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003895, 0000000007, 049, '6', '14', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003896, 0000000007, 019, '6', '16', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003897, 0000000007, 019, '6', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003898, 0000000007, 029, '6', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000003899, 0000000007, 011, '6', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000003900, 0000000007, 015, '6', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003901, 0000000007, 059, '6', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003902, 0000000007, 031, '6', '28', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000003903, 0000000007, 005, '6', '30', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003904, 0000000007, 045, '6', '32', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003905, 0000000007, 019, '6', '34', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003906, 0000000007, 019, '6', '36', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003907, 0000000007, 000, '6', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003908, 0000000007, 019, '6', '40', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003909, 0000000007, 019, '6', '42', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003910, 0000000007, 045, '6', '44', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003911, 0000000007, 019, '6', '46', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003912, 0000000007, 000, '6', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003913, 0000000007, 005, '8', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003914, 0000000007, 059, '8', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003915, 0000000007, 000, '8', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003916, 0000000007, 033, '8', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000003917, 0000000007, 003, '8', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003918, 0000000007, 003, '8', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003919, 0000000007, 023, '8', '14', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000003920, 0000000007, 057, '8', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000003921, 0000000007, 037, '8', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000003922, 0000000007, 029, '8', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000003923, 0000000007, 021, '8', '22', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000003924, 0000000007, 015, '8', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003925, 0000000007, 059, '8', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003926, 0000000007, 003, '8', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003927, 0000000007, 003, '8', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003928, 0000000007, 009, '8', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000003929, 0000000007, 019, '8', '34', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003930, 0000000007, 015, '8', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003931, 0000000007, 000, '8', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003932, 0000000007, 005, '8', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003933, 0000000007, 005, '8', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000003934, 0000000007, 015, '8', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003935, 0000000007, 043, '8', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000003936, 0000000007, 000, '8', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003937, 0000000007, 031, '10', '2', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000003938, 0000000007, 053, '10', '4', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000003939, 0000000007, 000, '10', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003940, 0000000007, 019, '10', '8', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003941, 0000000007, 045, '10', '10', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003942, 0000000007, 003, '10', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003943, 0000000007, 007, '10', '14', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000003944, 0000000007, 057, '10', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000003945, 0000000007, 019, '10', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003946, 0000000007, 023, '10', '20', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000003947, 0000000007, 007, '10', '22', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000003948, 0000000007, 045, '10', '24', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003949, 0000000007, 059, '10', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003950, 0000000007, 031, '10', '28', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000003951, 0000000007, 003, '10', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003952, 0000000007, 053, '10', '32', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000003953, 0000000007, 025, '10', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000003954, 0000000007, 031, '10', '36', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000003955, 0000000007, 000, '10', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003956, 0000000007, 053, '10', '40', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000003957, 0000000007, 053, '10', '42', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000003958, 0000000007, 059, '10', '44', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003959, 0000000007, 043, '10', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000003960, 0000000007, 000, '10', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003961, 0000000007, 019, '12', '2', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003962, 0000000007, 059, '12', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003963, 0000000007, 000, '12', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003964, 0000000007, 019, '12', '8', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003965, 0000000007, 019, '12', '10', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003966, 0000000007, 045, '12', '12', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003967, 0000000007, 011, '12', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000003968, 0000000007, 057, '12', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000003969, 0000000007, 019, '12', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003970, 0000000007, 029, '12', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000003971, 0000000007, 011, '12', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000003972, 0000000007, 045, '12', '24', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003973, 0000000007, 059, '12', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003974, 0000000007, 019, '12', '28', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003975, 0000000007, 003, '12', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003976, 0000000007, 045, '12', '32', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000003977, 0000000007, 025, '12', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000003978, 0000000007, 019, '12', '36', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003979, 0000000007, 000, '12', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000003980, 0000000007, 053, '12', '40', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000003981, 0000000007, 049, '12', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003982, 0000000007, 015, '12', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000003983, 0000000007, 029, '12', '46', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000003984, 0000000007, 000, '12', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000003985, 0000000007, 049, '14', '2', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000003986, 0000000007, 059, '14', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000003987, 0000000007, 000, '14', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000003988, 0000000007, 023, '14', '8', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000003989, 0000000007, 013, '14', '10', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003990, 0000000007, 003, '14', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000003991, 0000000007, 013, '14', '14', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003992, 0000000007, 019, '14', '16', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000003993, 0000000007, 037, '14', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000003994, 0000000007, 053, '14', '20', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000003995, 0000000007, 011, '14', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000003996, 0000000007, 013, '14', '24', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003997, 0000000007, 013, '14', '26', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003998, 0000000007, 013, '14', '28', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000003999, 0000000007, 005, '14', '30', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004000, 0000000007, 013, '14', '32', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004001, 0000000007, 013, '14', '34', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004002, 0000000007, 013, '14', '36', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004003, 0000000007, 000, '14', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004004, 0000000007, 049, '14', '40', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004005, 0000000007, 049, '14', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004006, 0000000007, 013, '14', '44', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004007, 0000000007, 053, '14', '46', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004008, 0000000007, 000, '14', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004009, 0000000007, 051, '16', '2', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004010, 0000000007, 057, '16', '4', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004011, 0000000007, 000, '16', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004012, 0000000007, 061, '16', '8', 0000000223);
INSERT INTO `Move_Logic` VALUES (0000004013, 0000000007, 051, '16', '10', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004014, 0000000007, 057, '16', '12', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004015, 0000000007, 011, '16', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004016, 0000000007, 057, '16', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004017, 0000000007, 061, '16', '18', 0000000223);
INSERT INTO `Move_Logic` VALUES (0000004018, 0000000007, 061, '16', '20', 0000000223);
INSERT INTO `Move_Logic` VALUES (0000004019, 0000000007, 011, '16', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004020, 0000000007, 019, '16', '24', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004021, 0000000007, 057, '16', '26', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004022, 0000000007, 021, '16', '28', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004023, 0000000007, 051, '16', '30', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004024, 0000000007, 009, '16', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004025, 0000000007, 041, '16', '34', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004026, 0000000007, 041, '16', '36', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004027, 0000000007, 000, '16', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004028, 0000000007, 021, '16', '40', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004029, 0000000007, 057, '16', '42', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004030, 0000000007, 057, '16', '44', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004031, 0000000007, 043, '16', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004032, 0000000007, 000, '16', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004033, 0000000007, 005, '18', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004034, 0000000007, 059, '18', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004035, 0000000007, 000, '18', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004036, 0000000007, 033, '18', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004037, 0000000007, 003, '18', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004038, 0000000007, 003, '18', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004039, 0000000007, 011, '18', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004040, 0000000007, 057, '18', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004041, 0000000007, 037, '18', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004042, 0000000007, 029, '18', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004043, 0000000007, 011, '18', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004044, 0000000007, 015, '18', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004045, 0000000007, 059, '18', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004046, 0000000007, 003, '18', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004047, 0000000007, 003, '18', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004048, 0000000007, 009, '18', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004049, 0000000007, 041, '18', '34', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004050, 0000000007, 015, '18', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004051, 0000000007, 000, '18', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004052, 0000000007, 021, '18', '40', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004053, 0000000007, 005, '18', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004054, 0000000007, 015, '18', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004055, 0000000007, 043, '18', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004056, 0000000007, 000, '18', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004057, 0000000007, 005, '20', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004058, 0000000007, 059, '20', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004059, 0000000007, 000, '20', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004060, 0000000007, 033, '20', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004061, 0000000007, 021, '20', '10', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004062, 0000000007, 003, '20', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004063, 0000000007, 011, '20', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004064, 0000000007, 057, '20', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004065, 0000000007, 037, '20', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004066, 0000000007, 029, '20', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004067, 0000000007, 011, '20', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004068, 0000000007, 015, '20', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004069, 0000000007, 059, '20', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004070, 0000000007, 021, '20', '28', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004071, 0000000007, 003, '20', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004072, 0000000007, 009, '20', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004073, 0000000007, 025, '20', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004074, 0000000007, 015, '20', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004075, 0000000007, 000, '20', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004076, 0000000007, 005, '20', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004077, 0000000007, 005, '20', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004078, 0000000007, 015, '20', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004079, 0000000007, 043, '20', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004080, 0000000007, 000, '20', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004081, 0000000007, 049, '22', '2', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004082, 0000000007, 059, '22', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004083, 0000000007, 000, '22', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004084, 0000000007, 023, '22', '8', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000004085, 0000000007, 013, '22', '10', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004086, 0000000007, 019, '22', '12', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004087, 0000000007, 013, '22', '14', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004088, 0000000007, 019, '22', '16', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004089, 0000000007, 037, '22', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004090, 0000000007, 019, '22', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004091, 0000000007, 019, '22', '22', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004092, 0000000007, 015, '22', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004093, 0000000007, 059, '22', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004094, 0000000007, 003, '22', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004095, 0000000007, 005, '22', '30', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004096, 0000000007, 031, '22', '32', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004097, 0000000007, 025, '22', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004098, 0000000007, 013, '22', '36', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004099, 0000000007, 000, '22', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004100, 0000000007, 049, '22', '40', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004101, 0000000007, 049, '22', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004102, 0000000007, 013, '22', '44', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004103, 0000000007, 043, '22', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004104, 0000000007, 000, '22', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004105, 0000000007, 053, '24', '2', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004106, 0000000007, 041, '24', '4', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004107, 0000000007, 000, '24', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004108, 0000000007, 033, '24', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004109, 0000000007, 045, '24', '10', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004110, 0000000007, 045, '24', '12', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004111, 0000000007, 011, '24', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004112, 0000000007, 001, '24', '16', 0000000193);
INSERT INTO `Move_Logic` VALUES (0000004113, 0000000007, 019, '24', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004114, 0000000007, 019, '24', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004115, 0000000007, 011, '24', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004116, 0000000007, 007, '24', '24', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004117, 0000000007, 059, '24', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004118, 0000000007, 003, '24', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004119, 0000000007, 003, '24', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004120, 0000000007, 045, '24', '32', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004121, 0000000007, 053, '24', '34', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004122, 0000000007, 015, '24', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004123, 0000000007, 000, '24', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004124, 0000000007, 021, '24', '40', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004125, 0000000007, 005, '24', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004126, 0000000007, 012, '24', '44', 0000000000);
INSERT INTO `Move_Logic` VALUES (0000004127, 0000000007, 041, '24', '46', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004128, 0000000007, 000, '24', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004129, 0000000007, 005, '26', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004130, 0000000007, 059, '26', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004131, 0000000007, 000, '26', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004132, 0000000007, 033, '26', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004133, 0000000007, 003, '26', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004134, 0000000007, 003, '26', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004135, 0000000007, 011, '26', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004136, 0000000007, 057, '26', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004137, 0000000007, 037, '26', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004138, 0000000007, 029, '26', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004139, 0000000007, 011, '26', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004140, 0000000007, 015, '26', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004141, 0000000007, 059, '26', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004142, 0000000007, 003, '26', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004143, 0000000007, 003, '26', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004144, 0000000007, 009, '26', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004145, 0000000007, 025, '26', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004146, 0000000007, 015, '26', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004147, 0000000007, 000, '26', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004148, 0000000007, 005, '26', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004149, 0000000007, 005, '26', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004150, 0000000007, 019, '26', '44', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004151, 0000000007, 043, '26', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004152, 0000000007, 000, '26', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004153, 0000000007, 007, '28', '2', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004154, 0000000007, 031, '28', '4', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004155, 0000000007, 000, '28', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004156, 0000000007, 019, '28', '8', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004157, 0000000007, 003, '28', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004158, 0000000007, 019, '28', '12', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004159, 0000000007, 011, '28', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004160, 0000000007, 029, '28', '16', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004161, 0000000007, 037, '28', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004162, 0000000007, 023, '28', '20', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000004163, 0000000007, 011, '28', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004164, 0000000007, 053, '28', '24', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004165, 0000000007, 053, '28', '26', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004166, 0000000007, 019, '28', '28', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004167, 0000000007, 031, '28', '30', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004168, 0000000007, 009, '28', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004169, 0000000007, 025, '28', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004170, 0000000007, 031, '28', '36', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004171, 0000000007, 000, '28', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004172, 0000000007, 041, '28', '40', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004173, 0000000007, 005, '28', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004174, 0000000007, 015, '28', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004175, 0000000007, 029, '28', '46', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004176, 0000000007, 000, '28', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004177, 0000000007, 049, '30', '2', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004178, 0000000007, 059, '30', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004179, 0000000007, 000, '30', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004180, 0000000007, 033, '30', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004181, 0000000007, 003, '30', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004182, 0000000007, 003, '30', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004183, 0000000007, 011, '30', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004184, 0000000007, 057, '30', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004185, 0000000007, 037, '30', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004186, 0000000007, 029, '30', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004187, 0000000007, 027, '30', '22', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004188, 0000000007, 015, '30', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004189, 0000000007, 059, '30', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004190, 0000000007, 003, '30', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004191, 0000000007, 027, '30', '30', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004192, 0000000007, 027, '30', '32', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004193, 0000000007, 025, '30', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004194, 0000000007, 015, '30', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004195, 0000000007, 000, '30', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004196, 0000000007, 005, '30', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004197, 0000000007, 027, '30', '42', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004198, 0000000007, 015, '30', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004199, 0000000007, 027, '30', '46', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004200, 0000000007, 000, '30', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004201, 0000000007, 053, '32', '2', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004202, 0000000007, 053, '32', '4', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004203, 0000000007, 000, '32', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004204, 0000000007, 033, '32', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004205, 0000000007, 003, '32', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004206, 0000000007, 045, '32', '12', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004207, 0000000007, 053, '32', '14', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004208, 0000000007, 019, '32', '16', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004209, 0000000007, 019, '32', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004210, 0000000007, 029, '32', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004211, 0000000007, 053, '32', '22', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004212, 0000000007, 045, '32', '24', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004213, 0000000007, 059, '32', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004214, 0000000007, 053, '32', '28', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004215, 0000000007, 003, '32', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004216, 0000000007, 031, '32', '32', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004217, 0000000007, 025, '32', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004218, 0000000007, 053, '32', '36', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004219, 0000000007, 000, '32', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004220, 0000000007, 031, '32', '40', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004221, 0000000007, 019, '32', '42', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004222, 0000000007, 059, '32', '44', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004223, 0000000007, 043, '32', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004224, 0000000007, 000, '32', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004225, 0000000007, 005, '34', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004226, 0000000007, 059, '34', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004227, 0000000007, 000, '34', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004228, 0000000007, 033, '34', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004229, 0000000007, 003, '34', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004230, 0000000007, 003, '34', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004231, 0000000007, 011, '34', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004232, 0000000007, 001, '34', '16', 0000000193);
INSERT INTO `Move_Logic` VALUES (0000004233, 0000000007, 037, '34', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004234, 0000000007, 029, '34', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004235, 0000000007, 017, '34', '22', 0000000201);
INSERT INTO `Move_Logic` VALUES (0000004236, 0000000007, 015, '34', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004237, 0000000007, 017, '34', '26', 0000000201);
INSERT INTO `Move_Logic` VALUES (0000004238, 0000000007, 017, '34', '28', 0000000201);
INSERT INTO `Move_Logic` VALUES (0000004239, 0000000007, 003, '34', '30', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004240, 0000000007, 017, '34', '32', 0000000201);
INSERT INTO `Move_Logic` VALUES (0000004241, 0000000007, 025, '34', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004242, 0000000007, 041, '34', '36', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004243, 0000000007, 000, '34', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004244, 0000000007, 041, '34', '40', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004245, 0000000007, 005, '34', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004246, 0000000007, 015, '34', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004247, 0000000007, 027, '34', '46', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004248, 0000000007, 000, '34', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004249, 0000000007, 005, '36', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004250, 0000000007, 007, '36', '4', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004251, 0000000007, 000, '36', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004252, 0000000007, 033, '36', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004253, 0000000007, 003, '36', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004254, 0000000007, 003, '36', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004255, 0000000007, 063, '36', '14', 0000000224);
INSERT INTO `Move_Logic` VALUES (0000004256, 0000000007, 063, '36', '16', 0000000224);
INSERT INTO `Move_Logic` VALUES (0000004257, 0000000007, 007, '36', '18', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004258, 0000000007, 019, '36', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004259, 0000000007, 011, '36', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004260, 0000000007, 015, '36', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004261, 0000000007, 031, '36', '26', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004262, 0000000007, 007, '36', '28', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004263, 0000000007, 027, '36', '30', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004264, 0000000007, 009, '36', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004265, 0000000007, 007, '36', '34', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004266, 0000000007, 063, '36', '36', 0000000224);
INSERT INTO `Move_Logic` VALUES (0000004267, 0000000007, 000, '36', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004268, 0000000007, 007, '36', '40', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004269, 0000000007, 005, '36', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004270, 0000000007, 053, '36', '44', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004271, 0000000007, 007, '36', '46', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004272, 0000000007, 000, '36', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004273, 0000000007, 031, '38', '2', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004274, 0000000007, 053, '38', '4', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004275, 0000000007, 000, '38', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004276, 0000000007, 053, '38', '8', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004277, 0000000007, 045, '38', '10', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004278, 0000000007, 045, '38', '12', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004279, 0000000007, 007, '38', '14', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004280, 0000000007, 057, '38', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004281, 0000000007, 019, '38', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004282, 0000000007, 029, '38', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004283, 0000000007, 009, '38', '22', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004284, 0000000007, 045, '38', '24', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004285, 0000000007, 059, '38', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004286, 0000000007, 003, '38', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004287, 0000000007, 005, '38', '30', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004288, 0000000007, 045, '38', '32', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004289, 0000000007, 025, '38', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004290, 0000000007, 031, '38', '36', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004291, 0000000007, 000, '38', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004292, 0000000007, 005, '38', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004293, 0000000007, 019, '38', '42', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004294, 0000000007, 059, '38', '44', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004295, 0000000007, 043, '38', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004296, 0000000007, 000, '38', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004297, 0000000007, 049, '40', '2', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004298, 0000000007, 059, '40', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004299, 0000000007, 000, '40', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004300, 0000000007, 033, '40', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004301, 0000000007, 003, '40', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004302, 0000000007, 041, '40', '12', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004303, 0000000007, 049, '40', '14', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004304, 0000000007, 023, '40', '16', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000004305, 0000000007, 023, '40', '18', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000004306, 0000000007, 019, '40', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004307, 0000000007, 013, '40', '22', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004308, 0000000007, 023, '40', '24', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000004309, 0000000007, 013, '40', '26', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004310, 0000000007, 003, '40', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004311, 0000000007, 005, '40', '30', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004312, 0000000007, 009, '40', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004313, 0000000007, 025, '40', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004314, 0000000007, 041, '40', '36', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004315, 0000000007, 000, '40', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004316, 0000000007, 005, '40', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004317, 0000000007, 049, '40', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004318, 0000000007, 015, '40', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004319, 0000000007, 043, '40', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004320, 0000000007, 000, '40', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004321, 0000000007, 049, '42', '2', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004322, 0000000007, 059, '42', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004323, 0000000007, 000, '42', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004324, 0000000007, 019, '42', '8', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004325, 0000000007, 019, '42', '10', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004326, 0000000007, 049, '42', '12', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004327, 0000000007, 049, '42', '14', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004328, 0000000007, 057, '42', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004329, 0000000007, 037, '42', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004330, 0000000007, 019, '42', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004331, 0000000007, 059, '42', '22', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004332, 0000000007, 019, '42', '24', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004333, 0000000007, 059, '42', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004334, 0000000007, 019, '42', '28', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004335, 0000000007, 005, '42', '30', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004336, 0000000007, 009, '42', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004337, 0000000007, 041, '42', '34', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004338, 0000000007, 019, '42', '36', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004339, 0000000007, 000, '42', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004340, 0000000007, 049, '42', '40', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004341, 0000000007, 049, '42', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004342, 0000000007, 015, '42', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004343, 0000000007, 027, '42', '46', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004344, 0000000007, 000, '42', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004345, 0000000007, 005, '44', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004346, 0000000007, 019, '44', '4', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004347, 0000000007, 000, '44', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004348, 0000000007, 033, '44', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004349, 0000000007, 045, '44', '10', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004350, 0000000007, 003, '44', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004351, 0000000007, 019, '44', '14', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004352, 0000000007, 057, '44', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004353, 0000000007, 019, '44', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004354, 0000000007, 019, '44', '20', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004355, 0000000007, 019, '44', '22', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004356, 0000000007, 015, '44', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004357, 0000000007, 059, '44', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004358, 0000000007, 019, '44', '28', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004359, 0000000007, 019, '44', '30', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004360, 0000000007, 045, '44', '32', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004361, 0000000007, 019, '44', '34', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004362, 0000000007, 019, '44', '36', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004363, 0000000007, 000, '44', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004364, 0000000007, 019, '44', '40', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004365, 0000000007, 005, '44', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004366, 0000000007, 045, '44', '44', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004367, 0000000007, 027, '44', '46', 0000000206);
INSERT INTO `Move_Logic` VALUES (0000004368, 0000000007, 000, '44', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004369, 0000000007, 005, '46', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004370, 0000000007, 059, '46', '4', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004371, 0000000007, 000, '46', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004372, 0000000007, 033, '46', '8', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004373, 0000000007, 003, '46', '10', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004374, 0000000007, 003, '46', '12', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004375, 0000000007, 011, '46', '14', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004376, 0000000007, 001, '46', '16', 0000000193);
INSERT INTO `Move_Logic` VALUES (0000004377, 0000000007, 037, '46', '18', 0000000211);
INSERT INTO `Move_Logic` VALUES (0000004378, 0000000007, 029, '46', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004379, 0000000007, 011, '46', '22', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004380, 0000000007, 015, '46', '24', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004381, 0000000007, 059, '46', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004382, 0000000007, 003, '46', '28', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004383, 0000000007, 015, '46', '30', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004384, 0000000007, 009, '46', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004385, 0000000007, 025, '46', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004386, 0000000007, 015, '46', '36', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004387, 0000000007, 000, '46', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004388, 0000000007, 005, '46', '40', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004389, 0000000007, 005, '46', '42', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004390, 0000000007, 015, '46', '44', 0000000200);
INSERT INTO `Move_Logic` VALUES (0000004391, 0000000007, 043, '46', '46', 0000000214);
INSERT INTO `Move_Logic` VALUES (0000004392, 0000000007, 000, '46', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004393, 0000000007, 005, '48', '2', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004394, 0000000007, 019, '48', '4', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004395, 0000000007, 000, '48', '6', NULL);
INSERT INTO `Move_Logic` VALUES (0000004396, 0000000007, 019, '48', '8', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004397, 0000000007, 045, '48', '10', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004398, 0000000007, 045, '48', '12', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004399, 0000000007, 049, '48', '14', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004400, 0000000007, 057, '48', '16', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004401, 0000000007, 019, '48', '18', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004402, 0000000007, 029, '48', '20', 0000000207);
INSERT INTO `Move_Logic` VALUES (0000004403, 0000000007, 059, '48', '22', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004404, 0000000007, 031, '48', '24', 0000000208);
INSERT INTO `Move_Logic` VALUES (0000004405, 0000000007, 059, '48', '26', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004406, 0000000007, 019, '48', '28', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004407, 0000000007, 019, '48', '30', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004408, 0000000007, 009, '48', '32', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004409, 0000000007, 025, '48', '34', 0000000205);
INSERT INTO `Move_Logic` VALUES (0000004410, 0000000007, 019, '48', '36', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004411, 0000000007, 000, '48', '38', NULL);
INSERT INTO `Move_Logic` VALUES (0000004412, 0000000007, 019, '48', '40', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004413, 0000000007, 049, '48', '42', 0000000217);
INSERT INTO `Move_Logic` VALUES (0000004414, 0000000007, 045, '48', '44', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004415, 0000000007, 019, '48', '46', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004416, 0000000007, 000, '48', '48', NULL);
INSERT INTO `Move_Logic` VALUES (0000004417, 0000000007, 045, '50', '50', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004418, 0000000007, 023, '50', '52', 0000000204);
INSERT INTO `Move_Logic` VALUES (0000004419, 0000000007, 009, '50', '54', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004420, 0000000007, 059, '50', '56', 0000000222);
INSERT INTO `Move_Logic` VALUES (0000004421, 0000000007, 041, '50', '58', 0000000213);
INSERT INTO `Move_Logic` VALUES (0000004422, 0000000007, 011, '50', '60', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004423, 0000000007, 019, '50', '62', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004424, 0000000007, 019, '50', '64', 0000000202);
INSERT INTO `Move_Logic` VALUES (0000004425, 0000000007, 021, '52', '50', 0000000203);
INSERT INTO `Move_Logic` VALUES (0000004426, 0000000007, 061, '52', '52', 0000000223);
INSERT INTO `Move_Logic` VALUES (0000004427, 0000000007, 009, '52', '54', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004428, 0000000007, 057, '52', '56', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004429, 0000000007, 005, '52', '58', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004430, 0000000007, 011, '52', '60', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004431, 0000000007, 057, '52', '62', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004432, 0000000007, 051, '52', '64', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004433, 0000000007, 053, '54', '50', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004434, 0000000007, 033, '54', '52', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004435, 0000000007, 045, '54', '54', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004436, 0000000007, 045, '54', '56', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004437, 0000000007, 035, '54', '58', 0000000210);
INSERT INTO `Move_Logic` VALUES (0000004438, 0000000007, 011, '54', '60', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004439, 0000000007, 035, '54', '62', 0000000210);
INSERT INTO `Move_Logic` VALUES (0000004440, 0000000007, 003, '54', '64', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004441, 0000000007, 039, '56', '50', 0000000212);
INSERT INTO `Move_Logic` VALUES (0000004442, 0000000007, 061, '56', '52', 0000000223);
INSERT INTO `Move_Logic` VALUES (0000004443, 0000000007, 009, '56', '54', 0000000197);
INSERT INTO `Move_Logic` VALUES (0000004444, 0000000007, 045, '56', '56', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004445, 0000000007, 051, '56', '58', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004446, 0000000007, 055, '56', '60', 0000000220);
INSERT INTO `Move_Logic` VALUES (0000004447, 0000000007, 057, '56', '62', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004448, 0000000007, 003, '56', '64', 0000000194);
INSERT INTO `Move_Logic` VALUES (0000004449, 0000000007, 039, '58', '50', 0000000212);
INSERT INTO `Move_Logic` VALUES (0000004450, 0000000007, 033, '58', '52', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004451, 0000000007, 057, '58', '54', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004452, 0000000007, 047, '58', '56', 0000000216);
INSERT INTO `Move_Logic` VALUES (0000004453, 0000000007, 005, '58', '58', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004454, 0000000007, 013, '58', '60', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004455, 0000000007, 057, '58', '62', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004456, 0000000007, 051, '58', '64', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004457, 0000000007, 013, '60', '50', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004458, 0000000007, 033, '60', '52', 0000000209);
INSERT INTO `Move_Logic` VALUES (0000004459, 0000000007, 013, '60', '54', 0000000199);
INSERT INTO `Move_Logic` VALUES (0000004460, 0000000007, 057, '60', '56', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004461, 0000000007, 005, '60', '58', 0000000195);
INSERT INTO `Move_Logic` VALUES (0000004462, 0000000007, 011, '60', '60', 0000000198);
INSERT INTO `Move_Logic` VALUES (0000004463, 0000000007, 057, '60', '62', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004464, 0000000007, 047, '60', '64', 0000000216);
INSERT INTO `Move_Logic` VALUES (0000004465, 0000000007, 039, '62', '50', 0000000212);
INSERT INTO `Move_Logic` VALUES (0000004466, 0000000007, 061, '62', '52', 0000000223);
INSERT INTO `Move_Logic` VALUES (0000004467, 0000000007, 057, '62', '54', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004468, 0000000007, 057, '62', '56', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004469, 0000000007, 051, '62', '58', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004470, 0000000007, 055, '62', '60', 0000000220);
INSERT INTO `Move_Logic` VALUES (0000004471, 0000000007, 057, '62', '62', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004472, 0000000007, 051, '62', '64', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004473, 0000000007, 007, '64', '50', 0000000196);
INSERT INTO `Move_Logic` VALUES (0000004474, 0000000007, 035, '64', '52', 0000000210);
INSERT INTO `Move_Logic` VALUES (0000004475, 0000000007, 053, '64', '54', 0000000219);
INSERT INTO `Move_Logic` VALUES (0000004476, 0000000007, 045, '64', '56', 0000000215);
INSERT INTO `Move_Logic` VALUES (0000004477, 0000000007, 051, '64', '58', 0000000218);
INSERT INTO `Move_Logic` VALUES (0000004478, 0000000007, 055, '64', '60', 0000000220);
INSERT INTO `Move_Logic` VALUES (0000004479, 0000000007, 057, '64', '62', 0000000221);
INSERT INTO `Move_Logic` VALUES (0000004480, 0000000007, 003, '64', '64', 0000000194);

-- --------------------------------------------------------

-- 
-- Table structure for table `ObjectTypes`
-- 

CREATE TABLE `ObjectTypes` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `ObjectTypes`
-- 

INSERT INTO `ObjectTypes` VALUES (0000000001, 'Archetype');

-- --------------------------------------------------------

-- 
-- Table structure for table `ProductCategories`
-- 

CREATE TABLE `ProductCategories` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `ParentCateogry_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ParentCateogry_ID` (`ParentCateogry_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `ProductCategories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Products`
-- 

CREATE TABLE `Products` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `ProductCategory_ID` int(10) unsigned zerofill default NULL,
  `ObjectType_ID` int(10) unsigned zerofill default NULL,
  `Object_ID` int(10) unsigned zerofill default NULL,
  `Label` varchar(50) NOT NULL default '',
  `IsArchetype` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Instances` tinyint(4) unsigned zerofill NOT NULL default '0001',
  `RequiredObjectType_ID` int(10) unsigned zerofill default NULL,
  `RequiredObject_ID` int(10) unsigned zerofill default NULL,
  `RequiredObjectCondition` varchar(50) NOT NULL default '',
  `CashCost` smallint(5) unsigned zerofill NOT NULL default '00000',
  `GoldCost` smallint(5) unsigned zerofill NOT NULL default '00000',
  `Active` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ProductCategory_ID` (`ProductCategory_ID`),
  KEY `RequireObjectType_ID` (`RequiredObjectType_ID`),
  KEY `ObjectType_ID` (`ObjectType_ID`)
) TYPE=InnoDB AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `Products`
-- 

INSERT INTO `Products` VALUES (0000000001, NULL, 0000000001, 0000000004, 'Man In Chain (House Creation AT)', 1, 0001, NULL, NULL, '', 00000, 00000, 0);
INSERT INTO `Products` VALUES (0000000002, NULL, 0000000001, 0000000007, 'Woman with Quaterstaff (House Creation AT)', 1, 0001, NULL, NULL, '', 00000, 00000, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `Results`
-- 

CREATE TABLE `Results` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Archetype_ID` int(11) unsigned zerofill default NULL,
  `Odd_Page` tinyint(3) unsigned zerofill NOT NULL default '000',
  `Name` varchar(40) NOT NULL default '',
  `Message` varchar(250) NOT NULL default '',
  `GfxLocation` varchar(50) NOT NULL default '',
  `Score` tinyint(4) default NULL,
  `ScoreSpecial` tinyint(4) default NULL,
  `ScoreSpecialState_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Archetype_ID` (`Archetype_ID`),
  KEY `Odd_Page` (`Odd_Page`)
) TYPE=InnoDB AUTO_INCREMENT=225 ;

-- 
-- Dumping data for table `Results`
-- 

INSERT INTO `Results` VALUES (0000000001, 00000000001, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000002, 00000000001, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000003, 00000000001, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000004, 00000000001, 007, 'Dazed', '', '', 6, NULL, NULL);
INSERT INTO `Results` VALUES (0000000005, 00000000001, 009, 'Hooking Shield', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000006, 00000000001, 011, 'Hooking Leg', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000007, 00000000001, 013, 'Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000008, 00000000001, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000009, 00000000001, 017, 'Kicked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000010, 00000000001, 019, 'Knocked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000011, 00000000001, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000012, 00000000001, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000013, 00000000001, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000014, 00000000001, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000015, 00000000001, 029, 'Ducking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000016, 00000000001, 031, 'Arm Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000017, 00000000001, 033, 'Dodging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000018, 00000000001, 035, 'Extended Range Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000019, 00000000001, 037, 'Jumping Up', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000020, 00000000001, 039, 'Charging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000021, 00000000001, 041, 'Knocked Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000022, 00000000001, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000023, 00000000001, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000024, 00000000001, 047, 'Extended Range Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000025, 00000000001, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000026, 00000000001, 051, 'Extended Range Swinging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000027, 00000000001, 053, 'Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000028, 00000000001, 055, 'Extended Range Hooking Leg', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000029, 00000000001, 057, 'Extended Range Blocking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000030, 00000000001, 059, 'Extended Range Arm Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000031, 00000000001, 061, 'Extended Range Dodging', 'Any scoring Charge or Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000032, 00000000001, 063, 'Weapon Broken', 'Your Weapon is Broken! For the rest of the game 5 points will be subtracted from all scoring moves (except for Kick).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000033, 00000000002, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 1 point.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000034, 00000000002, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000035, 00000000002, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000036, 00000000002, 007, 'Dazed', '', '', 7, NULL, NULL);
INSERT INTO `Results` VALUES (0000000037, 00000000002, 009, 'Thrusting High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000038, 00000000002, 011, 'Thrusting Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000039, 00000000002, 013, 'Leg Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000040, 00000000002, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000041, 00000000002, 017, 'Blocking High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000042, 00000000002, 019, 'Struck Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000043, 00000000002, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000044, 00000000002, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000045, 00000000002, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000046, 00000000002, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000047, 00000000002, 029, 'Ducking', 'Any scoring Blue move you do next turn will damage your opponent by an additional 1 point.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000048, 00000000002, 031, 'Arm Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000049, 00000000002, 033, 'Dodging', 'Any scoring Down or Side Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000050, 00000000002, 035, 'Extended Range Body Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000051, 00000000002, 037, 'Jumping Up', 'Any scoring Orange move you do next turn will damage your opponent by an additional 3 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000052, 00000000002, 039, 'Charging', 'Any scoring Down Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000053, 00000000002, 041, 'Knocked Down', '', '', 1, NULL, NULL);
INSERT INTO `Results` VALUES (0000000054, 00000000002, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000055, 00000000002, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000056, 00000000002, 047, 'Extended Range Leg Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000057, 00000000002, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000058, 00000000002, 051, 'Kicked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000059, 00000000002, 053, 'Body Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000060, 00000000002, 055, 'Shield Smashed', 'Your Shield is Smashed! For the rest of the game you cannot do any Blocks or Protected Attacks.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000061, 00000000002, 057, 'Extended Range Blocking and Attacking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000062, 00000000002, 059, 'Pushed Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000063, 00000000002, 061, 'Extended Range Dodging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000064, 00000000002, 063, 'Blocking Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000065, 00000000003, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000066, 00000000003, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000067, 00000000003, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000068, 00000000003, 007, 'Dazed', 'If you were damaged this turn then you gain an additional Adrenaline Bonus of 1 point to all scoring moves until further notice. These bonuses are cumulative.', '', 6, NULL, NULL);
INSERT INTO `Results` VALUES (0000000069, 00000000003, 009, 'Thrusting High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000070, 00000000003, 011, 'Thrusting Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000071, 00000000003, 013, 'Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000072, 00000000003, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000073, 00000000003, 017, 'Blocking', '', '', -2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000074, 00000000003, 019, 'Knocked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000075, 00000000003, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000076, 00000000003, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000077, 00000000003, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000078, 00000000003, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing). Your Adrenaline has ended! All accumulated bonuses are removed from game.', '', -6, NULL, NULL);
INSERT INTO `Results` VALUES (0000000079, 00000000003, 029, 'Ducking', 'Any scoring Blue move you do next turn will damage your opponent by an additional 1 point.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000080, 00000000003, 031, 'Arm Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000081, 00000000003, 033, 'Dodging', 'Any scoring Tail Whip you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000082, 00000000003, 035, 'Extended Range Body Wound', 'If you were damaged this turn then you gain an additional Adrenaline Bonus of 1 point to all scoring moves until further notice. These bonuses are cumulative.', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000083, 00000000003, 037, 'Jumping Up', 'Any scoring Orange move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000084, 00000000003, 039, 'Charging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000085, 00000000003, 041, 'Knocked Down', 'Your Adrenaline has ended! All accumulated bonuses are removed from game.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000086, 00000000003, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000087, 00000000003, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000088, 00000000003, 047, 'Extended Range Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000089, 00000000003, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000090, 00000000003, 051, 'Kicked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000091, 00000000003, 053, 'Body Wound', 'If you were damaged this turn then you gain an additional Adrenaline Bonus of 1 point to all scoring moves until further notice. These bonuses are cumulative.', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000092, 00000000003, 055, 'Shield Smashed', 'Your Shield is Smashed! For the rest of the game you cannot do any Blocks or Protected Attacks.', '', 1, NULL, NULL);
INSERT INTO `Results` VALUES (0000000093, 00000000003, 057, 'Extended Range Blocking', 'Your Adrenaline has ended! All accumulated bonuses are removed from game.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000094, 00000000003, 059, 'Pushed Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000095, 00000000003, 061, 'Extended Range Dodging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000096, 00000000003, 063, 'Tail Whip', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000097, 00000000004, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000098, 00000000004, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000099, 00000000004, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000100, 00000000004, 007, 'Dazed', '', '', 6, NULL, NULL);
INSERT INTO `Results` VALUES (0000000101, 00000000004, 009, 'Thrusting High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000102, 00000000004, 011, 'Thrusting Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000103, 00000000004, 013, 'Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000104, 00000000004, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000105, 00000000004, 017, 'Blocking High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000106, 00000000004, 019, 'Struck Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000107, 00000000004, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000108, 00000000004, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000109, 00000000004, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000110, 00000000004, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000111, 00000000004, 029, 'Ducking', 'Any scoring Blue move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000112, 00000000004, 031, 'Arm Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000113, 00000000004, 033, 'Dodging', 'Any scoring Down or Side Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000114, 00000000004, 035, 'Extended Range Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000115, 00000000004, 037, 'Jumping Up', 'Any scoring Orange move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000116, 00000000004, 039, 'Charging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000117, 00000000004, 041, 'Knocked Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000118, 00000000004, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000119, 00000000004, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000120, 00000000004, 047, 'Extended Range Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000121, 00000000004, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000122, 00000000004, 051, 'Kicked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000123, 00000000004, 053, 'Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000124, 00000000004, 055, 'Shield Smashed', 'Your Shield is Smashed! For the rest of the game you cannot do any Blocks or Protected Attacks.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000125, 00000000004, 057, 'Extended Range Blocking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000126, 00000000004, 059, 'Pushed Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000127, 00000000004, 061, 'Extended Range Dodging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000128, 00000000004, 063, 'Blocking Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000129, 00000000005, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 3 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000130, 00000000005, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000131, 00000000005, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000132, 00000000005, 007, 'Dazed', '', '', 6, NULL, NULL);
INSERT INTO `Results` VALUES (0000000133, 00000000005, 009, 'Thrusting High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000134, 00000000005, 011, 'Thrusting Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000135, 00000000005, 013, 'Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000136, 00000000005, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000137, 00000000005, 017, 'Kicked Off Balance', '', '', -1, NULL, NULL);
INSERT INTO `Results` VALUES (0000000138, 00000000005, 019, 'Off Balance', '', '', -1, NULL, NULL);
INSERT INTO `Results` VALUES (0000000139, 00000000005, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000140, 00000000005, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000141, 00000000005, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000142, 00000000005, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000143, 00000000005, 029, 'Ducking', 'Any scoring Blue move you do next turn will damage your opponent by an additional 3 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000144, 00000000005, 031, 'Arm Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000145, 00000000005, 033, 'Dodging', 'Any scoring move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000146, 00000000005, 035, 'Extended Range Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000147, 00000000005, 037, 'Jumping Up', 'Any scoring Orange move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000148, 00000000005, 039, 'Charging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000149, 00000000005, 041, 'Knocked Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000150, 00000000005, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000151, 00000000005, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000152, 00000000005, 047, 'Extended Range Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000153, 00000000005, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000154, 00000000005, 051, 'Extended Range Attacking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000155, 00000000005, 053, 'Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000156, 00000000005, 055, 'Splitting Helm', 'For the rest of the game, any scoring move you do whilst your opponent is Dazed (or equivalent) will damage them by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000157, 00000000005, 057, 'Extended Range Blocking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000158, 00000000005, 059, 'Spinning and Slashing', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000159, 00000000005, 061, 'Extended Range Dodging', 'Any scoring Charge or Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000160, 00000000005, 063, 'Block and Strike', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000161, 00000000006, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000162, 00000000006, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000163, 00000000006, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000164, 00000000006, 007, 'Dazed', '', '', 7, NULL, NULL);
INSERT INTO `Results` VALUES (0000000165, 00000000006, 009, 'Thrusting High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000166, 00000000006, 011, 'Thrusting Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000167, 00000000006, 013, 'Leg Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000168, 00000000006, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000169, 00000000006, 017, 'Blocking High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000170, 00000000006, 019, 'Struck Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000171, 00000000006, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000172, 00000000006, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000173, 00000000006, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000174, 00000000006, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000175, 00000000006, 029, 'Ducking and Retrieving Bones', 'You have restored 1 point of Health.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000176, 00000000006, 031, 'Arm Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000177, 00000000006, 033, 'Dodging', 'Any scoring Down or Side Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000178, 00000000006, 035, 'Extended Range Body Wound', '', '', 5, NULL, NULL);
INSERT INTO `Results` VALUES (0000000179, 00000000006, 037, 'Jumping Up', 'Any scoring Orange move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000180, 00000000006, 039, 'Charging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000181, 00000000006, 041, 'Knocked Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000182, 00000000006, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000183, 00000000006, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000184, 00000000006, 047, 'Extended Range Leg Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000185, 00000000006, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000186, 00000000006, 051, 'Kicked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000187, 00000000006, 053, 'Body Wound', '', '', 5, NULL, NULL);
INSERT INTO `Results` VALUES (0000000188, 00000000006, 055, 'Shield Smashed', 'Your Shield is Smashed! For the rest of the game you cannot do any Blocks or Protected Attacks.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000189, 00000000006, 057, 'Extended Range Blocking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000190, 00000000006, 059, 'Pushed Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000191, 00000000006, 061, 'Extended Range Dodging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000192, 00000000006, 063, 'Blocking Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000193, 00000000007, 001, 'Jumping Away', 'Any scoring move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000194, 00000000007, 003, 'Swinging High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000195, 00000000007, 005, 'Swinging Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000196, 00000000007, 007, 'Dazed', '', '', 8, NULL, NULL);
INSERT INTO `Results` VALUES (0000000197, 00000000007, 009, 'Thrusting High', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000198, 00000000007, 011, 'Thrusting Low', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000199, 00000000007, 013, 'Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000200, 00000000007, 015, 'Swinging Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000201, 00000000007, 017, 'Kicked Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000202, 00000000007, 019, 'Struck Off Balance', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000203, 00000000007, 021, 'Turned Around', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000204, 00000000007, 023, 'Behind You', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000205, 00000000007, 025, 'Kicking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000206, 00000000007, 027, 'Weapon Dislodged', 'Until your Weapon is retrieved your moves will be restricted to: Kick, Green and Yellow (Except Wild Swing).', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000207, 00000000007, 029, 'Ducking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000208, 00000000007, 031, 'Arm Wound', '', '', 2, NULL, NULL);
INSERT INTO `Results` VALUES (0000000209, 00000000007, 033, 'Dodging', 'Any scoring Down or Side Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000210, 00000000007, 035, 'Extended Range Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000211, 00000000007, 037, 'Jumping Up', 'Any scoring Orange move you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000212, 00000000007, 039, 'Charging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000213, 00000000007, 041, 'Knocked Down', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000214, 00000000007, 043, 'Retrieving Weapon', 'You may use your Weapon again.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000215, 00000000007, 045, 'Parrying High', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000216, 00000000007, 047, 'Extended Range Leg Wound', '', '', 3, NULL, NULL);
INSERT INTO `Results` VALUES (0000000217, 00000000007, 049, 'Parrying Low', '', '', -4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000218, 00000000007, 051, 'Extended Range Swinging', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000219, 00000000007, 053, 'Body Wound', '', '', 4, NULL, NULL);
INSERT INTO `Results` VALUES (0000000220, 00000000007, 055, 'Extended Range Thrusting', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000221, 00000000007, 057, 'Extended Range Blocking', '', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000222, 00000000007, 059, 'Blocking', '', '', -5, NULL, NULL);
INSERT INTO `Results` VALUES (0000000223, 00000000007, 061, 'Extended Range Dodging', 'Any scoring Charge or Swing you do next turn will damage your opponent by an additional 2 points.', '', 0, NULL, NULL);
INSERT INTO `Results` VALUES (0000000224, 00000000007, 063, 'Weapon Broken', 'Your Weapon is Broken! For the rest of the game 2 points will be subtracted from all scoring moves, cumulative, (except for Kick).', '', 0, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `Results_Conditions`
-- 

CREATE TABLE `Results_Conditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Results_ID` int(10) unsigned zerofill default NULL,
  `Conditions_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Duration` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  KEY `Results_ID` (`Results_ID`),
  KEY `Conditions_ID` (`Conditions_ID`)
) TYPE=InnoDB AUTO_INCREMENT=324 ;

-- 
-- Dumping data for table `Results_Conditions`
-- 

INSERT INTO `Results_Conditions` VALUES (0000000001, 0000000002, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000002, 0000000002, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000003, 0000000002, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000004, 0000000003, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000005, 0000000003, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000006, 0000000003, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000007, 0000000004, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000008, 0000000004, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000009, 0000000005, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000010, 0000000006, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000011, 0000000006, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000012, 0000000007, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000013, 0000000007, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000014, 0000000008, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000015, 0000000009, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000016, 0000000009, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000017, 0000000010, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000018, 0000000010, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000019, 0000000011, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000020, 0000000013, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000021, 0000000013, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000026, 0000000015, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000027, 0000000016, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000028, 0000000016, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000029, 0000000018, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000030, 0000000019, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000031, 0000000020, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000032, 0000000020, 0000000012, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000033, 0000000021, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000034, 0000000021, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000035, 0000000022, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000036, 0000000024, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000037, 0000000026, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000038, 0000000026, 0000000013, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000039, 0000000027, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000040, 0000000027, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000041, 0000000028, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000042, 0000000028, 0000000014, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000044, 0000000030, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000046, 0000000032, 0000000001, 0, 0, -1);
INSERT INTO `Results_Conditions` VALUES (0000000047, 0000000032, 0000000028, 0, 0, -1);
INSERT INTO `Results_Conditions` VALUES (0000000048, 0000000034, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000049, 0000000034, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000050, 0000000035, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000051, 0000000035, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000052, 0000000036, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000053, 0000000037, 0000000022, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000054, 0000000037, 0000000023, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000055, 0000000038, 0000000022, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000056, 0000000038, 0000000023, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000057, 0000000038, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000058, 0000000039, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000059, 0000000039, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000060, 0000000040, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000061, 0000000041, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000062, 0000000042, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000063, 0000000042, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000064, 0000000043, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000065, 0000000045, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000066, 0000000045, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000071, 0000000047, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000072, 0000000048, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000073, 0000000048, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000074, 0000000050, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000075, 0000000051, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000076, 0000000052, 0000000012, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000077, 0000000052, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000078, 0000000053, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000079, 0000000053, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000080, 0000000054, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000081, 0000000056, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000082, 0000000058, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000083, 0000000058, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000084, 0000000059, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000085, 0000000059, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000090, 0000000062, 0000000012, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000091, 0000000062, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000093, 0000000064, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000094, 0000000066, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000095, 0000000066, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000096, 0000000066, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000097, 0000000067, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000098, 0000000067, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000099, 0000000067, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000100, 0000000068, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000101, 0000000069, 0000000022, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000102, 0000000069, 0000000023, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000103, 0000000070, 0000000022, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000104, 0000000070, 0000000023, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000105, 0000000070, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000106, 0000000071, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000107, 0000000071, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000108, 0000000071, 0000000024, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000109, 0000000072, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000110, 0000000072, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000111, 0000000073, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000112, 0000000074, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000113, 0000000074, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000114, 0000000074, 0000000024, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000115, 0000000075, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000116, 0000000075, 0000000025, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000117, 0000000077, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000118, 0000000077, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000119, 0000000077, 0000000024, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000124, 0000000079, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000125, 0000000079, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000126, 0000000080, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000127, 0000000080, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000128, 0000000081, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000129, 0000000081, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000130, 0000000082, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000131, 0000000082, 0000000026, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000132, 0000000083, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000133, 0000000084, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000134, 0000000084, 0000000012, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000135, 0000000085, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000136, 0000000085, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000137, 0000000086, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000138, 0000000086, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000139, 0000000088, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000140, 0000000090, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000141, 0000000090, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000142, 0000000091, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000143, 0000000091, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000148, 0000000094, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000149, 0000000094, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000151, 0000000096, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000152, 0000000096, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000153, 0000000098, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000154, 0000000098, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000155, 0000000098, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000156, 0000000099, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000157, 0000000099, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000158, 0000000099, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000159, 0000000100, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000160, 0000000101, 0000000022, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000161, 0000000101, 0000000023, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000162, 0000000102, 0000000022, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000163, 0000000102, 0000000023, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000164, 0000000102, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000165, 0000000103, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000166, 0000000103, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000167, 0000000104, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000168, 0000000105, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000169, 0000000106, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000170, 0000000106, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000171, 0000000107, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000172, 0000000109, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000173, 0000000109, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000178, 0000000111, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000179, 0000000112, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000180, 0000000112, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000181, 0000000114, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000182, 0000000115, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000183, 0000000116, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000184, 0000000116, 0000000012, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000185, 0000000117, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000186, 0000000117, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000187, 0000000120, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000188, 0000000122, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000189, 0000000122, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000190, 0000000123, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000191, 0000000123, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000196, 0000000126, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000197, 0000000126, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000199, 0000000128, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000200, 0000000130, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000201, 0000000130, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000202, 0000000131, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000203, 0000000131, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000204, 0000000132, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000205, 0000000132, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000206, 0000000133, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000207, 0000000133, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000208, 0000000134, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000209, 0000000135, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000210, 0000000135, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000211, 0000000136, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000212, 0000000137, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000213, 0000000137, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000214, 0000000138, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000215, 0000000138, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000216, 0000000139, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000217, 0000000139, 0000000027, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000218, 0000000141, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000219, 0000000141, 0000000001, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000220, 0000000141, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000225, 0000000143, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000226, 0000000144, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000227, 0000000144, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000228, 0000000146, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000229, 0000000147, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000230, 0000000147, 0000000009, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000231, 0000000148, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000232, 0000000148, 0000000012, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000233, 0000000149, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000234, 0000000149, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000235, 0000000150, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000236, 0000000152, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000237, 0000000154, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000238, 0000000154, 0000000013, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000239, 0000000155, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000240, 0000000155, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000242, 0000000158, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000243, 0000000158, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000245, 0000000160, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000246, 0000000162, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000247, 0000000163, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000248, 0000000164, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000249, 0000000164, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000250, 0000000166, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000251, 0000000167, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000252, 0000000169, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000253, 0000000170, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000254, 0000000170, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000255, 0000000171, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000256, 0000000173, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000261, 0000000175, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000262, 0000000176, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000263, 0000000178, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000264, 0000000179, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000265, 0000000180, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000266, 0000000181, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000267, 0000000181, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000268, 0000000184, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000269, 0000000186, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000270, 0000000186, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000271, 0000000187, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000272, 0000000187, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000277, 0000000190, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000278, 0000000190, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000280, 0000000192, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000281, 0000000194, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000282, 0000000195, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000283, 0000000196, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000284, 0000000196, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000285, 0000000198, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000286, 0000000199, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000287, 0000000199, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000288, 0000000200, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000289, 0000000201, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000290, 0000000201, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000291, 0000000202, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000292, 0000000202, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000293, 0000000203, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000294, 0000000203, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000295, 0000000205, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000296, 0000000205, 0000000008, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000301, 0000000207, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000302, 0000000208, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000303, 0000000208, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000304, 0000000210, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000305, 0000000211, 0000000003, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000306, 0000000212, 0000000006, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000307, 0000000212, 0000000007, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000308, 0000000213, 0000000004, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000309, 0000000213, 0000000029, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000310, 0000000214, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000311, 0000000216, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000312, 0000000218, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000314, 0000000219, 0000000002, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000315, 0000000219, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000316, 0000000220, 0000000011, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000317, 0000000220, 0000000014, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000319, 0000000222, 0000000005, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000321, 0000000034, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000322, 0000000035, 0000000028, 0, 0, 1);
INSERT INTO `Results_Conditions` VALUES (0000000323, 0000000218, 0000000013, 0, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `Results_Redirects`
-- 

CREATE TABLE `Results_Redirects` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Results_ID` int(10) unsigned zerofill default NULL,
  `Required_Results_Odd_Page` tinyint(3) unsigned zerofill default NULL,
  `Required_SpecialStates_ID` int(10) unsigned zerofill default NULL,
  `Redirect_Results_Odd_Page` tinyint(3) unsigned zerofill default '000',
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Redirect_SpecialStates_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Results_ID` (`Results_ID`),
  KEY `Redirect_Results_Odd_Page` (`Redirect_Results_Odd_Page`),
  KEY `Redirect_SpecialStates_ID` (`Redirect_SpecialStates_ID`)
) TYPE=InnoDB AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `Results_Redirects`
-- 

INSERT INTO `Results_Redirects` VALUES (0000000001, 0000000005, 053, NULL, 055, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000002, 0000000006, 013, NULL, 041, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000003, 0000000028, 047, NULL, 041, 0, 0, 0000000014);
INSERT INTO `Results_Redirects` VALUES (0000000004, 0000000096, NULL, NULL, 041, 1, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000005, 0000000096, NULL, 0000000011, 041, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000006, 0000000096, NULL, 0000000002, 041, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000007, 0000000130, 053, NULL, 007, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000008, 0000000131, 013, NULL, 053, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000009, 0000000133, 053, NULL, 007, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000010, 0000000134, 013, NULL, 053, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000013, 0000000158, 053, NULL, 007, 0, 0, NULL);
INSERT INTO `Results_Redirects` VALUES (0000000014, 0000000222, NULL, 0000000010, 019, 0, 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `Results_Score_Mods`
-- 

CREATE TABLE `Results_Score_Mods` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Results_ID` int(10) unsigned zerofill default NULL,
  `Score_Mods_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Duration` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  KEY `Results_ID` (`Results_ID`),
  KEY `Score_Mods_ID` (`Score_Mods_ID`)
) TYPE=InnoDB AUTO_INCREMENT=46 ;

-- 
-- Dumping data for table `Results_Score_Mods`
-- 

INSERT INTO `Results_Score_Mods` VALUES (0000000001, 0000000001, 0000000001, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000002, 0000000031, 0000000002, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000003, 0000000031, 0000000003, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000004, 0000000031, 0000000004, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000005, 0000000032, 0000000005, 1, 0, -1);
INSERT INTO `Results_Score_Mods` VALUES (0000000006, 0000000033, 0000000006, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000007, 0000000047, 0000000010, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000008, 0000000049, 0000000014, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000009, 0000000049, 0000000015, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000010, 0000000049, 0000000008, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000011, 0000000049, 0000000009, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000012, 0000000051, 0000000007, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000013, 0000000052, 0000000008, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000014, 0000000052, 0000000009, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000015, 0000000065, 0000000001, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000016, 0000000079, 0000000010, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000017, 0000000081, 0000000011, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000018, 0000000083, 0000000012, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000019, 0000000097, 0000000001, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000020, 0000000111, 0000000013, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000021, 0000000113, 0000000014, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000022, 0000000113, 0000000015, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000023, 0000000113, 0000000008, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000024, 0000000113, 0000000009, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000025, 0000000115, 0000000012, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000026, 0000000129, 0000000016, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000027, 0000000143, 0000000017, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000028, 0000000145, 0000000001, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000029, 0000000147, 0000000012, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000030, 0000000159, 0000000002, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000031, 0000000159, 0000000003, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000032, 0000000159, 0000000004, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000033, 0000000161, 0000000001, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000034, 0000000177, 0000000008, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000035, 0000000177, 0000000009, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000036, 0000000177, 0000000014, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000037, 0000000177, 0000000015, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000038, 0000000179, 0000000012, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000039, 0000000193, 0000000001, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000040, 0000000209, 0000000008, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000041, 0000000209, 0000000014, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000042, 0000000211, 0000000012, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000043, 0000000223, 0000000002, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000044, 0000000223, 0000000003, 1, 0, 1);
INSERT INTO `Results_Score_Mods` VALUES (0000000045, 0000000223, 0000000004, 1, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `Results_SpecialStates`
-- 

CREATE TABLE `Results_SpecialStates` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Results_ID` int(10) unsigned zerofill default NULL,
  `SpecialStates_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Duration` tinyint(4) NOT NULL default '1',
  `Cumulative` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Results_ID` (`Results_ID`),
  KEY `SpecialStates_ID` (`SpecialStates_ID`)
) TYPE=InnoDB AUTO_INCREMENT=272 ;

-- 
-- Dumping data for table `Results_SpecialStates`
-- 

INSERT INTO `Results_SpecialStates` VALUES (0000000001, 0000000014, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000002, 0000000017, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000003, 0000000018, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000004, 0000000022, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000005, 0000000024, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000006, 0000000026, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000007, 0000000028, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000008, 0000000029, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000009, 0000000030, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000010, 0000000031, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000011, 0000000031, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000012, 0000000032, 0000000004, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000013, 0000000046, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000014, 0000000049, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000015, 0000000050, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000016, 0000000054, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000017, 0000000056, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000018, 0000000060, 0000000003, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000019, 0000000061, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000020, 0000000062, 0000000010, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000021, 0000000063, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000022, 0000000063, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000023, 0000000068, 0000000005, 0, 1, 1, 1);
INSERT INTO `Results_SpecialStates` VALUES (0000000024, 0000000075, 0000000006, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000025, 0000000078, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000026, 0000000078, 0000000006, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000027, 0000000082, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000028, 0000000082, 0000000005, 0, 1, 1, 1);
INSERT INTO `Results_SpecialStates` VALUES (0000000029, 0000000085, 0000000006, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000030, 0000000086, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000031, 0000000088, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000032, 0000000091, 0000000005, 0, 1, 1, 1);
INSERT INTO `Results_SpecialStates` VALUES (0000000033, 0000000092, 0000000003, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000034, 0000000093, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000035, 0000000093, 0000000006, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000036, 0000000094, 0000000010, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000037, 0000000095, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000038, 0000000095, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000039, 0000000110, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000040, 0000000113, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000041, 0000000114, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000042, 0000000118, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000043, 0000000120, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000044, 0000000124, 0000000003, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000045, 0000000125, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000046, 0000000126, 0000000010, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000047, 0000000127, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000048, 0000000127, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000049, 0000000142, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000050, 0000000145, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000051, 0000000146, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000052, 0000000150, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000053, 0000000152, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000054, 0000000154, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000055, 0000000156, 0000000008, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000056, 0000000157, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000057, 0000000159, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000058, 0000000159, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000059, 0000000174, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000060, 0000000175, 0000000009, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000061, 0000000177, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000062, 0000000178, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000063, 0000000182, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000064, 0000000184, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000065, 0000000188, 0000000003, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000066, 0000000189, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000067, 0000000190, 0000000010, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000068, 0000000191, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000069, 0000000191, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000070, 0000000206, 0000000001, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000071, 0000000209, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000072, 0000000210, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000073, 0000000214, 0000000002, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000074, 0000000216, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000075, 0000000218, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000076, 0000000220, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000077, 0000000221, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000078, 0000000223, 0000000013, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000079, 0000000223, 0000000011, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000080, 0000000224, 0000000004, 0, 0, -1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000081, 0000000224, 0000000012, 0, 0, -1, 1);
INSERT INTO `Results_SpecialStates` VALUES (0000000082, 0000000001, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000083, 0000000002, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000084, 0000000003, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000085, 0000000004, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000086, 0000000005, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000087, 0000000006, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000088, 0000000007, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000089, 0000000008, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000090, 0000000009, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000091, 0000000010, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000092, 0000000011, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000093, 0000000012, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000094, 0000000013, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000095, 0000000014, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000096, 0000000015, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000097, 0000000016, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000098, 0000000017, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000099, 0000000019, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000100, 0000000020, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000101, 0000000021, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000102, 0000000022, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000103, 0000000023, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000104, 0000000025, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000105, 0000000027, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000106, 0000000032, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000107, 0000000033, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000108, 0000000034, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000109, 0000000035, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000110, 0000000036, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000111, 0000000037, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000112, 0000000038, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000113, 0000000039, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000114, 0000000040, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000115, 0000000041, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000116, 0000000042, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000117, 0000000043, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000118, 0000000044, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000119, 0000000045, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000120, 0000000046, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000121, 0000000047, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000122, 0000000048, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000123, 0000000049, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000124, 0000000051, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000125, 0000000052, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000126, 0000000053, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000127, 0000000054, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000128, 0000000055, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000129, 0000000057, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000130, 0000000058, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000131, 0000000059, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000132, 0000000060, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000133, 0000000062, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000134, 0000000064, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000135, 0000000065, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000136, 0000000066, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000137, 0000000067, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000138, 0000000068, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000139, 0000000069, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000140, 0000000070, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000141, 0000000071, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000142, 0000000072, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000143, 0000000073, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000144, 0000000074, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000145, 0000000075, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000146, 0000000076, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000147, 0000000077, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000148, 0000000078, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000149, 0000000079, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000150, 0000000080, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000151, 0000000081, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000152, 0000000083, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000153, 0000000084, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000154, 0000000085, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000155, 0000000086, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000156, 0000000087, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000157, 0000000089, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000158, 0000000090, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000159, 0000000091, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000160, 0000000092, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000161, 0000000094, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000162, 0000000096, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000163, 0000000097, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000164, 0000000098, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000165, 0000000099, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000166, 0000000100, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000167, 0000000101, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000168, 0000000102, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000169, 0000000103, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000170, 0000000104, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000171, 0000000105, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000172, 0000000106, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000173, 0000000107, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000174, 0000000108, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000175, 0000000109, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000176, 0000000110, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000177, 0000000111, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000178, 0000000112, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000179, 0000000113, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000180, 0000000115, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000181, 0000000116, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000182, 0000000117, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000183, 0000000118, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000184, 0000000119, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000185, 0000000121, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000186, 0000000122, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000187, 0000000123, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000188, 0000000124, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000189, 0000000126, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000190, 0000000128, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000191, 0000000129, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000192, 0000000130, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000193, 0000000131, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000194, 0000000132, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000195, 0000000133, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000196, 0000000134, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000197, 0000000135, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000198, 0000000136, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000199, 0000000137, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000200, 0000000138, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000201, 0000000139, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000202, 0000000140, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000203, 0000000141, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000204, 0000000142, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000205, 0000000143, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000206, 0000000144, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000207, 0000000145, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000208, 0000000147, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000209, 0000000148, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000210, 0000000149, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000211, 0000000150, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000212, 0000000151, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000213, 0000000153, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000214, 0000000155, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000215, 0000000156, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000216, 0000000158, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000217, 0000000160, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000218, 0000000161, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000219, 0000000162, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000220, 0000000163, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000221, 0000000164, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000222, 0000000165, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000223, 0000000166, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000224, 0000000167, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000225, 0000000168, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000226, 0000000169, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000227, 0000000170, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000228, 0000000171, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000229, 0000000172, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000230, 0000000173, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000231, 0000000174, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000232, 0000000175, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000233, 0000000176, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000234, 0000000177, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000235, 0000000179, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000236, 0000000180, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000237, 0000000181, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000238, 0000000182, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000239, 0000000183, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000240, 0000000185, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000241, 0000000186, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000242, 0000000187, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000243, 0000000188, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000244, 0000000190, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000245, 0000000192, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000246, 0000000193, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000247, 0000000194, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000248, 0000000195, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000249, 0000000196, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000250, 0000000197, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000251, 0000000198, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000252, 0000000199, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000253, 0000000200, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000254, 0000000201, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000255, 0000000202, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000256, 0000000203, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000257, 0000000204, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000258, 0000000205, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000259, 0000000206, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000260, 0000000207, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000261, 0000000208, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000262, 0000000209, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000263, 0000000211, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000264, 0000000212, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000265, 0000000213, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000266, 0000000214, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000267, 0000000215, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000268, 0000000217, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000269, 0000000219, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000270, 0000000222, 0000000014, 0, 0, 1, 0);
INSERT INTO `Results_SpecialStates` VALUES (0000000271, 0000000224, 0000000014, 0, 0, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `Rewards`
-- 

CREATE TABLE `Rewards` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `ObjectType_ID` int(10) unsigned zerofill default NULL,
  `Object_ID` int(10) unsigned zerofill default NULL,
  `ExperienceValue` smallint(6) NOT NULL default '0',
  `GoldValue` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ObjectType_ID` (`ObjectType_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `Rewards`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Score_Mods`
-- 

CREATE TABLE `Score_Mods` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Value` smallint(6) NOT NULL default '0',
  `Description` varchar(50) NOT NULL default '',
  `Conditions_ID` int(10) unsigned zerofill default NULL,
  `JoinType` set('OR','AND','EACH') NOT NULL default 'OR',
  PRIMARY KEY  (`ID`),
  KEY `Conditions_ID` (`Conditions_ID`)
) TYPE=InnoDB AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `Score_Mods`
-- 

INSERT INTO `Score_Mods` VALUES (0000000001, 2, 'Add +2 if you Score next turn', NULL, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000002, 2, 'Add +2 to any Charge that Scores next turn', 0000000026, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000003, 2, 'Add +2 to any Swing that Scores next turn', 0000000031, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000004, 2, 'Add +2 to any Swing that Scores next turn', 0000000032, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000005, -5, 'Subtract -5 from all Scores (except Kick) for the', 0000000033, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000006, 1, 'Add +1 if you Score next turn', NULL, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000007, 3, 'Add +3 to any Orange that Scores next turn', 0000000034, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000008, 2, 'Add +2 to any Down Swing that Scores next turn', 0000000035, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000009, 2, 'Add +2 to any Down Swing that Scores next turn', 0000000036, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000010, 1, 'Add +1 to any Blue the Scores next turn', 0000000037, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000011, 2, 'Add +2 to any Tail Whip that Scores next turn', 0000000025, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000012, 2, 'Add +2 to any Orange that Scores next turn', 0000000034, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000013, 2, 'Add +2 to any Blue that Scores next turn', 0000000037, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000014, 2, 'Add +2 to any Side Swing that Scores next turn', 0000000038, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000015, 2, 'Add +2 to any Side Swing that Scores next turn', 0000000039, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000016, 3, 'Add +3 if you Score next turn', NULL, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000017, 3, 'Add +3 to any Blue that Scores next turn', 0000000037, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000018, -2, 'Subtract -2 from all Scores (except Kick), cumulat', 0000000033, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000019, 1, 'Add +1 to any Side Swing that Scores next turn', 0000000038, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000020, 1, 'Add +1 to any Side Swing that Scores next turn', 0000000039, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000021, 2, 'Add +2 to any Red that Scores next turn', 0000000040, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000022, 1, 'Add +1 to any Draw and Throw that Scores next turn', 0000000041, 'OR');
INSERT INTO `Score_Mods` VALUES (0000000023, 2, 'Add +2 to any Page 7 Score only, for the rest of t', 0000000042, 'OR');

-- --------------------------------------------------------

-- 
-- Table structure for table `SpecialStates`
-- 

CREATE TABLE `SpecialStates` (
  `ID` int(11) unsigned zerofill NOT NULL auto_increment,
  `Height_Mod` tinyint(4) NOT NULL default '0',
  `P1_HP_Mod` tinyint(4) NOT NULL default '0',
  `P2_HP_Mod` tinyint(4) NOT NULL default '0',
  `Name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `SpecialStates`
-- 

INSERT INTO `SpecialStates` VALUES (00000000001, 0, 0, 0, 'Weapon Dislodged');
INSERT INTO `SpecialStates` VALUES (00000000002, 0, 0, 0, 'Weapon Retrieved');
INSERT INTO `SpecialStates` VALUES (00000000003, 0, 0, 0, 'Shield Smashed');
INSERT INTO `SpecialStates` VALUES (00000000004, 0, 0, 0, 'Weapon Broken');
INSERT INTO `SpecialStates` VALUES (00000000005, 0, 0, 0, 'Adrenaline');
INSERT INTO `SpecialStates` VALUES (00000000006, 0, 0, 0, 'End Adrenaline');
INSERT INTO `SpecialStates` VALUES (00000000007, 0, 0, 0, 'No Helm');
INSERT INTO `SpecialStates` VALUES (00000000008, 0, 0, 0, 'Helm Split');
INSERT INTO `SpecialStates` VALUES (00000000009, 0, 1, 0, 'Restore 1 Body Point');
INSERT INTO `SpecialStates` VALUES (00000000010, 0, 0, 0, 'Pushed Off Balance');
INSERT INTO `SpecialStates` VALUES (00000000011, 0, 0, 0, 'Dodge');
INSERT INTO `SpecialStates` VALUES (00000000012, 0, 0, 0, 'Cumulative -2 to All');
INSERT INTO `SpecialStates` VALUES (00000000013, 0, 0, 0, 'Extended Range');
INSERT INTO `SpecialStates` VALUES (00000000014, 0, 0, 0, 'No Extended Range');
INSERT INTO `SpecialStates` VALUES (00000000015, 0, 0, 0, 'Escape');

-- --------------------------------------------------------

-- 
-- Table structure for table `SpecialStates_Conditions`
-- 

CREATE TABLE `SpecialStates_Conditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `SpecialStates_ID` int(10) unsigned zerofill default NULL,
  `Conditions_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SpecialStates_ID` (`SpecialStates_ID`),
  KEY `Conditions_ID` (`Conditions_ID`)
) TYPE=InnoDB AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `SpecialStates_Conditions`
-- 

INSERT INTO `SpecialStates_Conditions` VALUES (0000000001, 0000000013, 0000000015, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000002, 0000000014, 0000000043, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000003, 0000000001, 0000000009, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000004, 0000000001, 0000000007, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000005, 0000000001, 0000000006, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000006, 0000000001, 0000000010, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000007, 0000000003, 0000000019, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000008, 0000000003, 0000000020, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000009, 0000000003, 0000000021, 0, 0);
INSERT INTO `SpecialStates_Conditions` VALUES (0000000010, 0000000003, 0000000030, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `SpecialStates_Counteractors`
-- 

CREATE TABLE `SpecialStates_Counteractors` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `SpecialStates_ID` int(10) unsigned zerofill default NULL,
  `Removes_SpecialStates_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SpecialStates_ID` (`SpecialStates_ID`),
  KEY `Removes_SpecialStates_ID` (`Removes_SpecialStates_ID`)
) TYPE=InnoDB AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `SpecialStates_Counteractors`
-- 

INSERT INTO `SpecialStates_Counteractors` VALUES (0000000001, 0000000002, 0000000001, 0, 0);
INSERT INTO `SpecialStates_Counteractors` VALUES (0000000002, 0000000006, 0000000005, 0, 0);
INSERT INTO `SpecialStates_Counteractors` VALUES (0000000003, 0000000014, 0000000013, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `SpecialStates_Score_Mods`
-- 

CREATE TABLE `SpecialStates_Score_Mods` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `SpecialStates_ID` int(10) unsigned zerofill default NULL,
  `Score_Mods_ID` int(10) unsigned zerofill default NULL,
  `OnScore` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OnDamage` tinyint(1) unsigned zerofill NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SpecialStates_ID` (`SpecialStates_ID`),
  KEY `Score_Mods_ID` (`Score_Mods_ID`)
) TYPE=InnoDB AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `SpecialStates_Score_Mods`
-- 

INSERT INTO `SpecialStates_Score_Mods` VALUES (0000000001, 0000000008, 0000000023, 1, 0);
INSERT INTO `SpecialStates_Score_Mods` VALUES (0000000002, 0000000012, 0000000018, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `SubscriptionModels`
-- 

CREATE TABLE `SubscriptionModels` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Name` varchar(50) NOT NULL default '',
  `Description` blob NOT NULL,
  `Subscriptions` tinyint(3) unsigned zerofill NOT NULL default '000',
  `Licenses` tinyint(3) unsigned zerofill NOT NULL default '000',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `SubscriptionModels`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Subscriptions`
-- 

CREATE TABLE `Subscriptions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `User_ID` int(10) unsigned zerofill default NULL,
  `Created` varchar(11) NOT NULL default '',
  `Expires` varchar(11) NOT NULL default '',
  `IsLicense` tinyint(1) unsigned zerofill NOT NULL default '0',
  `OwningUser_ID` int(10) unsigned zerofill default NULL,
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`),
  KEY `OwningUser_ID` (`OwningUser_ID`)
) TYPE=InnoDB AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `Subscriptions`
-- 

INSERT INTO `Subscriptions` VALUES (0000000001, 0000000037, '1113526507', '1114526507', 0, NULL);
INSERT INTO `Subscriptions` VALUES (0000000002, 0000000038, '1113563821', '1114526507', 0, NULL);
INSERT INTO `Subscriptions` VALUES (0000000003, 0000000039, '1113563821', '1114526507', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `SystemTickets`
-- 

CREATE TABLE `SystemTickets` (
  `ID` int(11) NOT NULL auto_increment,
  `TicketID` varchar(32) NOT NULL default '',
  `Expire` int(11) unsigned NOT NULL default '0',
  `TicketAction` tinyint(3) unsigned NOT NULL default '0',
  `User_ID` int(10) NOT NULL default '0',
  `ObjectID` int(10) unsigned default NULL,
  `Processed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) TYPE=InnoDB AUTO_INCREMENT=40 ;

-- 
-- Dumping data for table `SystemTickets`
-- 

INSERT INTO `SystemTickets` VALUES (25, 'cb308db31776878674043fdc71ce5c4e', 1111599032, 0, 0, 0, 0);
INSERT INTO `SystemTickets` VALUES (29, '433e1fd453a588265124c6d9edf36c94', 1111599649, 0, 0, 0, 0);
INSERT INTO `SystemTickets` VALUES (30, 'ad3be10695f8da1e9dfe51e91cd2b6ee', 1111601478, 0, 0, 0, 0);
INSERT INTO `SystemTickets` VALUES (31, '99c6d3e9fc00dc37a44812d912153c98', 1111601977, 0, -1, 0, 0);
INSERT INTO `SystemTickets` VALUES (32, 'c6cb307a1cea90e765fb1dee72cefb17', 1111606327, 0, -1, 37, 1);
INSERT INTO `SystemTickets` VALUES (33, '393ab2df27282fef332b4253f18fb662', 1111611989, 0, -1, 38, 1);
INSERT INTO `SystemTickets` VALUES (34, '218b80ffaa0a6548d098fb074f358e43', 1112637684, 0, -1, 37, 1);
INSERT INTO `SystemTickets` VALUES (35, '24ae0301870fa5e0f4abdc744f080991', 1112637796, 0, -1, 37, 0);
INSERT INTO `SystemTickets` VALUES (36, '9ff5fd9d7f74b7d7a87d6666a4878ba5', 1112699567, 0, -1, 37, 1);
INSERT INTO `SystemTickets` VALUES (37, 'bfad7ea6812f086738d278e018aebe12', 1113304440, 1, -1, 37, 0);
INSERT INTO `SystemTickets` VALUES (38, 'ec46e1c81c0b98d40ab5eb8c926f1d2c', 1113331167, 0, -1, 37, 1);
INSERT INTO `SystemTickets` VALUES (39, '1cd217491065ab47d34961422d214b0a', 1113497665, 0, -1, 39, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `TransactionDiscounts`
-- 

CREATE TABLE `TransactionDiscounts` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Transaction_ID` int(10) unsigned zerofill default NULL,
  `Discount_ID` int(10) unsigned zerofill default NULL,
  `CashValue` smallint(5) unsigned zerofill NOT NULL default '00000',
  `GoldValue` smallint(5) unsigned zerofill NOT NULL default '00000',
  PRIMARY KEY  (`ID`),
  KEY `Transaction_ID` (`Transaction_ID`),
  KEY `Discount_ID` (`Discount_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `TransactionDiscounts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `TransactionItems`
-- 

CREATE TABLE `TransactionItems` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Transaction_ID` int(10) unsigned zerofill default NULL,
  `Product_ID` int(10) unsigned zerofill default NULL,
  `IntialisedObject_ID` int(10) unsigned zerofill default NULL,
  `CashCost` smallint(5) unsigned zerofill NOT NULL default '00000',
  `GoldCost` smallint(5) unsigned zerofill NOT NULL default '00000',
  PRIMARY KEY  (`ID`),
  KEY `Transaction_ID` (`Transaction_ID`),
  KEY `Product_ID` (`Product_ID`)
) TYPE=InnoDB AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `TransactionItems`
-- 

INSERT INTO `TransactionItems` VALUES (0000000001, 0000000001, 0000000001, 0000000015, 00000, 00000);
INSERT INTO `TransactionItems` VALUES (0000000002, 0000000001, 0000000002, 0000000018, 00000, 00000);
INSERT INTO `TransactionItems` VALUES (0000000003, 0000000002, 0000000001, NULL, 00000, 00000);
INSERT INTO `TransactionItems` VALUES (0000000004, 0000000002, 0000000002, 0000000020, 00000, 00000);
INSERT INTO `TransactionItems` VALUES (0000000005, 0000000001, 0000000001, 0000000019, 00000, 00000);
INSERT INTO `TransactionItems` VALUES (0000000006, 0000000003, 0000000001, 0000000016, 00000, 00000);
INSERT INTO `TransactionItems` VALUES (0000000007, 0000000003, 0000000002, 0000000017, 00000, 00000);

-- --------------------------------------------------------

-- 
-- Table structure for table `Transactions`
-- 

CREATE TABLE `Transactions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `User_ID` int(10) unsigned zerofill default NULL,
  `ExternalReference` varchar(50) NOT NULL default '',
  `Date` varchar(11) NOT NULL default '',
  `CashTotal` smallint(5) unsigned zerofill NOT NULL default '00000',
  `GoldTotal` smallint(5) unsigned zerofill NOT NULL default '00000',
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`)
) TYPE=InnoDB AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `Transactions`
-- 

INSERT INTO `Transactions` VALUES (0000000001, 0000000037, 'House Creation Assets (NO CHARGE)', '1113232812', 00000, 00000);
INSERT INTO `Transactions` VALUES (0000000002, 0000000039, 'House Creation Assets (NO CHARGE)', '1113238892', 00000, 00000);
INSERT INTO `Transactions` VALUES (0000000003, 0000000038, 'House Creation Assets (NO CHARGE)', '1113520205', 00000, 00000);

-- --------------------------------------------------------

-- 
-- Table structure for table `UserIPs`
-- 

CREATE TABLE `UserIPs` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `User_ID` int(10) unsigned zerofill default NULL,
  `IP` varchar(15) NOT NULL default '',
  `LastSeen` int(11) unsigned zerofill NOT NULL default '00000000000',
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`)
) TYPE=InnoDB AUTO_INCREMENT=61 ;

-- 
-- Dumping data for table `UserIPs`
-- 

INSERT INTO `UserIPs` VALUES (0000000037, 0000000037, '80.4.204.88', 01123862366);
INSERT INTO `UserIPs` VALUES (0000000038, 0000000038, '81.77.143.130', 01111352789);
INSERT INTO `UserIPs` VALUES (0000000039, 0000000039, '81.77.149.122', 01113238578);
INSERT INTO `UserIPs` VALUES (0000000040, 0000000039, '81.79.178.82', 01113479653);
INSERT INTO `UserIPs` VALUES (0000000041, 0000000038, '81.79.178.82', 01113520592);
INSERT INTO `UserIPs` VALUES (0000000042, 0000000038, '80.4.204.88', 01113520564);
INSERT INTO `UserIPs` VALUES (0000000043, 0000000039, '84.66.216.189', 01113564210);
INSERT INTO `UserIPs` VALUES (0000000044, 0000000038, '84.66.216.189', 01113581569);
INSERT INTO `UserIPs` VALUES (0000000045, 0000000039, '81.79.170.45', 01113749547);
INSERT INTO `UserIPs` VALUES (0000000046, 0000000038, '81.79.170.45', 01113768426);
INSERT INTO `UserIPs` VALUES (0000000047, 0000000039, '84.66.190.199', 01115136352);
INSERT INTO `UserIPs` VALUES (0000000048, 0000000039, '84.67.157.33', 01115761304);
INSERT INTO `UserIPs` VALUES (0000000049, 0000000039, '84.66.4.219', 01116863074);
INSERT INTO `UserIPs` VALUES (0000000050, 0000000039, '84.67.187.46', 01117029268);
INSERT INTO `UserIPs` VALUES (0000000051, 0000000039, '81.76.120.239', 01117811802);
INSERT INTO `UserIPs` VALUES (0000000052, 0000000039, '81.76.57.176', 01118244917);
INSERT INTO `UserIPs` VALUES (0000000053, 0000000039, '81.77.85.196', 01119893306);
INSERT INTO `UserIPs` VALUES (0000000054, 0000000039, '84.68.118.255', 01120413417);
INSERT INTO `UserIPs` VALUES (0000000055, 0000000039, '84.64.38.88', 01120480922);
INSERT INTO `UserIPs` VALUES (0000000056, 0000000039, '84.68.116.136', 01123959267);
INSERT INTO `UserIPs` VALUES (0000000057, 0000000039, '84.68.143.147', 01124464564);
INSERT INTO `UserIPs` VALUES (0000000058, 0000000039, '84.66.81.237', 01124829954);
INSERT INTO `UserIPs` VALUES (0000000059, 0000000039, '81.77.130.154', 01125064341);
INSERT INTO `UserIPs` VALUES (0000000060, 0000000039, '81.77.215.111', 01125408416);

-- --------------------------------------------------------

-- 
-- Table structure for table `UserSessions`
-- 

CREATE TABLE `UserSessions` (
  `SessionID` varchar(32) NOT NULL default '',
  `Expire` int(11) unsigned NOT NULL default '0',
  `User_ID` int(10) NOT NULL default '-1',
  `IP` varchar(15) NOT NULL default '',
  `Basket_ID` int(10) unsigned zerofill default NULL,
  `Game_ID` int(10) unsigned zerofill default NULL,
  `Zone_ID` int(10) unsigned zerofill default NULL,
  `QuerySQL` text,
  PRIMARY KEY  (`SessionID`)
) TYPE=InnoDB;

-- 
-- Dumping data for table `UserSessions`
-- 

INSERT INTO `UserSessions` VALUES ('0b773de5133c4cad16b35027549d207c', 1125409837, 39, '81.77.215.111', NULL, NULL, NULL, NULL);
INSERT INTO `UserSessions` VALUES ('9f5ddc343eb8a5b8c67c64de5620724a', 1125409859, 39, '81.77.215.111', NULL, NULL, 0000000001, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `Users`
-- 

CREATE TABLE `Users` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Email` varchar(80) NOT NULL default '',
  `Password` varchar(32) NOT NULL default '',
  `Handle` varchar(25) NOT NULL default '',
  `DoB` varchar(11) NOT NULL default '',
  `Title` set('Mr','Mrs','Ms','Miss','Dr') NOT NULL default '',
  `FirstName` varchar(30) NOT NULL default '',
  `LastName` varchar(50) NOT NULL default '',
  `Address1` varchar(40) NOT NULL default '',
  `Address2` varchar(40) NOT NULL default '',
  `City` varchar(40) NOT NULL default '',
  `State` varchar(40) NOT NULL default '',
  `ZIP` varchar(15) NOT NULL default '',
  `Country_ID` smallint(5) unsigned NOT NULL default '0',
  `CreatedDate` varchar(11) NOT NULL default '',
  `Status` tinyint(1) NOT NULL default '0',
  `LastActive` varchar(11) NOT NULL default '',
  `LastInGame` varchar(11) NOT NULL default '',
  `Gold` smallint(6) NOT NULL default '0',
  `HouseName` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `Country_ID` (`Country_ID`)
) TYPE=InnoDB AUTO_INCREMENT=40 ;

-- 
-- Dumping data for table `Users`
-- 

INSERT INTO `Users` VALUES (0000000037, 'ianstapleton@geekcubed.org', 'd18a8ac759e78345df741817696a402d', '|iAn|', '392184000', 'Mr', 'Ian', 'Stapleton', '33 Glendon Drive', 'Sherwood', 'Nottingham', 'Notts.', 'NG5 1FN', 218, '1111347127', 1, '1123862366', '1123433824', 0, 'Woopy Wooo Wizz woo');
INSERT INTO `Users` VALUES (0000000038, 'tos@vwgn.com', 'd8dd4521e069b47c72ebf182bed9fdb2', 'Edward of Carillion', '-14462', 'Mr', 'T', 'Ewen', 'My Street Address', '', 'My Town', 'My State', 'My Zip', 219, '1111352789', 1, '1113768426', '', 0, 'Carillion');
INSERT INTO `Users` VALUES (0000000039, 'corrie@worldofmyown.co.uk', '1e17348c328d1054332e9f1d163a48ea', 'lokeh', '294811200', 'Miss', 'Corrie', 'Allan', '17 Exeter Road', '', 'Crediton', 'Devon', 'EX17 3BL', 219, '1113238465', 1, '1125408394', '1125408416', 0, 'Monty Python’s Flying Circus');

-- --------------------------------------------------------

-- 
-- Table structure for table `Users_ContactHistory`
-- 

CREATE TABLE `Users_ContactHistory` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `User_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Handle` varchar(25) NOT NULL default '',
  `DoB` varchar(11) NOT NULL default '',
  `Title` set('Mr','Mrs','Ms','Miss','Dr') NOT NULL default '',
  `FirstName` varchar(30) NOT NULL default '',
  `LastName` varchar(50) NOT NULL default '',
  `Address1` varchar(40) NOT NULL default '',
  `Address2` varchar(40) NOT NULL default '',
  `City` varchar(40) NOT NULL default '',
  `State` varchar(40) NOT NULL default '',
  `ZIP` varchar(15) NOT NULL default '',
  `Country_ID` smallint(5) unsigned NOT NULL default '0',
  `UpdatedDate` timestamp(14) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`)
) TYPE=InnoDB AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `Users_ContactHistory`
-- 

INSERT INTO `Users_ContactHistory` VALUES (0000000003, 0000000037, '', '392256000', 'Mr', 'Ian', 'Stapleton', '33 Glendon Drive', '', 'Nottingham', 'Notts.', 'NG5 1FN', 219, '20050409121738');
INSERT INTO `Users_ContactHistory` VALUES (0000000004, 0000000037, '|iAn|', '392169600', 'Mr', 'Ian', 'Stapleton', '33 Glendon Drive', 'Sherwood', 'Nottingham', 'Notts.', 'NG5 1FN', 218, '20050409122830');
INSERT INTO `Users_ContactHistory` VALUES (0000000005, 0000000037, '|iAn|', '392184000', 'Mr', 'Ian', 'Stapleton', '33 Glendon Drive', 'Sherwood', 'Nottingham', 'Notts.', 'NG5 1FN', 218, '20050409123004');
INSERT INTO `Users_ContactHistory` VALUES (0000000006, 0000000038, 'Edward of Carillion', '-32462', 'Mr', 'T', 'Ewen', 'My Street Address', '', 'My Town', 'My State', 'My Zip', 219, '20050414190950');
INSERT INTO `Users_ContactHistory` VALUES (0000000007, 0000000038, 'Edward of Carillion', '-14462', 'Mr', 'T', 'Ewen', 'My Street Address', '', 'My Town', 'My State', 'My Zip', 219, '20050414191953');

-- --------------------------------------------------------

-- 
-- Table structure for table `Users_EmailHistory`
-- 

CREATE TABLE `Users_EmailHistory` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `User_ID` int(10) unsigned zerofill NOT NULL default '0000000000',
  `Email` varchar(80) NOT NULL default '',
  `UpdatedDate` timestamp(14) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `User_ID` (`User_ID`)
) TYPE=InnoDB AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `Users_EmailHistory`
-- 

INSERT INTO `Users_EmailHistory` VALUES (0000000001, 0000000037, 'iAn@dodnetwork.com', '20050409143927');

-- --------------------------------------------------------

-- 
-- Table structure for table `ZoneConditions`
-- 

CREATE TABLE `ZoneConditions` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `Zone_ID` int(10) unsigned zerofill default NULL,
  `ObjectType_ID` int(10) unsigned zerofill default NULL,
  `Object_ID` int(10) unsigned zerofill default NULL,
  `Prohibited` tinyint(1) unsigned zerofill NOT NULL default '0',
  `Required` tinyint(1) unsigned zerofill NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `Zone_ID` (`Zone_ID`),
  KEY `ObjectType_ID` (`ObjectType_ID`)
) TYPE=InnoDB AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `ZoneConditions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `Zones`
-- 

CREATE TABLE `Zones` (
  `ID` int(10) unsigned zerofill NOT NULL auto_increment,
  `ParentZone_ID` int(10) unsigned zerofill default NULL,
  `Name` varchar(50) NOT NULL default '',
  `Event_ID` int(10) unsigned zerofill default NULL,
  `Ranked` tinyint(1) unsigned zerofill NOT NULL default '1',
  `Restricted` tinyint(1) unsigned zerofill NOT NULL default '0',
  `RestrictedKey` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `ParentZone_ID` (`ParentZone_ID`),
  KEY `Event_ID` (`Event_ID`)
) TYPE=InnoDB AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `Zones`
-- 

INSERT INTO `Zones` VALUES (0000000001, NULL, 'Open Combat Zone', NULL, 1, 0, '');
INSERT INTO `Zones` VALUES (0000000002, NULL, 'Closed Zone', NULL, 0, 1, '349e686330723975502e9ef4f939a5ac');
INSERT INTO `Zones` VALUES (0000000004, NULL, 'Another Zone', NULL, 1, 0, '');
INSERT INTO `Zones` VALUES (0000000005, NULL, 'Zone 4', NULL, 0, 0, '');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `ArchetypeBodyLocations`
-- 
ALTER TABLE `ArchetypeBodyLocations`
  ADD CONSTRAINT `ArchetypeBodyLocations_ibfk_8` FOREIGN KEY (`Archetype_ID`) REFERENCES `Archetypes` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchetypeBodyLocations_ibfk_9` FOREIGN KEY (`BodyLocations_ID`) REFERENCES `BodyLocations` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

-- 
-- Constraints for table `ArchetypeRules`
-- 
ALTER TABLE `ArchetypeRules`
  ADD CONSTRAINT `ArchetypeRules_ibfk_1` FOREIGN KEY (`Mould_ID`) REFERENCES `Moulds` (`ID`),
  ADD CONSTRAINT `ArchetypeRules_ibfk_2` FOREIGN KEY (`Archetype_ID`) REFERENCES `Archetypes` (`ID`);

-- 
-- Constraints for table `Archetypes`
-- 
ALTER TABLE `Archetypes`
  ADD CONSTRAINT `Archetypes_ibfk_1` FOREIGN KEY (`HeightModifiedSpecialStates_ID`) REFERENCES `SpecialStates` (`ID`),
  ADD CONSTRAINT `Archetypes_ibfk_2` FOREIGN KEY (`RelatedProduct_ID`) REFERENCES `Products` (`ID`);

-- 
-- Constraints for table `AssignedRewards`
-- 
ALTER TABLE `AssignedRewards`
  ADD CONSTRAINT `AssignedRewards_ibfk_1` FOREIGN KEY (`Game_ID`) REFERENCES `Games` (`ID`),
  ADD CONSTRAINT `AssignedRewards_ibfk_2` FOREIGN KEY (`Character_ID`) REFERENCES `Characters` (`ID`),
  ADD CONSTRAINT `AssignedRewards_ibfk_3` FOREIGN KEY (`Reward_ID`) REFERENCES `Rewards` (`ID`);

-- 
-- Constraints for table `BasketDiscountLines`
-- 
ALTER TABLE `BasketDiscountLines`
  ADD CONSTRAINT `BasketDiscountLines_ibfk_1` FOREIGN KEY (`Basket_ID`) REFERENCES `Baskets` (`ID`),
  ADD CONSTRAINT `BasketDiscountLines_ibfk_2` FOREIGN KEY (`Discount_ID`) REFERENCES `Discounts` (`ID`);

-- 
-- Constraints for table `BasketProductLines`
-- 
ALTER TABLE `BasketProductLines`
  ADD CONSTRAINT `BasketProductLines_ibfk_1` FOREIGN KEY (`Basket_ID`) REFERENCES `Baskets` (`ID`),
  ADD CONSTRAINT `BasketProductLines_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Products` (`ID`);

-- 
-- Constraints for table `Baskets`
-- 
ALTER TABLE `Baskets`
  ADD CONSTRAINT `Baskets_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `CharacterExperience`
-- 
ALTER TABLE `CharacterExperience`
  ADD CONSTRAINT `CharacterExperience_ibfk_1` FOREIGN KEY (`Characters_id`) REFERENCES `Characters` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `Characters`
-- 
ALTER TABLE `Characters`
  ADD CONSTRAINT `Characters_ibfk_2` FOREIGN KEY (`Archetype_ID`) REFERENCES `Archetypes` (`ID`),
  ADD CONSTRAINT `Characters_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `ChatMessages`
-- 
ALTER TABLE `ChatMessages`
  ADD CONSTRAINT `ChatMessages_ibfk_4` FOREIGN KEY (`FromUser_ID`) REFERENCES `Users` (`ID`),
  ADD CONSTRAINT `ChatMessages_ibfk_5` FOREIGN KEY (`ToObjectType_ID`) REFERENCES `ObjectTypes` (`ID`);

-- 
-- Constraints for table `DiscountLines`
-- 
ALTER TABLE `DiscountLines`
  ADD CONSTRAINT `DiscountLines_ibfk_1` FOREIGN KEY (`Discount_ID`) REFERENCES `Discounts` (`ID`),
  ADD CONSTRAINT `DiscountLines_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Products` (`ID`);

-- 
-- Constraints for table `EventConditions`
-- 
ALTER TABLE `EventConditions`
  ADD CONSTRAINT `EventConditions_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`ID`),
  ADD CONSTRAINT `EventConditions_ibfk_2` FOREIGN KEY (`ObjectType_ID`) REFERENCES `ObjectTypes` (`ID`);

-- 
-- Constraints for table `EventRewards`
-- 
ALTER TABLE `EventRewards`
  ADD CONSTRAINT `EventRewards_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`ID`),
  ADD CONSTRAINT `EventRewards_ibfk_2` FOREIGN KEY (`Reward_ID`) REFERENCES `Rewards` (`ID`);

-- 
-- Constraints for table `GameTurns`
-- 
ALTER TABLE `GameTurns`
  ADD CONSTRAINT `GameTurns_ibfk_1` FOREIGN KEY (`Game_ID`) REFERENCES `Games` (`ID`),
  ADD CONSTRAINT `GameTurns_ibfk_2` FOREIGN KEY (`P1_Manuever_ID`) REFERENCES `Manuevers` (`ID`),
  ADD CONSTRAINT `GameTurns_ibfk_3` FOREIGN KEY (`P2_Manuever_ID`) REFERENCES `Manuevers` (`ID`),
  ADD CONSTRAINT `GameTurns_ibfk_4` FOREIGN KEY (`NextGameTurn_ID`) REFERENCES `GameTurns` (`ID`);

-- 
-- Constraints for table `GameTurns_Conditions`
-- 
ALTER TABLE `GameTurns_Conditions`
  ADD CONSTRAINT `GameTurns_Conditions_ibfk_2` FOREIGN KEY (`Game_ID`) REFERENCES `Games` (`ID`),
  ADD CONSTRAINT `GameTurns_Conditions_ibfk_3` FOREIGN KEY (`Conditions_ID`) REFERENCES `Conditions` (`ID`);

-- 
-- Constraints for table `GameTurns_ScoreMods`
-- 
ALTER TABLE `GameTurns_ScoreMods`
  ADD CONSTRAINT `GameTurns_ScoreMods_ibfk_1` FOREIGN KEY (`Game_ID`) REFERENCES `Games` (`ID`),
  ADD CONSTRAINT `GameTurns_ScoreMods_ibfk_2` FOREIGN KEY (`Score_Mods_ID`) REFERENCES `Score_Mods` (`ID`);

-- 
-- Constraints for table `GameTurns_SpecialStates`
-- 
ALTER TABLE `GameTurns_SpecialStates`
  ADD CONSTRAINT `GameTurns_SpecialStates_ibfk_1` FOREIGN KEY (`Game_ID`) REFERENCES `Games` (`ID`),
  ADD CONSTRAINT `GameTurns_SpecialStates_ibfk_2` FOREIGN KEY (`SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`);

-- 
-- Constraints for table `Games`
-- 
ALTER TABLE `Games`
  ADD CONSTRAINT `Games_ibfk_1` FOREIGN KEY (`Zone_ID`) REFERENCES `Zones` (`ID`),
  ADD CONSTRAINT `Games_ibfk_2` FOREIGN KEY (`1stGameTurn_ID`) REFERENCES `GameTurns` (`ID`),
  ADD CONSTRAINT `Games_ibfk_3` FOREIGN KEY (`P1_User_ID`) REFERENCES `Users` (`ID`),
  ADD CONSTRAINT `Games_ibfk_4` FOREIGN KEY (`P1_Character_ID`) REFERENCES `Characters` (`ID`),
  ADD CONSTRAINT `Games_ibfk_5` FOREIGN KEY (`P2_User_ID`) REFERENCES `Users` (`ID`),
  ADD CONSTRAINT `Games_ibfk_6` FOREIGN KEY (`P2_Character_ID`) REFERENCES `Characters` (`ID`);

-- 
-- Constraints for table `GroupMembers`
-- 
ALTER TABLE `GroupMembers`
  ADD CONSTRAINT `GroupMembers_ibfk_1` FOREIGN KEY (`Group_ID`) REFERENCES `Groups` (`ID`),
  ADD CONSTRAINT `GroupMembers_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`),
  ADD CONSTRAINT `GroupMembers_ibfk_3` FOREIGN KEY (`AccessLevel_ID`) REFERENCES `AccessLevels` (`ID`);

-- 
-- Constraints for table `Groups`
-- 
ALTER TABLE `Groups`
  ADD CONSTRAINT `Groups_ibfk_1` FOREIGN KEY (`CommonObjectType_ID`) REFERENCES `ObjectTypes` (`ID`);

-- 
-- Constraints for table `Items`
-- 
ALTER TABLE `Items`
  ADD CONSTRAINT `Items_ibfk_10` FOREIGN KEY (`Mould_ID`) REFERENCES `Moulds` (`ID`),
  ADD CONSTRAINT `Items_ibfk_11` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`),
  ADD CONSTRAINT `Items_ibfk_12` FOREIGN KEY (`AssignedCharacter_ID`) REFERENCES `Characters` (`ID`),
  ADD CONSTRAINT `Items_ibfk_13` FOREIGN KEY (`AssignedArchetypeBodyLocation_ID`) REFERENCES `ArchetypeBodyLocations` (`ID`);

-- 
-- Constraints for table `LicenseRestrictions`
-- 
ALTER TABLE `LicenseRestrictions`
  ADD CONSTRAINT `LicenseRestrictions_ibfk_1` FOREIGN KEY (`Subscription_ID`) REFERENCES `Subscriptions` (`ID`);

-- 
-- Constraints for table `LocationRules`
-- 
ALTER TABLE `LocationRules`
  ADD CONSTRAINT `LocationRules_ibfk_1` FOREIGN KEY (`Mould_ID`) REFERENCES `Moulds` (`ID`),
  ADD CONSTRAINT `LocationRules_ibfk_2` FOREIGN KEY (`BodyLocations_ID`) REFERENCES `BodyLocations` (`ID`);

-- 
-- Constraints for table `Manuevers`
-- 
ALTER TABLE `Manuevers`
  ADD CONSTRAINT `Manuevers_ibfk_1` FOREIGN KEY (`Archetype_ID`) REFERENCES `Archetypes` (`ID`),
  ADD CONSTRAINT `Manuevers_ibfk_2` FOREIGN KEY (`ModSpecialState_ID`) REFERENCES `SpecialStates` (`ID`);

-- 
-- Constraints for table `Moulds`
-- 
ALTER TABLE `Moulds`
  ADD CONSTRAINT `Moulds_ibfk_1` FOREIGN KEY (`RelatedProduct_ID`) REFERENCES `Products` (`ID`);

-- 
-- Constraints for table `Moulds_Conditions`
-- 
ALTER TABLE `Moulds_Conditions`
  ADD CONSTRAINT `Moulds_Conditions_ibfk_3` FOREIGN KEY (`Moulds_ID`) REFERENCES `Moulds` (`ID`),
  ADD CONSTRAINT `Moulds_Conditions_ibfk_4` FOREIGN KEY (`Conditions_ID`) REFERENCES `Conditions` (`ID`);

-- 
-- Constraints for table `Moulds_Score_Modifiers`
-- 
ALTER TABLE `Moulds_Score_Modifiers`
  ADD CONSTRAINT `Moulds_Score_Modifiers_ibfk_2` FOREIGN KEY (`Moulds_ID`) REFERENCES `Moulds` (`ID`),
  ADD CONSTRAINT `Moulds_Score_Modifiers_ibfk_3` FOREIGN KEY (`Score_Mods_ID`) REFERENCES `Score_Mods` (`ID`);

-- 
-- Constraints for table `Move_Logic`
-- 
ALTER TABLE `Move_Logic`
  ADD CONSTRAINT `Move_Logic_ibfk_3` FOREIGN KEY (`Archetype_ID`) REFERENCES `Archetypes` (`ID`);

-- 
-- Constraints for table `ProductCategories`
-- 
ALTER TABLE `ProductCategories`
  ADD CONSTRAINT `ProductCategories_ibfk_1` FOREIGN KEY (`ParentCateogry_ID`) REFERENCES `ProductCategories` (`ID`);

-- 
-- Constraints for table `Products`
-- 
ALTER TABLE `Products`
  ADD CONSTRAINT `Products_ibfk_6` FOREIGN KEY (`ProductCategory_ID`) REFERENCES `ProductCategories` (`ID`),
  ADD CONSTRAINT `Products_ibfk_7` FOREIGN KEY (`ObjectType_ID`) REFERENCES `ObjectTypes` (`ID`),
  ADD CONSTRAINT `Products_ibfk_8` FOREIGN KEY (`RequiredObjectType_ID`) REFERENCES `ObjectTypes` (`ID`);

-- 
-- Constraints for table `Results`
-- 
ALTER TABLE `Results`
  ADD CONSTRAINT `Results_ibfk_1` FOREIGN KEY (`Archetype_ID`) REFERENCES `Archetypes` (`ID`);

-- 
-- Constraints for table `Results_Conditions`
-- 
ALTER TABLE `Results_Conditions`
  ADD CONSTRAINT `Results_Conditions_ibfk_1` FOREIGN KEY (`Results_ID`) REFERENCES `Results` (`ID`),
  ADD CONSTRAINT `Results_Conditions_ibfk_2` FOREIGN KEY (`Conditions_ID`) REFERENCES `Conditions` (`ID`);

-- 
-- Constraints for table `Results_Redirects`
-- 
ALTER TABLE `Results_Redirects`
  ADD CONSTRAINT `Results_Redirects_ibfk_3` FOREIGN KEY (`Results_ID`) REFERENCES `Results` (`ID`),
  ADD CONSTRAINT `Results_Redirects_ibfk_4` FOREIGN KEY (`Redirect_Results_Odd_Page`) REFERENCES `Results` (`Odd_Page`),
  ADD CONSTRAINT `Results_Redirects_ibfk_5` FOREIGN KEY (`Redirect_SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`);

-- 
-- Constraints for table `Results_Score_Mods`
-- 
ALTER TABLE `Results_Score_Mods`
  ADD CONSTRAINT `Results_Score_Mods_ibfk_1` FOREIGN KEY (`Results_ID`) REFERENCES `Results` (`ID`),
  ADD CONSTRAINT `Results_Score_Mods_ibfk_2` FOREIGN KEY (`Score_Mods_ID`) REFERENCES `Score_Mods` (`ID`);

-- 
-- Constraints for table `Results_SpecialStates`
-- 
ALTER TABLE `Results_SpecialStates`
  ADD CONSTRAINT `Results_SpecialStates_ibfk_1` FOREIGN KEY (`Results_ID`) REFERENCES `Results` (`ID`),
  ADD CONSTRAINT `Results_SpecialStates_ibfk_2` FOREIGN KEY (`SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`);

-- 
-- Constraints for table `Score_Mods`
-- 
ALTER TABLE `Score_Mods`
  ADD CONSTRAINT `Score_Mods_ibfk_1` FOREIGN KEY (`Conditions_ID`) REFERENCES `Conditions` (`ID`);

-- 
-- Constraints for table `SpecialStates_Conditions`
-- 
ALTER TABLE `SpecialStates_Conditions`
  ADD CONSTRAINT `SpecialStates_Conditions_ibfk_1` FOREIGN KEY (`SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`),
  ADD CONSTRAINT `SpecialStates_Conditions_ibfk_2` FOREIGN KEY (`Conditions_ID`) REFERENCES `Conditions` (`ID`);

-- 
-- Constraints for table `SpecialStates_Counteractors`
-- 
ALTER TABLE `SpecialStates_Counteractors`
  ADD CONSTRAINT `SpecialStates_Counteractors_ibfk_1` FOREIGN KEY (`SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`),
  ADD CONSTRAINT `SpecialStates_Counteractors_ibfk_2` FOREIGN KEY (`Removes_SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`);

-- 
-- Constraints for table `SpecialStates_Score_Mods`
-- 
ALTER TABLE `SpecialStates_Score_Mods`
  ADD CONSTRAINT `SpecialStates_Score_Mods_ibfk_1` FOREIGN KEY (`SpecialStates_ID`) REFERENCES `SpecialStates` (`ID`),
  ADD CONSTRAINT `SpecialStates_Score_Mods_ibfk_2` FOREIGN KEY (`Score_Mods_ID`) REFERENCES `Score_Mods` (`ID`);

-- 
-- Constraints for table `Subscriptions`
-- 
ALTER TABLE `Subscriptions`
  ADD CONSTRAINT `Subscriptions_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`),
  ADD CONSTRAINT `Subscriptions_ibfk_2` FOREIGN KEY (`OwningUser_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `TransactionDiscounts`
-- 
ALTER TABLE `TransactionDiscounts`
  ADD CONSTRAINT `TransactionDiscounts_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `Transactions` (`ID`),
  ADD CONSTRAINT `TransactionDiscounts_ibfk_2` FOREIGN KEY (`Discount_ID`) REFERENCES `Discounts` (`ID`);

-- 
-- Constraints for table `TransactionItems`
-- 
ALTER TABLE `TransactionItems`
  ADD CONSTRAINT `TransactionItems_ibfk_5` FOREIGN KEY (`Transaction_ID`) REFERENCES `Transactions` (`ID`),
  ADD CONSTRAINT `TransactionItems_ibfk_6` FOREIGN KEY (`Product_ID`) REFERENCES `Products` (`ID`);

-- 
-- Constraints for table `Transactions`
-- 
ALTER TABLE `Transactions`
  ADD CONSTRAINT `Transactions_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `UserIPs`
-- 
ALTER TABLE `UserIPs`
  ADD CONSTRAINT `UserIPs_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `Users`
-- 
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`Country_ID`) REFERENCES `Countries` (`ID`);

-- 
-- Constraints for table `Users_ContactHistory`
-- 
ALTER TABLE `Users_ContactHistory`
  ADD CONSTRAINT `Users_ContactHistory_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `Users_EmailHistory`
-- 
ALTER TABLE `Users_EmailHistory`
  ADD CONSTRAINT `Users_EmailHistory_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`ID`);

-- 
-- Constraints for table `ZoneConditions`
-- 
ALTER TABLE `ZoneConditions`
  ADD CONSTRAINT `ZoneConditions_ibfk_1` FOREIGN KEY (`Zone_ID`) REFERENCES `Zones` (`ID`),
  ADD CONSTRAINT `ZoneConditions_ibfk_2` FOREIGN KEY (`ObjectType_ID`) REFERENCES `ObjectTypes` (`ID`);

-- 
-- Constraints for table `Zones`
-- 
ALTER TABLE `Zones`
  ADD CONSTRAINT `Zones_ibfk_1` FOREIGN KEY (`ParentZone_ID`) REFERENCES `Zones` (`ID`),
  ADD CONSTRAINT `Zones_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`ID`);
