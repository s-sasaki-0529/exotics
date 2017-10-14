<template>
  <v-ons-page>

    <v-ons-toolbar>
      <div class="center">えきぞちっくす！</div>
    </v-ons-toolbar>

    <v-ons-list>
      <v-ons-list-header>TEXT INPUT</v-ons-list-header>
      <v-ons-list-item>
        <v-ons-input placeholder="Input your name" v-model="data"></v-ons-input>
      </v-ons-list-item>
      <v-ons-list-item>
        {{ data }}
      </v-ons-list-item>
    </v-ons-list>

  </v-ons-page>
</template>

<script>
  export default {
    data() {
      return {
        data: ''
      }
    }
  };
</script>
