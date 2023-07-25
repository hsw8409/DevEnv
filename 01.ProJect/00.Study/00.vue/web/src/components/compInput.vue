<template>
	<input :value="gorani" @input="update" />
	<span>{{ gorani }}</span>
</template>

<script>
export default {
	props: {
		gorani: { type: String },
	},
	emits: ['update:gorani'],
	setup(props, context) {
		const update = e => {
			context.emit('update:gorani', e.target.value);
		};

		return { update };
	},
};
</script>