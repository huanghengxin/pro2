<template>
  <div style="background-color: #f7f9f8;">
    <div id="floor1">
      <div class="mt-3">
        <router-link to="/">
          <img src="../assets/imgIndex/logo.png" alt />
        </router-link>
        <span class="d-inline-block regtext">注册</span>
      </div>
    </div>
    <div id="floor2" class>
      <div>
        我已经注册,现在就
        <router-link to="/login" class="tologin">登录</router-link>
      </div>
      <div class="mt-5">
        <div>
          <div class="yanzhengma">
            <span>图形验证码</span>
            <input type="text" placeholder="图形验证码" class="ml-3" />
            <img src="../assets/imglogin/verifycode.jpg" class="ml-3 mb-2" />
            <a href="javascript:;">换一张</a>
          </div>
          <div class="shoujihao ml-4 mt-4">
            <span>手机号</span>
            <input
              type="text"
              placeholder="请输入您的手机号"
              name="phone"
              class="ml-3"
              v-model="phone"
              @blur="yanzhengphone"
            />
            <span class="err" v-show="errphone1">
              <span class="ml-3"></span>
              <span class="ml-2">手机号格式不正确</span>
            </span>
            <span class="err2" v-show="errphone2">
              <span class="ml-3"></span>
              <span class="ml-2">手机号已经存在</span>
            </span>
          </div>
          <div class="shoujiyanzhengma mt-4">
            <span>手机验证码</span>
            <input type="text" placeholder="手机验证码" class="ml-3" />
            <button>获取验证码</button>
          </div>
          <div class="mima ml-2 mt-4">
            <span>设置密码</span>
            <input
              type="password"
              placeholder="6-20位字母、符号或数字"
              name="upwd"
              class="ml-3"
              v-model="password"
              @blur="yanzhengpwd"
            />
            <span class="err" v-show="errpassword">
              <span class="ml-3"></span>
              <span class="ml-2">密码格式不正确</span>
            </span>
          </div>
          <div class="mima ml-2 mt-4">
            <span>确认密码</span>
            <input
              type="password"
              placeholder="再次输入密码"
              class="ml-3"
              v-model="password2"
              @blur="querenpwd"
            />
            <span class="err" v-show="errpassword2">
              <span class="ml-3"></span>
              <span class="ml-2">两次密码不一致</span>
            </span>
          </div>
          <div class="mima ml-4 mt-4">
            <span>邀请码</span>
            <input type="text" placeholder="邀请码" class="ml-3" />
          </div>
          <div class="ml-5 mt-4 mb-4">
            <input @click="showgreenreg" id="agree" type="checkbox" class="ml-4 mr-3" />
            <span class="agree">
              <label for="agree">我已阅读并同意</label>
              <a href="javascript:;">《易果服务协议》</a>
              <a href="javascript:;">《隐私政策》</a>
            </span>
            <span class="err" v-show="errxieyi">
              <span class="ml-3"></span>
              <span class="ml-2">请接受服务协议</span>
            </span>
          </div>
          <div class="regbutton ml-5">
            <button class="ml-4" @click="showerrxieyi">立即注册</button>
            <button v-show="greenreg" @click="yanzheng">立即注册</button>
          </div>
        </div>
        <div class="imgright">
          <div></div>
        </div>
      </div>
    </div>
    <foot></foot>
  </div>
</template>

<script>
export default {
  data() {
    return {
      greenreg: false,
      errxieyi: false,
      phone: "",
      errphone1: false,
      errphone2: false,
      password: "",
      errpassword: false,
      password2: "",
      errpassword2: false,
    };
  },
  methods: {
    querenpwd() {
      if (this.password2 != this.password) {
        this.errpassword2 = true;
      } else {
        this.errpassword2 = false;
      }
    },
    yanzhengpwd() {
      let reg = /^\w{6,20}$/;
      if (this.password == "" || !reg.test(this.password)) {
        this.errpassword = true;
      } else {
        this.errpassword = false;
      }
    },
    yanzhengphone() {
      let reg = /^1[3-9]\d{9}$/;
      if (this.phone == "" || !reg.test(this.phone)) {
        this.errphone1 = true;
      } else {
        this.errphone1 = false;
      }
    },
    yanzheng() {
      this.axios
        .post("/register", "phone=" + this.phone + "&upwd=" + this.password)
        .then((res) => {
          if (res.data.code == 0) {
            this.errphone2 = true;
          } else if(this.phone!=="" || reg.test(this.phone)){
            this.$router.push("/login");
          }
        });
    },
    showgreenreg() {
      if (this.greenreg == false) {
        this.greenreg = true;
      } else {
        this.greenreg = false;
      }
      if (this.errxieyi == true) {
        this.errxieyi = false;
      }
    },
    showerrxieyi() {
      if (this.errxieyi == false) {
        this.errxieyi = true;
      }
    },
  },
};
</script>

<style scoped>
.err2 > span:nth-child(1) {
  display: inline-block;
  background: url("../assets/imgregister/other_login.png");
  background-position: -40px -200px;
  width: 17px;
  height: 17px;
}
.err2 {
  color: #f60000;
}
.err > span:nth-child(1) {
  display: inline-block;
  background: url("../assets/imgregister/other_login.png");
  background-position: -40px -200px;
  width: 17px;
  height: 17px;
}
.err {
  color: #f60000;
}
.imgright > div {
  background: url("../assets/imgregister/register.png") no-repeat;
  width: 325px;
  height: 315px;
  margin-top: 38px;
}
.imgright {
  width: 330px;
  height: 390px;
  border-left: 1px dashed #c1c1c1;
}
.regbutton > button:nth-child(1) {
  width: 305px;
  height: 40px;
  border: 0;
  background-color: #808080;
  color: #fff;
  font-size: 18px;
  outline: none;
}
.regbutton > button:nth-child(2) {
  width: 305px;
  height: 40px;
  border: 0;
  background-color: #008842;
  color: #fff;
  font-size: 18px;
  outline: none;
  margin-left: -305px;
}
.agree a {
  color: #008842;
}
.agree a:hover {
  text-decoration: none;
}
.mima > input {
  width: 305px;
  height: 40px;
  outline: none;
  padding-left: 10px;
  background: url("../assets/sprite/bg_input.png") no-repeat;
  background-position: 276px -70px;
  border: 1px solid rgb(118, 118, 118);
}
.shoujiyanzhengma > button {
  width: 125px;
  height: 40px;
  border: 1px solid #c1c1c1;
  color: #008842;
  outline: none;
  margin-left: 20px;
}
.shoujiyanzhengma > input {
  width: 160px;
  height: 40px;
  padding-left: 10px;
  outline: none;
}
.shoujihao > input {
  width: 310px;
  height: 40px;
  padding-left: 10px;
  outline: none;
  background: url("../assets/sprite/bg_input.png") no-repeat;
  background-position: 276px -30px;
  border: 1px solid rgb(118, 118, 118);
}
.yanzhengma > a {
  color: #000;
}
.yanzhengma > a:hover {
  text-decoration: none;
  color: #008842;
}
.yanzhengma > input {
  width: 160px;
  height: 40px;
  padding-left: 10px;
  outline: none;
}
.tologin {
  color: #ef760a;
  text-decoration: underline;
}
#floor2 > div:nth-child(1) {
  float: right;
}
#floor2 > div:nth-child(2) {
  clear: both;
}
#floor2 > div:nth-child(2) {
  display: flex;
  justify-content: space-between;
}
#floor2 {
  width: 1200px;
  height: 635px;
  border: 1px solid #008842;
  margin: 0 auto;
  margin-top: 30px;
  padding: 10px 50px;
  background-color: #fff !important;
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
.regtext {
  width: 56px;
  height: 28px;
  color: #008842;
  font-size: 28px;
  margin-left: 100px;
}
</style>