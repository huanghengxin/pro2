//引入express
const express = require("express")
//引入cors模块 解决跨域
const cors = require("cors")
//引入body-parser中间件 解决post请求
const bodyparser = require("body-parser")
//引入mysql模块
const mysql = require("mysql")

//创建服务器
const app = express()
//静态托管资源
app.use(express.static('../vue-ygsx/src/assets'))

//创建连接池对象
const pool = mysql.createPool({
    host: "127.0.0.1",
    user: "root",
    password: "",
    port: 3306,
    database: "ygsx",
    connectionLimit: 20,
    charset: "utf8"
})
//将cors作为app的中间件使用
app.use(cors({
    origin: ['http://localhost:8081', 'http://127.0.0.1:8081']
}))
//将body作为服务器的中间件使用
app.use(bodyparser.urlencoded({
    extended: false
}))

//  注册的路由
app.post('/register', (req, res) => {
    //获取用户提交的用户名等信息
    let phone = req.body.phone;
    let upwd = req.body.upwd;
    let obj = req.body;
    // console.log(obj)
    let sql = 'select * from reg  where phone = ?'
    pool.query(sql, [phone], (err, result) => {
        if (err) throw err;
        // console.log(result)
        if (result.length !== 0) {
            res.send({ message: '注册失败', code: 0 })
        } else {
            let sql = 'insert into reg set ?'
            pool.query(sql, [obj], (err, result) => {
                if (err) throw err;
                res.send({ message: '注册成功', code: 1 })
            })
        }
    })
})
//登录的路由
app.post('/login', (req, res) => {
    let phone = req.body.phone;
    let upwd = req.body.upwd;
    let obj = req.body;
    // console.log(req.body)
    let sql = 'select * from reg where phone=? and upwd=?';
    pool.query(sql, [phone, upwd], (err, result) => {
        if (err) throw err;
        // console.log(result)
        if (result.length == 0) {
            res.send({ message: '失败', code: 0 })
        } else {
            res.send({ message: '成功', code: 1 })
        }
    })
})
//获取首页图片
app.get('/index', (req, res) => {
    let sql = 'select * from shouye';
    pool.query(sql, (err, result) => {
        //   console.log(result)
        if (err) throw err;
        res.send({ message: '查询成功', code: 1, result: result })
    })
})
//获取分页数据
app.get('/paging', (req, res) => {
    //获取地址栏的id参数
    let cid = req.query.id
    // console.log(cid)
    //以id为条件进行文章相关信息的查找操作
    let sql = `select * from paging where id =?`;
    pool.query(sql, [cid], (err, result) => {
        if (err) throw err;
        res.send({ message: '查询成功', code: 1, result: result[0] })
    })
})
//详情页
app.get('/details', (req, res) => {
    //获取地址栏的id参数
    let cid = req.query.id
    // console.log(cid)
    //以id为条件进行文章相关信息的查找操作
    let sql = `select * from details where id=?`;
    pool.query(sql, [cid], (err, result) => {
        if (err) throw err;
        res.send({ message: '查询成功', code: 1, result: result[0] })
        // console.log(result)
    })
})

//设置端口号
app.listen(2997);