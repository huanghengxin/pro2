<template>
  <div style="background-color: #f7f9f8;">
    <indexHead></indexHead>
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
    <div class="navbar1 my-2">
      <router-link to="/">首页</router-link>
      <span class="mx-2">></span>
      <a href="javascript:;">{{details.fenleia}}</a>
      <span class="mx-2">></span>
      <router-link to="/paging">{{details.fenleib}}</router-link>
      <span class="mx-2">></span>
      <span>{{details.guigea}}</span>
    </div>
    <div class="content">
      <div>
        <img :src="details.src1" />
        <img :src="details.src2" v-show="big2" />
        <img :src="details.src3" v-show="big3" />
        <img :src="details.src4" v-show="big4" />
      </div>

      <div class="title">
        <div>{{details.titlea}}</div>
        <div>{{details.titleb}}</div>
      </div>
      <div class="titledown">
        <div class="price">
          <span>价格:</span>
          <span>¥{{details.pricea.toFixed(2)}}</span>
          <div class="more">
            <span>更多商品优惠,尽在易果生鲜APP</span>
            <span>
              <img src="../assets/imgdetails/tel.png" alt />
              <span class="ml-1 mr-3">手机下单购买</span>
              <span style="color:#008842">立即扫码</span>
            </span>
          </div>
          <div class="erweima">
            <img src="../assets/imgdetails/erweima_app.jpg" alt />
          </div>
          <div class="pinglun">
            <div class="mb-2">总体满意度</div>
            <div class="mb-2" style="color:#ff0000;font-size:18px">5.0 分</div>
            <div>(评论数2)</div>
          </div>
        </div>
      </div>
      <div class="size">
        <span>规格:</span>
        <ul>
          <li>¥{{details.pricea.toFixed(2)}}</li>
          <li>{{details.guigeb}}</li>
          <span></span>
        </ul>
      </div>
      <div class="piliang">
        <span>数量:</span>
        <input type="text" v-model="value" />
        <button class="add" @click="add">+</button>
        <button class="jian" @click="jian">-</button>
        <button>
          <span></span>
          暂时无货
        </button>
      </div>
      <div class="other">
        <ul>
          <li>原产地:智利</li>
          <li>商品编号:6000040553</li>
          <li>品牌:易果</li>
          <li>发货地:上海宝山</li>
        </ul>
      </div>
    </div>
    <div class="small">
      <a href="javascript:;">
        <img :src="details.src1" alt />
      </a>
      <a href="javascript:;" @mouseover="showbig2" @mouseout="notbig2">
        <img :src="details.src2" alt />
      </a>
      <a href="javascript:;" @mouseover="showbig3" @mouseout="notbig3">
        <img :src="details.src3" alt />
      </a>
      <!-- <a href="javascript:;" @mouseover="showbig4" @mouseout="notbig4">
        <img :src="details.src4" alt />
      </a>-->
    </div>
    <a href="javascript:;" class="kefu"></a>
    <a href="#" class="btnTop" v-show="btnFlag"></a>

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
      list: false,
      value: 1,
      big2: false,
      big3: false,
      big4: false,
      btnFlag: false,
      details: [],
    };
  },
  mounted() {
    window.addEventListener("scroll", this.scrollToTop);
    let id = this.$route.params.id;
    this.axios.get("/details?id=" + id).then((res) => {
      this.details = res.data.result;
      this.details.src1 = require("../assets/imgdetails/" + this.details.src1);
      this.details.src2 = require("../assets/imgdetails/" + this.details.src2);
      this.details.src3 = require("../assets/imgdetails/" + this.details.src3);
      this.details.src4 = require("../assets/imgdetails/" + this.details.src4);
      console.log(this.details);
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
    },
    showbig2() {
      this.big2 = true;
    },
    notbig2() {
      this.big2 = false;
    },
    showbig3() {
      this.big3 = true;
    },
    notbig3() {
      this.big3 = false;
    },
    showbig4() {
      this.big4 = true;
    },
    notbig4() {
      this.big4 = false;
    },
    add() {
      this.value++;
    },
    jian() {
      if (this.value > 1) {
        this.value--;
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
.small {
  clear: both;
  margin-left: 6%;
}
.small img {
  width: 85px;
  height: 85px;
}
.small img:hover {
  border: 1px solid #008842;
}
.other {
  height: 140px;
  margin-top: -140px;
  margin-left: 1050px;
  border-left: 1px solid #999999;
}
.other > ul li {
  padding-bottom: 5px;
  font-size: 12px;
  color: #999999;
  padding-left: 50px;
}
.piliang > button:last-child {
  width: 190px;
  height: 45px;
  margin-top: -15px;
  margin-left: 75px;
  background-color: #757575;
  color: #fff;
  text-align: center;
  font-size: 18px;
  border-radius: 3px;
}
.piliang > button:last-child > span {
  display: inline-block;
  width: 30px;
  height: 25px;
  background: url("../assets/sprite/product.png") no-repeat -47px 0;
  margin-right: 5px;
}
.piliang {
  margin-top: 50px;
  margin-left: 530px;
  font-size: 12px;
}
.piliang > input {
  width: 42px;
  height: 42px;
  outline: none;
  text-align: center;
  margin-left: 35px;
  margin-top: -30px;
}
.piliang button {
  border: 1px solid #999999;
  outline: none;
  background-color: #fff;
  position: absolute;
  width: 18px;
  height: 20px;
}
.add {
  margin-left: -1px;
  margin-top: -12px;
}
.jian {
  margin-left: -1px;
  margin-top: 8px;
  border-top: 0 !important;
  height: 22px !important;
}
.size > ul {
  margin-left: 60px;
  margin-top: -30px;
}
.size > ul li {
  border: 1px solid #008842;
  width: 60px;
  height: 25px;
  text-align: center;
}
.size > ul > li:nth-child(2) {
  border-top: 0;
}
.size > ul > span {
  display: inline-block;
  background: url("../assets/sprite/product.png") no-repeat;
  width: 16px;
  height: 16px;
  position: absolute;
  margin-left: 44px;
  margin-top: -16px;
}
.size {
  margin-top: 50px;
  margin-left: 530px;
  font-size: 12px;
}
.pinglun {
  position: absolute;
  margin-left: 580px;
  margin-top: -70px;
  color: #999999;
  text-align: center;
}
.erweima {
  margin-left: 425px;
  margin-top: -75px;
}
.more > span:nth-child(2) {
  margin-left: 100px;
}
.more {
  margin-top: 10px;
  padding-top: 5px;
  border-top: 1px solid #e2e2e2;
  color: #999999;
}
.price > span:nth-child(2) {
  font-size: 22px;
  color: #ff0000;
  margin-left: 50px;
}
.price {
  width: 425px;
}
.titledown {
  width: 680px;
  height: 90px;
  margin-top: 30px;
  margin-left: 530px;
  background-color: #fff;
  padding: 10px 20px;
  font-size: 12px;
}
.title > div:nth-child(1) {
  font-size: 26px;
}
.title > div:nth-child(2) {
  font-style: 16px;
  color: #999999;
}
.title {
  margin-left: 530px;
}
.content > div:nth-child(1) {
  float: left;
}
.content > div > img:nth-child(2) {
  margin-left: -500px;
}
.content > div > img:nth-child(3) {
  margin-left: -500px;
}
.content > div > img:nth-child(4) {
  margin-left: -500px;
}
.content {
  margin-left: 6%;
}
.navbar1 {
  font-size: 12px;
  margin-left: 6%;
}
.navbar1 a {
  color: #444;
}
.navbar1 a:hover {
  text-decoration: none;
  color: #008842;
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
</style>