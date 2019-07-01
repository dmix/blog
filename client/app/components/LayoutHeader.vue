<template>
    <header>
        <search v-if="$device.isDesktop" />
    </header>
</template>

<script>
import Search from '../components/Search.vue'

export default {
    name: 'LayoutHeader',

    components: {
        Search,
    },

    data() {
        return {
        }
    },
}
</script>

<style>
header {
    color: teal;
    font-size: 1rem;
}
</style>
