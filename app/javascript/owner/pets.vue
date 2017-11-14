<template>
  <v-ons-page class="pets center">
    <h1>ペット一覧</h1>
    <v-ons-card>
      <div class="title center">メイ</div>
      <div class="image center">
        <img src="https://pbs.twimg.com/media/DKtIotHWsAEzEsP.jpg">
      </div>
      <div class="content">
        <v-ons-list>
          <v-ons-list-header>基本情報</v-ons-list-header>
          <v-ons-list-item>
            <div class="left">性別</div>
            <div class="center">メス</div>
          </v-ons-list-item>
          <v-ons-list-item>
            <div class="left">年齢</div>
            <div class="center">1歳9ヶ月</div>
          </v-ons-list-item>
          <v-ons-list-item>
            <div class="left">体重</div>
            <div class="center">265グラム</div>
          </v-ons-list-item>
          <v-ons-list-item>
            <div class="left">一言</div>
            <div class="center">6児の母です</div>
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
  </v-ons-page>
</template>

<script>
  export default {
    data() {
      return {
      }
    }
  }
</script>
