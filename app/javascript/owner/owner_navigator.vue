<template>
  <v-ons-navigator :page-stack="pageStack">
    <component
      v-for="(page, idx) in pageStack"
      :key="idx"
      @push-page="push"
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
      push(component, params = {}) {
        this.pageStack.push(component)
        this.ownerId = params.ownerId
      }
    }
  }
</script>
