import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'bootstrap'
import axios from 'axios'
import $ from 'jquery'

//引入全局组件
import indexHead from '../src/components/indexHead.vue'
Vue.component("indexHead",indexHead)

import indexFoot from '../src/components/indexFoot.vue'
Vue.component("indexFoot",indexFoot)

import foot from '../src/components/login_reg_shopp.vue'
Vue.component("foot",foot)

//配置axios的基础地址
axios.defaults.baseURL = 'http://127.0.0.1:2997'
Vue.prototype.axios = axios;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
