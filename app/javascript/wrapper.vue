<template>
  <div class="wrapper">
    {{ selectedMenu }}
  </div>
</template>

<script>
  export default {
    name: 'wrapper',
    props: ['selectedMenu'],
    data() {
      return {
      }
    }
  }
</script>
