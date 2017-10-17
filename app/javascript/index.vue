<template>
  <v-ons-splitter>

    <!-- サイドメニュー -->
    <side-menu :isOpen="isSideOpening" @slideSideMenu="slideSideMenu"/>

    <!-- コンテンツ -->
    <v-ons-splitter-content>
      <v-ons-page>
        <exotics-header @slideSideMenu="slideSideMenu"/>
        <div class="content">
          ぼでぃ
        </div>
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
