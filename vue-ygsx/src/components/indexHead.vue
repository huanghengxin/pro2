<template>
  <div>
    <div id="floor1">
      <div>
        <span class="mr-2">欢迎光临易果生鲜！</span>
        <div class="menu1 d-inline-block">
          <a class="peisong" href="javascript:;">
            <span class="mr-2">配送至:</span>
            <span class="bgl">全国其他城市>></span>
            <span id="sanjiao"></span>
          </a>
          <div class="pulldown">
            <div>
              <p class="float-left pl-3">请根据您的收货地址选择</p>
              <a style="color: #008842" class="float-right pr-3" href="javascript:;">全国其他城市>></a>
              <div class="d-inline-block"></div>
            </div>
            <div>
              <img src="../assets/imgIndex/hot.png" alt />
              <span class="ml-2">热门城市</span>
            </div>
            <a style="color:#000;" class="peisong ml-5 d-block" href="javascript:;">上海</a>
            <ul class="menu2">
              <li class="list" @mouseover="isshowa" @mouseout="notshowa">
                <a href="javascript:;">ABCDE</a>
                <ul v-show="showa">
                  <li>
                    <span v-for="(v,i) of A" :key="i" class="ml-4">{{v}}</span>
                  </li>
                  <li>
                    <span v-for="(v,i) of B" :key="i" class="ml-4">{{v}}</span>
                  </li>
                </ul>
              </li>
              <li class="list" @mouseover="isshowf" @mouseout="notshowf">
                <a href="javascript:;">FGHIJ</a>
                <ul style="margin-left:-97px" v-show="showf">
                  <li>
                    <span v-for="(v,i) of F" :key="i" class="ml-4">{{v}}</span>
                  </li>
                  <li>
                    <span v-for="(v,i) of G" :key="i" class="ml-4">{{v}}</span>
                  </li>
                </ul>
              </li>
              <li class="list" @mouseover="isshowk" @mouseout="notshowk">
                <a href="javascript:;">KLMNO</a>
                <ul style="margin-left:-194px" v-show="showk">
                  <li>
                    <span v-for="(v,i) of K" :key="i" class="ml-4">{{v}}</span>
                  </li>
                  <li>
                    <span v-for="(v,i) of L" :key="i" class="ml-4">{{v}}</span>
                  </li>
                </ul>
              </li>
              <li class="list" @mouseover="isshowp" @mouseout="notshowp">
                <a href="javascript:;">PQRST</a>
                <ul style="margin-left:-291px" v-show="showp">
                  <li>
                    <span v-for="(v,i) of P" :key="i" class="ml-4">{{v}}</span>
                  </li>
                  <li>
                    <span v-for="(v,i) of Q" :key="i" class="ml-4">{{v}}</span>
                  </li>
                </ul>
              </li>
              <li class="list" @mouseover="isshoww" @mouseout="notshoww">
                <a href="javascript:;">UVWXYZ</a>
                <ul style="margin-left:-388px" v-show="showw">
                  <li>
                    <span v-for="(v,i) of W" :key="i" class="ml-4">{{v}}</span>
                  </li>
                  <li>
                    <span v-for="(v,i) of X" :key="i" class="ml-4">{{v}}</span>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class="d-inline">
          <img src="../assets/imgIndex/laba.png" alt class="mx-3" />
          <a href="javascript:;" class="green">网警提示</a>
        </div>
      </div>
      <div>
        <router-link class="green mr-4" to="/login">[登录]</router-link>
        <router-link class="green mr-4" to="/register">[注册]</router-link>
        <div class="myyiguo d-inline-block mr-4">
          <a class="green" href="javascript:;">
            <span id="sp1"></span>
            我的易果
            <span id="sanjiao"></span>
            <ul class="my">
              <li>
                <a href="javascript:;">我的订单</a>
              </li>
              <li>
                <a href="javascript:;">我的优惠券</a>
              </li>
              <li>
                <a href="javascript:;">我的收藏</a>
              </li>
              <li>
                <a href="javascript:;">我的悠币</a>
              </li>
              <li>
                <a href="javascript:;">我的退换货</a>
              </li>
              <li>
                <a href="javascript:;">预存款查询</a>
              </li>
              <li>
                <a href="javascript:;">立即充值</a>
              </li>
            </ul>
          </a>
        </div>
        <div class="myyiguo d-inline-block mr-4">
          <a class="green" href="javascript:;">
            <span id="sp2"></span>
            我的易果
            <span id="sanjiao"></span>
          </a>
          <div class="wechat">
            <div>
              <img src="../assets/imgIndex/erweima_app.jpg" alt />
              <div>扫一扫下载APP</div>
            </div>
            <div>
              <img src="../assets/imgIndex/wechat.jpg" alt />
              <div>易果生鲜微信</div>
            </div>
          </div>
        </div>
        <a class="green mr-4" href="javascript:;">
          <span id="sp3"></span>
          礼品卡绑定
        </a>
        <a class="green mr-4" href="javascript:;">
          <span id="sp4"></span>
          礼品兑换券入口
        </a>
        <a class="green mr-4" href="javascript:;">
          <img src="../assets/imgIndex/yingyezizhi.png" alt />
          营业资质
        </a>
        <a class="green" href="javascript:;">
          <img src="../assets/imgIndex/zhaopin1.png" alt />
          人才招聘
        </a>
      </div>
    </div>
    <div id="floor2">
      <div class="mt-3">
        <router-link to="/">
          <img src="../assets/imgIndex/logo.png" alt />
        </router-link>
      </div>
      <div class="mt-3 middle">
        <input type="text" @focus="search" @blur="shuru" v-model="shuruzhi" />
        <button @click="alert">搜 索</button>
        <div class="mt-2">
          <a href="javascript:;" class="mr-2">牛排</a>
          <a href="javascript:;" class="mr-2">虾仁</a>
          <a href="javascript:;">鳕鱼</a>
        </div>
      </div>
      <div class="mt-3 right">
        <button>
          <span id="sp5"></span>
          <span>0.0</span>
        </button>
        <div class="shopping">购物车中还没有商品,赶紧选购吧!</div>
      </div>
    </div>
  </div>
</template>

<script>
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.min.js";
import { white } from "color-name";
export default {
  data() {
    return {
      showa: true,
      showf: false,
      showk: false,
      showp: false,
      showq: false,
      showw: false,
      shuruzhi: "输入商品名 / 编号 / 拼音",
      A: [
        "A",
        "阿坝藏族自治区",
        "阿拉善",
        "安顺市",
        "安阳市",
        "安庆市",
        "鞍山市",
      ],
      B: [
        "B",
        "白城市",
        "巴中市",
        "滨州市",
        "本溪市",
        "巴彦淖尔",
        "白银市",
        "百色市",
        "蚌阜市",
        "毕节",
        "保山市",
        "北海市",
        "保定市",
        "包头市",
        "白山市",
        "北京市",
      ],
      F: [
        "F",
        "佛山市",
        "防城港市",
        "福州市",
        "抚顺市",
        "阜阳市",
        "抚州市",
        "阜新市",
        "奉化市",
      ],
      G: [
        "G",
        "广元市",
        "果洛",
        "桂林市",
        "固原市",
        "贵阳市",
        "甘南",
        "甘孜藏族自治州",
        "赣州市",
        "贵港市",
        "广州市",
        "广安市",
      ],
      K: ["K", "开封市", "昆明市", "昆山市"],
      L: [
        "L",
        "临汾市",
        "丽水市",
        "洛阳市",
        "丽江市",
        "陇南市",
        "柳州市",
        "临沂市",
        "龙岩市",
        "聊城市",
        "凉山彝族自治州",
        "临夏",
      ],
      P: ["P", "攀枝花市", "平顶山市", "莆田市", "平凉市", "盘锦市", "普洱市"],
      Q: [
        "Q",
        "泉州市",
        "秦皇岛市",
        "青岛市",
        "清远市",
        "钦州市",
        "衢州市",
        "庆阳市",
        "曲靖市",
        "潜江市",
        "七台河市",
        "齐齐哈尔市",
      ],
      W: [
        "W",
        "淮坊市",
        "武威市",
        "武汉市",
        "梧州市",
        "芜湖市",
        "乌海市",
        "乌兰擦布",
        "温州市",
        "威海市",
        "无锡市",
        "吴忠市",
      ],
      X: [
        "X",
        "西双版纳傣族自治州",
        "许昌市",
        "孝感市",
        "邢台市",
        "西安市",
        "仙桃市",
        "厦门市",
        "信阳市",
        "锡林郭勒",
        "咸宁市",
        "兴安",
      ],
    };
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
    isshowa() {
      if (this.showa == false) {
        this.showa = true;
      }
    },
    notshowa() {
      if (this.showa == true) {
        this.showa = false;
      }
    },
    isshowf() {
      if (this.showf == false) {
        this.showf = true;
      }
    },
    notshowf() {
      if (this.showf == true) {
        this.showf = false;
      }
    },
    isshowk() {
      if (this.showk == false) {
        this.showk = true;
      }
    },
    notshowk() {
      if (this.showk == true) {
        this.showk = false;
      }
    },
    isshowp() {
      if (this.showp == false) {
        this.showp = true;
      }
    },
    notshowp() {
      if (this.showp == true) {
        this.showp = false;
      }
    },
    isshoww() {
      if (this.showw == false) {
        this.showw = true;
      }
    },
    notshoww() {
      if (this.showw == true) {
        this.showw = false;
      }
    },
  },
};
</script>

<style scoped>
#floor1 {
  background-color: #f7f9f8;
  width: 100%;
  height: 30px;
  font-size: 12px;
  line-height: 30px;
  display: flex;
  justify-content: space-around;
}
.peisong {
  color: #008842;
}
.peisong:hover {
  text-decoration: none;
}
.menu1 {
  position: relative;
}
@keyframes rotate {
  0% {
    transform: rotate(0deg);
  }
  50% {
    transform: rotate(90deg);
  }
  100% {
    transform: rotate(180deg);
  }
}
#sanjiao {
  display: inline-block;
  width: 8px;
  height: 4px;
  background-image: url(../assets/sprite/header-img.png);
  margin-left: 5px;
}
.menu1:hover #sanjiao {
  animation-name: rotate;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
}
.menu1:hover .bgl {
  background-color: #008842;
  color: white;
}
.pulldown {
  width: 485px;
  height: 240px;
  font-size: 12px;
  border: 2px solid #008842;
  position: absolute;
  display: none;
  background-color: white;
  z-index: 99;
}
.menu1:hover .pulldown {
  display: block;
}
.pulldown > div:first-child {
  background-color: #e0e0e0;
}
.pulldown img {
  margin-left: -125px;
}

.list {
  float: left;
}
.list > a {
  display: inline-block;
  width: 95px;
  border-bottom: 1px solid #e0e0e0;
  text-align: center;
  color: #008842;
}
.list > a:hover {
  border: 1px solid #e0e0e0;
  border-bottom: 0;
  text-decoration: none;
}
.list > ul {
  position: absolute;
}

.green {
  color: #000;
}
.green:hover {
  color: #008842;
  text-decoration: none;
}
.myyiguo {
  position: relative;
}
.myyiguo:hover {
  background-color: white;
}
.myyiguo:hover .my {
  display: block;
}
.myyiguo:hover #sanjiao {
  animation-name: rotate;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
}
.my {
  position: absolute;
  width: 105px;
  border: 1px solid #b4c1a3;
  border-top: 0;
  padding: 5px 12px;
  display: none;
  background-color: white;
  z-index: 99;
}
.my a {
  color: #000;
}
.my a:hover {
  text-decoration: none;
  color: #008842;
}
#sp1 {
  display: inline-block;
  width: 18px;
  height: 18px;
  background-image: url(../assets/sprite/header-img.png);
  background-position: -40px;
}
#sp2 {
  display: inline-block;
  width: 18px;
  height: 18px;
  background-image: url(../assets/sprite/header-img.png);
  background-position: -64px;
}
.wechat {
  position: absolute;
  display: none;
  text-align: center;
  border: 1px solid #b4c1a3;
  border-top: 0;
  background-color: #fff;
  z-index: 99;
}
.myyiguo:hover .wechat {
  display: block;
}
#sp3 {
  display: inline-block;
  width: 22px;
  height: 20px;
  background-image: url(../assets/sprite/header-img.png);
  background-position: -147px;
}
#sp4 {
  display: inline-block;
  width: 22px;
  height: 20px;
  background-image: url(../assets/sprite/header-img.png);
  background-position: -86px;
}
#floor2 {
  width: 100%;
  height: 80px;
  background-color: #e0e0e0;
  font-size: 12px;
  display: flex;
  justify-content: space-around;
}
.middle {
  width: 530px;
  height: 30px;
}
.middle > input {
  width: 450px;
  height: 30px;
  border: 1px solid #008842;
  padding: 0 10px;
  background-color: #e0e0e0;
  color: #999;
  outline: none;
}
.middle > input:focus {
  background-color: white;
}
.middle > button {
  width: 80px;
  height: 30px;
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
  width: 170px;
  height: 42px;
  border: 1px solid #008842;
  outline: none;
  background-color: white;
}
.right > button > span:nth-child(2) {
  font-size: 25px;
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