<template>
  <v-ons-splitter>

    <!-- サイドメニュー -->
    <v-ons-splitter-side swipeable width="150px" collapse="" :open="isSideOpening" @preclose="slideSideMenu(false)">
      <side-menu :isOpen="isSideOpening" @selectMenu="selectMenu"/>
    </v-ons-splitter-side>

    <!-- コンテンツ -->
    <v-ons-splitter-content>
      <v-ons-page>
        <exotics-header :selectedMenu="selectedMenu" @slideSideMenu="slideSideMenu"/>
        <wrapper :selectedMenu="selectedMenu"/>
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
      selectMenu(key) {
        console.log(key)
        this.selectedMenu = key
        this.slideSideMenu(false)
      }
    }
  }
</script>
