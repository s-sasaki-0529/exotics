<template>
  <div class="arrow-box">
    {{ text }}
  </div>
</template>

<script>
  export default {
    props: {
      text: {
        type: String,
        required: false,
      }
    }
  }
</script>
