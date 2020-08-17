<template>
    <div>
        <div class="floor1">
            <ul>
                <li class="sp1">
                    <span>全球精选</span>
                    <span>一站式生鲜购物方案</span>
                </li>
                <li class="sp2">
                    <span>多仓直发</span>
                    <span>次日达配送服务</span>
                </li>
                <li class="sp3">
                    <span>品质严选</span>
                    <span>精选正宗品质好食材</span>
                </li>
                <li class="sp4">
                    <span>天天低价</span>
                    <span>会员专属优惠购不停</span>
                </li>
            </ul>
        </div>
        <div class="floor2">
            <dl class="d1">
                <dt>新手指南</dt>
                <dd>
                    <a href="javascript:;">账户注册</a>
                    <a href="javascript:;">购物流程</a>
                    <a href="javascript:;">订购方式</a>
                    <a href="javascript:;">悠币说明</a>
                    <a href="javascript:;">会员等级</a>
                </dd>
            </dl>
            <dl class="d2">
                <dt>付款方式</dt>
                <dd>
                    <a href="javascript:;">支付方式/发票说明</a>
                    <a href="javascript:;">礼品卡章程</a>
                    <a href="javascript:;">优惠代码</a>
                    <a href="javascript:;">卡券购买章程</a>
                </dd>
            </dl>
            <dl class="d3">
                <dt>配送方式</dt>
                <dd>
                    <a href="javascript:;">配送运费</a>
                    <a href="javascript:;">时间及范围</a>
                </dd>
            </dl>
            <dl class="d4">
                <dt>售后服务</dt>
                <dd>
                    <a href="javascript:;">退换货政策</a>
                    <a href="javascript:;">退换货流程</a>
                    <a href="javascript:;">常见问题</a>
                    <a href="javascript:;">极速退款</a>
                    <a href="javascript:;">投诉与建议</a>
                </dd>
            </dl>
            <dl class="d5">
                <dt>关于我们</dt>
                <dd>
                    <a href="javascript:;">公司介绍</a>
                    <a href="javascript:;">联系我们</a>
                    <a href="javascript:;">业务合作</a>
                    <a href="javascript:;">诚信举报</a>
                    <a href="javascript:;">用户协议</a>
                    <a href="javascript:;">隐私协议</a>
                    <a href="javascript:;">友情链接</a>
                </dd>
            </dl>
        </div>
        <div class="floor3">
            <p style="color:#008842">客服热线 400-000-7788 企业采购或团购，请转2号键咨询周一至周日 9:00-21:00</p>
            <p class="mb-0 green">所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
            <div class="green">
                <a class="green-a" href="javascript:;">沪ICP备09008015号</a>
                <span>Copyright © 2005-2020 版权所有</span>
            </div>
        </div>
        <div class="floor4">
          <a class="mr-4" href="javascript:;"><img src="../assets/imgIndex/footer1.png" alt=""></a>
          <a class="mr-4" href="javascript:;"><img src="../assets/imgIndex/footer2.png" alt=""></a>
          <a class="mr-4" href="javascript:;"><img src="../assets/imgIndex/footer3.png" alt=""></a>
          <a class="mr-4" href="javascript:;"><img src="../assets/imgIndex/footer4.png" alt=""></a>
          <a class="mr-4" href="javascript:;"><img src="../assets/imgIndex/footer5.png" alt=""></a>
          <a class="mr-4" href="javascript:;"><img src="../assets/imgIndex/footer6.jpg" alt=""></a>
          <a class="mr-2" href="javascript:;"><img src="../assets/imgIndex/footer7.png" alt=""></a>
          <a class="last" href="javascript:;">沪公网安备 31010502000002号</a>
        </div>
        <div class="floor4">
          <span>违法和不良信息举报电话 400-000-7788</span>
        </div>
    </div>
</template>

<script>
export default {};
</script>


<style scoped>
.floor1 {
  width: 100%;
  height: 100px;
  background-color: #e0e0e0;
}
.floor1 ul {
  display: flex;
  justify-content: space-around;
}
.floor1 ul li {
  margin-top: 27px;
}
.floor1 ul li span:nth-child(1) {
  color: #008842;
  font-size: 18px;
  display: block;
  padding-left: 15px;
  border-left: 1px solid #a6a6a6;
}
.floor1 ul li span:nth-child(2) {
  font-size: 12px;
  display: block;
  padding-left: 15px;
  border-left: 1px solid #a6a6a6;
}
.sp1 {
  display: block;
  width: 190px;
  height: 42px;
  padding-left: 55px;
  margin-left: 200px;
  background: url(../assets/sprite/footer_service_icon.png) no-repeat;
}
.sp2 {
  display: block;
  width: 190px;
  height: 42px;
  padding-left: 55px;
  background: url(../assets/sprite/footer_service_icon.png) no-repeat;
  background-position: 0 -42px;
}
.sp3 {
  display: block;
  width: 190px;
  height: 42px;
  padding-left: 55px;
  background: url(../assets/sprite/footer_service_icon.png) no-repeat;
  background-position: 0 -84px;
}
.sp4 {
  display: block;
  width: 190px;
  height: 42px;
  padding-left: 55px;
  margin-right: 200px;
  background: url(../assets/sprite/footer_service_icon.png) no-repeat;
  background-position: 0 -126px;
}
.floor2{
    display: flex;
    justify-content: space-around;
}
.d1 {
  width: 190px;
  float: left;
  margin-left: 300px;
  margin-top: 50px;
}
.d1 > dt {
  background: url(../assets/sprite/footer_icon.png) no-repeat;
  font-size: 14px;
  padding-left: 40px;
}
.d1 dd {
  border-left: 1px dashed #a8a8a8;
  padding-left: 20px;
  margin: 15px 0 0 13px;
}
.d1 dd a {
  display: block;
  color: #575556;
  font-size: 12px;
  margin-bottom: 5px;
}
.d1 dd a:hover {
  color: #008842;
}
.d2 {
  width: 190px;
  float: left;
  margin-left: 50px;
  margin-top: 50px;
}
.d2 > dt {
  height: 23px;
  background: url(../assets/sprite/footer_icon.png) no-repeat;
  font-size: 14px;
  padding-left: 40px;
  background-position: 0 -23px;
}
.d2 dd {
  border-left: 1px dashed #a8a8a8;
  padding-left: 20px;
  margin: 15px 0 0 13px;
  height: 110px;
}
.d2 dd a {
  display: block;
  color: #575556;
  font-size: 12px;
  margin-bottom: 5px;
}
.d2 dd a:hover {
  color: #008842;
}
.d3 {
  width: 190px;
  float: left;
  margin-left: 50px;
  margin-top: 50px;
}
.d3 > dt {
  height: 23px;
  background: url(../assets/sprite/footer_icon.png) no-repeat;
  font-size: 14px;
  padding-left: 40px;
  background-position: 0 -46px;
}
.d3 dd {
  border-left: 1px dashed #a8a8a8;
  padding-left: 20px;
  margin: 15px 0 0 13px;
  height: 110px;
}
.d3 dd a {
  display: block;
  color: #575556;
  font-size: 12px;
  margin-bottom: 5px;
}
.d3 dd a:hover {
  color: #008842;
}
.d4 {
  width: 190px;
  float: left;
  margin-left: 50px;
  margin-top: 50px;
}
.d4 > dt {
  height: 23px;
  background: url(../assets/sprite/footer_icon.png) no-repeat;
  font-size: 14px;
  padding-left: 40px;
  background-position: 0 -69px;
}
.d4 dd {
  border-left: 1px dashed #a8a8a8;
  padding-left: 20px;
  margin: 15px 0 0 13px;
  height: 110px;
}
.d4 dd a {
  display: block;
  color: #575556;
  font-size: 12px;
  margin-bottom: 5px;
}
.d4 dd a:hover {
  color: #008842;
}
.d5 {
  width: 190px;
  float: left;
  margin-left: 50px;
  margin-top: 50px;
  margin-right: 300px
}
.d5 > dt {
  height: 23px;
  background: url(../assets/sprite/footer_icon.png) no-repeat;
  font-size: 14px;
  padding-left: 40px;
  background-position: 0 -92px;
}
.d5 dd {
  border-left: 1px dashed #a8a8a8;
  padding-left: 20px;
  margin: 15px 0 0 13px;
  height: 110px;
}
.d5 dd a {
  display: block;
  color: #575556;
  font-size: 12px;
  margin-bottom: 5px;
}
.d5 dd a:hover {
  color: #008842;
}
.floor3 {
    text-align: center;
    margin-top: 50px;
    font-size:14px;
}
.green{
    color: #717171;
}
.green-a{
    color: #717171
}
.green-a:hover{
    text-decoration: none;
    color: #008842
}
.floor4{
  text-align: center;
}
.floor4>span{
  color: #717171;
  font-size: 12px;
}
.last{
  color: #939393;
  font-size:12px;
}
.last:hover{
  text-decoration: none;
}
</style>
