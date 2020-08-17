<template>
  <div class="body">
    <indexHead></indexHead>
    <div class="content1">
      <div class="all" @mouseover="isshowlist" @mouseout="notshowlist">
        <a class="classroom d-block" href="javascript:;" @click="listshow()">全部商品分类▼</a>
        <div class="list" v-show="list">
          <div class="bder" @mouseover="isshowhaixian" @mouseout="notshowhaixian">
            <div>
              <span class="d1 d-inline-block mr-2"></span>
              <a href="javascript:;">海鲜生产</a>
              <span class="ml-4 zhishi">></span>
            </div>
            <div class="list2" v-show="haixian">
              <a href="javascript:;">海鲜水产</a>
              <div class="item">
                <a href="javascript:;">海鲜礼盒</a>
                <a href="javascript:;">大闸蟹券</a>
              </div>
            </div>
          </div>
          <div class="bder" @mouseover="isshowsushi" @mouseout="notshowsushi">
            <div>
              <span class="d2 d-inline-block mr-2"></span>
              <a href="javascript:;">方便速食</a>
              <span class="ml-4 zhishi">></span>
            </div>
            <div class="list2" v-show="sushi">
              <a href="javascript:;">方便速食</a>
            </div>
          </div>
          <div class="bder" @mouseover="isshowzahuo" @mouseout="notshowzahuo">
            <div>
              <span class="d3 d-inline-block mr-2"></span>
              <a href="javascript:;">粮油杂货</a>
              <span class="ml-4 zhishi">></span>
            </div>
            <div class="list2" v-show="zahuo">
              <a href="javascript:;">粮油杂货</a>
            </div>
          </div>
          <div class="bder" @mouseover="isshowshuiguo" @mouseout="notshowshuiguo">
            <div>
              <span class="d4 d-inline-block mr-2"></span>
              <a href="javascript:;">新鲜水果</a>
              <span class="ml-4 zhishi">></span>
            </div>
            <div class="list2" v-show="shuiguo">
              <a href="javascript:;">海鲜水果</a>
              <div class="item shuiguo">
                <a href="javascript:;">车厘子/樱桃</a>
                <a href="javascript:;">苹果</a>
                <a href="javascript:;">柑橘橙柚</a>
                <a href="javascript:;">蓝莓/草莓</a>
                <a href="javascript:;">奇异果/猕猴桃</a>
                <a href="javascript:;">梨</a>
                <a href="javascript:;">葡萄/提子</a>
                <a href="javascript:;">牛油果</a>
                <a href="javascript:;">热带水果</a>
                <a href="javascript:;">凤梨/菠萝</a>
                <a href="javascript:;">芒果</a>
                <a href="javascript:;">柠檬</a>
                <a href="javascript:;">火龙果</a>
                <a href="javascript:;">瓜类</a>
                <a href="javascript:;">时令水果</a>
                <a href="javascript:;">桃李杏梅</a>
                <a href="javascript:;">椰子/椰青</a>
                <a href="javascript:;">原箱水果</a>
              </div>
            </div>
          </div>
          <div class="bder" @mouseover="isshowyinliao" @mouseout="notshowyinliao">
            <div>
              <span class="d5 d-inline-block mr-2"></span>
              <a href="javascript:;">食品饮料</a>
              <span class="ml-4 zhishi">></span>
            </div>
            <div class="list2" v-show="yinliao">
              <a href="javascript:;">食品饮料</a>
              <div class="item">
                <a href="javascript:;">冷饮/雪糕</a>
                <a href="javascript:;">冲调茶饮</a>
                <a href="javascript:;">休闲食品</a>
                <a href="javascript:;">啤酒</a>
              </div>
            </div>
          </div>
          <div class="bder" @mouseover="isshowriyong" @mouseout="notshowriyong">
            <div>
              <span class="d6 d-inline-block mr-2"></span>
              <a href="javascript:;">生活日用</a>
              <span class="ml-4 zhishi">></span>
            </div>
            <div class="list2" v-show="riyong">
              <a href="javascript:;">生活日用</a>
              <div class="item">
                <a href="javascript:;">清洁日用</a>
                <a href="javascript:;">锅具</a>
                <a href="javascript:;">厨房小帮手</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="content2 mt-4 mb-4 d-flex">
      <div>
        <a class="boxdow" href="javascript:;">
          <div class="xinpin zhuanqu">
            <div>
              <b>新品专区</b>
              <p>探访源头产地 臻选当令时鲜</p>
            </div>
          </div>
        </a>
      </div>
      <a class="boxdow" href="javascript:;">
        <div class="muying zhuanqu">
          <div>
            <b>母婴专区</b>
            <p>从妈咪孕味到宝贝食尚 我们用心 让您安心</p>
          </div>
        </div>
      </a>
      <a class="boxdow" href="javascript:;">
        <div class="yinhang zhuanqu">
          <div>
            <b>银行专区</b>
            <p>银行卡专享 超值购实惠</p>
          </div>
        </div>
      </a>
      <div>
        <a class="boxdow" href="javascript:;">
          <div class="caipu zhuanqu">
            <div>
              <b>菜谱专区</b>
              <p>大厨私房菜 餐桌新食尚</p>
            </div>
          </div>
        </a>
      </div>
    </div>
    <div id="f1">
      <a href="javascript:;">
        <span id="sta-1" class="f1-1">F1</span>新鲜水果
      </a>
      <div>
        <a href="javascript:;">原箱专区 |</a>
        <a href="javascript:;">柑橘橙柚</a>
      </div>
    </div>
    <div id="f1img">
      <router-link to="/paging" class="d-block">
        <img :src="images[0].src" alt />
      </router-link>
      <ul>
        <li>
          <a href="javascript:;">
            <img :src="images[1].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[2].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[3].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[4].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[5].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[6].src" alt />
          </a>
        </li>
      </ul>
    </div>
    <div id="f1">
      <a href="javascript:;">
        <span id="sta-2" class="f1-2">F2</span>海鲜水产
      </a>
      <div>
        <a href="javascript:;">刺身专区 |</a>
        <a href="javascript:;">东海水产 |</a>
        <a href="javascript:;">海产干货</a>
      </div>
    </div>
    <div id="f1img">
      <a href="javascript:;" class="d-block">
        <img :src="images[7].src" alt />
      </a>
      <ul>
        <li>
          <a href="javascript:;">
            <img :src="images[8].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[9].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[10].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[11].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[12].src" alt />
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img :src="images[13].src" alt />
          </a>
        </li>
      </ul>
    </div>
    <a href="javascript:;" class="kefu"></a>
    <a href="#" class="btnTop" v-show="btnFlag"></a>
    <div class="guide" v-show="guide">
      <a href="#sta-1" class="sta1">
        <div></div>
        <div v-show="sta1">新鲜水果</div>
      </a>
      <a href="#sta-2" class="sta2">
        <div></div>
        <div v-show="sta2">海鲜水产</div>
      </a>
    </div>

    <div id="navbar" v-show="navbar">
      <router-link to="/">
        <div class="navbarimg"></div>
      </router-link>

      <div class="middle">
        <div class="float-left">
          <input type="text" @focus="search" @blur="shuru" v-model="shuruzhi" />
          <button @click="alert">搜 索</button>
        </div>

        <div class="mt-2 float-left">
          <a href="javascript:;" class="mx-2">牛排</a>
          <a href="javascript:;" class="mr-2">虾仁</a>
          <a href="javascript:;">鳕鱼</a>
        </div>
      </div>

      <div class="right">
        <button>
          <span id="sp5"></span>
          <span>0.0</span>
        </button>
        <div class="shopping">购物车中还没有商品,赶紧选购吧!</div>
      </div>
    </div>
    <indexFoot></indexFoot>
  </div>
</template>


<script>
export default {
  data() {
    return {
      haixian: false,
      sushi: false,
      zahuo: false,
      shuiguo: false,
      yinliao: false,
      riyong: false,
      list: true,
      shuruzhi: "输入商品名 / 编号 / 拼音",
      btnFlag: false,
      navbar: false,
      sta1: false,
      sta2: false,
      guide: false,
      images: [],
    };
  },
  mounted() {
    window.addEventListener("scroll", this.scrollToTop);
    this.axios.get("/index").then((res) => {
      let item = res.data.result;
      // console.log(item)
      item.forEach((image) => {
        if (image.src != null) {
          image.src = require("../assets/imgIndex/" + image.src);
          // console.log(image)
        }
        this.images.push(image);
        // console.log(this.images);
      });
    });
  },
  destroyed() {
    window.removeEventListener("scroll", this.scrollToTop);
  },
  methods: {
    scrollToTop() {
      let that = this;
      let scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;
      that.scrollTop = scrollTop;
      if (that.scrollTop > 200) {
        if (that.btnFlag == false) {
          that.btnFlag = true;
        }
      } else {
        that.btnFlag = false;
      }
      if (that.scrollTop > 200) {
        if (that.navbar == false) {
          that.navbar = true;
        }
      } else {
        that.navbar = false;
      }
      if (that.scrollTop > 600) {
        if (that.sta1 == false) {
          that.sta1 = true;
        }
      } else {
        that.sta1 = false;
      }
      if (that.scrollTop > 600) {
        if (that.guide == false) {
          that.guide = true;
        }
      } else {
        that.guide = false;
      }
      if (that.scrollTop > 1100) {
        that.sta1 = false;
        if (that.sta2 == false) {
          that.sta2 = true;
        }
      } else {
        that.sta2 = false;
      }
    },
    alert() {
      if (this.shuruzhi == "输入商品名 / 编号 / 拼音") {
        alert("请输入有效的关键词");
      } else if (this.shuruzhi !== "输入商品名 / 编号 / 拼音") {
        alert(this.shuruzhi);
        this.shuruzhi = "输入商品名 / 编号 / 拼音";
      }
    },
    search() {
      if (this.shuruzhi == "输入商品名 / 编号 / 拼音") {
        this.shuruzhi = "";
      }
    },
    shuru() {
      if (this.shuruzhi == "") {
        this.shuruzhi = "输入商品名 / 编号 / 拼音";
      }
    },
    isshowlist() {
      if (this.list == false) {
        this.list = true;
      }
    },
    notshowlist() {
      if (this.list == true) {
        this.list = false;
      }
    },
    listshow() {
      if (this.list == false) {
        this.list = true;
      } else {
        this.list = false;
      }
    },
    isshowhaixian() {
      if (this.haixian == false) {
        this.haixian = true;
      }
    },
    notshowhaixian() {
      if (this.haixian == true) {
        this.haixian = false;
      }
    },
    isshowsushi() {
      if (this.sushi == false) {
        this.sushi = true;
      }
    },
    notshowsushi() {
      if (this.sushi == true) {
        this.sushi = false;
      }
    },
    isshowzahuo() {
      if (this.zahuo == false) {
        this.zahuo = true;
      }
    },
    notshowzahuo() {
      if (this.zahuo == true) {
        this.zahuo = false;
      }
    },
    isshowshuiguo() {
      if (this.shuiguo == false) {
        this.shuiguo = true;
      }
    },
    notshowshuiguo() {
      if (this.shuiguo == true) {
        this.shuiguo = false;
      }
    },
    isshowyinliao() {
      if (this.yinliao == false) {
        this.yinliao = true;
      }
    },
    notshowyinliao() {
      if (this.yinliao == true) {
        this.yinliao = false;
      }
    },
    isshowriyong() {
      if (this.riyong == false) {
        this.riyong = true;
      }
    },
    notshowriyong() {
      if (this.riyong == true) {
        this.riyong = false;
      }
    },
  },
};
</script>


<style scoped>
.sta2 > div:nth-child(2) {
  color: #fff;
  background-color: #008842;
  position: absolute;
  top: 40px;
  padding: 6px 8px;
  line-height: 14px;
  font-size: 12px;
  font-family: Arial, Verdana, "\5b8b\4f53";
  /* display: none; */
}
.sta2 > div:nth-child(1) {
  width: 40px;
  height: 40px;
  background: url(../assets/imgIndex/yu.png) no-repeat 0px 0px;
}
.sta2 > div:nth-child(1):hover ~ div {
  display: block;
}
.sta1 > div:nth-child(2) {
  color: #fff;
  background-color: #008842;
  position: absolute;
  top: 0;
  padding: 6px 8px;
  line-height: 14px;
  font-size: 12px;
  font-family: Arial, Verdana, "\5b8b\4f53";
  /* display: none; */
}
.sta1 > div:nth-child(1) {
  width: 40px;
  height: 40px;
  background: url(../assets/sprite/nav-icon.png) no-repeat 0px 0px;
  background-position: 13px;
}
.sta1 > div:nth-child(1):hover ~ div {
  display: block;
}
.guide {
  position: fixed;
  top: 200px;
  left: 50%;
  margin-left: -655px;
  z-index: 100;
}
#navbar {
  width: 100%;
  height: 36px;
  background-color: #e0e0e0;
  font-size: 12px;
  display: flex;
  justify-content: space-around;
  position: fixed;
  z-index: 100;
  top: 0;
}
.navbarimg {
  width: 145px;
  height: 36px;
  background: url("../assets/imgIndex/logo.png") no-repeat;
  background-size: auto 100%;
}
.middle {
  width: 770px;
  height: 30px;
}
.middle > div > input {
  width: 450px;
  height: 28px;
  border: 1px solid #008842;
  padding: 0 10px;
  background-color: #e0e0e0;
  color: #999;
  outline: none;
}
.middle > div > input:focus {
  background-color: white;
}
.middle > div > button {
  width: 80px;
  height: 28px;
  border: 0;
  background-color: #008842;
  color: white;
  outline: none;
  font-size: 14px;
}
.middle > div a {
  color: #008842;
}
.middle > div a:hover {
  text-decoration: none;
}
.right {
  position: relative;
}
/* .right>button:hover{border-bottom: 0;} */
.right:hover .shopping {
  display: block;
}
.right > button {
  width: 142px;
  height: 34px;
  border: 1px solid #008842;
  outline: none;
  background-color: white;
}
.right > button > span:nth-child(2) {
  font-size: 20px;
  color: #008842;
  font-weight: 500;
}
#sp5 {
  display: inline-block;
  width: 35px;
  height: 18px;
  background-image: url(../assets/sprite/header-img.png);
  background-position: -110px;
}
.shopping {
  width: 400px;
  height: 140px;
  position: absolute;
  right: 0;
  text-align: center;
  line-height: 140px;
  background: url("../assets/imgIndex/shopping.jpg") no-repeat center;
  background-color: white;
  border: 1px solid #008842;
  display: none;
  z-index: 99;
}
.btnTop:hover {
  background-position: -56px 0;
}
.btnTop {
  width: 50px;
  height: 42px;
  margin-bottom: 10px;
  background: url("../assets/sprite/sidebar.png") no-repeat left top;
  background-position: 0 0;
  position: fixed;
  bottom: 10px;
  right: 47%;
  margin-right: -625px;
}
.kefu:hover {
  background-position: -56px -46px;
}
.kefu {
  width: 50px;
  height: 42px;
  margin-bottom: 10px;
  background: url("../assets/sprite/sidebar.png") no-repeat left top;
  background-position: 0 -46px;
  position: fixed;
  bottom: 70px;
  right: 47%;
  margin-right: -625px;
}
#f1img > ul > li > a > img:hover {
  padding-left: 5px;
}
#f1img > ul > li {
  background-color: #fff;
}
#f1img > ul > li:nth-child(6) {
  width: 230px;
  height: 230px;
  border: 1px solid #b4c1a3;
}
#f1img > ul > li:nth-child(5) {
  width: 230px;
  height: 230px;
  border: 1px solid #b4c1a3;
}
#f1img > ul > li:nth-child(4) {
  width: 460px;
  height: 230px;
  border: 1px solid #b4c1a3;
}
#f1img > ul > li:nth-child(3) {
  width: 460px;
  height: 230px;
  border: 1px solid #b4c1a3;
}
#f1img > ul > li:nth-child(2) {
  width: 230px;
  height: 230px;
  border: 1px solid #b4c1a3;
}
#f1img > ul > li:nth-child(1) {
  width: 230px;
  height: 230px;
  border: 1px solid #b4c1a3;
}
#f1img > a {
  width: 275px;
  height: 460px;
  border: 1px solid #b4c1a3;
  float: left;
  margin-left: 10%;
  background-color: #fff;
}
#f1img > ul {
  display: flex;
  flex-wrap: wrap;
}
.f1-2 {
  display: inline-block;
  width: 45px;
  height: 32px;
  margin-right: 10px;
  padding: 10px 7px 4px 7px;
  color: #fff;
  font: bold 14px "Microsoft YaHei";
  vertical-align: text-bottom;
  background: url("../assets/sprite/floor_tit_icon.png") no-repeat left top;
  background-position: -184px 0;
}
.f1-1 {
  display: inline-block;
  width: 45px;
  height: 32px;
  margin-right: 10px;
  padding: 10px 7px 4px 7px;
  color: #fff;
  font: bold 14px "Microsoft YaHei";
  vertical-align: text-bottom;
  background: url("../assets/sprite/floor_tit_icon.png") no-repeat left top;
}
#f1 {
  display: flex;
  justify-content: space-between;
  margin-left: 10%;
  margin-right: 10%;
}
#f1 a {
  color: #444;
}
#f1 a:hover {
  text-decoration: none;
}
#f1 div a {
  font-size: 12px;
  line-height: 32px;
}
.body {
  background-color: #f7f9f8;
  /* background-color: red */
}
.content1 {
  width: 100%;
  height: 500px;
  background: url("../assets/imgIndex/lunbotu.jpg") no-repeat;
  background-position: center;
}

.classroom {
  width: 180px;
  height: 38px;
  line-height: 38px;
  position: relative;
  text-align: center;
  background: #008842;
  color: #fff;
}

.classroom:hover {
  text-decoration: none;
}

.all {
  position: relative;
  width: 180px;
  margin-left: 10%;
}
.all:hover .list {
  display: block;
}
.list {
  position: absolute;
  height: 462px;
  background-color: #fff;
  /* display: none; */
}

.bder {
  width: 180px;
  height: 40px;
  line-height: 40px;
  padding-left: 20px;
}

.bder:hover {
  border: 1px solid #bbb;
  border-right: 0;
}

.bder:hover > div:nth-child(1) {
  transition-duration: 1s;
  padding-left: 10px;
}

.bder a {
  color: #000;
  font-size: 16px;
}

.bder a:hover {
  text-decoration: none;
}

.d1 {
  width: 24px;
  height: 24px;
  background: url("../assets/sprite/nav-icon.png") no-repeat;
  background-position: -96px 0;
}

.d2 {
  width: 24px;
  height: 24px;
  background: url("../assets/sprite/nav-icon.png") no-repeat;
  background-position: -168px 0;
}

.d3 {
  width: 24px;
  height: 24px;
  background: url("../assets/sprite/nav-icon.png") no-repeat;
  background-position: -192px 0;
}

.d4 {
  width: 24px;
  height: 24px;
  background: url("../assets/sprite/nav-icon.png") no-repeat;
}

.d5 {
  width: 24px;
  height: 24px;
  background: url("../assets/sprite/nav-icon.png") no-repeat;
  background-position: -216px 0;
}

.d6 {
  width: 24px;
  height: 24px;
  background: url("../assets/imgIndex/chufang.png") no-repeat;
}

.zhishi {
  display: none;
}

.bder:hover .zhishi {
  display: inline;
}

.list2 {
  position: absolute;
  top: -38px;
  left: 180px;
  width: 250px;
  height: 500px;
  padding: 17px 20px;
  border: 1px solid #bbb;
  background-color: #fff;
}
.shuiguo {
  float: left;
}
.list2 > a {
  color: #008842;
  text-decoration: underline #008842;
}
.list2 > a:hover {
  color: #008842;
  text-decoration: underline #008842;
}
.item a {
  font-size: 12px;
  margin-right: 20px;
}
.item a:hover {
  color: #008842;
}
.zhuanqu b {
  font-size: 22px;
  color: #575757;
}
.zhuanqu p {
  font-size: 12px;
  color: #575757;
}
.zhuanqu > div {
  text-align: center;
  width: 270px;
  height: 57px;
  background-color: #fff;
}
.content2 {
  justify-content: space-around;
}
.boxdow:hover {
  text-decoration: none;
  box-shadow: 0px 0px 7px #444;
}
.content2 > div:first-child {
  margin-left: 300px;
}
.content2 > div:first-child:hover {
  text-decoration: none;
  box-shadow: 0px 0px 7px #444;
}
.content2 > div:last-child {
  margin-right: 300px;
}
.content2 > div:last-child:hover {
  text-decoration: none;
  box-shadow: 0px 0px 7px #444;
}
.xinpin {
  width: 290px;
  height: 290px;
  background: url("../assets/imgIndex/xinpin.jpg") no-repeat;
  padding-top: 220px;
  padding-left: 10px;
}
.muying {
  width: 290px;
  height: 290px;
  background: url("../assets/imgIndex/muying.jpg");
  padding-top: 220px;
  padding-left: 10px;
}
.yinhang {
  width: 290px;
  height: 290px;
  background: url("../assets/imgIndex/yinhang.jpg");
  padding-top: 220px;
  padding-left: 10px;
}
.caipu {
  width: 290px;
  height: 290px;
  background: url("../assets/imgIndex/caipu.jpg");
  padding-top: 220px;
  padding-left: 10px;
}
</style>
