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
  import http from '../common/http'
  import dummy_owners from '../dummy/owners'
  export default {
    data() {
      return {
        owners: dummy_owners,
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
    mounted() {
      http.getUser(1, (data) => {
        console.log(data)
      })
    },
    methods: {
      showPets() {
        this.$emit('push-page', pets)
      },
      showBlog() {
        alert('未実装')
      },
      showPictures() {
        alert('未実装')
      },
      showWeights() {
        alert('未実装')
      },
      showItems() {
        alert('未実装')
      },
    }
  }
</script>
