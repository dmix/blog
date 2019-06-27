<template>
    <div class="container">
        <div>
            <logo />

            <h1>Blog</h1>

            <PostPreview
                v-for="post in posts"
                :key="post.id"
                :post="post" />
            <hr>
        </div>
    </div>
</template>

<script>
import Logo from '../components/Logo.vue'
import PostPreview from '../components/PostPreview.vue'

export default {
    components: {
        Logo,
        PostPreview,
    },

    asyncData() {
        // const { data } = await axios.get(`https://my-api/posts`)
        return {
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
}
</script>

<style>
.container {
    margin: 0 auto;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.title {
    font-family: 'Quicksand', 'Source Sans Pro', -apple-system,
        BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial,
        sans-serif;
    display: block;
    font-weight: 300;
    font-size: 100px;
    color: #35495e;
    letter-spacing: 1px;
}

.subtitle {
    font-weight: 300;
    font-size: 42px;
    color: #526488;
    word-spacing: 5px;
    padding-bottom: 15px;
}

.links {
    padding-top: 15px;
}
</style>
