// ライブラリのインポート
import Vue        from 'vue';
import VueRouter  from 'vue-router'
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

// 各種Vueコンポーネントのインポート
import Index          from './index.vue'
import Header         from './header.vue'
import SideMenu       from './side_menu.vue'
import Wrapper        from './wrapper.vue'

// Vueプラグインの利用を宣言
Vue.use(VueRouter)
Vue.use(VueOnsen)

// 各種Vueコンポーネントの利用を宣言
Vue.component('index', Index)
Vue.component('exotics-header', Header)
Vue.component('side-menu', SideMenu)
Vue.component('wrapper', Wrapper)

// ルーティング設定

// ルートページ
const app = new Vue({el: '#app'});
