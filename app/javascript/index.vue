<template>
  <v-ons-page>

    <!-- タブメニュー -->
    <v-ons-tabbar position="auto" :visible="true" :tabs="tabs" :index.sync="tabIndex">
    </v-ons-tabbar>

  </v-ons-page>
</template>

<script>
  import owner_navigator from './owner/owner_navigator'
  import pets  from './owner/pets'
  import home  from './home/home'
  import setting from './setting/setting'
  export default {
    name: 'index',
    data() {
      return {
        tabIndex: 0,
        tabs: [
          {
            icon: 'fa-home',
            label: 'ホーム',
            page: home,
          },
          {
            icon: 'fa-user',
            label: 'オーナー',
            page: owner_navigator,
          },
          {
            icon: 'fa-cog',
            label: '設定',
            page: setting,
          }
        ]
      }
    },
    methods: {
    },
    components: { owner_navigator, pets, home, setting },
  }
</script>
