<template>
    <div>
        <h2>{{ post.title }}</h2>
        <p>{{ post.user_id }}</p>
        <p>{{ post.created_at }}</p>
        <p>{{ post.updated_at }}</p>

        <hr />
        <p>{{ post.body }}</p>
    </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'
import Post from '../models/Post'

@Component
export default class PostView extends Vue {
    @Prop({ type: Object, required: true }) post!: Post
}
</script>
