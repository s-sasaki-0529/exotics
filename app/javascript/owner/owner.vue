<template>
  <v-ons-page class="owner ex-center">
    <div class="header">
      <h1>HousouP</h1>
    </div>
    <div class="owner-icon">
      <img src="dummy_owner.jpg">
    </div>
    <arrow-box
      text="デグー12匹飼いの既婚プログラマです。12匹のデグーのお世話に毎日追われていますが、楽しくやっています。"
    />
    <div class="menus">
      <div class="menu" v-for="menu in menus">
        <div>
          <v-ons-fab class="fab"><v-ons-icon :icon="menu.icon"></v-ons-icon></v-ons-fab>
        </div>
        <div>{{menu.label}}</div>
      </div>
    </div>
  </v-ons-page>
</template>

<script>
  export default {
    data() {
      return {
        menus: [
          {label: 'ペット', icon: 'fa-paw'},
          {label: 'ブログ', icon: 'fa-book'},
          {label: '写真', icon: 'fa-picture-o'},
          {label: '体重', icon: 'line-chart'},
          {label: '備品', icon: 'shopping-basket'}
        ]
      }
    }
  }
</script>
