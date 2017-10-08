import Vue        from 'vue';
import ElementUI  from 'element-ui'
import locale     from 'element-ui/lib/locale/lang/ja'
import 'element-ui/lib/theme-default/index.css'
import VueRouter  from 'vue-router';

Vue.use(ElementUI, {locale});
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
