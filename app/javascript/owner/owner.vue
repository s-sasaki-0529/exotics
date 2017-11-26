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
      <div class="menu" v-for="menu in menus" @click="menu.onClick">
        <div>
          <v-ons-fab class="fab"><v-ons-icon :icon="menu.icon"></v-ons-icon></v-ons-fab>
        </div>
        <div>{{menu.label}}</div>
      </div>
    </div>
  </v-ons-page>
</template>

<script>
  import pets from './pets'
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
          {label: 'ペット', icon: 'fa-paw',  onClick: this.showPets},
          {label: 'ブログ', icon: 'fa-book', onClick: this.showBlog},
          {label: '写真',   icon: 'fa-picture-o',    onClick: this.showPictures},
          {label: '体重',   icon: 'line-chart',      onClick: this.showWeights},
          {label: '備品',   icon: 'shopping-basket', onClick: this.showItems}
        ]
      }
    },
    props: {
      ownerId: {
        type: Number,
        required: true,
      }
    },
    methods: {
      showPets() {
        this.$emit('push-page', pets)
      },
      showBlog() {
      },
      showPictures() {
      },
      showWeights() {
      },
      showItems() {
      },
    }
  }
</script>
