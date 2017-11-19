<template>
  <v-ons-page class="owners">
    <v-ons-lit>
      <v-ons-list-item v-for="owner in owners" tappable :key="owner.id" @click="select(owner.id)">
        <div class="left">
          <img class="list-item__thumbnail" :src="owner.thumbnail">
        </div>
        <div class="center">
          <span class="list-item__title">{{ owner.name }}</span>
          <span class="list-item__subtitle">{{ owner.pets }}</span>
        </div>
        <hr>
      </v-ons-list-item>
    </v-ons-lit>
  </v-ons-page>
</template>

<script>
  export default {
    data() {
      return {
        owners: [
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
        ]
      }
    },
    methods: {
      select() {
      }
    }
  }
</script>
