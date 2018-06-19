<?php

class NewsController {

    public function actionIndex() {
        $time = News::getLastUpdateTime();
        $newsList = News::getNewsList();
        include "views/default.php";
        return true;
    }

    public function actionView($id) {
        $news = News::getNewsItem($id);
        include "views/item.php";
        return true;
    }

    public function actionUpdate() {
        header('Content-type: text/html; charset=utf-8');
        $list = News::updateNews();
        echo json_encode($list);
        return true;
    }
}