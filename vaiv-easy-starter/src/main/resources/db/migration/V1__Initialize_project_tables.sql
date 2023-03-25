CREATE TABLE `press_info` (
  `id` bigint(20) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `time` time(0) NULL DEFAULT NULL,
  `title` varchar(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `date`(`date`)
);

CREATE TABLE `speaker_list`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NULL DEFAULT NULL,
  `party` varchar(255) NULL DEFAULT NULL,
  `press_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `FKsoh50bbmxcqayhm5nda99wq8e`(`press_id`) ,
  INDEX `name`(`name`) USING BTREE,
  CONSTRAINT `FKsoh50bbmxcqayhm5nda99wq8e` FOREIGN KEY (`press_id`) REFERENCES `press_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
);