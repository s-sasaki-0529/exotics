<template>
  <v-ons-card class="pet">
    <div class="title ex-center">{{ name }}</div>
    <div class="image ex-center">
      <img :src="image_url">
    </div>
    <div class="content">
      <v-ons-list>
        <v-ons-list-header>基本情報</v-ons-list-header>
        <v-ons-list-item>
          <div class="left">性別</div>
          <div class="ex-center">{{ gender }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left">年齢</div>
          <div class="ex-center">{{ age }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left">体重</div>
          <div class="ex-center">{{ weight }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left">一言</div>
          <div class="ex-center">{{ description }}</div>
        </v-ons-list-item>
      </v-ons-list>
    </div>
  </v-ons-card>
</template>

<script>
  export default {
    data() {
      return {
      }
    },
    props: {
      name: {
        type: String,
        required: true,
      },
      age: {
        type: String,
        required: true,
      },
      gender: {
        type: String,
        required: true,
      },
      weight: {
        type: Number,
        required: true,
      },
      description: {
        type: String,
        required: true,
      },
      image_url: {
        type: String,
        required: true,
      },
    },
  }
</script>
