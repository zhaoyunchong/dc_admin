//导入express
let express=require('express');
//创建路由器
let router=express.Router();

// 后台首页
router.get('/',(req,res)=>{
	res.render('admin/index');
});
router.get('/welcome',(req,res)=>{
	res.render('admin/welcome');
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
