<script setup>
defineProps(['modelValue','type'])
defineEmits(['update:modelValue'])

</script>

<template>
  <input
    :value="modelValue"
    :type="type"
    @input="$emit('update:modelValue', $event.target.value)"
  />
</template>