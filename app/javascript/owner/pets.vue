<template>
  <v-ons-page class="pets center">
    <carousel-dots :length="3" :index="current_index" :auto-scroll-ratio="0.20"/>
    <v-ons-carousel swipeable auto-scroll :index.sync="current_index">
      <v-ons-carousel-item v-for="pet in pets">
        <pet v-bind="pet" />
      </v-ons-carousel-item>
    </v-ons-carousel>
    <carousel-dots :length="3" :index="current_index" :auto-scroll-ratio="0.20"/>
  </v-ons-page>
</template>

<script>
  import pet from './pet.vue'
  export default {
    data() {
      return {
        current_index: 0,
        pets: [
          {
            name: 'パズー',
            gender: 'オス',
            age: '1歳11ヶ月',
            weight: '243グラム',
            description: '我が家最初のデグー',
            picture: 'https://pbs.twimg.com/media/Ct0F1uZUsAEvqAm.jpg',
          },
          {
            name: 'メイ',
            gender: 'メス',
            age: '1歳9ヶ月',
            weight: '263グラム',
            description: '6児の母です',
            picture: 'https://pbs.twimg.com/media/CuzjROnUMAAVrBn.jpg',
          },
          {
            name: 'ジジ',
            gender: 'オス',
            age: '0歳9ヶ月',
            weight: '186グラム',
            description: 'グルメで好き嫌い多め',
            picture: 'https://pbs.twimg.com/media/DFFzOumU0AAi-Ew.jpg',
          },
        ],
      }
    },
    components: {pet}
  }
</script>
