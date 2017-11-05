<template>
  <v-ons-page>

    <!-- ヘッダー -->
    <exotics-header/>

    <p>コンテンツ</p>

    <!-- タブメニュー -->
    <v-ons-tabbar swipeable position="auto" :visible="tabVisible" :index.sync="tabIndex">
      <v-ons-tab v-for="tab in tabs"
        :icon="tab.icon"
        :label="tab.label"
      />
    </v-ons-tabbar>

  </v-ons-page>
</template>

<script>
  export default {
    name: 'index',
    data() {
      return {
        tabIndex: 1,
        tabVisible: true,
        tabs: [
          {
            icon: 'fa-user',
            label: 'オーナー',
            key: 'owner',
          },
          {
            icon: 'fa-paw',
            label: 'ペット',
            key: 'owner',
          },
          {
            icon: 'fa-book',
            label: 'ブログ',
            key: 'blog',
          }
        ]
      }
    },
    methods: {
    }
  }
</script>
