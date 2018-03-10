var express = require('express');
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');
var router = express.Router();

// middleware goes here... it's in the middle of the process -> after the request, before the response
//
// parse the request, make sure we can convert incoming data into something Express can use
router.use(bodyParser.urlencoded({ extended : false }));
router.use(bodyParser.json());

router.use((req, res, next) => {
  var now = new Date();
  var timestamp = now.toLocaleString('en-us', {
    hour : "numeric",
    minute : "numeric",
    hour12 : true
  });

  console.log(`you made a ${req.method} call!`);
  console.log(`you made the call @ ${timestamp}`);
  //console.log(req);
  next(); // run the next method (get, put, post, etc)
});

/* GET home page. */
router.get('/:id', (req, res) => {
  console.log(req.params.id);
  console.log('hit an api route with params');

  connect.query(`SELECT * FROM tbl_videos WHERE videos_id="${req.params.id}"`, (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.json({videoData: result});
    }
  });
});

module.exports = router;
