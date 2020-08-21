import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

//引入首页头部组件
import indexHead from '../components/indexHead.vue'
import indexFoot from '../components/indexFoot.vue'
import footer from '../components/login_reg_shopp.vue'
import index from '../components/index.vue'
import login from '../components/login.vue'
import register from '../components/register.vue'
import paging from '../components/paging.vue'
import pagingnull from '../components/pagingnull.vue'
import details from '../components/details.vue'


Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: index
  },
  {
    path: '/login',
    component: login
  },
  {
    path: '/register',
    component: register
  },
  {
    path: '/paging/:id',
    component: paging
  },
  {
    path: '/pagingnull',
    component: pagingnull
  },
  {
    path: '/details/:id',
    component: details
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
