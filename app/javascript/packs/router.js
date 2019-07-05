import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import Home from '../home.vue'
import Account from '../account.vue'

Vue.use(VueRouter)

export default new VueRouter({ 
    mode: 'history',
    routes: [
        { path: '/', component: Home},
        { path: '/accounts', component: Account}
    ]
})
