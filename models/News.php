<?php

class News {

    public static function getNewsList() {
        $db = Db::getConnection();
        $stmt = $db->query("SELECT * FROM links ORDER BY ID DESC LIMIT 6");
        $itetation = 0;
        $newsList = array();
        while ($news = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $newsList[$itetation]['id'] = $news['id'];
            $newsList[$itetation]['title'] = $news['title'];
            $newsList[$itetation]['url'] = $news['url'];
            $newsList[$itetation]['date_of_update'] = $news['date_of_update'];
            $itetation++;
        }
        return $newsList;
    }

    public static function getNewsItem($id) {
        $db = Db::getConnection();
        $stmt = $db->query("SELECT * FROM links WHERE id = '$id'");
        $url = $stmt->fetch(PDO::FETCH_ASSOC)['url'];
        $curl = curl_init('https://gazeta.ua'. $url);

        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($curl, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt ($curl, CURLOPT_SSL_VERIFYHOST, 0);
        $page = curl_exec($curl);
        $document = phpQuery::newDocument($page);

        $news = $document->find('div.w.double.article');

        self::del_tags($news->html(), 'a,strong');
        return $news;
    }

    public static function updateNews() {
        header('Content-type: text/html; charset=utf-8');
        $db = Db::getConnection();
        $curl = curl_init('https://gazeta.ua/');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($curl, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt ($curl, CURLOPT_SSL_VERIFYHOST, 0);
        $page = curl_exec($curl);

        $document = phpQuery::newDocument($page);
        $elements = $document->find('.col .double .mb15 .item a');
        $count = 0;
        foreach ($elements as $el) {
            $elem_pq = pq($el);
            $url = $elem_pq->attr('href');
            $text = trim($elem_pq->text());
            $result = $db->exec("INSERT INTO links(title, url) VALUES('$text', '$url')");
            if($result) {
                self::addToLogFile($text);
            }
            $count++;
            if ($count >= 6) break;
        }
        $arr = self::getNewsList();
        return $arr;
    }

    public static function getLastUpdateTime() {
        /*$db = Db::getConnection();
        $stmt = $db->query("SELECT * FROM links ORDER BY id DESC");
        $time = $stmt->fetch(PDO::FETCH_ASSOC)['date_of_update'];*/
        return date("H:i:s");
    }

    protected function del_tags($txt, $tag) {
        $tags = explode(',', $tag);
        do {
            $tag = array_shift($tags);
            $txt = preg_replace("~<($tag)[^>]*>|(?:</(?1)>)|<$tag\s?/?>~x", '', $txt);
        } while (!empty($tags));

        return $txt;
    }

    protected function addToLogFile($header) {
        $file = 'logFile.txt';
        $text = '=======================\n';
        $text .= $header;
        $text .= '\n'. date('Y-m-d H:i:s') .'\n';
        $fOpen = fopen($file,'a');
        fwrite($fOpen, $text);
        fclose($fOpen);
    }
}