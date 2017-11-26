<template>
  <v-ons-navigator swipeable :page-stack="pageStack" @push-page="pageStack.push($event)" />
</template>

<script>
  import owners from './owners'
  export default {
    data() {
      return {
        pageStack: [owners]
      }
    }
  }
</script>
