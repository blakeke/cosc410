<html>
<head>

<!--<title><?php echo $title?></title>

</head>

<body>

<h1><?php echo $heading?></h1>-->

<title>blog_view</title>
</head>

View loaded
<br />

<?php foreach($records as $row): ?>

<h1>
<?php echo $row->title;
?>
</h1>
    
    


<?php endforeach;  ?>

</body>
</html> 