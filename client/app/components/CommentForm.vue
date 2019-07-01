<template>
    <div class="comment-form">
        <b>Comment Form</b>
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'
import Comment from '../models/Comment'

@Component
export default class CommentForm extends Vue {
    @Prop({ type: Object, required: true }) comment!: Comment
}
</script>

<style>
.comment {
    color: purple;
}
</style>
