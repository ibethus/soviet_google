import Vue from 'vue'
import App from './App.vue'
import VueMaterial from 'vue-material'
import drag from "v-drag"
import 'vue-material/dist/vue-material.min.css'
import 'vue-material/dist/theme/default-dark.css'

Vue.use(VueMaterial)
Vue.use(drag)
Vue.config.productionTip = false


new Vue({
  render: h => h(App),
}).$mount('#app')
