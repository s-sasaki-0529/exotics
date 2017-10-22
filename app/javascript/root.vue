<template>
  <v-ons-splitter>

    <!-- サイドメニュー -->
    <v-ons-splitter-side swipeable width="150px" collapse="" :open="isSideOpening" @preclose="slideSideMenu(false)">
      <side-menu :isOpen="isSideOpening" @selectMenu="selectMenu"/>
    </v-ons-splitter-side>

    <!-- コンテンツ -->
    <v-ons-splitter-content>
      <v-ons-page>
        <exotics-header @slideSideMenu="slideSideMenu"/>
        <router-view></router-view>
      </v-ons-page>
    </v-ons-splitter-content>

  </v-ons-splitter>

</template>

<script>
  export default {
    name: 'root',
    data() {
      return {
        isSideOpening: false,
      }
    },
    methods: {
      slideSideMenu(isOpen = null) {
        this.isSideOpening = (isOpen === null) ? !this.isSideOpening : isOpen
      },
      selectMenu(key) {
        this.$router.push(key)
        this.slideSideMenu(false)
      }
    }
  }
</script>
