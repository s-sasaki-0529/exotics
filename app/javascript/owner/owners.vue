<template>
  <v-ons-page class="owners">
    <toolbar title="オーナー一覧" />
    <v-ons-lit>
      <v-ons-list-item v-for="owner in owners" tappable :key="owner.id" @click="select(owner)">
        <div class="left">
          <img class="list-item__thumbnail" :src="owner.image_url">
        </div>
        <div class="center">
          <span class="list-item__title">{{ owner.nickname }}</span>
          <span class="list-item__subtitle">デグー</span>
        </div>
        <hr>
      </v-ons-list-item>
    </v-ons-lit>
  </v-ons-page>
</template>

<script>
  import http  from '../common/http'
  import owner from './owner'
  import dummy_owners from '../dummy/owners'
  export default {
    data() {
      return {
        owners: [],
      }
    },
    mounted() {
      http.getUsers((data) => {
        this.owners = data
      })
    },
    methods: {
      select(selectedOwner) {
        this.$emit('select-owner', selectedOwner.id)
        this.$emit('push-page', owner)
      }
    },
    components: {owner},
  }
</script>
