import Vue        from 'vue';
import VueRouter  from 'vue-router'
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

import Index          from './index.vue'
import ExoticsHeader  from './exotics_header.vue'
import SideMenu       from './side_menu.vue'
import Wrapper        from './wrapper.vue'

Vue.use(VueRouter)
Vue.use(VueOnsen)
Vue.component('index', Index)
Vue.component('exotics-header', ExoticsHeader)
Vue.component('side-menu', SideMenu)
Vue.component('wrapper', Wrapper)

// ルートページ
const app = new Vue({
  el: '#app',
  data() {
    return {
    }
  }
});
