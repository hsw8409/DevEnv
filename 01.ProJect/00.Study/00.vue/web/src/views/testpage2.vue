<template>
    <input v-model="data" />
  </template>
  
  <script>
  import { ref } from 'vue';
  export default {
    setup() {
      const data = ref('i am data');
      return { data };
    }
  }
  </script>