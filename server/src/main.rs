#![feature(proc_macro_hygiene, decl_macro)]

use rocket_contrib::json::Json;

#[macro_use] extern crate rocket;

#[derive(Deserialize)]
struct User {
    id: i32,
    name: String, 
}

#[get("/users/<id>")]
fn user(id: usize) -> Json<User> {
    let user_from_id = User::from(id);
    Json(user_from_id)
}

// #[get("/")]
// fn index() -> &'static str {
//     "Hello, world 6!"
// }
//
// #[post("/todo", data = "<task>")]
// fn new(task: Json<Task>) -> String { ... }
//
// #[get("/hello/<name>/<age>/<cool>")]
// fn hello(name: String, age: u8, cool: bool) -> String {
//     if cool {
//         format!("You're a cool {} year old, {}!", age, name)
//     } else {
//         format!("{}, we need to talk about your coolness.", name)
//     }
// }

fn main() {
    rocket::ignite()
        .mount("/", routes![index, hello])
        .launch();
}
