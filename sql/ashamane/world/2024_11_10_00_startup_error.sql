DELETE FROM `gameobject_template` WHERE `entry` = 1619; 
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES ('1619','3','414','Earthroot','','','','0.4','30','1416','0','1','1','1','0','0','0','0','0','0','0','0','0','0','0','0','20','1','0','0','0','0','0','0','0','0','0','0','0','0','0','','','26972'); 
UPDATE `gameobject_template` SET `Data0` = 221694 WHERE `entry` = 207691; 
DELETE FROM `gameobject_template_addon` WHERE `entry` = 300184; 
DELETE FROM `spell_proc` WHERE `spellid` = 253324; 
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (84345, 87473, 87586, 87441, 87446, 87474, 87460, 87448, 87470, 87447, 87439, 87435, 87461, 87450, 87440, 25202); 
UPDATE `creature_template` SET `flags_extra` = 0, `unit_flags2` = 2048 WHERE `entry` = 38913; 

SET  @CGUID:= 300000001;
DELETE FROM `creature` WHERE `id` IN (2079, 49480);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+0,'49480','1','0','0','0','0','0','0','-1','0','0','10756.2','923.958','1338.4','3.02752','300','0','0','261','0','0','0','0','0','0','0','','0'),
(@CGUID+1,'2079','1','0','0','0','0','0','0','-1','0','1','10312.7','830.122','1326.53','2.37365','120','0','0','1','0','0','0','0','0','0','0','','0');

DELETE FROM `quest_template_addon` WHERE `ID` = 2438;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES
('2438','0','0','0','0','2459','0','0','0','0','0','0','0','0','0','0','0','');

-- Dublicate
DELETE FROM `creature` WHERE `guid`=804858;
DELETE FROM `creature` WHERE `guid`=276955  AND  `id`=4167;
DELETE FROM `creature` WHERE `guid`=307680  AND  `id`=30580;
DELETE FROM `creature` WHERE `guid`=374011  AND  `id`=14991;
DELETE FROM `creature` WHERE `guid`=374047  AND  `id`=14991;
DELETE FROM `creature` WHERE `guid`=354578  AND  `id`=14991;
DELETE FROM `creature` WHERE `guid`=374319  AND  `id`=30566;
DELETE FROM `creature` WHERE `guid`=374325  AND  `id`=30566;
DELETE FROM `creature` WHERE `guid`=46686   AND  `id`=6909;
DELETE FROM `creature` WHERE `guid`=278822  AND  `id`=7319;

DELETE FROM `gameobject` WHERE `id` = 301001;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES
('300000000','301001','1','0','0','0','0','0','0','-1','6409.71','466.163','17.1322','3.54432','-0','-0','-0.979795','0.200006','300','255','1','0','','0');

UPDATE `creature` SET `spawndist`=0 WHERE `id`=35229 AND `MovementType`=0;
UPDATE `creature` SET `spawndist`=5 WHERE `id`=35229 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=5 WHERE `id`=36289 AND `MovementType`=1;

DELETE FROM `pool_gameobject` WHERE `pool_entry`=2012;

DELETE FROM `gameobject_addon` WHERE `guid`=301027 OR `guid`=103438 OR `guid`=200888 OR `guid`=10690318 OR `guid`=10690302 OR `guid`=10690227 OR `guid`=10690225;

UPDATE `trainer_spell` SET `ReqSkillLine`=0 WHERE `ReqSkillLine`=2540 OR `ReqSkillLine`=2538 OR `ReqSkillLine`=2539 OR `ReqSkillLine`=2537 OR `ReqSkillLine`=2532 OR `ReqSkillLine`=2514 OR `ReqSkillLine`=2485 OR `ReqSkillLine`=2569 OR `ReqSkillLine`=2506 OR `ReqSkillLine`=2572 OR `ReqSkillLine`=2503 OR `ReqSkillLine`=2548 OR `ReqSkillLine`=2545;

UPDATE `fishing_loot_template`       SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `milling_loot_template`       SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `prospecting_loot_template`   SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `pickpocketing_loot_template` SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `creature_loot_template`      SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `skinning_loot_template`      SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `gameobject_loot_template`    SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `reference_loot_template`     SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `item_loot_template`          SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `disenchant_loot_template`    SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;
UPDATE `spell_loot_template`         SET `Reference`=0 WHERE `Reference`=13003 OR `Reference`=13004 OR `Reference`=34363 OR `Reference`=34077 OR `Reference`=34069 OR `Reference`=34353 OR `Reference`=34357 OR `Reference`=25004 OR `Reference`=43000 OR `Reference`=34076 OR `Reference`=25002 OR `Reference`=43006 OR `Reference`=25019 OR `Reference`=35003 OR `Reference`=25020 OR `Reference`=25000 OR `Reference`=25001 OR `Reference`=43015 OR `Reference`=34071 OR `Reference`=34070 OR `Reference`=34073 OR `Reference`=34072 OR `Reference`=34074 OR `Reference`=34075 OR `Reference`=25025 OR `Reference`=25026 OR `Reference`=34349 OR `Reference`=34351 OR `Reference`=34355 OR `Reference`=34373 OR `Reference`=34375 OR `Reference`=12034 OR `Reference`=34350;

/* obsolete commands */
DELETE FROM `command` WHERE `name`="arena create";
DELETE FROM `command` WHERE `name`="arena disband";
DELETE FROM `command` WHERE `name`="arena rename";
DELETE FROM `command` WHERE `name`="arena captain";
DELETE FROM `command` WHERE `name`="arena info";
DELETE FROM `command` WHERE `name`="arena lookup";

DELETE FROM `gameobject_addon` WHERE `guid`=10690319;
DELETE FROM `gameobject_addon` WHERE `guid`=10690301;
DELETE FROM `gameobject_addon` WHERE `guid`=10690300;
DELETE FROM `gameobject_addon` WHERE `guid`=10690299;
DELETE FROM `gameobject_addon` WHERE `guid`=10690298;
DELETE FROM `gameobject_addon` WHERE `guid`=10690297;
DELETE FROM `gameobject_addon` WHERE `guid`=10690296;
DELETE FROM `gameobject_addon` WHERE `guid`=10690295;
DELETE FROM `gameobject_addon` WHERE `guid`=10690294;
DELETE FROM `gameobject_addon` WHERE `guid`=10690293;
DELETE FROM `gameobject_addon` WHERE `guid`=10690292;
DELETE FROM `gameobject_addon` WHERE `guid`=10690291;
DELETE FROM `gameobject_addon` WHERE `guid`=10690290;
DELETE FROM `gameobject_addon` WHERE `guid`=10690289;
DELETE FROM `gameobject_addon` WHERE `guid`=10690288;
DELETE FROM `gameobject_addon` WHERE `guid`=10690287;
DELETE FROM `gameobject_addon` WHERE `guid`=10690286;
DELETE FROM `gameobject_addon` WHERE `guid`=10690285;
DELETE FROM `gameobject_addon` WHERE `guid`=10690284;
DELETE FROM `gameobject_addon` WHERE `guid`=10690283;
DELETE FROM `gameobject_addon` WHERE `guid`=10690282;
DELETE FROM `gameobject_addon` WHERE `guid`=10690281;
DELETE FROM `gameobject_addon` WHERE `guid`=10690280;
DELETE FROM `gameobject_addon` WHERE `guid`=10690279;
DELETE FROM `gameobject_addon` WHERE `guid`=10690278;
DELETE FROM `gameobject_addon` WHERE `guid`=10690277;
DELETE FROM `gameobject_addon` WHERE `guid`=10690276;
DELETE FROM `gameobject_addon` WHERE `guid`=10690275;
DELETE FROM `gameobject_addon` WHERE `guid`=10690274;
DELETE FROM `gameobject_addon` WHERE `guid`=10690273;
DELETE FROM `gameobject_addon` WHERE `guid`=10690272;
DELETE FROM `gameobject_addon` WHERE `guid`=10690271;
DELETE FROM `gameobject_addon` WHERE `guid`=10690270;
DELETE FROM `gameobject_addon` WHERE `guid`=10690269;
DELETE FROM `gameobject_addon` WHERE `guid`=10690268;
DELETE FROM `gameobject_addon` WHERE `guid`=10690267;
DELETE FROM `gameobject_addon` WHERE `guid`=10690266;
DELETE FROM `gameobject_addon` WHERE `guid`=10690265;
DELETE FROM `gameobject_addon` WHERE `guid`=10690264;
DELETE FROM `gameobject_addon` WHERE `guid`=10690263;
DELETE FROM `gameobject_addon` WHERE `guid`=10690262;
DELETE FROM `gameobject_addon` WHERE `guid`=10690261;
DELETE FROM `gameobject_addon` WHERE `guid`=10690260;
DELETE FROM `gameobject_addon` WHERE `guid`=10690259;
DELETE FROM `gameobject_addon` WHERE `guid`=10690258;
DELETE FROM `gameobject_addon` WHERE `guid`=10690257;
DELETE FROM `gameobject_addon` WHERE `guid`=10690256;
DELETE FROM `gameobject_addon` WHERE `guid`=10690255;
DELETE FROM `gameobject_addon` WHERE `guid`=10690254;
DELETE FROM `gameobject_addon` WHERE `guid`=10690253;
DELETE FROM `gameobject_addon` WHERE `guid`=10690252;
DELETE FROM `gameobject_addon` WHERE `guid`=10690251;
DELETE FROM `gameobject_addon` WHERE `guid`=10690250;
DELETE FROM `gameobject_addon` WHERE `guid`=10690248;
DELETE FROM `gameobject_addon` WHERE `guid`=10690247;
DELETE FROM `gameobject_addon` WHERE `guid`=10690246;
DELETE FROM `gameobject_addon` WHERE `guid`=10690243;
DELETE FROM `gameobject_addon` WHERE `guid`=10690242;
DELETE FROM `gameobject_addon` WHERE `guid`=10690241;
DELETE FROM `gameobject_addon` WHERE `guid`=10690239;
DELETE FROM `gameobject_addon` WHERE `guid`=10690238;
DELETE FROM `gameobject_addon` WHERE `guid`=10690237;
DELETE FROM `gameobject_addon` WHERE `guid`=10690235;
DELETE FROM `gameobject_addon` WHERE `guid`=10690230;
DELETE FROM `gameobject_addon` WHERE `guid`=10690229;
DELETE FROM `gameobject_addon` WHERE `guid`=10690228;
DELETE FROM `gameobject_addon` WHERE `guid`=10690224;
DELETE FROM `gameobject_addon` WHERE `guid`=10690223;
DELETE FROM `gameobject_addon` WHERE `guid`=10690222;
DELETE FROM `gameobject_addon` WHERE `guid`=10690221;
DELETE FROM `gameobject_addon` WHERE `guid`=10690220;
DELETE FROM `gameobject_addon` WHERE `guid`=10690219;
DELETE FROM `gameobject_addon` WHERE `guid`=10690218;
DELETE FROM `gameobject_addon` WHERE `guid`=10690217;
DELETE FROM `gameobject_addon` WHERE `guid`=10690216;
DELETE FROM `gameobject_addon` WHERE `guid`=10690215;
DELETE FROM `gameobject_addon` WHERE `guid`=10690214;
DELETE FROM `gameobject_addon` WHERE `guid`=10690213;
DELETE FROM `gameobject_addon` WHERE `guid`=10690212;
DELETE FROM `gameobject_addon` WHERE `guid`=10690211;
DELETE FROM `gameobject_addon` WHERE `guid`=10690210;
DELETE FROM `gameobject_addon` WHERE `guid`=10690209;
DELETE FROM `gameobject_addon` WHERE `guid`=10690208;
DELETE FROM `gameobject_addon` WHERE `guid`=10690207;
DELETE FROM `gameobject_addon` WHERE `guid`=10690206;
DELETE FROM `gameobject_addon` WHERE `guid`=10690205;
DELETE FROM `gameobject_addon` WHERE `guid`=10690204;
DELETE FROM `gameobject_addon` WHERE `guid`=10690203;
DELETE FROM `gameobject_addon` WHERE `guid`=10690202;
DELETE FROM `gameobject_addon` WHERE `guid`=10690201;
DELETE FROM `gameobject_addon` WHERE `guid`=10690200;
DELETE FROM `gameobject_addon` WHERE `guid`=10690199;
DELETE FROM `gameobject_addon` WHERE `guid`=10690198;
DELETE FROM `gameobject_addon` WHERE `guid`=10690197;
DELETE FROM `gameobject_addon` WHERE `guid`=10690196;
DELETE FROM `gameobject_addon` WHERE `guid`=10690195;
DELETE FROM `gameobject_addon` WHERE `guid`=10690194;
DELETE FROM `gameobject_addon` WHERE `guid`=10690193;
DELETE FROM `gameobject_addon` WHERE `guid`=10690192;
DELETE FROM `gameobject_addon` WHERE `guid`=10690191;
DELETE FROM `gameobject_addon` WHERE `guid`=10690190;
DELETE FROM `gameobject_addon` WHERE `guid`=10690189;
DELETE FROM `gameobject_addon` WHERE `guid`=10690188;
DELETE FROM `gameobject_addon` WHERE `guid`=10690187;
DELETE FROM `gameobject_addon` WHERE `guid`=10690186;
DELETE FROM `gameobject_addon` WHERE `guid`=10690185;
DELETE FROM `gameobject_addon` WHERE `guid`=10690184;
DELETE FROM `gameobject_addon` WHERE `guid`=10690183;
DELETE FROM `gameobject_addon` WHERE `guid`=10690182;
DELETE FROM `gameobject_addon` WHERE `guid`=10690181;
DELETE FROM `gameobject_addon` WHERE `guid`=10690180;
DELETE FROM `gameobject_addon` WHERE `guid`=10690179;
DELETE FROM `gameobject_addon` WHERE `guid`=10690178;
DELETE FROM `gameobject_addon` WHERE `guid`=10690177;
DELETE FROM `gameobject_addon` WHERE `guid`=10690176;
DELETE FROM `gameobject_addon` WHERE `guid`=10690175;
DELETE FROM `gameobject_addon` WHERE `guid`=10690174;
DELETE FROM `gameobject_addon` WHERE `guid`=10690173;
DELETE FROM `gameobject_addon` WHERE `guid`=10690172;
DELETE FROM `gameobject_addon` WHERE `guid`=10690171;
DELETE FROM `gameobject_addon` WHERE `guid`=10690170;
DELETE FROM `gameobject_addon` WHERE `guid`=10690169;
DELETE FROM `gameobject_addon` WHERE `guid`=10690168;
DELETE FROM `gameobject_addon` WHERE `guid`=10690167;
DELETE FROM `gameobject_addon` WHERE `guid`=10690165;
DELETE FROM `gameobject_addon` WHERE `guid`=10690163;
DELETE FROM `gameobject_addon` WHERE `guid`=10690162;
DELETE FROM `gameobject_addon` WHERE `guid`=10690161;
DELETE FROM `gameobject_addon` WHERE `guid`=10690160;
DELETE FROM `gameobject_addon` WHERE `guid`=10690159;
DELETE FROM `gameobject_addon` WHERE `guid`=10690155;
DELETE FROM `gameobject_addon` WHERE `guid`=10690154;
DELETE FROM `gameobject_addon` WHERE `guid`=10690150;
DELETE FROM `gameobject_addon` WHERE `guid`=10690149;
DELETE FROM `gameobject_addon` WHERE `guid`=10690148;
DELETE FROM `gameobject_addon` WHERE `guid`=10690147;
DELETE FROM `gameobject_addon` WHERE `guid`=10690146;
DELETE FROM `gameobject_addon` WHERE `guid`=10690145;
DELETE FROM `gameobject_addon` WHERE `guid`=10690144;
DELETE FROM `gameobject_addon` WHERE `guid`=10690143;
DELETE FROM `gameobject_addon` WHERE `guid`=10690142;
DELETE FROM `gameobject_addon` WHERE `guid`=10690140;
DELETE FROM `gameobject_addon` WHERE `guid`=10690139;
DELETE FROM `gameobject_addon` WHERE `guid`=10690138;
DELETE FROM `gameobject_addon` WHERE `guid`=10690137;
DELETE FROM `gameobject_addon` WHERE `guid`=10690136;
DELETE FROM `gameobject_addon` WHERE `guid`=10690135;
DELETE FROM `gameobject_addon` WHERE `guid`=10690134;
DELETE FROM `gameobject_addon` WHERE `guid`=10690133;
DELETE FROM `gameobject_addon` WHERE `guid`=10690130;
DELETE FROM `gameobject_addon` WHERE `guid`=10690129;
DELETE FROM `gameobject_addon` WHERE `guid`=10690128;
DELETE FROM `gameobject_addon` WHERE `guid`=10690127;
DELETE FROM `gameobject_addon` WHERE `guid`=10690126;
DELETE FROM `gameobject_addon` WHERE `guid`=10690125;
DELETE FROM `gameobject_addon` WHERE `guid`=10690124;
DELETE FROM `gameobject_addon` WHERE `guid`=10690123;
DELETE FROM `gameobject_addon` WHERE `guid`=10690122;
DELETE FROM `gameobject_addon` WHERE `guid`=10690121;
DELETE FROM `gameobject_addon` WHERE `guid`=10690120;
DELETE FROM `gameobject_addon` WHERE `guid`=10690119;
DELETE FROM `gameobject_addon` WHERE `guid`=10690118;
DELETE FROM `gameobject_addon` WHERE `guid`=10690117;
DELETE FROM `gameobject_addon` WHERE `guid`=10690116;
DELETE FROM `gameobject_addon` WHERE `guid`=10690115;
DELETE FROM `gameobject_addon` WHERE `guid`=10690114;
DELETE FROM `gameobject_addon` WHERE `guid`=10690113;
DELETE FROM `gameobject_addon` WHERE `guid`=10690112;
DELETE FROM `gameobject_addon` WHERE `guid`=10690111;
DELETE FROM `gameobject_addon` WHERE `guid`=10690110;
DELETE FROM `gameobject_addon` WHERE `guid`=10690109;
DELETE FROM `gameobject_addon` WHERE `guid`=10690108;
DELETE FROM `gameobject_addon` WHERE `guid`=10690107;
DELETE FROM `gameobject_addon` WHERE `guid`=10690106;
DELETE FROM `gameobject_addon` WHERE `guid`=10690105;
DELETE FROM `gameobject_addon` WHERE `guid`=10690104;
DELETE FROM `gameobject_addon` WHERE `guid`=10690103;
DELETE FROM `gameobject_addon` WHERE `guid`=10690102;
DELETE FROM `gameobject_addon` WHERE `guid`=10690101;
DELETE FROM `gameobject_addon` WHERE `guid`=10690100;
DELETE FROM `gameobject_addon` WHERE `guid`=10690099;
DELETE FROM `gameobject_addon` WHERE `guid`=10690098;
DELETE FROM `gameobject_addon` WHERE `guid`=10690097;
DELETE FROM `gameobject_addon` WHERE `guid`=10690096;
DELETE FROM `gameobject_addon` WHERE `guid`=10690095;
DELETE FROM `gameobject_addon` WHERE `guid`=10690094;
DELETE FROM `gameobject_addon` WHERE `guid`=10690093;
DELETE FROM `gameobject_addon` WHERE `guid`=10690092;
DELETE FROM `gameobject_addon` WHERE `guid`=10690091;
DELETE FROM `gameobject_addon` WHERE `guid`=10690090;
DELETE FROM `gameobject_addon` WHERE `guid`=10690089;
DELETE FROM `gameobject_addon` WHERE `guid`=10690088;
DELETE FROM `gameobject_addon` WHERE `guid`=10690087;
DELETE FROM `gameobject_addon` WHERE `guid`=10690086;
DELETE FROM `gameobject_addon` WHERE `guid`=10690085;
DELETE FROM `gameobject_addon` WHERE `guid`=10690084;
DELETE FROM `gameobject_addon` WHERE `guid`=10690083;
DELETE FROM `gameobject_addon` WHERE `guid`=10690082;
DELETE FROM `gameobject_addon` WHERE `guid`=10690081;
DELETE FROM `gameobject_addon` WHERE `guid`=10690079;
DELETE FROM `gameobject_addon` WHERE `guid`=10690077;
DELETE FROM `gameobject_addon` WHERE `guid`=10690073;
DELETE FROM `gameobject_addon` WHERE `guid`=10690072;
DELETE FROM `gameobject_addon` WHERE `guid`=10690071;
DELETE FROM `gameobject_addon` WHERE `guid`=10690070;
DELETE FROM `gameobject_addon` WHERE `guid`=10690069;
DELETE FROM `gameobject_addon` WHERE `guid`=10690068;
DELETE FROM `gameobject_addon` WHERE `guid`=10690067;
DELETE FROM `gameobject_addon` WHERE `guid`=10690066;
DELETE FROM `gameobject_addon` WHERE `guid`=10690065;
DELETE FROM `gameobject_addon` WHERE `guid`=10690064;
DELETE FROM `gameobject_addon` WHERE `guid`=10690063;
DELETE FROM `gameobject_addon` WHERE `guid`=10690062;
DELETE FROM `gameobject_addon` WHERE `guid`=10690061;
DELETE FROM `gameobject_addon` WHERE `guid`=10690060;
DELETE FROM `gameobject_addon` WHERE `guid`=10690058;
DELETE FROM `gameobject_addon` WHERE `guid`=10690057;
DELETE FROM `gameobject_addon` WHERE `guid`=10690056;
DELETE FROM `gameobject_addon` WHERE `guid`=10690055;
DELETE FROM `gameobject_addon` WHERE `guid`=10690054;
DELETE FROM `gameobject_addon` WHERE `guid`=10690053;
DELETE FROM `gameobject_addon` WHERE `guid`=10690052;
DELETE FROM `gameobject_addon` WHERE `guid`=10690051;
DELETE FROM `gameobject_addon` WHERE `guid`=10690050;
DELETE FROM `gameobject_addon` WHERE `guid`=10690049;
DELETE FROM `gameobject_addon` WHERE `guid`=10690048;
DELETE FROM `gameobject_addon` WHERE `guid`=10690047;
DELETE FROM `gameobject_addon` WHERE `guid`=10690046;
DELETE FROM `gameobject_addon` WHERE `guid`=10690045;
DELETE FROM `gameobject_addon` WHERE `guid`=10690044;
DELETE FROM `gameobject_addon` WHERE `guid`=10690043;
DELETE FROM `gameobject_addon` WHERE `guid`=10690042;
DELETE FROM `gameobject_addon` WHERE `guid`=10690041;
DELETE FROM `gameobject_addon` WHERE `guid`=10690040;
DELETE FROM `gameobject_addon` WHERE `guid`=10690038;
DELETE FROM `gameobject_addon` WHERE `guid`=10690037;
DELETE FROM `gameobject_addon` WHERE `guid`=10690036;
DELETE FROM `gameobject_addon` WHERE `guid`=10690035;
DELETE FROM `gameobject_addon` WHERE `guid`=10690034;
DELETE FROM `gameobject_addon` WHERE `guid`=10690033;
DELETE FROM `gameobject_addon` WHERE `guid`=10690032;
DELETE FROM `gameobject_addon` WHERE `guid`=10690031;
DELETE FROM `gameobject_addon` WHERE `guid`=10690030;
DELETE FROM `gameobject_addon` WHERE `guid`=10690029;
DELETE FROM `gameobject_addon` WHERE `guid`=10690028;
DELETE FROM `gameobject_addon` WHERE `guid`=10690027;
DELETE FROM `gameobject_addon` WHERE `guid`=10690026;
DELETE FROM `gameobject_addon` WHERE `guid`=10690023;
DELETE FROM `gameobject_addon` WHERE `guid`=10690022;
DELETE FROM `gameobject_addon` WHERE `guid`=10690021;
DELETE FROM `gameobject_addon` WHERE `guid`=10690020;
DELETE FROM `gameobject_addon` WHERE `guid`=10690019;
DELETE FROM `gameobject_addon` WHERE `guid`=10690018;
DELETE FROM `gameobject_addon` WHERE `guid`=10690017;
DELETE FROM `gameobject_addon` WHERE `guid`=10690016;
DELETE FROM `gameobject_addon` WHERE `guid`=10690014;
DELETE FROM `gameobject_addon` WHERE `guid`=10690013;
DELETE FROM `gameobject_addon` WHERE `guid`=10690012;
DELETE FROM `gameobject_addon` WHERE `guid`=10690011;
DELETE FROM `gameobject_addon` WHERE `guid`=10690010;
DELETE FROM `gameobject_addon` WHERE `guid`=10690008;
DELETE FROM `gameobject_addon` WHERE `guid`=10690006;
DELETE FROM `gameobject_addon` WHERE `guid`=10690005;
DELETE FROM `gameobject_addon` WHERE `guid`=10690004;
DELETE FROM `gameobject_addon` WHERE `guid`=10690003;
DELETE FROM `gameobject_addon` WHERE `guid`=10690002;
DELETE FROM `gameobject_addon` WHERE `guid`=10690001;
DELETE FROM `gameobject_addon` WHERE `guid`=10690000;

DELETE FROM `creature_template_scaling` WHERE `Entry`=132599;
DELETE FROM `creature_template_scaling` WHERE `Entry`=132600;
DELETE FROM `creature_template_scaling` WHERE `Entry`=132604;
DELETE FROM `creature_template_scaling` WHERE `Entry`=132603;
DELETE FROM `creature_template_scaling` WHERE `Entry`=132602;
DELETE FROM `creature_template_scaling` WHERE `Entry`=132601;
DELETE FROM `creature_template_scaling` WHERE `Entry`=144095;
DELETE FROM `creature_template_scaling` WHERE `Entry`=143208;
DELETE FROM `creature_template_scaling` WHERE `Entry`=140554;
DELETE FROM `creature_template_scaling` WHERE `Entry`=140512;
DELETE FROM `creature_template_scaling` WHERE `Entry`=143509;
DELETE FROM `creature_template_scaling` WHERE `Entry`=141997;
DELETE FROM `creature_template_scaling` WHERE `Entry`=141560;
DELETE FROM `creature_template_scaling` WHERE `Entry`=140202;
DELETE FROM `creature_template_scaling` WHERE `Entry`=141557;
DELETE FROM `creature_template_scaling` WHERE `Entry`=140022;
DELETE FROM `creature_template_scaling` WHERE `Entry`=140146;
DELETE FROM `creature_template_scaling` WHERE `Entry`=144173;
DELETE FROM `creature_template_scaling` WHERE `Entry`=117473;
DELETE FROM `creature_template_scaling` WHERE `Entry`=141556;

DELETE FROM `creature_addon` WHERE `guid`=20556578;
DELETE FROM `creature_addon` WHERE `guid`=20556620;
DELETE FROM `creature_addon` WHERE `guid`=20556621;
DELETE FROM `creature_addon` WHERE `guid`=20556630;
DELETE FROM `creature_addon` WHERE `guid`=20556635;
DELETE FROM `creature_addon` WHERE `guid`=20556637;
DELETE FROM `creature_addon` WHERE `guid`=20556641;
DELETE FROM `creature_addon` WHERE `guid`=20556649;
DELETE FROM `creature_addon` WHERE `guid`=277147;
DELETE FROM `creature_addon` WHERE `guid`=277148;
DELETE FROM `creature_addon` WHERE `guid`=277146;
DELETE FROM `creature_addon` WHERE `guid`=802223;
DELETE FROM `creature_addon` WHERE `guid`=802340;
DELETE FROM `creature_addon` WHERE `guid`=802349;
DELETE FROM `creature_addon` WHERE `guid`=802350;
DELETE FROM `creature_addon` WHERE `guid`=802351;
DELETE FROM `creature_addon` WHERE `guid`=803926;
DELETE FROM `creature_addon` WHERE `guid`=804098;
DELETE FROM `creature_addon` WHERE `guid`=804837;
DELETE FROM `creature_addon` WHERE `guid`=804844;
DELETE FROM `creature_addon` WHERE `guid`=804846;
DELETE FROM `creature_addon` WHERE `guid`=804858;
DELETE FROM `creature_addon` WHERE `guid`=10690087;
DELETE FROM `creature_addon` WHERE `guid`=10690088;
DELETE FROM `creature_addon` WHERE `guid`=10690089;
DELETE FROM `creature_addon` WHERE `guid`=10690090;
DELETE FROM `creature_addon` WHERE `guid`=10690091;
DELETE FROM `creature_addon` WHERE `guid`=10690100;
DELETE FROM `creature_addon` WHERE `guid`=10690101;
DELETE FROM `creature_addon` WHERE `guid`=10690102;
DELETE FROM `creature_addon` WHERE `guid`=10690103;
DELETE FROM `creature_addon` WHERE `guid`=10690104;
DELETE FROM `creature_addon` WHERE `guid`=10690105;
DELETE FROM `creature_addon` WHERE `guid`=10690106;
DELETE FROM `creature_addon` WHERE `guid`=10690107;
DELETE FROM `creature_addon` WHERE `guid`=10690108;
DELETE FROM `creature_addon` WHERE `guid`=10690109;
DELETE FROM `creature_addon` WHERE `guid`=10690110;
DELETE FROM `creature_addon` WHERE `guid`=10690111;
DELETE FROM `creature_addon` WHERE `guid`=10690112;
DELETE FROM `creature_addon` WHERE `guid`=10690113;
DELETE FROM `creature_addon` WHERE `guid`=10690114;
DELETE FROM `creature_addon` WHERE `guid`=10690115;
DELETE FROM `creature_addon` WHERE `guid`=10690116;
DELETE FROM `creature_addon` WHERE `guid`=10690117;
DELETE FROM `creature_addon` WHERE `guid`=10690118;
DELETE FROM `creature_addon` WHERE `guid`=10690119;
DELETE FROM `creature_addon` WHERE `guid`=10690190;
DELETE FROM `creature_addon` WHERE `guid`=10690197;
DELETE FROM `creature_addon` WHERE `guid`=10690198;
DELETE FROM `creature_addon` WHERE `guid`=10690199;
DELETE FROM `creature_addon` WHERE `guid`=10690200;
DELETE FROM `creature_addon` WHERE `guid`=10690209;
DELETE FROM `creature_addon` WHERE `guid`=10690210;
DELETE FROM `creature_addon` WHERE `guid`=10690213;
DELETE FROM `creature_addon` WHERE `guid`=10690218;
DELETE FROM `creature_addon` WHERE `guid`=10690219;
DELETE FROM `creature_addon` WHERE `guid`=10690221;
DELETE FROM `creature_addon` WHERE `guid`=10690223;
DELETE FROM `creature_addon` WHERE `guid`=10690224;
DELETE FROM `creature_addon` WHERE `guid`=10690225;
DELETE FROM `creature_addon` WHERE `guid`=10690227;
DELETE FROM `creature_addon` WHERE `guid`=10690229;
DELETE FROM `creature_addon` WHERE `guid`=10690231;
DELETE FROM `creature_addon` WHERE `guid`=10690435;
DELETE FROM `creature_addon` WHERE `guid`=10690462;
DELETE FROM `creature_addon` WHERE `guid`=10690463;
DELETE FROM `creature_addon` WHERE `guid`=10690497;
DELETE FROM `creature_addon` WHERE `guid`=10690565;
DELETE FROM `creature_addon` WHERE `guid`=10690568;
DELETE FROM `creature_addon` WHERE `guid`=10690577;
DELETE FROM `creature_addon` WHERE `guid`=10690579;
DELETE FROM `creature_addon` WHERE `guid`=10690581;
DELETE FROM `creature_addon` WHERE `guid`=10690582;
DELETE FROM `creature_addon` WHERE `guid`=10690584;
DELETE FROM `creature_addon` WHERE `guid`=10690585;
DELETE FROM `creature_addon` WHERE `guid`=10690586;
DELETE FROM `creature_addon` WHERE `guid`=10690587;
DELETE FROM `creature_addon` WHERE `guid`=10690588;
DELETE FROM `creature_addon` WHERE `guid`=10690589;
DELETE FROM `creature_addon` WHERE `guid`=10690592;
DELETE FROM `creature_addon` WHERE `guid`=10690593;
DELETE FROM `creature_addon` WHERE `guid`=10690594;
DELETE FROM `creature_addon` WHERE `guid`=10690602;
DELETE FROM `creature_addon` WHERE `guid`=10690608;
DELETE FROM `creature_addon` WHERE `guid`=10690610;
DELETE FROM `creature_addon` WHERE `guid`=10690616;
DELETE FROM `creature_addon` WHERE `guid`=10690617;
DELETE FROM `creature_addon` WHERE `guid`=10690618;
DELETE FROM `creature_addon` WHERE `guid`=10690619;
DELETE FROM `creature_addon` WHERE `guid`=10690620;
DELETE FROM `creature_addon` WHERE `guid`=10690621;
DELETE FROM `creature_addon` WHERE `guid`=10690622;
DELETE FROM `creature_addon` WHERE `guid`=10690623;
DELETE FROM `creature_addon` WHERE `guid`=10690624;
DELETE FROM `creature_addon` WHERE `guid`=10690625;
DELETE FROM `creature_addon` WHERE `guid`=10690626;
DELETE FROM `creature_addon` WHERE `guid`=10690627;
DELETE FROM `creature_addon` WHERE `guid`=10690628;
DELETE FROM `creature_addon` WHERE `guid`=10690629;
DELETE FROM `creature_addon` WHERE `guid`=10690630;
DELETE FROM `creature_addon` WHERE `guid`=10690631;
DELETE FROM `creature_addon` WHERE `guid`=10690632;
DELETE FROM `creature_addon` WHERE `guid`=10690633;
DELETE FROM `creature_addon` WHERE `guid`=10690634;
DELETE FROM `creature_addon` WHERE `guid`=10690635;
DELETE FROM `creature_addon` WHERE `guid`=10690636;
DELETE FROM `creature_addon` WHERE `guid`=10690637;
DELETE FROM `creature_addon` WHERE `guid`=10690642;
DELETE FROM `creature_addon` WHERE `guid`=10690643;
DELETE FROM `creature_addon` WHERE `guid`=10690644;
DELETE FROM `creature_addon` WHERE `guid`=10690645;
DELETE FROM `creature_addon` WHERE `guid`=10690646;
DELETE FROM `creature_addon` WHERE `guid`=10690647;
DELETE FROM `creature_addon` WHERE `guid`=10690648;
DELETE FROM `creature_addon` WHERE `guid`=10690649;
DELETE FROM `creature_addon` WHERE `guid`=10690651;
DELETE FROM `creature_addon` WHERE `guid`=10690652;
DELETE FROM `creature_addon` WHERE `guid`=10690662;
DELETE FROM `creature_addon` WHERE `guid`=10690664;
DELETE FROM `creature_addon` WHERE `guid`=10690671;
DELETE FROM `creature_addon` WHERE `guid`=10690672;
DELETE FROM `creature_addon` WHERE `guid`=10690673;
DELETE FROM `creature_addon` WHERE `guid`=10690674;
DELETE FROM `creature_addon` WHERE `guid`=10690675;
DELETE FROM `creature_addon` WHERE `guid`=10690676;
DELETE FROM `creature_addon` WHERE `guid`=10690677;
DELETE FROM `creature_addon` WHERE `guid`=10690678;
DELETE FROM `creature_addon` WHERE `guid`=10690680;
DELETE FROM `creature_addon` WHERE `guid`=10690683;
DELETE FROM `creature_addon` WHERE `guid`=10690687;
DELETE FROM `creature_addon` WHERE `guid`=10690694;
DELETE FROM `creature_addon` WHERE `guid`=10690695;
DELETE FROM `creature_addon` WHERE `guid`=10690997;
DELETE FROM `creature_addon` WHERE `guid`=10691002;
DELETE FROM `creature_addon` WHERE `guid`=10691156;
DELETE FROM `creature_addon` WHERE `guid`=10691157;
DELETE FROM `creature_addon` WHERE `guid`=10691158;
DELETE FROM `creature_addon` WHERE `guid`=10691159;
DELETE FROM `creature_addon` WHERE `guid`=10691160;
DELETE FROM `creature_addon` WHERE `guid`=10691161;
DELETE FROM `creature_addon` WHERE `guid`=10691162;
DELETE FROM `creature_addon` WHERE `guid`=10691163;
DELETE FROM `creature_addon` WHERE `guid`=10691164;
DELETE FROM `creature_addon` WHERE `guid`=10691165;
DELETE FROM `creature_addon` WHERE `guid`=10691166;
DELETE FROM `creature_addon` WHERE `guid`=10691167;
DELETE FROM `creature_addon` WHERE `guid`=10691168;
DELETE FROM `creature_addon` WHERE `guid`=10691169;
DELETE FROM `creature_addon` WHERE `guid`=10691170;
DELETE FROM `creature_addon` WHERE `guid`=10691171;
DELETE FROM `creature_addon` WHERE `guid`=10691172;
DELETE FROM `creature_addon` WHERE `guid`=10691173;
DELETE FROM `creature_addon` WHERE `guid`=10691174;
DELETE FROM `creature_addon` WHERE `guid`=10691175;
DELETE FROM `creature_addon` WHERE `guid`=10691180;
DELETE FROM `creature_addon` WHERE `guid`=10691401;
DELETE FROM `creature_addon` WHERE `guid`=10691402;
DELETE FROM `creature_addon` WHERE `guid`=10691403;
DELETE FROM `creature_addon` WHERE `guid`=10691404;
DELETE FROM `creature_addon` WHERE `guid`=10691513;
DELETE FROM `creature_addon` WHERE `guid`=10691514;
DELETE FROM `creature_addon` WHERE `guid`=10691515;
DELETE FROM `creature_addon` WHERE `guid`=10691516;
DELETE FROM `creature_addon` WHERE `guid`=10691517;
DELETE FROM `creature_addon` WHERE `guid`=10691518;
DELETE FROM `creature_addon` WHERE `guid`=10691519;
DELETE FROM `creature_addon` WHERE `guid`=10691520;
DELETE FROM `creature_addon` WHERE `guid`=10691521;
DELETE FROM `creature_addon` WHERE `guid`=10691522;
DELETE FROM `creature_addon` WHERE `guid`=10691523;
DELETE FROM `creature_addon` WHERE `guid`=10691524;
DELETE FROM `creature_addon` WHERE `guid`=10691525;
DELETE FROM `creature_addon` WHERE `guid`=10691526;
DELETE FROM `creature_addon` WHERE `guid`=10691527;
DELETE FROM `creature_addon` WHERE `guid`=10691528;
DELETE FROM `creature_addon` WHERE `guid`=10691529;
DELETE FROM `creature_addon` WHERE `guid`=10691530;
DELETE FROM `creature_addon` WHERE `guid`=10691531;
DELETE FROM `creature_addon` WHERE `guid`=10691532;
DELETE FROM `creature_addon` WHERE `guid`=10691533;
DELETE FROM `creature_addon` WHERE `guid`=10691534;
DELETE FROM `creature_addon` WHERE `guid`=10691535;
DELETE FROM `creature_addon` WHERE `guid`=10691536;

DELETE FROM `gameobject` WHERE `guid`=10690341; /*Entry: 256877 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690340; /*Entry: 256876 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690339; /*Entry: 256879 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690338; /*Entry: 256878 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690337; /*Entry: 256881 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690336; /*Entry: 256880 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690335; /*Entry: 256883 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690334; /*Entry: 256882 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690333; /*Entry: 256903 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690332; /*Entry: 256902 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690331; /*Entry: 256873 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690330; /*Entry: 256875 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690329; /*Entry: 256901 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690328; /*Entry: 256874 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690327; /*Entry: 256885 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690326; /*Entry: 256884 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690325; /*Entry: 256887 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690323; /*Entry: 256893 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690322; /*Entry: 256892 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690320; /*Entry: 248513 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690319; /*Entry: 255926 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690301; /*Entry: 251033 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690300; /*Entry: 242174 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690299; /*Entry: 266919 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690298; /*Entry: 252322 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690297; /*Entry: 252349 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690296; /*Entry: 254240 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690295; /*Entry: 247973 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690294; /*Entry: 247972 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690293; /*Entry: 247971 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690292; /*Entry: 247970 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690291; /*Entry: 251844 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690290; /*Entry: 252105 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690289; /*Entry: 252103 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690288; /*Entry: 251519 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690287; /*Entry: 253988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690286; /*Entry: 251397 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690285; /*Entry: 251398 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690284; /*Entry: 266181 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690283; /*Entry: 266180 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690282; /*Entry: 266183 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690281; /*Entry: 266182 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690280; /*Entry: 260985 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690279; /*Entry: 252321 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690278; /*Entry: 252320 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690277; /*Entry: 266174 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690276; /*Entry: 252348 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690275; /*Entry: 252319 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690274; /*Entry: 252318 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690273; /*Entry: 266395 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690272; /*Entry: 251988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690271; /*Entry: 251984 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690270; /*Entry: 250241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690269; /*Entry: 250243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690268; /*Entry: 250242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690267; /*Entry: 253462 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690266; /*Entry: 251401 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690265; /*Entry: 251609 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690264; /*Entry: 251611 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690263; /*Entry: 251610 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690262; /*Entry: 248932 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690261; /*Entry: 252316 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690260; /*Entry: 254242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690259; /*Entry: 251982 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690258; /*Entry: 252435 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690257; /*Entry: 258847 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=200888;   /*non existing gameobject entry 203087*/
DELETE FROM `gameobject` WHERE `guid`=10690256; /*Entry: 253989 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690255; /*Entry: 251608 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690254; /*Entry: 252315 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690253; /*Entry: 254241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690252; /*Entry: 254243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690251; /*Entry: 251685 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690250; /*Entry: 251684 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690249; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690248; /*Entry: 251330 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690247; /*Entry: 255928 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690246; /*Entry: 255925 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690245; /*Entry: 256872 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690244; /*Entry: 256857 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690243; /*Entry: 251612 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690242; /*Entry: 253924 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690241; /*Entry: 253923 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690240; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690239; /*Entry: 252317 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690238; /*Entry: 251983 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690237; /*Entry: 258843 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690236; /*Entry: 256894 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690235; /*Entry: 266173 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690234; /*Entry: 256899 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690233; /*Entry: 256898 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690232; /*Entry: 253178 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690231; /*Entry: 266959 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690230; /*Entry: 251687 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690229; /*Entry: 251686 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690228; /*Entry: 251683 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690226; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690224; /*Entry: 251844 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690223; /*Entry: 266919 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690222; /*Entry: 266173 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690221; /*Entry: 253989 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690220; /*Entry: 253988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690219; /*Entry: 248932 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690218; /*Entry: 250241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690217; /*Entry: 250243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690216; /*Entry: 250242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690215; /*Entry: 251519 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690214; /*Entry: 252349 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690213; /*Entry: 252348 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690212; /*Entry: 251401 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690211; /*Entry: 251397 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690210; /*Entry: 251398 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690209; /*Entry: 254241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690208; /*Entry: 254240 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690207; /*Entry: 251984 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690206; /*Entry: 252435 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690205; /*Entry: 252105 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690204; /*Entry: 252103 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690203; /*Entry: 247973 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690202; /*Entry: 247972 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690201; /*Entry: 247971 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690200; /*Entry: 247970 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690199; /*Entry: 251684 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690198; /*Entry: 251687 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690197; /*Entry: 251686 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690196; /*Entry: 251683 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690195; /*Entry: 258847 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690194; /*Entry: 253924 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690193; /*Entry: 253923 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690192; /*Entry: 252316 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690191; /*Entry: 252319 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690190; /*Entry: 252315 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690189; /*Entry: 251612 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690188; /*Entry: 251609 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690187; /*Entry: 251608 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690186; /*Entry: 251611 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690185; /*Entry: 251610 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690184; /*Entry: 254243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690183; /*Entry: 254242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690182; /*Entry: 251988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690181; /*Entry: 251981 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690180; /*Entry: 251983 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690179; /*Entry: 251982 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690178; /*Entry: 251685 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690177; /*Entry: 266181 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690176; /*Entry: 266180 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690175; /*Entry: 266183 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690174; /*Entry: 266182 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690173; /*Entry: 266174 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690172; /*Entry: 260985 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690171; /*Entry: 252321 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690170; /*Entry: 252320 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690169; /*Entry: 252318 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690168; /*Entry: 266395 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690167; /*Entry: 253462 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690166; /*Entry: 253128 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690165; /*Entry: 258848 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690164; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690163; /*Entry: 255926 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690162; /*Entry: 255927 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690161; /*Entry: 251330 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690160; /*Entry: 255928 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690159; /*Entry: 255925 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690158; /*Entry: 256894 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690157; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690156; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690155; /*Entry: 252317 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690154; /*Entry: 258843 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690153; /*Entry: 256893 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690151; /*Entry: 256872 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690150; /*Entry: 260985 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690149; /*Entry: 251988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690148; /*Entry: 266181 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690147; /*Entry: 266180 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690146; /*Entry: 266183 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690145; /*Entry: 266182 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690144; /*Entry: 266174 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690143; /*Entry: 252320 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690142; /*Entry: 252318 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690141; /*Entry: 266959 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690140; /*Entry: 266395 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690139; /*Entry: 247972 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690138; /*Entry: 254239 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690137; /*Entry: 254148 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690136; /*Entry: 254147 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690135; /*Entry: 266919 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690134; /*Entry: 251844 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690133; /*Entry: 253988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690132; /*Entry: 251833 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690131; /*Entry: 251832 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690130; /*Entry: 265470 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690129; /*Entry: 265469 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690128; /*Entry: 253462 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690127; /*Entry: 252321 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690126; /*Entry: 252322 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690125; /*Entry: 252349 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690124; /*Entry: 252319 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690123; /*Entry: 259929 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690122; /*Entry: 254240 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690121; /*Entry: 247973 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690120; /*Entry: 247971 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690119; /*Entry: 247970 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690118; /*Entry: 251611 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690117; /*Entry: 254276 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690116; /*Entry: 254238 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690115; /*Entry: 254149 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690114; /*Entry: 251519 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690113; /*Entry: 252105 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690112; /*Entry: 252103 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690111; /*Entry: 251982 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690110; /*Entry: 250241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690109; /*Entry: 250243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690108; /*Entry: 250242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690107; /*Entry: 251984 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690106; /*Entry: 252435 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690105; /*Entry: 251685 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690104; /*Entry: 252348 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690103; /*Entry: 252316 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690102; /*Entry: 252315 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690101; /*Entry: 254243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690100; /*Entry: 254242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690099; /*Entry: 251612 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690098; /*Entry: 251609 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690097; /*Entry: 251608 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690096; /*Entry: 251610 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690095; /*Entry: 254145 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690094; /*Entry: 258847 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690093; /*Entry: 248932 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690092; /*Entry: 251401 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690091; /*Entry: 251397 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690090; /*Entry: 251398 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690089; /*Entry: 251981 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690088; /*Entry: 251983 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690087; /*Entry: 253924 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690086; /*Entry: 251684 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690085; /*Entry: 251687 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690084; /*Entry: 251686 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690083; /*Entry: 253923 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690082; /*Entry: 251683 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690081; /*Entry: 254241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690080; /*Entry: 256857 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690079; /*Entry: 253989 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690078; /*Entry: 243403 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690077; /*Entry: 266173 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690076; /*Entry: 256899 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690075; /*Entry: 256898 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690074; /*Entry: 256894 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690073; /*Entry: 258848 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690072; /*Entry: 255928 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690071; /*Entry: 251844 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690070; /*Entry: 266919 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690069; /*Entry: 254240 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690068; /*Entry: 247973 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690067; /*Entry: 247972 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690066; /*Entry: 247971 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690065; /*Entry: 247970 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690064; /*Entry: 252322 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690063; /*Entry: 252349 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690062; /*Entry: 252348 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690061; /*Entry: 253989 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690060; /*Entry: 253924 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690059; /*Entry: 248513 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690058; /*Entry: 251401 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690057; /*Entry: 251397 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690056; /*Entry: 251398 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690055; /*Entry: 252105 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690054; /*Entry: 252103 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690053; /*Entry: 251519 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690052; /*Entry: 252435 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690051; /*Entry: 266173 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690050; /*Entry: 250241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690049; /*Entry: 250243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690048; /*Entry: 250242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690047; /*Entry: 251984 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690046; /*Entry: 252318 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690045; /*Entry: 251684 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690044; /*Entry: 251687 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690043; /*Entry: 251686 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690042; /*Entry: 251683 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690041; /*Entry: 252321 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690040; /*Entry: 253988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690039; /*Entry: 253178 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690038; /*Entry: 253923 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690037; /*Entry: 266395 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690036; /*Entry: 248932 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690035; /*Entry: 254241 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690034; /*Entry: 266174 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690033; /*Entry: 266181 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690032; /*Entry: 266180 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690031; /*Entry: 266183 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690030; /*Entry: 266182 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690029; /*Entry: 260985 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690028; /*Entry: 251983 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690027; /*Entry: 253462 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690026; /*Entry: 251988 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690025; /*Entry: 256893 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690024; /*Entry: 256892 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690023; /*Entry: 252319 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690022; /*Entry: 251685 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690021; /*Entry: 252320 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690020; /*Entry: 258847 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690019; /*Entry: 254243 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690018; /*Entry: 254242 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690017; /*Entry: 255925 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690016; /*Entry: 251981 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690015; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690014; /*Entry: 252315 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690013; /*Entry: 251609 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690012; /*Entry: 251608 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690011; /*Entry: 255926 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690010; /*Entry: 251982 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690009; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690008; /*Entry: 252317 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690007; /*Entry: 266835 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690006; /*Entry: 258843 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690005; /*Entry: 251612 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690004; /*Entry: 255927 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690003; /*Entry: 251330 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690002; /*Entry: 252316 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=10690001; /*Entry: 251611 with invalid coordinates*/
DELETE FROM `gameobject` WHERE `guid`=350001;   /*non existing gameobject entry 204811*/
DELETE FROM `gameobject` WHERE `guid`=10690000; /*Entry: 251610 with invalid coordinates*/

UPDATE `creature_template` SET `HealthScalingExpansion`=0 WHERE `HealthScalingExpansion`=7;
/*delete corrupted creature entries*/
DELETE FROM `creature_template` WHERE `entry`=142154 OR `entry`=141804 OR `entry`=141826 OR `entry`=141845 OR `entry`=141903 OR `entry`=141706 OR `entry`=141767 AND `name`="0";
DELETE FROM `creature_equip_template` WHERE `CreatureID`=142154 OR `CreatureID`=141804 OR `CreatureID`=141826 OR `CreatureID`=141845 OR `CreatureID`=141706 OR `CreatureID`=141767;
DELETE FROM `creature_template_addon` WHERE `entry`=142154 OR `entry`=141804 OR `entry`=141826 OR `entry`=141845 OR `entry`=141706 OR `entry`=141767 OR `entry`=140462;
DELETE FROM `creature_template_scaling` WHERE `Entry`=142154 OR `Entry`=141804 OR `Entry`=141826 OR `Entry`=141845 OR `Entry`=141706 OR `Entry`=141767;
/*gives error because this was added in 8.0.1.26476*/
DELETE FROM `creature_template` WHERE `entry`=140462 AND `name`="Hermf";
/*unknown items*/
UPDATE `creature_equip_template` SET `ItemID1`=0 WHERE `ItemID1`=163831 OR `ItemID1`=161486 OR `ItemID1`=128097 OR `ItemID1`=116646;
UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE `ItemID2`=163832;
/*gives error because this was added in 8.0.1.27101*/
DELETE FROM `gameobject_template` WHERE `entry`=245623 AND `Data0`=200499;
DELETE FROM `gameobject_template_addon` WHERE `entry`=245623;
DELETE FROM `gameobject` WHERE `guid`=20366054 AND `id`=245623;
DELETE FROM `game_event_gameobject` WHERE `guid`=200888;
DELETE FROM `gameobject_addon` WHERE `guid`=20366054;
DELETE FROM `game_event_creature` WHERE `guid`=307680 OR `guid`=354578 OR `guid`=374011 OR `guid`=374047 OR `guid`=374319 OR `guid`=374325;
UPDATE `creature_template_addon` SET `auras`="" WHERE `auras`="122729" OR `auras`="46598" OR `auras`="61424";
UPDATE `creature_template_addon` SET `auras`="227371 206261" WHERE `entry`=114438;
UPDATE `creature_addon` SET `auras`="" WHERE `guid`=20556546 OR `guid`=40000725;
UPDATE `quest_template` SET `RewardSpell`=0 WHERE `RewardSpell`=81040;
DELETE FROM `event_scripts` WHERE `id`=11424 AND `datalong`=6781;
UPDATE `creature_template` SET `lootid`=0 WHERE `lootid`=81535 OR `lootid`=81252 OR `lootid`=75786;
UPDATE `pool_gameobject` SET `chance`=0 WHERE `pool_entry`=4303 OR `pool_entry`=4304 OR `pool_entry`=4305;
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33194; /*non-existing or incompatible BroadcastText (ID: 138838)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32983; /*non-existing or incompatible BroadcastText (ID: 137564)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32996; /*non-existing or incompatible BroadcastText (ID: 137599)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32738; /*non-existing or incompatible BroadcastText (ID: 136656)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33005; /*non-existing or incompatible BroadcastText (ID: 137645)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32555; /*non-existing or incompatible BroadcastText (ID: 135021)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32179; /*non-existing or incompatible BroadcastText (ID: 136138)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32104; /*non-existing or incompatible BroadcastText (ID: 132082)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31631; /*non-existing or incompatible BroadcastText (ID: 129592)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31923; /*non-existing or incompatible BroadcastText (ID: 130909)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31832; /*non-existing or incompatible BroadcastText (ID: 130599)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32721; /*non-existing or incompatible BroadcastText (ID: 136541)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32453; /*non-existing or incompatible BroadcastText (ID: 135867)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32063; /*non-existing or incompatible BroadcastText (ID: 131756)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32064; /*non-existing or incompatible BroadcastText (ID: 131760)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32431; /*non-existing or incompatible BroadcastText (ID: 134033)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32430; /*non-existing or incompatible BroadcastText (ID: 134027)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32429; /*non-existing or incompatible BroadcastText (ID: 134026)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32400; /*non-existing or incompatible BroadcastText (ID: 133862)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32383; /*non-existing or incompatible BroadcastText (ID: 133809)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32380; /*non-existing or incompatible BroadcastText (ID: 133782)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32256; /*non-existing or incompatible BroadcastText (ID: 132971)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32247; /*non-existing or incompatible BroadcastText (ID: 132929)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33170; /*non-existing or incompatible BroadcastText (ID: 137831)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32234; /*non-existing or incompatible BroadcastText (ID: 132863)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32233; /*non-existing or incompatible BroadcastText (ID: 132862)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32232; /*non-existing or incompatible BroadcastText (ID: 132860)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32231; /*non-existing or incompatible BroadcastText (ID: 132856)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32255; /*non-existing or incompatible BroadcastText (ID: 132970)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32313; /*non-existing or incompatible BroadcastText (ID: 133322)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33171; /*non-existing or incompatible BroadcastText (ID: 137835)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32236; /*non-existing or incompatible BroadcastText (ID: 132866)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32237; /*non-existing or incompatible BroadcastText (ID: 132867)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32235; /*non-existing or incompatible BroadcastText (ID: 132864)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32321; /*non-existing or incompatible BroadcastText (ID: 133334)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33168; /*non-existing or incompatible BroadcastText (ID: 137809)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31640; /*non-existing or incompatible BroadcastText (ID: 129693)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31694; /*non-existing or incompatible BroadcastText (ID: 129970)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33055; /*non-existing or incompatible BroadcastText (ID: 137843)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33056; /*non-existing or incompatible BroadcastText (ID: 137934)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32798; /*non-existing or incompatible BroadcastText (ID: 136890)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32238; /*non-existing or incompatible BroadcastText (ID: 130540)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32773; /*non-existing or incompatible BroadcastText (ID: 136787)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32772; /*non-existing or incompatible BroadcastText (ID: 136781)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32778; /*non-existing or incompatible BroadcastText (ID: 136826)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32787; /*non-existing or incompatible BroadcastText (ID: 136839)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32926; /*non-existing or incompatible BroadcastText (ID: 137415)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32436; /*non-existing or incompatible BroadcastText (ID: 134071)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32946; /*non-existing or incompatible BroadcastText (ID: 137473)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33066; /*non-existing or incompatible BroadcastText (ID: 137944)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33063; /*non-existing or incompatible BroadcastText (ID: 137941)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33061; /*non-existing or incompatible BroadcastText (ID: 137939)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33062; /*non-existing or incompatible BroadcastText (ID: 137940)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33064; /*non-existing or incompatible BroadcastText (ID: 137942)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32239; /*non-existing or incompatible BroadcastText (ID: 132874)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32748; /*non-existing or incompatible BroadcastText (ID: 136701)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32160; /*non-existing or incompatible BroadcastText (ID: 132435)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32158; /*non-existing or incompatible BroadcastText (ID: 132421)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32156; /*non-existing or incompatible BroadcastText (ID: 132409)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32405; /*non-existing or incompatible BroadcastText (ID: 130540)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32692; /*non-existing or incompatible BroadcastText (ID: 136392)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32673; /*non-existing or incompatible BroadcastText (ID: 136304)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32672; /*non-existing or incompatible BroadcastText (ID: 136245)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33043; /*non-existing or incompatible BroadcastText (ID: 137846)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=33045; /*non-existing or incompatible BroadcastText (ID: 137852)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32691; /*non-existing or incompatible BroadcastText (ID: 136390)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32832; /*non-existing or incompatible BroadcastText (ID: 137081)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32671; /*non-existing or incompatible BroadcastText (ID: 136244)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31695; /*non-existing or incompatible BroadcastText (ID: 129987)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32451; /*non-existing or incompatible BroadcastText (ID: 134167)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31811; /*non-existing or incompatible BroadcastText (ID: 130540)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=32944; /*non-existing or incompatible BroadcastText (ID: 137467)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31708; /*non-existing or incompatible BroadcastText (ID: 130103)*/
UPDATE `npc_text` SET `Probability0`=0, `Probability1`=0, `Probability2`=0, `Probability3`=0, `Probability4`=0, `BroadcastTextID0`=0, `BroadcastTextID1`=0, `BroadcastTextID2`=0, `BroadcastTextID3`=0, `BroadcastTextID4`=0 WHERE `ID`=31906; /*non-existing or incompatible BroadcastText (ID: 130807)*/
DELETE FROM `creature_loot_template` WHERE `Item`=1 OR `Item`=2 OR `Item`=3 OR `Item`=4 OR `Item`=5 OR `Item`=6 OR `Item`=7 OR `Item`=8 OR `Item`=9 OR `Item`=10 OR `Item`=190069 OR `Item`=34072 OR `Item`=140022;
DELETE FROM `reference_loot_template` WHERE `Item`=107079 OR `Item`=141822 OR `Item`=134337 OR `Item`=130660 OR `Item`=122799 OR `Item`=199880 OR `Item`=141812;
UPDATE `creature_template` SET `lootid`=0 WHERE `lootid`=33118 OR `lootid`=33186 OR `lootid`=33515;
UPDATE `gameobject_template` SET `Data1`=0 WHERE `Data1`=70581 OR `Data1`=62091 OR `Data1`=64266 OR `Data1`=70565;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=233107;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=240586;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241146;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241147;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241148;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241149;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241152;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241153;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241154;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241180;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241206;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241207;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241212;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241213;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241460;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241462;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241518;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241558;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241562;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241564;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241665;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241866;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241870;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241871;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241872;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241873;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=241874;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=243819;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=243820;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=243822;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=243823;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244779;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244828;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244829;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244899;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244901;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244902;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244903;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=244904;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=245171;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=249890;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=250984;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=250985;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=250987;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251007;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251008;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251713;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251714;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251716;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251723;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251761;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251762;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251764;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251772;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251776;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251780;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251782;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251792;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251820;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251854;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=251856;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=258849;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=258850;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=258851;
DELETE FROM `spell_loot_template` WHERE `Entry`=263148;
DELETE FROM `spell_loot_template` WHERE `Entry`=263149;
DELETE FROM `spell_loot_template` WHERE `Entry`=263150;
DELETE FROM `spell_loot_template` WHERE `Entry`=263151;
DELETE FROM `spell_loot_template` WHERE `Entry`=263152;
DELETE FROM `spell_loot_template` WHERE `Entry`=263153;
DELETE FROM `spell_loot_template` WHERE `Entry`=263154;
DELETE FROM `reference_loot_template` WHERE `Entry`=23424;
DELETE FROM `reference_loot_template` WHERE `Entry`=23425;
DELETE FROM `reference_loot_template` WHERE `Entry`=31091;
DELETE FROM `reference_loot_template` WHERE `Entry`=31099;
DELETE FROM `reference_loot_template` WHERE `Entry`=45636;
DELETE FROM `reference_loot_template` WHERE `Entry`=263148;
DELETE FROM `reference_loot_template` WHERE `Entry`=263149;
DELETE FROM `reference_loot_template` WHERE `Entry`=263150;
DELETE FROM `reference_loot_template` WHERE `Entry`=263151;
DELETE FROM `reference_loot_template` WHERE `Entry`=263152;
DELETE FROM `reference_loot_template` WHERE `Entry`=263153;
DELETE FROM `reference_loot_template` WHERE `Entry`=263154;
DELETE FROM `reference_loot_template` WHERE `Entry`=300001;
DELETE FROM `reference_loot_template` WHERE `Entry`=300002;
DELETE FROM `reference_loot_template` WHERE `Entry`=300003;
DELETE FROM `reference_loot_template` WHERE `Entry`=300004;
DELETE FROM `reference_loot_template` WHERE `Entry`=300005;
DELETE FROM `reference_loot_template` WHERE `Entry`=300006;
DELETE FROM `reference_loot_template` WHERE `Entry`=300007;
DELETE FROM `reference_loot_template` WHERE `Entry`=300008;
DELETE FROM `reference_loot_template` WHERE `Entry`=34359;
DELETE FROM `reference_loot_template` WHERE `Entry`=34360;
DELETE FROM `reference_loot_template` WHERE `Entry`=74475;
DELETE FROM `reference_loot_template` WHERE `Entry`=74787;
DELETE FROM `reference_loot_template` WHERE `Entry`=74790;
DELETE FROM `reference_loot_template` WHERE `Entry`=75786;
DELETE FROM `reference_loot_template` WHERE `Entry`=81252;
DELETE FROM `reference_loot_template` WHERE `Entry`=81535;

UPDATE `creature_template` SET `npcflag`=128 WHERE `entry`=92185 OR `entry`=98367;
UPDATE `creature` SET `npcflag`=128 WHERE `id`=92185 OR `id`=98367;
/*groupid missing*/
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=77428 AND `Item`!=0;
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=77404 AND `Item`!=0;
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=78714 AND `Item`!=0;
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=78238 AND `Item`!=0;
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=79015 AND `Item`!=0;
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=78948 AND `Item`!=0;
UPDATE `creature_loot_template` SET `GroupId`=1 WHERE `Entry`=78491 AND `Item`!=0;
/*non-existing item (bfa)*/
DELETE FROM `npc_vendor` WHERE `item` IN (160298);
/*non-existing spells (bfa)*/
DELETE FROM `trainer_spell` WHERE `SpellId` IN (264633, 264484, 264478, 265838, 264617, 264623, 264639, 265844, 265820, 271657, 271659, 271661, 271665, 264212, 271673, 271663, 271617, 264578, 265856, 264495);
DELETE FROM `spell_target_position` WHERE `ID`=279114;
/*bfa*/
DELETE FROM `gossip_menu` WHERE `MenuId` IN (10554, 10790, 10819);
DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (10554, 10790, 10819);
DELETE FROM `gossip_menu_option_action` WHERE `MenuId` IN (10554, 10790, 10819);
DELETE FROM `gossip_menu_option_box` WHERE `MenuId` IN (10554, 10790, 10819);
DELETE FROM `gossip_menu_option_locale` WHERE `MenuId` IN (10554, 10790, 10819);
DELETE FROM `gossip_menu_option_trainer` WHERE `MenuId` IN (10554, 10790, 10819);
DELETE FROM `gossip_menu` WHERE `MenuId` IN (13714, 18575, 19769, 19867, 19907, 20728, 20746, 20974, 20985, 20989, 21004, 21013, 21049, 21058, 21059,  21067, 21072, 21075, 21144, 21163, 21208,  21238, 21239, 21240, 21241, 21242, 21243, 21244, 21245, 21247, 21253, 21291, 21312, 21315, 21323, 21380, 21423, 21451, 21454, 21456, 21457, 21462, 21505, 21519, 21709);
DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (13714, 18575, 19769, 19867, 19907, 20728, 20746, 20974, 20985, 20989, 21004, 21013, 21049, 21058, 21059,  21067, 21072, 21075, 21144, 21163, 21208,  21238, 21239, 21240, 21241, 21242, 21243, 21244, 21245, 21247, 21253, 21291, 21312, 21315, 21323, 21380, 21423, 21451, 21454, 21456, 21457, 21462, 21505, 21519, 21709);
DELETE FROM `gossip_menu_option_action` WHERE `MenuId` IN (13714, 18575, 19769, 19867, 19907, 20728, 20746, 20974, 20985, 20989, 21004, 21013, 21049, 21058, 21059,  21067, 21072, 21075, 21144, 21163, 21208,  21238, 21239, 21240, 21241, 21242, 21243, 21244, 21245, 21247, 21253, 21291, 21312, 21315, 21323, 21380, 21423, 21451, 21454, 21456, 21457, 21462, 21505, 21519, 21709);
DELETE FROM `gossip_menu_option_box` WHERE `MenuId` IN (13714, 18575, 19769, 19867, 19907, 20728, 20746, 20974, 20985, 20989, 21004, 21013, 21049, 21058, 21059,  21067, 21072, 21075, 21144, 21163, 21208,  21238, 21239, 21240, 21241, 21242, 21243, 21244, 21245, 21247, 21253, 21291, 21312, 21315, 21323, 21380, 21423, 21451, 21454, 21456, 21457, 21462, 21505, 21519, 21709);
DELETE FROM `gossip_menu_option_locale` WHERE `MenuId` IN (13714, 18575, 19769, 19867, 19907, 20728, 20746, 20974, 20985, 20989, 21004, 21013, 21049, 21058, 21059,  21067, 21072, 21075, 21144, 21163, 21208,  21238, 21239, 21240, 21241, 21242, 21243, 21244, 21245, 21247, 21253, 21291, 21312, 21315, 21323, 21380, 21423, 21451, 21454, 21456, 21457, 21462, 21505, 21519, 21709);
DELETE FROM `gossip_menu_option_trainer` WHERE `MenuId` IN (13714, 18575, 19769, 19867, 19907, 20728, 20746, 20974, 20985, 20989, 21004, 21013, 21049, 21058, 21059,  21067, 21072, 21075, 21144, 21163, 21208,  21238, 21239, 21240, 21241, 21242, 21243, 21244, 21245, 21247, 21253, 21291, 21312, 21315, 21323, 21380, 21423, 21451, 21454, 21456, 21457, 21462, 21505, 21519, 21709);
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (138187, 138213, 310315);
DELETE FROM `creature_formations` WHERE `memberGUID` IN (310334);
UPDATE `npc_vendor` SET `PlayerConditionId`=0 WHERE `PlayerConditionId` IN (12237, 12238, 12241, 12242);
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133127 AND `item`=4404;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133127 AND `item`=4371;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133127 AND `item`=4357;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133127 AND `item`=4364;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133127 AND `item`=18647;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133127 AND `item`=22729;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133239 AND `item`=10317;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133239 AND `item`=5772;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133239 AND `item`=6270;
UPDATE `npc_vendor` SET `incrtime`=3600 WHERE `entry`=133239 AND `item`=10314;


DELETE FROM `creature_classlevelstats` WHERE `level` IN (116, 117, 118, 119, 119, 120);
INSERT INTO `creature_classlevelstats`(`level`,`class`,`basemana`,`basearmor`,`attackpower`,`rangedattackpower`,`damage_base`,`damage_exp1`,`damage_exp2`,`damage_exp3`,`damage_exp4`,`damage_exp5`,`comment`) values 
(116,1,1,1,0,0,0,0,0,0,0,0,NULL),
(117,1,1,1,0,0,0,0,0,0,0,0,NULL),
(118,1,1,1,0,0,0,0,0,0,0,0,NULL),
(119,1,1,1,0,0,0,0,0,0,0,0,NULL),
(120,1,1,1,0,0,0,0,0,0,0,0,NULL);

DELETE FROM `trinity_string` WHERE `entry` IN (84, 85, 86, 1031, 11017, 11018, 11019, 11020, 11021);
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('84','Size: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('85','Faction: %u Flags: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('86','Model dimensions from center: Max X %f Y %f Z %f Min X %f Y %f Z %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1031','An account password can NOT be longer than 16 characters (client limit). The account was NOT created.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('11017','Server shutdown delayed to %d seconds as other users are still connected. Specify \'force\' to override.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('11018','Server shutdown scheduled for T+%d seconds was successfully cancelled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('11019','You changed %s of %s to %d/%d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('11020','%s changed your %s to %d/%d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('11021','Invalid power name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);