import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import router from './router';

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})
