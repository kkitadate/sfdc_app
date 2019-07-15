import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import Home from '../home.vue'
import Account from '../account.vue'
import AccountShow from '../account_show.vue'

Vue.use(VueRouter)

export default new VueRouter({ 
    routes: [
        { path: '/', component: Home},
        { path: '/accounts', component: Account},
        { path: '/accounts/:id',
          component: AccountShow,
          props: route => ({
            id: Number(route.params.id)
          })
        },
    ]
})
