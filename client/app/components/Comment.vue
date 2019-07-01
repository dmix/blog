<template>
    <div class="comment">
        <b>Comment</b>
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'
import Comment from '../models/Comment'

@Component
export default class CommentView extends Vue {
    @Prop({ type: Object, required: true }) comment!: Comment
}
</script>

<style>
.comment {
    color: red;
}
</style>
