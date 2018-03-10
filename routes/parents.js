var express = require('express');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET page */
router.get('/', function(req, res, next) {
  res.render(toRender, {
    title: 'Done yet?',
    message : "handlebars is awesome",
    parents : true, //true because on the mainpge
    kids : false, //false becuase not on this page
    home : false, //false becuase not on this page
    prentsmode : config.parentsmode
  });
});

//route for the video
router.get('videos/:video', function(res, req){
  connect.query('SELECT * FROM tbl_videos')
  res.render('video', {movie : data});
})

//route for kids pge
router.get('/parents', (req, res) => {
  console.log('hit the parents route');
  res.render('parents', { //parents is the name of the handlebars file linking to in this case
    parents : true, //true because on this page
    kids : false //false because not on page anymore
    home : false //false because not on page anymore
  });
});

//GET the parents page images
router.get('/', (req, res) => {
  connect.query('SELECT * FROM tbl_videos', (err, result) =>{
    if (err) {
      throw err; console.log(err);
    }else{
      console.log(result);
      res.render('videos', {
        title : 'Parents Videos',
        message : "here are the parents videos",
        kidVid = result
      });
    }
  });
});
//GET the parents page movie reccomendations
router.get('/:id', (req, res) => {
  connect.query(`SELECT * FROM tbl_videos WHERE videos_type="movrec" AND id="${req.params.id}"`, (err, result) => {
    if(err){
      throw err; console.log(err);
    }else{
      console.log(result[0]);
      res.render('oneVid', {
        title : 'Parents Movie Reccomendations',
        message: "parents reccomended movies",
        home : false,
        kids: false,
        videoMov : result[0] //videoMov is name use in handlebars file to connect
      });
    }
  });
});
//GET the parents page tv reccomendations
router.get('/:id', (req, res) => {
  connect.query(`SELECT * FROM tbl_videos WHERE videos_type="tvrec" AND id="${req.params.id}"`, (err, result) => {
    if(err){
      throw err; console.log(err);
    }else{
      console.log(result[0]);
      res.render('oneVid', {
        title : 'Parents Tv Reccomendations',
        message: "parents reccomended tv shows",
        home : false,
        kids: false,
        videoTv : result[0] //videoTv is name use in handlebars file to connect
      });
    }
  });
});

module.exports = router;
