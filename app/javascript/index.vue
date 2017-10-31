<template>
  <v-ons-splitter>

    <!-- サイドメニュー -->
    <v-ons-splitter-side swipeable width="150px" collapse="" :open="isSideOpening" @preclose="slideSideMenu(false)">
      <side-menu :isOpen="isSideOpening" @slideSideMenu="slideSideMenu"/>
    </v-ons-splitter-side>

    <!-- コンテンツ -->
    <v-ons-splitter-content>
      <v-ons-page>

        <!-- ヘッダー -->
        <exotics-header @slideSideMenu="slideSideMenu"/>

        <!-- タブメニュー -->
        <v-ons-tabbar swipeable id="appTabbar" position="auto">
          <v-ons-tab label="オーナー" icon="fa-user"></v-ons-tab>
          <v-ons-tab label="ペット" icon="fa-paw"></v-ons-tab>
          <v-ons-tab label="ブログ" icon="fa-book" ></v-ons-tab>
        </v-ons-tabbar>

      </v-ons-page>
    </v-ons-splitter-content>

  </v-ons-splitter>

</template>

<script>
  export default {
    name: 'index',
    data() {
      return {
        isSideOpening: false,
      }
    },
    methods: {
      slideSideMenu(isOpen = null) {
        this.isSideOpening = (isOpen === null) ? !this.isSideOpening : isOpen
      },
    }
  }
</script>
