<template>
  <v-ons-page>
    <OwnerNavigator />
  </v-ons-page>
</template>

<script>
  import OwnerNavigator from './owner/owner_navigator'
  export default {
    name: 'index',
    data() {
      return {
      }
    },
    methods: {
    },
    components: { OwnerNavigator },
  }
</script>
