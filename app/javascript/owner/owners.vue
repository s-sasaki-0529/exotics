<template>
  <v-ons-page class="owners">
    <toolbar title="オーナー一覧" />
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
          {id: 1, thumbnail: '/dummy_owner.jpg', name: 'HousouP1', pets: 'デグー(12)'},
          {id: 2, thumbnail: '/dummy_owner.jpg', name: 'HousouP2', pets: 'デグー(12)'},
          {id: 3, thumbnail: '/dummy_owner.jpg', name: 'HousouP3', pets: 'デグー(12)'},
        ]
      }
    },
    methods: {
      select(selectedOwner) {
        this.$emit('select-owner', selectedOwner.id)
        this.$emit('push-page', owner)
      }
    },
    components: {owner}
  }
</script>
