<template>
  <v-ons-page>
    <v-ons-list>
      <v-ons-list-item v-for="menu in menus" tappable modifier="chevron" @click="$emit('slideSideMenu')">
        {{ menu.label }}
      </v-ons-list-item>
    </v-ons-list>
  </v-ons-page>
</template>

<script>
  export default {
    name: 'side-menu',
    props: ['isOpen'],
    data() {
      return {
        menus: [
          {key: 'top',    isShow: true, label: 'トップ'},
          {key: 'mypage', isShow: true, label: 'マイページ'},
          {key: 'owners', isShow: true, label: '飼い主一覧'},
          {key: 'logout', isShow: true, label: 'ログアウト'},
        ]
      }
    }
  }
</script>
