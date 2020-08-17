<template>
  <div>
    <div id="floor1">
      <div class="mt-3">
        <router-link to="/">
          <img src="../assets/imgIndex/logo.png" alt />
        </router-link>
        <span class="d-inline-block logintext">登录</span>
      </div>
    </div>
    <div id="floor2">
      <div class="logintable">
        <div>
          <span>欢迎登录</span>
          <span>
            还没有账号?
            <router-link class="reg" to="/register">立即注册</router-link>
          </span>
        </div>
        <div class="err1" v-show="err">
            账号或者密码错误
        </div>
        <div class="user">
          <input type="text" name="phone" v-model="phone" placeholder="邮箱/账号/已验证手机" />
        </div>
        <div class="pwd">
          <input type="password" name="upwd" v-model="upwd" placeholder="密码" />
        </div>
        <div class="test">
          <input type="text" name id placeholder="验证码" />
          <img src="../assets/imglogin/verifycode.jpg" alt />
          <a href="javascript:;">换一张</a>
        </div>
        <div>
          <div>
            <input type="checkbox" name id="logining" />
            <label for="logining" class="ml-3" style="color:#878787">自动登录</label>
          </div>
          <router-link class="forget" to>忘记登录密码?</router-link>
        </div>
        <a href="javascript:;" class="button d-inline-block" @click="toindex">登 &nbsp; 录</a>
        <div class="other">第三方登录</div>
        <div class="otherimg">
          <button class="d-inline-block" @click="otherlogin()"></button>
          <button class="d-inlien-block ml-3" @click="otherlogin()"></button>
          <button class="d-inlien-block ml-3" @click="otherlogin()"></button>
        </div>
      </div>
    </div>
    <div class="alert" v-show="isshow">
      <button @click="close()"></button>
      <p>亲，第三方登录目前仅支持移动端，请拿起手机扫描以下二维码下载易果生鲜APP或关注微信服务号吧！</p>
      <div class="erweima">
        <img src="../assets/imglogin/erweima.jpg" alt="">
      </div>
    </div>
    <foot></foot>
  </div>
</template>

<script>
export default {
  data(){
    return{
      isshow:false,
      err:false,
      phone:"",
      upwd:""
    }
  },
  methods:{
    otherlogin(){
      if(this.isshow==false){
        this.isshow=true
      }
    },
    close(){
      if(this.isshow==true){
        this.isshow=false
      }
    },
    toindex(){
      this.axios.post('/login','phone='+this.phone+'&upwd='+this.upwd).then(res=>{
        if (res.data.code==1){
          this.$router.push('/')
        }else{
          this.err=true
        }
      })
    }
  }
};
</script>

<style scoped>
.erweima{
  margin: 35px 0 0;
  text-align: center;
}
.alert>p{
    padding: 0 40px;
    line-height: 24px;
    font-size: 14px;
    color: #565656;
}
.alert>button{
  width: 40px;
  height: 40px;
  border: 0;
  outline: 0;
  background-color: #fff;
  background: url(../assets/imglogin/cha.png) no-repeat center center;
  position: absolute;
  top: 0;
  right: 0;
}
.alert{
    position: fixed;
    top: 50%;
    left: 50%;
    width: 500px;
    height: 360px;
    margin: -170px 0 0 -250px;
    padding: 45px;
    border: 1px solid #c7c7c7;
    background: #fff;
    z-index: 50;
}
.otherimg>button:nth-child(3){
  width: 88px;
  height: 20px;
  background: url("../assets/imglogin/other_login.png");
  background-position: -260px -200px;
  outline: 0;
  border: 0;
}
.otherimg>button:nth-child(2){
  width: 88px;
  height: 20px;
  background: url("../assets/imglogin/other_login.png");
  background-position: -160px -200px;
  outline: 0;
  border: 0;
}
.otherimg>button:nth-child(1){
  width: 88px;
  height: 20px;
  background: url("../assets/imglogin/other_login.png");
  background-position: -60px -200px;
  outline: 0;
  border: 0;
}
.other{
  margin-top: 20px;
    font: 12px Arial, "SimSun";
    color: #878787;
}
.button{
    background-color: #008842;
    width: 308px;
    height: 50px;
    line-height: 50px;
    color: #fff;
    font-size: 18px;
    border: 0;
    outline: none;
    text-align: center;
}
.button:hover{
    text-decoration: none;
}
.err1{
    width: 255px;
    height: 26px;
    line-height: 26px;
    padding-left: 40px;
    border: 1px solid #e4393c;
    background-color: #ffebeb;
    color: #e4393c;
    /* display: none; */
}
.forget{
    color: #878787;
}
.forget:hover{
    color: #008842;
    text-decoration: none;
}
.test a {
  color: #c1c1c1;
  margin-left: 5px;
}
.test a:hover {
  color: #008842;
}
.test img {
  margin-top: -3px;
}
.test input {
  width: 152px;
  height: 40px;
  border: 1px solid #c1c1c1;
  background: url(../assets/sprite/bg_input.png) no-repeat;
  background-position: 0 -180px;
  padding-left: 50px;
  outline: none;
}
.pwd input {
  width: 255px;
  height: 38px;
  border: 1px solid #c1c1c1;
  background: url(../assets/sprite/bg_input.png) no-repeat;
  background-position: 0 -180px;
  padding-left: 50px;
  outline: none;
}
.user input {
  width: 255px;
  height: 38px;
  border: 1px solid #c1c1c1;
  background: url(../assets/sprite/bg_input.png) no-repeat;
  background-position: 0 -120px;
  padding-left: 50px;
  outline: none;
}
.reg {
  color: #008842;
  text-decoration: underline;
}
.logintable > div:nth-child(1) > span:nth-child(1) {
  font: 18px/1 "Microsoft YaHei";
}
.logintable div {
  margin-bottom: 20px;
}
.logintable > div:nth-child(1) {
  display: flex;
  justify-content: space-between;
}
.logintable > div:nth-child(6) {
  display: flex;
  justify-content: space-between;
  margin-bottom: 0px;

}
.logintable {
  width: 350px;
  height: 470px;
  border: 1px solid #e3e6e0;
  margin-top: 50px;
  margin-left: 60%;
  padding: 20px;
  font-size: 12px;
}
#floor1 {
  width: 100%;
  height: 80px;
  background-color: #e0e0e0;
  font-size: 12px;
  display: flex;
}
#floor1 > div {
  margin-left: 10%;
}
.logintext {
  width: 56px;
  height: 28px;
  color: #008842;
  font-size: 28px;
  margin-left: 100px;
}
</style>