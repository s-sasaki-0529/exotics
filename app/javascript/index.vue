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
        <v-ons-tabbar swipeable position="auto" :visible="tabVisible" :index.sync="tabIndex">
          <v-ons-tab v-for="tab in tabs"
            :icon="tab.icon"
            :label="tab.label"
          />
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
      slideSideMenu(isOpen = null) {
        this.isSideOpening = (isOpen === null) ? !this.isSideOpening : isOpen
      },
    }
  }
</script>
