import Vue        from 'vue';
import VueRouter  from 'vue-router';
import VueOnsen from 'vue-onsenui';
import 'onsenui/css/onsenui.css';
import 'onsenui/css/onsen-css-components.css';

Vue.use(VueOnsen);
Vue.use(VueRouter);

// ページごとのコンポーネントを定義
const index        = Vue.extend(require('./index.vue'));

// URLに対応するコンポーネントを定義
const routes = [
  { path: '/', component: index },
];

// ページ全体をVueコンポーネント化
const app = new Vue({
  router: new VueRouter({routes}),
}).$mount('#app');
