//导入express
let express=require('express');
//创建路由器
let router=express.Router();
//导入md5加密文件
const crypto=require('crypto');
//导入数据库文件
var pool=require('../config/pool.js');
// 后台首页
router.get('/',(req,res)=>{
	if(req.session.uid==undefined){
		res.render('admin/login',{code:-1,msg:'请你先登录!'});
	}else{
		console.log('有人进来了1!');
		res.render("admin/index",{code:1,msg:'登陆成功!'});
	}
});
//加载登陆界面
router.get('/login',(req,res)=>{
	res.render('admin/login');
});

//登陆验证
router.get('/check',(req,res)=>{
	console.log(req.query.username,req.query.password);
	// var {username,password}={req.query.username,req.query.password};
	var username=req.query.username;
	var password=req.query.password;
	var sql="select id from dc_admin where username=? and password =? ";
	let md5=crypto.createHash('md5');
	password=md5.update(password).digest('hex');
	pool.query(sql,[username,password],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			req.session.uid=result[0].id;
			console.log(req.session.uid);
			res.send("<script>location.href='/admin/';</script>");
		}else{
			res.send("<script>alert('账号或者密码错误!');history.go(-1);</script>");

		}
	})

});

router.get('/welcome',(req,res)=>{
	res.render('admin/welcome');
});
//注销登陆
router.get('/logout',(req,res)=>{
	req.session.uid=null;
	res.send("<script>alert('注销成功!');location.href='/admin/login';</script>");
});
//后台管理员管理
let adminRouter=require('./admin/admin');
router.use('/admin',adminRouter);

//轮播图管理
let sliderRouter=require('./admin/slider');
router.use('/slider',sliderRouter);

//食品添加管理
let foodRouter=require('./admin/food');
router.use('/food',foodRouter);

//导出路由器对象
module.exports=router;
