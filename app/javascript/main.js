// ライブラリのインポート
import Vue        from 'vue';
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

// 各種Vueコンポーネントのインポート
import Index          from './index.vue'
import Header         from './header.vue'

// Vueプラグインの利用を宣言
Vue.use(VueOnsen)

// 各種Vueコンポーネントの利用を宣言
Vue.component('index', Index)
Vue.component('exotics-header', Header)


// ルートページ
const app = new Vue({
  el: '#app'
})
