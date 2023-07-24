<template>
    <MyInput
      :data="data"
      v-on:update="newValue => { data = newValue; }"
    ></MyInput>
  </template>
  
  <script>
  import { ref } from 'vue';
  import MyInput from '@/components/comInput.vue';
  
  export default {
    components : {
      MyInput,
    },
    setup() {
      const data = ref('');
      return { data };
    }
  }
  </script>