var express = require('express');
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
    mainpage : true, //true because on the mainpge
    cms : false, //false becuase not on this page
    kidsmode : config.kidsmode
  });
});

router.get('/cms', (req, res) => {
  console.log('hit the cms route');
  res.render('cmsform', { //cmsform is the name of the handlebars file linking to in this case
    cms : true, //true because on this page
    mainpage : false //false because not on the mainpage anymore
  });
});

module.exports = router;
