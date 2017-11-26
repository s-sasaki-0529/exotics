<template>
  <v-ons-toolbar>
    <div class="left" v-if="backButton">
      <v-ons-back-button>{{ backButton }}</v-ons-back-button>
    </div>
    <div class="center">
      {{ title }}
    </div>
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
      },
      backButton: {
        type: String,
        required: false,
      }
    }
  }
</script>
