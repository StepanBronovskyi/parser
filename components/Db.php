<?php
    class Db {
        public static function getConnection() {
            $db = new PDO('mysql:host=localhost;dbname=parser', 'root', '');
            if(!$db) {
                $db->exec("CREATE TABLE `links` (
                  `id` int(11) NOT NULL,
                  `title` varchar(400) NOT NULL,
                  `url` varchar(2000) NOT NULL,
                  `date_of_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8;");
            }
            $db = new PDO('mysql:host=localhost;dbname=parser', 'root', '');
            return $db;
        }
    }