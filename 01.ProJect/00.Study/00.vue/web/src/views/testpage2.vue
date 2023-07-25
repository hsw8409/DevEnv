<template>
  <div>
    <compInput v-model="inputVal1" v-model:type="t_type"></compInput>
    <compInput v-model="inputVal2" v-model:type="n_type"></compInput>

    <p>{{ inputVal1 }} </p>
    <p>{{ appName }}</p>
  </div>    
  </template>



<script>

// 추가 옵션 선언
export default {
  mounted (){
    //this.$isEmpty("함수 호출11");
    console.log("mounted");
  },

  updated () {

    console.log("updated");
  },


}
</script>

<script setup>
  
  import { ref } from 'vue';

  const inputVal1 = ref('');
  const t_type = ref('text');
  
  const inputVal2 = ref('');
  const n_type = ref('number');


</script>