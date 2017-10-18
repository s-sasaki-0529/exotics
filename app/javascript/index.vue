<template>
  <v-ons-splitter>

    <!-- サイドメニュー -->
    <v-ons-splitter-side swipeable width="150px" collapse="" :open="isSideOpening" @preclose="slideSideMenu(false)">
      <side-menu :isOpen="isSideOpening" @slideSideMenu="slideSideMenu"/>
    </v-ons-splitter-side>

    <!-- コンテンツ -->
    <v-ons-splitter-content>
      <v-ons-page>
        <exotics-header :selectedMenu="selectedMenu" @slideSideMenu="slideSideMenu"/>
        <wrapper />
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
        selectedMenu:  'top',
      }
    },
    methods: {
      slideSideMenu(isOpen = null) {
        this.isSideOpening = (isOpen === null) ? !this.isSideOpening : isOpen
      },
    }
  }
</script>
