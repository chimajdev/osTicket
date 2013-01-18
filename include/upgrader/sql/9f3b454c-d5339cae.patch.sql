/**
 * @version v1.7
 *
 * @schema d5339caebcfbdcca7d57be5b17f804ee
 */

-- increate varchar size for various fields... based on feedback from users.

ALTER TABLE  `%TABLE_PREFIX%session` 
    CHANGE  `session_id`  `session_id` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '';

ALTER TABLE  `%TABLE_PREFIX%ticket` 
    CHANGE  `name`  `name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '',
    CHANGE  `email`  `email` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '',
    CHANGE  `subject`  `subject` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '[no subject]';

ALTER TABLE  `%TABLE_PREFIX%email` 
    CHANGE  `email`  `email` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '',
    CHANGE  `name`  `name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '',
    CHANGE  `userid`  `userid` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    CHANGE  `mail_host`  `mail_host` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    CHANGE  `smtp_host`  `smtp_host` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

ALTER TABLE  `%TABLE_PREFIX%department` 
    CHANGE  `dept_name`  `dept_name` VARCHAR( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT  '';

UPDATE `%TABLE_PREFIX%config`
    SET `schema_signature`='d5339caebcfbdcca7d57be5b17f804ee';
