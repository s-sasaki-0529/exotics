<template>
  <v-ons-page class="owners">
    <v-ons-lit>
      <v-ons-list-item v-for="owner in owners" tappable :key="owner.id" @click="select(owner)">
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
  import owner from './owner'
  export default {
    data() {
      return {
        owners: [
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 2, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 3, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 4, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 5, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 6, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 7, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 8, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 9, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 10, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 11, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
          {id: 12, thumbnail: '/dummy_owner.jpg', name: 'HousouP', pets: 'デグー(12)'},
        ]
      }
    },
    methods: {
      select(selectedOwner) {
        this.$emit('push-page', owner)
      }
    },
    components: {owner}
  }
</script>
