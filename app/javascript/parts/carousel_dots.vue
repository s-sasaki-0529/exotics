<template>
  <div class="carousel-dots">
    <span v-for="i in length" :key="i" style="cursor: pointer">
      {{ i - 1 ===  index ? '\u25CF' : '\u25CB' }}
    </span>
  </div>
</template>

<script>
  export default {
    props: {
      length: {
        type: Number,
        required: true,
      },
      index: {
        type: Number,
        required: true,
      },
    }
  }
</script>
