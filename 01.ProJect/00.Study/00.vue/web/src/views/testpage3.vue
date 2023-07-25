<template>
  <compInput v-model:gorani="data"></compInput>
</template>

<script>
import { ref } from 'vue';

export default {
  setup() {
    const data = ref('');
    return { data };
  }
}
</script>