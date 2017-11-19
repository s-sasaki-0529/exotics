<template>
  <v-ons-page>

    <!-- ヘッダー -->
    <exotics-header/>

    <!-- タブメニュー -->
    <v-ons-tabbar position="auto" :visible="true" :tabs="tabs" :index.sync="tabIndex">
    </v-ons-tabbar>

  </v-ons-page>
</template>

<script>
  import owner from './owner/owner'
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
            page: pets,
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
    components: { owner, pets, home, setting },
  }
</script>
