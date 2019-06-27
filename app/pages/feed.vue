<template>
    <div>
        <h1>Blog</h1>
        <br>

        <PostPreview
            v-for='post in posts'
            :key='post.id'
            :post='post' />
    </div>
</template>

<script lang='ts'>
// import axios from 'axios'
import {
    Component,
    Vue,
} from 'vue-property-decorator'
import Post from '../models/Post'

@Component({
    components: {
        PostPreview: () => import('../components/PostPreview.vue'),
    },

    asyncData() {
        // const { data } = await axios.get(`https://my-api/posts`)
        return {
            // posts: data,
            posts: [
                {
                    id: 1,
                    title: 'This is my title!',
                    description: 'Helllo this is my long description to fill space',
                },
                {
                    id: 2,
                    title: 'This is my title! 2',
                    description: 'Helllo this is my long description to fill space',
                },
                {
                    id: 3,
                    title: 'This is my title! 3',
                    description: 'Helllo this is my long description to fill space',
                },
            ],
        }
    },
})

export default class FeedPage extends Vue {
    posts: Post[] = []
}
</script>
