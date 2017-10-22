// ライブラリのインポート
import Vue        from 'vue';
import VueRouter  from 'vue-router'
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

// 各種Vueコンポーネントのインポート
import Root           from './root.vue'
import Header         from './header.vue'
import SideMenu       from './side_menu.vue'

// Vueプラグインの利用を宣言
Vue.use(VueRouter)
Vue.use(VueOnsen)

// 各種Vueコンポーネントの利用を宣言
Vue.component('root', Root)
Vue.component('exotics-header', Header)
Vue.component('side-menu', SideMenu)

// ルーティング設定

// ルートページ
const app = new Vue({el: '#app'});
