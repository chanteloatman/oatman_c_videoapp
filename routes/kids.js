var express = require('express');
var connect = require('../utils/sqlConnect.js');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
    title: 'Done yet?',
    message : "handlebars is awesome",
    kids : true, //true because on the kidspage
    home : false, //false becuase not on this page
    parents : false, //false becuase not on this page
    kidsmode : config.kidsmode
  });
});


//route for the video
router.get('videos/:video', function(res, req){
  connect.query('SELECT * FROM tbl_videos')
  res.render('video', {movie : data});
})

//route for kids pge
router.get('/kids', (req, res) => {
  console.log('hit the kids route');
  res.render('kids', { //kids is the name of the handlebars file linking to in this case
    kids : true, //true because on this page
    parents : false //false because not on the page anymore
    home : false //false because not on the page anymore
  });
});

//GET the kids page images
router.get('/', (req, res) => {
  connect.query('SELECT * FROM tbl_videos', (err, result) =>{
    if (err) {
      throw err; console.log(err);
    }else{
      console.log(result);
      res.render('videos', {
        title : 'Kids Videos',
        message : "here are the kids videos",
        kidVid = result
      });
    }
  });
});
//GET the kids page favourites images
router.get('/:id', (req, res) => {
  connect.query(`SELECT * FROM tbl_videos WHERE videos_type="kidsfav" AND id="${req.params.id}"`, (err, result) => {
    if(err){
      throw err; console.log(err);
    }else{
      console.log(result[0]);
      res.render('oneVid', {
        title : 'Kids Favourties',
        message: "kids favourtie video picks",
        home : false,
        parents: false,
        videoFav : result[0] //videoFav is name use in handlebars file to connect
      });
    }
  });
});
//GET the kids page funny images
router.get('/:id', (req, res) => {
  connect.query(`SELECT * FROM tbl_videos WHERE videos_type="kidsfun" AND id="${req.params.id}"`, (err, result) => {
    if(err){
      throw err; console.log(err);
    }else{
      console.log(result[0]);
      res.render('oneVid', {
        title : 'Kids Funny',
        message: "kids funny videos",
        home : false,
        parents: false,
        videoFun : result[0] //videoFun is name use in handlebars file to connect
      });
    }
  });
});

module.exports = router;
