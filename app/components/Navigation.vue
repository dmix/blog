<template>
    <div class="navigation">
        <b>Navigation</b>
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'

@Component
export default class Navigation extends Vue {
}
</script>

<style>
@import '../assets/variables.css'

.naviation {
    color: red;
}
</style>
