<template id="main-page">
  <v-ons-page>
    <v-ons-toolbar>
      <div class="center">Title</div>
    </v-ons-toolbar>

    <p style="text-align: center">
      <v-ons-button @click="$ons.notification.alert('Hello World!')">
        Click me!
      </v-ons-button>
    </p>
  </v-ons-page>
</template>

<script>
  import Vue from 'vue'
  var vm = new Vue({
    el: '#main-page',
    template: '#main-page'
  });
</script>
