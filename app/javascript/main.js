import Vue        from 'vue';
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

import Index          from './index.vue'
import ExoticsHeader  from './exotics_header.vue'
import SideMenu       from './side_menu.vue'

Vue.use(VueOnsen)
Vue.component('index', Index)
Vue.component('exotics-header', ExoticsHeader)
Vue.component('side-menu', SideMenu)

// ルートページ
const app = new Vue({
  el: '#app',
  data() {
    return {
    }
  }
});
