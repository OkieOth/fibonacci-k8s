package org.acme;

import io.quarkus.test.junit.QuarkusIntegrationTest;

@QuarkusIntegrationTest
class FibonacciResourceIT extends FibonacciResourceTest {
    // Execute the same tests but in packaged mode.
}
