<template>
  <v-ons-splitter-side swipeable width="150px" collapse="" :open="isOpen" @preclose="$emit('slideSideMenu', false)">
    <v-ons-page>
      <v-ons-list>
        <v-ons-list-item tappable modifier="chevron" @click="$emit('slideSideMenu')">
          トップ
        </v-ons-list-item>
      </v-ons-list>
    </v-ons-page>
  </v-ons-splitter-side>
</template>

<script>
  export default {
    name: 'side-menu',
    props: ['isOpen'],
    data() {
      return {
      }
    }
  }
</script>
