use rocket_contrib::json::Json;
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize)]
pub struct User {
    id: u32,
    name: String,
}

#[get("/")]
pub fn test() -> Json<Vec<User>> {
    Json(vec![User{
        id: 1,
        name: "test".to_string(),
    }])
}
