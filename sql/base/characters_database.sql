-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.45-log - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица characters_dump.account_data
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE IF NOT EXISTS `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.account_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.account_instance_times
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE IF NOT EXISTS `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.account_instance_times: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.account_tutorial
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE IF NOT EXISTS `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.account_tutorial: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `account_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_tutorial` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.arena_team
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE IF NOT EXISTS `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.arena_team: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.arena_team_member
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE IF NOT EXISTS `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.arena_team_member: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.auctionhouse
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemowner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deposit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.auctionhouse: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.blackmarket_auctions
DROP TABLE IF EXISTS `blackmarket_auctions`;
CREATE TABLE IF NOT EXISTS `blackmarket_auctions` (
  `marketId` int(10) NOT NULL DEFAULT '0',
  `currentBid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `numBids` int(10) NOT NULL DEFAULT '0',
  `bidder` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`marketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.blackmarket_auctions: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `blackmarket_auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackmarket_auctions` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.bugreport
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- Дамп данных таблицы characters_dump.bugreport: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.calendar_events
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `EventID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Owner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `EventType` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `TextureID` int(10) NOT NULL DEFAULT '-1',
  `Date` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `LockDate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.calendar_events: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.calendar_invites
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE IF NOT EXISTS `calendar_invites` (
  `InviteID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `EventID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Invitee` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Sender` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ResponseTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ModerationRank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.calendar_invites: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `calendar_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_invites` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.channels
DROP TABLE IF EXISTS `channels`;
CREATE TABLE IF NOT EXISTS `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- Дамп данных таблицы characters_dump.channels: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.characters
DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `face` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hairStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hairColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `facialStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inventorySlots` tinyint(3) unsigned NOT NULL DEFAULT '16',
  `bankSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `restState` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlagsEx` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeonDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `primarySpecialization` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `power6` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `activeTalentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lootSpecId` int(10) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xpRate` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `honor` int(10) unsigned NOT NULL DEFAULT '0',
  `honorLevel` int(10) unsigned NOT NULL DEFAULT '1',
  `prestigeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `honorRestState` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `honorRestBonus` float NOT NULL DEFAULT '0',
  `lastLoginBuild` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.characters: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_account_data
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_account_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_achievement
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE IF NOT EXISTS `character_achievement` (
  `guid` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_achievement: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_achievement_progress
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE IF NOT EXISTS `character_achievement_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_achievement_progress: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_action
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_action: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_archaeology_branchs
DROP TABLE IF EXISTS `character_archaeology_branchs`;
CREATE TABLE IF NOT EXISTS `character_archaeology_branchs` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `projectId` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_archaeology_branchs: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_archaeology_branchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_branchs` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_archaeology_digsites
DROP TABLE IF EXISTS `character_archaeology_digsites`;
CREATE TABLE IF NOT EXISTS `character_archaeology_digsites` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `digsiteId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`digsiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_archaeology_digsites: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_archaeology_digsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_digsites` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_archaeology_history
DROP TABLE IF EXISTS `character_archaeology_history`;
CREATE TABLE IF NOT EXISTS `character_archaeology_history` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `projectId` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_archaeology_history: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_archaeology_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_history` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_arena_data
DROP TABLE IF EXISTS `character_arena_data`;
CREATE TABLE IF NOT EXISTS `character_arena_data` (
  `guid` bigint(20) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfWeek` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` int(10) unsigned NOT NULL DEFAULT '0',
  `weekWins` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekGames` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekWins` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonWins` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_arena_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_arena_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_arena_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_aura
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `castItemLevel` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_aura: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_aura_effect
DROP TABLE IF EXISTS `character_aura_effect`;
CREATE TABLE IF NOT EXISTS `character_aura_effect` (
  `guid` bigint(20) unsigned NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_aura_effect: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura_effect` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_banned
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE IF NOT EXISTS `character_banned` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Дамп данных таблицы characters_dump.character_banned: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_battleground_data
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_battleground_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_battleground_random
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE IF NOT EXISTS `character_battleground_random` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_battleground_random: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_cuf_profiles
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE IF NOT EXISTS `character_cuf_profiles` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame top alignment',
  `bottomPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame left alignment',
  `topOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from top',
  `bottomOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_cuf_profiles: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_cuf_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_cuf_profiles` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_currency
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE IF NOT EXISTS `character_currency` (
  `CharacterGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Currency` smallint(5) unsigned NOT NULL,
  `Quantity` int(10) unsigned NOT NULL,
  `WeeklyQuantity` int(10) unsigned NOT NULL,
  `TrackedQuantity` int(10) unsigned NOT NULL,
  `Flags` tinyint(3) unsigned NOT NULL,
  `WeekCap` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`Currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_currency: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_declinedname
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE IF NOT EXISTS `character_declinedname` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_declinedname: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_equipmentsets
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE IF NOT EXISTS `character_equipmentsets` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `AssignedSpecIndex` int(11) NOT NULL DEFAULT '-1',
  `item0` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item15` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item16` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item17` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item18` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_equipmentsets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_fishingsteps
DROP TABLE IF EXISTS `character_fishingsteps`;
CREATE TABLE IF NOT EXISTS `character_fishingsteps` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_fishingsteps: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_fishingsteps` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_fishingsteps` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison
DROP TABLE IF EXISTS `character_garrison`;
CREATE TABLE IF NOT EXISTS `character_garrison` (
  `guid` bigint(20) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `siteLevelId` int(10) unsigned NOT NULL DEFAULT '0',
  `followerActivationsRemainingToday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_garrison: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison_blueprints
DROP TABLE IF EXISTS `character_garrison_blueprints`;
CREATE TABLE IF NOT EXISTS `character_garrison_blueprints` (
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `buildingId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`buildingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_garrison_blueprints: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison_blueprints` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_blueprints` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison_buildings
DROP TABLE IF EXISTS `character_garrison_buildings`;
CREATE TABLE IF NOT EXISTS `character_garrison_buildings` (
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `plotInstanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `buildingId` int(10) unsigned NOT NULL DEFAULT '0',
  `timeBuilt` bigint(20) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`plotInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_garrison_buildings: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison_buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_buildings` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison_followers
DROP TABLE IF EXISTS `character_garrison_followers`;
CREATE TABLE IF NOT EXISTS `character_garrison_followers` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `followerId` int(10) unsigned NOT NULL,
  `quality` int(10) unsigned NOT NULL DEFAULT '2',
  `level` int(10) unsigned NOT NULL DEFAULT '90',
  `itemLevelWeapon` int(10) unsigned NOT NULL DEFAULT '600',
  `itemLevelArmor` int(10) unsigned NOT NULL DEFAULT '600',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `currentBuilding` int(10) unsigned NOT NULL DEFAULT '0',
  `currentMission` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`),
  UNIQUE KEY `idx_guid_id` (`guid`,`followerId`),
  CONSTRAINT `fk_foll_owner` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_garrison_followers: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_followers` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison_follower_abilities
DROP TABLE IF EXISTS `character_garrison_follower_abilities`;
CREATE TABLE IF NOT EXISTS `character_garrison_follower_abilities` (
  `dbId` bigint(20) unsigned NOT NULL,
  `abilityId` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`,`abilityId`,`slot`),
  CONSTRAINT `fk_foll_dbid` FOREIGN KEY (`dbId`) REFERENCES `character_garrison_followers` (`dbId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_garrison_follower_abilities: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison_follower_abilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_follower_abilities` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison_missions
DROP TABLE IF EXISTS `character_garrison_missions`;
CREATE TABLE IF NOT EXISTS `character_garrison_missions` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `missionId` int(10) unsigned NOT NULL,
  `offerTime` int(10) NOT NULL,
  `startTime` int(10) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`dbId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_garrison_missions: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison_missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_missions` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_garrison_mission_rewards
DROP TABLE IF EXISTS `character_garrison_mission_rewards`;
CREATE TABLE IF NOT EXISTS `character_garrison_mission_rewards` (
  `dbId` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT '0',
  `itemQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `currencyId` int(10) NOT NULL DEFAULT '0',
  `currencyQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `FollowerXP` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusAbilityId` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_garrison_mission_rewards: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_garrison_mission_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_mission_rewards` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_gifts
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_gifts: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_glyphs
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE IF NOT EXISTS `character_glyphs` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyphId` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentGroup`,`glyphId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_glyphs: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_homebind
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_homebind: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_instance
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extendState` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_instance: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_inventory
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_inventory: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_pet
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  `specialization` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_dump.character_pet: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_pet_declinedname
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE IF NOT EXISTS `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_pet_declinedname: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_pvp_talent
DROP TABLE IF EXISTS `character_pvp_talent`;
CREATE TABLE IF NOT EXISTS `character_pvp_talent` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentId0` int(10) unsigned NOT NULL,
  `talentId1` int(10) unsigned NOT NULL,
  `talentId2` int(10) unsigned NOT NULL,
  `talentId3` int(10) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_pvp_talent: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_pvp_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pvp_talent` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_daily
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE IF NOT EXISTS `character_queststatus_daily` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_daily: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_monthly
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE IF NOT EXISTS `character_queststatus_monthly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_monthly: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_monthly` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_objectives
DROP TABLE IF EXISTS `character_queststatus_objectives`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `objective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`,`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_objectives: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_objectives` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_objectives_criteria
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives_criteria` (
  `guid` bigint(20) unsigned NOT NULL,
  `questObjectiveId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`questObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_objectives_criteria: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_objectives_criteria_progress
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria_progress`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives_criteria_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteriaId` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_objectives_criteria_progress: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_rewarded
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE IF NOT EXISTS `character_queststatus_rewarded` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_rewarded: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_seasonal
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE IF NOT EXISTS `character_queststatus_seasonal` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_seasonal: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_seasonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_seasonal` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_queststatus_weekly
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE IF NOT EXISTS `character_queststatus_weekly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_queststatus_weekly: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_recovery
DROP TABLE IF EXISTS `character_recovery`;
CREATE TABLE IF NOT EXISTS `character_recovery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivered` tinyint(1) DEFAULT '0',
  `account` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `class` int(11) unsigned NOT NULL,
  `level` int(11) unsigned NOT NULL,
  `skill1` int(11) NOT NULL DEFAULT '0',
  `skill1_value` int(11) NOT NULL DEFAULT '0',
  `skill2` int(11) NOT NULL DEFAULT '0',
  `skill2_value` int(11) NOT NULL DEFAULT '0',
  `items` text NOT NULL,
  `spells` text NOT NULL,
  `at_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50917 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_recovery: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_recovery` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_reputation
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_reputation: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_shop
DROP TABLE IF EXISTS `character_shop`;
CREATE TABLE IF NOT EXISTS `character_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT '0',
  `itemCount` int(10) NOT NULL DEFAULT '0',
  `delivered` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_shop: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_shop` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_skills
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_skills: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_social
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_social: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_spell
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_dump.character_spell: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_spell_charges
DROP TABLE IF EXISTS `character_spell_charges`;
CREATE TABLE IF NOT EXISTS `character_spell_charges` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_spell_charges: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_charges` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_spell_cooldown
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_spell_cooldown: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_stats
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower6` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_stats: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_talent
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE IF NOT EXISTS `character_talent` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentId` mediumint(8) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentId`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_talent: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_transmog_outfits
DROP TABLE IF EXISTS `character_transmog_outfits`;
CREATE TABLE IF NOT EXISTS `character_transmog_outfits` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `iconname` varchar(256) NOT NULL,
  `ignore_mask` int(11) NOT NULL DEFAULT '0',
  `appearance0` int(10) NOT NULL DEFAULT '0',
  `appearance1` int(10) NOT NULL DEFAULT '0',
  `appearance2` int(10) NOT NULL DEFAULT '0',
  `appearance3` int(10) NOT NULL DEFAULT '0',
  `appearance4` int(10) NOT NULL DEFAULT '0',
  `appearance5` int(10) NOT NULL DEFAULT '0',
  `appearance6` int(10) NOT NULL DEFAULT '0',
  `appearance7` int(10) NOT NULL DEFAULT '0',
  `appearance8` int(10) NOT NULL DEFAULT '0',
  `appearance9` int(10) NOT NULL DEFAULT '0',
  `appearance10` int(10) NOT NULL DEFAULT '0',
  `appearance11` int(10) NOT NULL DEFAULT '0',
  `appearance12` int(10) NOT NULL DEFAULT '0',
  `appearance13` int(10) NOT NULL DEFAULT '0',
  `appearance14` int(10) NOT NULL DEFAULT '0',
  `appearance15` int(10) NOT NULL DEFAULT '0',
  `appearance16` int(10) NOT NULL DEFAULT '0',
  `appearance17` int(10) NOT NULL DEFAULT '0',
  `appearance18` int(10) NOT NULL DEFAULT '0',
  `mainHandEnchant` int(10) NOT NULL DEFAULT '0',
  `offHandEnchant` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_transmog_outfits: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_transmog_outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_transmog_outfits` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_void_storage
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE IF NOT EXISTS `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `randomBonusListId` int(10) unsigned NOT NULL DEFAULT '0',
  `fixedScalingLevel` int(10) unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT '0',
  `challengeId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int(10) unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.character_void_storage: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_void_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_void_storage` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.character_world_quest
DROP TABLE IF EXISTS `character_world_quest`;
CREATE TABLE IF NOT EXISTS `character_world_quest` (
  `guid` bigint(20) unsigned NOT NULL,
  `questId` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `timer` int(10) unsigned NOT NULL,
  `variableID` int(10) unsigned NOT NULL,
  `value` int(10) NOT NULL,
  PRIMARY KEY (`guid`,`questId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.character_world_quest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `character_world_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_world_quest` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.corpse
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE IF NOT EXISTS `corpse` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- Дамп данных таблицы characters_dump.corpse: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.corpse_phases
DROP TABLE IF EXISTS `corpse_phases`;
CREATE TABLE IF NOT EXISTS `corpse_phases` (
  `OwnerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PhaseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OwnerGuid`,`PhaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.corpse_phases: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `corpse_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse_phases` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.creature_respawn
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Дамп данных таблицы characters_dump.creature_respawn: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.gameobject_respawn
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Дамп данных таблицы characters_dump.gameobject_respawn: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.game_event_condition_save
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE IF NOT EXISTS `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.game_event_condition_save: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.game_event_save
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE IF NOT EXISTS `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.game_event_save: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.gm_bug
DROP TABLE IF EXISTS `gm_bug`;
CREATE TABLE IF NOT EXISTS `gm_bug` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.gm_bug: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `gm_bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_bug` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.gm_complaint
DROP TABLE IF EXISTS `gm_complaint`;
CREATE TABLE IF NOT EXISTS `gm_complaint` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `targetCharacterGuid` bigint(20) unsigned NOT NULL,
  `complaintType` smallint(5) unsigned NOT NULL,
  `reportLineIndex` int(10) NOT NULL,
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.gm_complaint: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `gm_complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_complaint` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.gm_complaint_chatlog
DROP TABLE IF EXISTS `gm_complaint_chatlog`;
CREATE TABLE IF NOT EXISTS `gm_complaint_chatlog` (
  `complaintId` int(10) unsigned NOT NULL,
  `lineId` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`complaintId`,`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.gm_complaint_chatlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `gm_complaint_chatlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_complaint_chatlog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.gm_suggestion
DROP TABLE IF EXISTS `gm_suggestion`;
CREATE TABLE IF NOT EXISTS `gm_suggestion` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.gm_suggestion: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `gm_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_suggestion` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` bigint(20) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` bigint(20) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `masterLooterGuid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Дамп данных таблицы characters_dump.groups: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.group_instance
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE IF NOT EXISTS `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.group_instance: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.group_member
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE IF NOT EXISTS `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` bigint(20) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Дамп данных таблицы characters_dump.group_member: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild
DROP TABLE IF EXISTS `guild`;
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` varchar(500) NOT NULL DEFAULT '',
  `motd` varchar(256) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_dump.guild: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_achievement
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE IF NOT EXISTS `guild_achievement` (
  `guildId` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_achievement: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_achievement_progress
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE IF NOT EXISTS `guild_achievement_progress` (
  `guildId` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_achievement_progress: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_bank_eventlog
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_bank_eventlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_bank_item
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE IF NOT EXISTS `guild_bank_item` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_bank_item: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_bank_right
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE IF NOT EXISTS `guild_bank_right` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_bank_right: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_bank_tab
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE IF NOT EXISTS `guild_bank_tab` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_bank_tab: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_eventlog
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint(20) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint(20) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- Дамп данных таблицы characters_dump.guild_eventlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_finder_applicant
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE IF NOT EXISTS `guild_finder_applicant` (
  `guildId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_finder_applicant: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_finder_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_applicant` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_finder_guild_settings
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE IF NOT EXISTS `guild_finder_guild_settings` (
  `guildId` bigint(20) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_finder_guild_settings: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_finder_guild_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_guild_settings` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_member
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint(20) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_dump.guild_member: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_member_withdraw
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE IF NOT EXISTS `guild_member_withdraw` (
  `guid` bigint(20) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Daily Withdraws';

-- Дамп данных таблицы characters_dump.guild_member_withdraw: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_member_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member_withdraw` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_newslog
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE IF NOT EXISTS `guild_newslog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.guild_newslog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_newslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_newslog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.guild_rank
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_dump.guild_rank: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.instance
DROP TABLE IF EXISTS `instance`;
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  `entranceId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.instance: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.instance_reset
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.instance_reset: ~149 rows (приблизительно)
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
INSERT INTO `instance_reset` (`mapid`, `difficulty`, `resettime`) VALUES
	(33, 2, 1426996800),
	(36, 2, 1426996800),
	(249, 3, 1427515200),
	(249, 4, 1427515200),
	(269, 2, 1426996800),
	(409, 9, 1427515200),
	(469, 9, 1427515200),
	(509, 3, 1427169600),
	(531, 9, 1427515200),
	(532, 3, 1427515200),
	(533, 3, 1427515200),
	(533, 4, 1427515200),
	(534, 4, 1427515200),
	(540, 2, 1426996800),
	(542, 2, 1426996800),
	(543, 2, 1426996800),
	(544, 4, 1427515200),
	(545, 2, 1426996800),
	(546, 2, 1426996800),
	(547, 2, 1426996800),
	(548, 4, 1427515200),
	(550, 4, 1427515200),
	(552, 2, 1426996800),
	(553, 2, 1426996800),
	(554, 2, 1426996800),
	(555, 2, 1426996800),
	(556, 2, 1426996800),
	(557, 2, 1426996800),
	(558, 2, 1426996800),
	(560, 2, 1426996800),
	(564, 4, 1427515200),
	(565, 4, 1427515200),
	(568, 2, 1426996800),
	(574, 2, 1426996800),
	(575, 2, 1426996800),
	(576, 2, 1426996800),
	(578, 2, 1426996800),
	(580, 4, 1427515200),
	(585, 2, 1426996800),
	(595, 2, 1426996800),
	(598, 2, 1426996800),
	(599, 2, 1426996800),
	(600, 2, 1426996800),
	(601, 2, 1426996800),
	(602, 2, 1426996800),
	(603, 3, 1427515200),
	(603, 4, 1427515200),
	(604, 2, 1426996800),
	(608, 2, 1426996800),
	(615, 3, 1427515200),
	(615, 4, 1427515200),
	(616, 3, 1427515200),
	(616, 4, 1427515200),
	(619, 2, 1426996800),
	(624, 3, 1427515200),
	(624, 4, 1427515200),
	(631, 3, 1427515200),
	(631, 4, 1427515200),
	(631, 5, 1427515200),
	(631, 6, 1427515200),
	(632, 2, 1426996800),
	(643, 2, 1426996800),
	(644, 2, 1426996800),
	(645, 2, 1426996800),
	(649, 3, 1427515200),
	(649, 4, 1427515200),
	(649, 5, 1427515200),
	(649, 6, 1427515200),
	(650, 2, 1426996800),
	(657, 2, 1426996800),
	(658, 2, 1426996800),
	(668, 2, 1426996800),
	(669, 3, 1427515200),
	(669, 4, 1427515200),
	(669, 5, 1427515200),
	(669, 6, 1427515200),
	(670, 2, 1426996800),
	(671, 3, 1427515200),
	(671, 4, 1427515200),
	(671, 5, 1427515200),
	(671, 6, 1427515200),
	(720, 3, 1427515200),
	(720, 4, 1427515200),
	(720, 5, 1427515200),
	(720, 6, 1427515200),
	(724, 3, 1427515200),
	(724, 4, 1427515200),
	(724, 5, 1427515200),
	(724, 6, 1427515200),
	(725, 2, 1426996800),
	(754, 3, 1427515200),
	(754, 4, 1427515200),
	(754, 5, 1427515200),
	(754, 6, 1427515200),
	(755, 2, 1426996800),
	(757, 3, 1427515200),
	(757, 4, 1427515200),
	(757, 5, 1427515200),
	(757, 6, 1427515200),
	(859, 2, 1426996800),
	(938, 2, 1426996800),
	(939, 2, 1426996800),
	(940, 2, 1426996800),
	(959, 2, 1426996800),
	(960, 2, 1426996800),
	(961, 2, 1426996800),
	(962, 2, 1426996800),
	(967, 3, 1427515200),
	(967, 4, 1427515200),
	(967, 5, 1427515200),
	(967, 6, 1427515200),
	(994, 2, 1426996800),
	(996, 3, 1427515200),
	(996, 4, 1427515200),
	(996, 5, 1427515200),
	(996, 6, 1427515200),
	(1001, 2, 1426996800),
	(1004, 2, 1426996800),
	(1007, 2, 1426996800),
	(1008, 3, 1427515200),
	(1008, 4, 1427515200),
	(1008, 5, 1427515200),
	(1008, 6, 1427515200),
	(1009, 3, 1427515200),
	(1009, 4, 1427515200),
	(1009, 5, 1427515200),
	(1009, 6, 1427515200),
	(1011, 2, 1426996800),
	(1098, 3, 1427515200),
	(1098, 4, 1427515200),
	(1098, 5, 1427515200),
	(1098, 6, 1427515200),
	(1136, 14, 1427515200),
	(1136, 15, 1427515200),
	(1136, 16, 1427515200),
	(1175, 2, 1426996800),
	(1176, 2, 1426996800),
	(1182, 2, 1426996800),
	(1195, 2, 1426996800),
	(1205, 14, 1427515200),
	(1205, 15, 1427515200),
	(1205, 16, 1427515200),
	(1208, 2, 1426996800),
	(1209, 2, 1426996800),
	(1228, 14, 1427515200),
	(1228, 15, 1427515200),
	(1228, 16, 1427515200),
	(1279, 2, 1426996800),
	(1358, 2, 1426996800);
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.instance_scenario_progress
DROP TABLE IF EXISTS `instance_scenario_progress`;
CREATE TABLE IF NOT EXISTS `instance_scenario_progress` (
  `id` int(10) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.instance_scenario_progress: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `instance_scenario_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_scenario_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_azerite
DROP TABLE IF EXISTS `item_azerite`;
CREATE TABLE IF NOT EXISTS `item_azerite` (
  `CharacterGuid` bigint(20) unsigned NOT NULL,
  `ItemGuid` bigint(20) unsigned NOT NULL,
  `Level` int(10) unsigned NOT NULL DEFAULT '0',
  `Xp` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`ItemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_azerite: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_azerite` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_azerite` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_azerite_empowered
DROP TABLE IF EXISTS `item_azerite_empowered`;
CREATE TABLE IF NOT EXISTS `item_azerite_empowered` (
  `CharacterGuid` bigint(20) unsigned NOT NULL,
  `ItemGuid` bigint(20) unsigned NOT NULL,
  `PowereId1` int(10) unsigned NOT NULL DEFAULT '0',
  `PowereId2` int(10) unsigned NOT NULL DEFAULT '0',
  `PowereId3` int(10) unsigned NOT NULL DEFAULT '0',
  `PowereId4` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CharacterGuid`,`ItemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_azerite_empowered: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_azerite_empowered` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_azerite_empowered` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_instance
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomBonusListId` int(10) unsigned NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  `transmogrification` int(10) unsigned NOT NULL DEFAULT '0',
  `enchantIllusion` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetSpeciesId` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetBreedData` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `battlePetDisplayId` int(10) unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Дамп данных таблицы characters_dump.item_instance: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_instance_artifact
DROP TABLE IF EXISTS `item_instance_artifact`;
CREATE TABLE IF NOT EXISTS `item_instance_artifact` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `artifactAppearanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `artifactTierId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_instance_artifact: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_instance_artifact` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_artifact` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_instance_artifact_powers
DROP TABLE IF EXISTS `item_instance_artifact_powers`;
CREATE TABLE IF NOT EXISTS `item_instance_artifact_powers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `artifactPowerId` int(10) unsigned NOT NULL,
  `purchasedRank` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`itemGuid`,`artifactPowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_instance_artifact_powers: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_instance_artifact_powers` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_artifact_powers` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_instance_gems
DROP TABLE IF EXISTS `item_instance_gems`;
CREATE TABLE IF NOT EXISTS `item_instance_gems` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `gemItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses1` text,
  `gemContext1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel1` int(10) unsigned NOT NULL DEFAULT '0',
  `gemItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses2` text,
  `gemContext2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel2` int(10) unsigned NOT NULL DEFAULT '0',
  `gemItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses3` text,
  `gemContext3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_instance_gems: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_instance_gems` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_gems` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_instance_modifiers
DROP TABLE IF EXISTS `item_instance_modifiers`;
CREATE TABLE IF NOT EXISTS `item_instance_modifiers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `fixedScalingLevel` int(10) unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT '0',
  `challengeId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_instance_modifiers: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_instance_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_modifiers` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_instance_transmog
DROP TABLE IF EXISTS `item_instance_transmog`;
CREATE TABLE IF NOT EXISTS `item_instance_transmog` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `itemModifiedAppearanceAllSpecs` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec1` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec2` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec3` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec4` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentAllSpecs` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec1` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec2` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec3` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_instance_transmog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_instance_transmog` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_transmog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_loot_items
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE IF NOT EXISTS `item_loot_items` (
  `container_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_bonus` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'random bonus list added when originally rolled',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_list_ids` text COMMENT 'Space separated list of bonus list ids',
  PRIMARY KEY (`container_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_loot_items: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_items` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_loot_money
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE IF NOT EXISTS `item_loot_money` (
  `container_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.item_loot_money: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_loot_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_money` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_refund_instance
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE IF NOT EXISTS `item_refund_instance` (
  `item_guid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint(20) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Дамп данных таблицы characters_dump.item_refund_instance: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.item_soulbound_trade_data
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
  `itemGuid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Дамп данных таблицы characters_dump.item_soulbound_trade_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.lfg_data
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE IF NOT EXISTS `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- Дамп данных таблицы characters_dump.lfg_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `lfg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lfg_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.log_gm
DROP TABLE IF EXISTS `log_gm`;
CREATE TABLE IF NOT EXISTS `log_gm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `gm_account_id` bigint(20) DEFAULT NULL,
  `gm_account_name` blob,
  `gm_character_id` bigint(20) DEFAULT NULL,
  `gm_character_name` blob,
  `gm_ip` text,
  `target_account_id` bigint(20) DEFAULT NULL,
  `target_account_name` blob,
  `target_character_id` bigint(20) DEFAULT NULL,
  `target_character_name` blob,
  `target_ip` text,
  `command` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.log_gm: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `log_gm` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_gm` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.mail
DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- Дамп данных таблицы characters_dump.mail: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.mail_items
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.mail_items: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.petition
DROP TABLE IF EXISTS `petition`;
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_dump.petition: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.petition_sign
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_dump.petition_sign: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pet_aura
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_dump.pet_aura: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pet_aura_effect
DROP TABLE IF EXISTS `pet_aura_effect`;
CREATE TABLE IF NOT EXISTS `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_dump.pet_aura_effect: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pet_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura_effect` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pet_spell
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_dump.pet_spell: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pet_spell_charges
DROP TABLE IF EXISTS `pet_spell_charges`;
CREATE TABLE IF NOT EXISTS `pet_spell_charges` (
  `guid` int(10) unsigned NOT NULL,
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.pet_spell_charges: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pet_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_charges` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pet_spell_cooldown
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.pet_spell_cooldown: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pool_quest_save
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.pool_quest_save: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pvpstats_battlegrounds
DROP TABLE IF EXISTS `pvpstats_battlegrounds`;
CREATE TABLE IF NOT EXISTS `pvpstats_battlegrounds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint(4) NOT NULL,
  `bracket_id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.pvpstats_battlegrounds: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pvpstats_battlegrounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_battlegrounds` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.pvpstats_players
DROP TABLE IF EXISTS `pvpstats_players`;
CREATE TABLE IF NOT EXISTS `pvpstats_players` (
  `battleground_id` bigint(20) unsigned NOT NULL,
  `character_guid` bigint(20) unsigned NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int(10) unsigned NOT NULL,
  `score_deaths` int(10) unsigned NOT NULL,
  `score_honorable_kills` int(10) unsigned NOT NULL,
  `score_bonus_honor` int(10) unsigned NOT NULL,
  `score_damage_done` int(10) unsigned NOT NULL,
  `score_healing_done` int(10) unsigned NOT NULL,
  `attr_1` int(10) unsigned NOT NULL,
  `attr_2` int(10) unsigned NOT NULL,
  `attr_3` int(10) unsigned NOT NULL,
  `attr_4` int(10) unsigned NOT NULL,
  `attr_5` int(10) unsigned NOT NULL,
  PRIMARY KEY (`battleground_id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.pvpstats_players: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `pvpstats_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_players` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.quest_tracker
DROP TABLE IF EXISTS `quest_tracker`;
CREATE TABLE IF NOT EXISTS `quest_tracker` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `character_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest_accept_time` datetime NOT NULL,
  `quest_complete_time` datetime DEFAULT NULL,
  `quest_abandon_time` datetime DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT '0',
  `core_hash` varchar(120) NOT NULL DEFAULT '0',
  `core_revision` varchar(120) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.quest_tracker: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `quest_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_tracker` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.reserved_name
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- Дамп данных таблицы characters_dump.reserved_name: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.updates
DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of all applied updates in this database.';

-- Дамп структуры для таблица characters_dump.updates_include
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of directories where we want to include sql updates.';

-- Дамп данных таблицы characters_dump.updates_include: 1 rows
/*!40000 ALTER TABLE `updates_include` DISABLE KEYS */;
INSERT INTO `updates_include` (`path`, `state`) VALUES
	('$/sql/ashamane/characters', 'RELEASED');
/*!40000 ALTER TABLE `updates_include` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.warden_action
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE IF NOT EXISTS `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_dump.warden_action: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `warden_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `warden_action` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.worldstates
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- Дамп данных таблицы characters_dump.worldstates: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` (`entry`, `value`, `comment`) VALUES
	(20001, 0, 'NextArenaPointDistributionTime'),
	(20002, 0, 'NextWeeklyQuestResetTime'),
	(20003, 0, 'NextBGRandomDailyResetTime'),
	(20004, 0, 'cleaning_flags');
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;

-- Дамп структуры для таблица characters_dump.world_quest
DROP TABLE IF EXISTS `world_quest`;
CREATE TABLE IF NOT EXISTS `world_quest` (
  `id` int(10) unsigned NOT NULL,
  `rewardid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_dump.world_quest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `world_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_quest` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
