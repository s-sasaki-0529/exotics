// ライブラリのインポート
import Vue        from 'vue';
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

// 各種Vueコンポーネントのインポート
import Index          from './index'
import Owner          from './owner/owner'
import Pets           from './owner/pets'
import ArrowBox       from './parts/arrow_box'
import CarouselDots   from './parts/carousel_dots'

// Vueプラグインの利用を宣言
Vue.use(VueOnsen)

// 各種Vueコンポーネントの利用を宣言
Vue.component('index', Index)
Vue.component('owner', Owner)
Vue.component('pets', Pets)
Vue.component('arrow-box', ArrowBox)
Vue.component('carousel-dots', CarouselDots)

// ルートページ
const app = new Vue({
  el: '#app'
})
