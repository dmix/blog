<template>
    <aside class="sidebar w-100 w-20-l w-30-m w-100-ns fn fl-ns br b--layout shadow-side-1">
        <logo />

        <navigation />
    </aside>
</template>

<script>
import Logo from '../components/Logo.vue'
import Navigation from '../components/Navigation.vue'

export default {
    name: 'LayoutSidebar',

    components: {
        Logo,
        Navigation,
    },

    data() {
        return {
        }
    },
}
</script>

<style scoped>
.sidebar {
    height: 100%;
    margin-left: -1px;
}

@media (--breakpoint-small) {
    .sidebar {
        display: flex;
        margin: 2rem 0;
    }
}

@media (--breakpoint-not-small) {
    .sidebar {
    }
}

@media (--breakpoint-large) {
    .sidebar {
        min-height: 1200px;
    }
}

</style>
