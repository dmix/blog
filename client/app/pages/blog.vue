<template>
    <div>
        <category-list />

        <div>
            <h1>Blog</h1>

            <PostPreview
                v-for='post in posts'
                :key='post.id'
                :post='post' />
        </div>
    </div>
</template>

<script lang='ts'>
import { Component, Vue, } from 'vue-property-decorator'
import CategoryList from '../components/CategoryList.vue'
import Post from '../models/Post'

@Component({
    components: {
        CategoryList,
        PostPreview: () => import('../components/PostPreview.vue'),
    },

    data() {
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
                {
                    id: 4,
                    title: 'This is my title! 4',
                    description: 'Helllo this is my long description to fill space',
                },
                {
                    id: 5,
                    title: 'This is my title! 5',
                    description: 'Helllo this is my long description to fill space',
                },
                {
                    id: 6,
                    title: 'This is my title! 6',
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
