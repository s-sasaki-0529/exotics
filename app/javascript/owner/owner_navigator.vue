<template>
  <v-ons-navigator :page-stack="pageStack">
    <component
      v-for="(page, idx) in pageStack"
      :key="idx"
      @push-page="pageStack.push($event)"
      @select-owner="setOwnerId"
      :is="page"
      :ownerId="ownerId"
    >
    </component>
  </v-ons-navigator>
</template>

<script>
  import owners from './owners'
  export default {
    data() {
      return {
        pageStack: [owners],
        ownerId: null
      }
    },
    methods: {
      setOwnerId(ownerId) {
        this.ownerId = ownerId
      }
    }
  }
</script>
