<template>
  <div>
    <compInput v-model="inputVal1" v-model:type="t_type"></compInput>
    <compInput v-model="inputVal2" v-model:type="n_type"></compInput>

    <p>{{ inputVal1 }} </p>
  </div>    
  </template>

<script>

import { ref } from 'vue';
export default{

  //
  data() {
    return {
      inputVal1 : '',
      inputVal2 : '',
      t_type : 'text',
      n_type : 'number'
    }
  },

  methods (){
    console.log("methods");
  },

  mounted (){
    this.$isEmpty("함수 호출11");

    //this.$isCall("함수 호출22");
    console.log("mounted");
  },

  updated (){

    //console.log(inputVal1);
    console.log("updated");
  },

  computed(){

    console.log("computed");
  },

  watch(){

    console.log("watch");
  }




    
}



</script>

