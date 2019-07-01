<template>
    <div class="layout w-100 sans-serif">
        <layout-header />
        <layout-sidebar />

        <main class="w-100 w-75-l w-70-m w-100-ns fn fl-ns">
            <alerts />
            <search v-if="$device.isMobile" />


            <section class="content w-100 w-80-l fn fl-ns pv4 ph3 ph5-l ph4-m">
                <nuxt />
            </section>
        </main>

        <layout-footer />
    </div>
</template>

<script>
import Alerts from '../components/Alerts.vue'
import LayoutHeader from '../components/LayoutHeader.vue'
import LayoutSidebar from '../components/LayoutSidebar.vue'
import LayoutFooter from '../components/LayoutFooter.vue'
import Search from '../components/Search.vue'

export default {
    components: {
        Alerts,
        LayoutHeader,
        LayoutSidebar,
        LayoutFooter,
        Search,
    },

    data() {
        return {
        }
    },
}
</script>

<style scoped>
.content {
    background-color: var(--secondary-bg);
    border-radius: 5px;
    border: 1px solid #f1f1f1;

    .lh-title {
        margin-bottom: 1rem;
        display: inline-block;
    }
}

.max-width {
    max-width: var(--max-width);
}

menu {
    list-style-type: disc;
    /* -webkit-display: block; */
    /* -webkit-margin-before: 0em; */
    /* -webkit-margin-after: 0em; */
    /* -webkit-margin-start: 0px; */
    /* -webkit-margin-end: 0px; */
    /* -webkit-padding-start: 0px; */
}

/* ------------------------------------------------------------------------__*/
/* Colors
/* ------------------------------------------------------------------------__*/

.b--layout {
    border-color: rgba(0,0,0,0.035);
}

</style>
