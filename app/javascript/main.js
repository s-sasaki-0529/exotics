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
import Top            from './top.vue'
import Owners         from './owners.vue'

// Vueプラグインの利用を宣言
Vue.use(VueRouter)
Vue.use(VueOnsen)

// 各種Vueコンポーネントの利用を宣言
Vue.component('root', Root)
Vue.component('exotics-header', Header)
Vue.component('side-menu', SideMenu)

// ルーティング設定
const routes = [
  { path: '/top', component: Top },
  { path: '/owners', component: Owners },
]

// ルートページ
const app = new Vue({
  router: new VueRouter({routes})
}).$mount('#app')
