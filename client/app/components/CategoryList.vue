<template>
    <div class="category-lists">
        <aside class="layout__subnav w-20-l mw1-m dn db-l dn-m dn-ns fn fl-ns b--layout br">
            <div class="ph3 pt2">
                <b>Category List</b>
            </div>
        </aside>
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'
// import Category from '../models/Category'

@Component
export default class CategoryList extends Vue {
    // @Prop({ type: Object, required: true }) alerts!: Alert[]
}
</script>

<style>
.category-list {
    min-height: 1000px;
    margin-right:-1px
}
</style>
