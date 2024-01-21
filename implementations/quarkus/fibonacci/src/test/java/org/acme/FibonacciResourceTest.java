package org.acme;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

@QuarkusTest
class FibonacciResourceTest {
    @Test
    void testHelloEndpoint() {
        given()
          .when().get("/fibonacci/2")
          .then()
             .statusCode(200);
    }

}