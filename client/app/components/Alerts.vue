<template>
    <div class="alerts">
        <!-- <b>Alerts</b> -->
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'
// import Alert from '../models/Alert'

@Component
export default class AlertsView extends Vue {
    // @Prop({ type: Object, required: true }) alerts!: Alert[]
}
</script>

<style>
.comment {
    color: red;
}
</style>
