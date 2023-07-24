<template>
	<input :value="data" v-on:input="update" />
	<span>{{ data }}</span>
</template>

<script>
export default {
	props: {
		data: { type: String },
	},
	emits: ['update'],
	setup(props, context) {
		const update = e => {
			context.emit('update', e.target.value);
		};

		return { update };
	},
};
</script>