<template>
  <v-ons-page class="pets ex-center">
    <toolbar title="ペット一覧" backButton="オーナー"/>
    <carousel-dots :length="3" :index.sync="current_index"/>
    <v-ons-carousel swipeable auto-scroll :auto-scroll-ratio="0.1" :index.sync="current_index">
      <v-ons-carousel-item v-for="(pet, idx) in pets">
        <pet :key="idx" v-bind="pet" />
      </v-ons-carousel-item>
    </v-ons-carousel>
    <carousel-dots :length="3" :index.sync="current_index"/>
  </v-ons-page>
</template>

<script>
  import pet from './pet'
  import dummy_pets from '../dummy/pets'
  export default {
    data() {
      return {
        current_index: 0,
        pets: dummy_pets[this.ownerId],
      }
    },
    props: {
      ownerId: {
        type: Number,
        required: true,
      }
    },
    components: {pet}
  }
</script>
