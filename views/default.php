<?php
?>
    <html>
    <head>
        <script src="templates/js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="/templates/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="/templates/css/bootstrap-grid.css"/>
        <link rel="stylesheet" type="text/css" href="/templates/css/bootstrap-reboot.css"/>
        <style>
            a {
                text-decoration: none;
            }
            button {
                margin: 20px;
            }
        </style>
    </head>
<body>
<header>
    <h1>Новости с https://gazeta.ua</h1>
    <h2>Last update at <span><?php echo $time;?></span></h2>
</header>
<button class="update btn btn-primary">Update</button>
<div class="cont list-group">
    <?php foreach ($newsList as $newsItem):?>
            <li class="list-group-item">
                <a href="/view/<?php echo $newsItem['id']?>">
                    <?php echo $newsItem['title'];?>
                </a>
            </li>
    <?php endforeach;?>
</div>
<footer>
    <script>
        $(document).ready(function () {
            updateNewsList();
            $('.update').click(function () {
                updateNewsList();
                return false;
            });
            function updateNewsList() {
                $.get('/update/', function (data) {
                 data = JSON.parse(data);
                 $('.cont').html('');
                 for (var el, i = 0; i < data.length; i++) {
                     el = data[i];
                     var li = '<div class="list-group-item"><a href="/view/' + el.id + '">'+ el.title + '</a></div>';
                     $('.cont').append(li);
                 }
                 });
                 var dat = new Date();
                 var hour=dat.getHours();
                 var min=dat.getMinutes();
                 var sec=dat.getSeconds();
                 if (sec < 10) {sec="0"+sec;}
                 if (min < 10) {min="0"+min;}
                 if (hour < 10) {hour="0"+hour;}
                 tim=hour+':'+min+':'    +sec;
                 $('span').html(tim);
            }
        })
    </script>
</footer>

</body>
    </html>

