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
  export default {
    name: 'index',
    data() {
      return {
        tabIndex: 0,
        tabs: [
          {
            icon: 'fa-home',
            label: 'ホーム',
            page: pets,
          },
          {
            icon: 'fa-user',
            label: 'オーナー',
            page: owner,
          },
          {
            icon: 'fa-cog',
            label: '設定',
            page: owner,
          }
        ]
      }
    },
    methods: {
    },
    components: { owner, pets },
  }
</script>
