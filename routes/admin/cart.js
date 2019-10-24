//导入express模块
let express=require('express');
//实例化路由
let router=new express.Router();
//导入文件上传模块
let multer=require('multer');
//引入path模块
let path=require('path');
//导入fs文件模块
let fs=require('fs');
//导入数据库文件
let pool=require('../../config/pool.js');
//导入封装的图片上传函数
let uploads=require('../../commen/uploads.js');
//设置临时目录 存放上传的图片
const upload=multer({dest:"tmp/"});
//设置食品管理路由
//导入分页方法
let page=require('../../commen/page.js');


//首页界面
router.get('/',(req,res,next)=>{
	if(req.session.uid==undefined){
		res.render('admin/login',{code:-1,msg:'请你先登录!'});
	}
	// check(req);
	//进行分页处理
	//获取页码
	let p=req.query.p?req.query.p:1;
	//默认每页展示个数
	let size=3;
	//获取搜索框中的数据
	let search=req.query.search?req.query.search:"";
	//从数据库中取出数据
	pool.query("select count(*) tot from dc_cart where zid like ?",[`%${search}%`],(err,data)=>{
		if(err) throw err;
		if(data.length>0){
			//获取数据总行数
			let tot=data[0].tot;
			let showpage=page(tot,p,size);
			pool.query("select *from dc_cart where zid like ? order by id desc limit ?,?",[`%${search}%`,showpage.start,showpage.size],(err,data)=>{
				if(err) throw err;
				if(data.length>0){
					//加载页面,将数据传送给前台
					res.render("admin/cart/index",{data:data,show:showpage.show,search:search});
				}else{
					res.render("admin/cart/index",{data:data,show:showpage.show,search:search});
				}
			});
		}
	});
});

//ajax删除账单操作
router.get('/ajax_del',(req,res,next)=>{
	let {id}=req.query;
	pool.query("delete from dc_cart where id=?",[id],(err,result)=>{
		if(err){
			return "";
		}
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send('0');	
		}
	})
});

//ajax更改商品的上下架
router.get('/ajax_status',(req,res)=>{
	let {id,status}=req.query;
	pool.query("update dc_food set status=? where id=?",[status,id],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//购车修改界面
router.get('/edit',(req,res)=>{
	if(req.session.uid==undefined){
		res.render('admin/login',{code:-1,msg:'请你先登录!'});
	}
	let id=req.query.id;
	pool.query("select *from dc_food where id=?",[id],(err,data)=>{
		if(err){
			return "";
		}else{
			res.render('admin/cart/edit',{data:data[0]});
		}
	});
});

//轮播图修改操作
router.post('/edit',upload.single('img'),(req,res)=>{
	//接受图片资源
	let imgRes=req.file;
	//接受表单数据
	let {id,spname,price,oldimg}=req.body;
	console.log(oldimg);
	let sql="";
	let arr=[];
	//判断图片资源是否存在,看看用户是否修改图片
	if(imgRes){
		let img=uploads(imgRes,"../images");
		arr=[img,spname,price,id];
		sql="update dc_food set img=?,spname=?,price=? where id=?";
		pool.query(sql,arr,(err,result)=>{
			if(err) throw err;
			if(result.affectedRows>0){
				if(imgRes){
					if(fs.existsSync(__dirname+"/../../public"+oldimg)){
						fs.unlinkSync(__dirname+"/../../public"+oldimg);
					}
				}
				res.send('<script>alert("修改成功!");location.href="/admin/cart";</script>');
			}else{
				res.send('<script>alert("修改失败!");hostory.go(-1);</script>');
			}
		});
	}else{
		res.send('<script>alert("请选择图片!");history.go(-1)</script>')
	}
	// else{
	// 	arr=[name,url,sort,id];
	// 	sql="update banner set name=?,url=?,sort=? where id=?";
	// }
			
});
//ajax更改轮播图的顺序
router.get('/ajax_changeSort',(req,res)=>{
	let {id,count}=req.query;
	pool.query("update dc_cart set count=? where id=?",[count,id],(err,result)=>{
		if(err){
			return "";
		}else{
			res.send('1');
			console.log(111);
		}
	});
})
module.exports=router;