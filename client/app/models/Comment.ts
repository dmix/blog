export default interface Comment {
    id: number,
    post_id: number,
    approved: boolean,
    author: string,
    body: string,
    created_at: Date,
    updated_at: Date,
}
