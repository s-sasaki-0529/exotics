<template>
  <v-ons-toolbar>
    <v-ons-toolbar-button @click="$emit('slideSideMenu')">
      <v-ons-icon icon="ion-navicon, material:md-menu" />
    </v-ons-toolbar-button>
    <div class="center">えきぞちっくす！</div>
  </v-ons-toolbar>
</template>

<script>
  export default {
    name: 'exotics-header',
    data() {
      return {
      }
    },
  }
</script>
