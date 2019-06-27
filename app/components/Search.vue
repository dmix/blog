<template>
    <div class="search">
        <b>Search</b>
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'

@Component
export default class Search extends Vue {
}
</script>

<style>
import '../assets/variables.css'

.search {
    color: green;
}
</style>
