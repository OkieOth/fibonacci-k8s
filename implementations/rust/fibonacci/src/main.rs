use axum::{
    routing::get,
    extract::Path,
    http::StatusCode,
    Json, Router,
};
use serde::{Deserialize, Serialize};

async fn fibonacci_list(Path(steps): Path<String>) -> Result<Json<Vec<u128>>, (StatusCode, String)> {
    let mut result: Vec<u128> = Vec::new();
    //println!("fibonacci_list/{} is called.", steps);
    let steps_num = steps.parse::<u32>().unwrap();


    if steps_num >= 1 {
        result.push(0);
    }
    if steps_num >= 2 {
        result.push(1);
    }

    let steps: u32 = if steps_num > 100 { 100 } else { steps_num };

    for _ in 2 .. steps {
        let next = result[result.len() - 1] + result[result.len() - 2];
        result.push(next);
    }

    Ok(Json(result))
}


#[tokio::main]
async fn main() {
    let app = Router::new()
        // `GET /` goes to `root`
        .route("/fibonacci/:steps", get(fibonacci_list));

    // run our app with hyper, listening globally on port 3000
    let listener = tokio::net::TcpListener::bind("0.0.0.0:5000").await.unwrap();
    axum::serve(listener, app).await.unwrap();
}
