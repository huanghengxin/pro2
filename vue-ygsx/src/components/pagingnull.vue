<template>
  <div style="background-color: #f7f9f8;">
    <indexHead></indexHead>
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
    <div class="all d-inline-block" @mouseover="isshowlist" @mouseout="notshowlist">
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
    <div class="d-inline-block listnext">
      <a href="javascript:;">新品专区</a>
      <a href="javascript:;">优质生活</a>
      <a href="javascript:;">银行专区</a>
      <a href="javascript:;">菜谱专栏</a>
    </div>
    <div class="listup my-3">
      <span>►所有分类</span>
      <ul class="d-inline-block">
        <li>
          <a href="javascript:;">车厘子/樱桃</a>
        </li>
        <li>
          <a href="javascript:;">苹果</a>
        </li>
        <li>
          <a href="javascript:;">柑橘橙柚</a>
        </li>
        <li>
          <a href="javascript:;">蓝莓/莓类</a>
        </li>
        <li>
          <a href="javascript:;">奇异果/猕猴桃</a>
        </li>
        <li>
          <a href="javascript:;">梨</a>
        </li>
        <li>
          <a href="javascript:;">葡萄/提子</a>
        </li>
        <li>
          <a href="javascript:;">牛油果</a>
        </li>
        <li>
          <a href="javascript:;">热带水果</a>
        </li>
        <li>
          <a href="javascript:;">凤梨/菠萝</a>
        </li>
        <li>
          <a href="javascript:;">芒果</a>
        </li>
        <li>
          <a href="javascript:;">柠檬</a>
        </li>
        <li>
          <a href="javascript:;">火龙果</a>
        </li>
        <li>
          <a href="javascript:;">瓜类</a>
        </li>
        <li>
          <a href="javascript:;">时令水果</a>
        </li>
        <li>
          <a href="javascript:;">桃李杏梅</a>
        </li>
        <li>
          <a href="javascript:;">椰子/椰青</a>
        </li>
        <li>
          <a href="javascript:;">原箱水果</a>
        </li>
      </ul>
    </div>
    <div class="floor3 mb-5">
      <button>默认排序</button>
      <button>
        销量
        <span></span>
      </button>
      <button>
        价格
        <span></span>
      </button>
      <button>
        评论
        <span></span>
      </button>
    </div>
    <!--  -->
    <!-- <div class="floor4">
      <router-link to="/details">
        <div>
          <img :src="pag.src" alt="">
        </div>
      </router-link>
      <router-link to="/details">
        <span class="floor4-2">{{pag.title}}</span>
      </router-link>
      <div>¥{{pag.price.toFixed(2)}}</div>
      <div class="floor4-3">
        <div>软滑香甜细腻软糯 一口惊艳味蕾</div>
        <router-link to="/details">
          <button>暂时无货</button>
        </router-link>
      </div>
    </div> -->
    <indexFoot></indexFoot>
  </div>
</template>

<script>
export default {
  data() {
    return {
      navbar: false,
      shuruzhi: "输入商品名 / 编号 / 拼音",
      haixian: false,
      sushi: false,
      zahuo: false,
      shuiguo: false,
      yinliao: false,
      riyong: false,
      list: false,
      pag:[]
    };
  },
  mounted() {
    window.addEventListener("scroll", this.scrollToTop);
    let id = this.$route.params.id;
    this.axios.get('/paging?id=' + id).then(res=>{
      this.pag = res.data.result;
      this.pag.src=require('../assets/imgpaging/'+this.pag.src)
      // console.log(this.pag)
    });
  },
  destroyed() {
    window.removeEventListener("scroll", this.scrollToTop);
  },
  methods: {
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
    scrollToTop() {
      let that = this;
      let scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;
      that.scrollTop = scrollTop;
      if (that.scrollTop > 200) {
        if (that.navbar == false) {
          that.navbar = true;
        }
      } else {
        that.navbar = false;
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
.floor4-3 button {
  display: block;
  width: 180px;
  height: 25px;
  margin-left: 45px;
  line-height: 25px;
  color: #fff;
  background: #008742;
  border-radius: 4px;
  font-size: 14px;
  text-decoration: none;
  outline: none;
  border: 0;
}
.floor4-3 > div {
  width: 270px;
  line-height: 16px;
  margin-bottom: 10px;
  font-size: 12px;
}
.floor4-3 {
  position: absolute;
  left: 0;
  bottom: 68px;
  width: 270px;
  padding: 10px;
  text-align: center;
  background: rgba(255, 255, 255, 0.9);
  display: none;
}
.floor4:hover .floor4-3 {
  display: block;
}
.floor4 > div:nth-child(3) {
  margin-left: 10px;
  color: #f60000;
  font-weight: bold;
  font-size: 20px;
}
.floor4-2 {
  color: #444;
  font-size: 12px;
  margin-left: 10px;
}
.floor4-2:hover {
  color: #008842;
}
.floor4 {
  position: relative;
  width: 300px;
  height: 360px;
  background: #fff;
  margin-left: 6%;
  margin-bottom: 50px;
}
.floor3 button {
  display: inline-block;
  width: 60px;
  height: 30px;
  line-height: 30px;
  margin-top: 5px;
  background-color: #fff;
  font-size: 12px;
  border: 1px solid #c7c7c7;
  outline: none;
}
.floor3 button:hover {
  background: #eaeaea;
  color: #008842;
}
.floor3 > button:nth-child(1) {
  background: #eaeaea;
  width: 70px;
  margin-left: 10px;
}
.floor3 > button:nth-child(2) {
  border-left: 0;
}
.floor3 > button:nth-child(2) > span {
  background: url("../assets/imgpaging/filter_icon.png") no-repeat;
  display: inline-block;
  width: 10px;
  height: 16px;
  margin-left: 3px;
}
.floor3 > button:nth-child(3) {
  border-left: 0;
}
.floor3 > button:nth-child(3) > span {
  background: url("../assets/imgpaging/filter_icon.png") no-repeat;
  background-position: -20px 0;
  display: inline-block;
  width: 10px;
  height: 16px;
  margin-left: 3px;
}
.floor3 > button:nth-child(4) {
  border-left: 0;
}
.floor3 > button:nth-child(4) > span {
  background: url("../assets/imgpaging/filter_icon.png") no-repeat;
  display: inline-block;
  width: 10px;
  height: 16px;
  margin-left: 3px;
}
.floor3 {
  width: 1300px;
  height: 40px;
  background: #eaeaea;
  margin-left: 6%;
}
.listup > ul li {
  font-size: 12px;
  padding: 0 15px;
  display: inline;
  border-right: 1px solid;
}
.listup > ul li > a {
  color: #777;
}
.listup > ul li > a:hover {
  color: #008842;
}
.listup > ul {
  padding: 5px 15px;
}
.listup > span {
  display: inline-block;
  width: 100px;
  height: 100%;
  background-color: #e0e0e0;
  padding: 5px 0 5px 20px;
  font-size: 14px;
  color: #909090;
}
.listup {
  width: 1300px;
  height: 60px;
  background: #eaeaea;
  border: 1px solid #c7c7c7;
  margin-left: 6%;
  display: flex;
}
.listnext a {
  display: inline-block;
  width: 115px;
  text-align: center;
  font-size: 15px;
  color: #444;
  text-decoration: none;
  outline: none;
  font-weight: bold;
}
.listnext {
  width: 1120px;
  height: 31px;
  border-bottom: 1px solid #008842;
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
  margin-left: 6%;
}
.all:hover .list {
  display: block;
}
.list {
  position: absolute;
  height: 462px;
  background-color: rgba(255, 255, 255, 0.9);
  /* display: none; */
  z-index: 9999;
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
</style>