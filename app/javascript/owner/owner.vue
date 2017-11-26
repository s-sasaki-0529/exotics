<template>
  <v-ons-page class="owner ex-center">
    <toolbar :title="owners[ownerId].name" backButton="一覧" />
    <div class="owner-icon">
      <img :src="owners[ownerId].thumbnail">
    </div>
    <arrow-box
      :text="owners[ownerId].comment"
    />
    <div class="menus">
      <div class="menu" v-for="menu in menus">
        <div>
          <v-ons-fab class="fab"><v-ons-icon :icon="menu.icon"></v-ons-icon></v-ons-fab>
        </div>
        <div>{{menu.label}}</div>
      </div>
    </div>
  </v-ons-page>
</template>

<script>
  export default {
    data() {
      return {
        owners: {
          1: {
            thumbnail: '/dummy_owner.jpg', name: 'HousouP1',
            comment: 'デグー12匹飼いの既婚プログラマです。12匹のデグーのお世話に毎日追われていますが、楽しくやっています。'
          },
          2: {
            thumbnail: '/dummy_owner.jpg', name: 'HousouP2',
            comment: 'デグー2匹と楽しく生活しています'
          },
          3: {
            thumbnail: '/dummy_owner.jpg', name: 'HousouP3',
            comment: 'はじめまして、デグー初心者ですがよろしくおねがいします。'
          },
        },
        menus: [
          {label: 'ペット', icon: 'fa-paw'},
          {label: 'ブログ', icon: 'fa-book'},
          {label: '写真', icon: 'fa-picture-o'},
          {label: '体重', icon: 'line-chart'},
          {label: '備品', icon: 'shopping-basket'}
        ]
      }
    },
    props: {
      ownerId: {
        type: Number,
        required: true,
      }
    },
  }
</script>
