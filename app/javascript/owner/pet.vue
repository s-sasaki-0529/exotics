<template>
  <v-ons-card class="pet">
    <div class="title center">{{ name }}</div>
    <div class="image center">
      <img :src="picture">
    </div>
    <div class="content">
      <v-ons-list>
        <v-ons-list-header>基本情報</v-ons-list-header>
        <v-ons-list-item>
          <div class="left">性別</div>
          <div class="center">{{ gender }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left">年齢</div>
          <div class="center">{{ age }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left">体重</div>
          <div class="center">{{ weight }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left">一言</div>
          <div class="center">{{ description }}</div>
        </v-ons-list-item>
        <v-ons-list-header>関連メニュー</v-ons-list-header>
        <v-ons-list-item>
          <div class="left"><v-ons-icon icon="fa-picture-o" class="list-item__icon"></v-ons-icon></div>
          <div class="center">写真一覧</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left"><v-ons-icon icon="fa-book" class="list-item__icon"></v-ons-icon></div>
          <div class="center">ブログ一覧</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="left"><v-ons-icon icon="line-chart" class="list-item__icon"></v-ons-icon></div>
          <div class="center">体重記録</div>
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
        type: String,
        required: true,
      },
      description: {
        type: String,
        required: true,
      },
      picture: {
        type: String,
        required: true,
      },
    },
  }
</script>
