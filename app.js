let express = require('express');
let path = require('path');
var session = require('express-session');
var cookieParser = require('cookie-parser');


const app = express();

// all environments
app.set('port', process.env.PORT || 5000);
// app.set('views', path.join(__dirname, '/views/'));
// app.set('view engine', 'ejs');

app.use(express.json())

app.use(express.urlencoded({limit: '150mb', extended: true }));
app.use(express.static('public'));
app.use(cookieParser());
app.use(session({
      secret: 'keyboard cat',
      resave: false,
      saveUninitialized: true,
      cookie: {
                maxAge : 1*60*60*1000 
  	  }
}));


//  //================== admin login route =========================//
app.use('/admin', require('./routes/admin_login/admin_login.route'));



//   //====================crud_operations===========================//
app.use('/admin_tbl', require('./routes/crud_operations/admin_tbl.route'));
app.use('/gymPurposeType', require('./routes/crud_operations/gympurposetype_tbl.route'));
app.use('/packageType', require('./routes/crud_operations/packagetype_tbl.route'));
app.use('/personalTrainer', require('./routes/crud_operations/personaltrainer_tbl.route'));
app.use('/membershipForm', require('./routes/crud_operations/membershipform_tbl.route'));
app.use('/renewMembership', require('./routes/crud_operations/renewmembership_tbl.route'));
// app.use('/enquiryForm', require('./routes/crud_operations/enquiry_tbl.route'));

//   //==================== Reports List ===========================//
// app.use('/enquiryList', require('./routes/reports/enquiryList.route'));
app.use('/paymentList', require('./routes/reports/paymentList.route'));
app.use('/membershipList', require('./routes/reports/membershipList.route'));
app.use('/renewMembershipList', require('./routes/reports/reNewMembershipList.route'));
     


// ========================  Middleware ================================

let server_app = app.listen(5000,()=>{
	console.log('connected to port 5000');
});