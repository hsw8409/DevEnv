<template>
	<input
	  :type="type"
	  :value="modelValue"
	  @input="$emit('update:modelValue', $event.target.value)"
	/>
  </template>
  
  <script>
  export default {
	
	// 메인화면에서 import시 속성값을 변경할 수 있도록 처리.
	props : {
		type : {
			type : String,
			required : true
		},
		modelValue : {
			type : String,
			required : true
		}		
	},	

  }
  </script>