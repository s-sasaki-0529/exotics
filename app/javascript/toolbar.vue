<template>
  <v-ons-toolbar>
      <div class="center">{{ title }}</div>
  </v-ons-toolbar>
</template>

<script>
  export default {
    data() {
      return {
      }
    },
    props: {
      title: {
        type: String,
        required: true,
      }
    }
  }
</script>
