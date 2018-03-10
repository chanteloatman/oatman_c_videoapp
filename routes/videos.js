var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

<?php
	require_once('../config.js');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_videos";
		$col = "videos_id";
		$id = $_GET['id'];
		$getVideo = getSingle($tbl, $col, $id);
	}
?>

//route for the video
router.get('videos/:video', function(res, req){
  connect.query('SELECT * FROM tbl_videos')
  res.render('video', {movie : data});
})

module.exports = router;
