# NestTest

Simple testing tool for Nest.

## Usage

```swift
import NestTest

// Create a test client with our Nest application "hello"
let client = TestClient(hello)

let response = client.get("/")
assert(response.body == "Hello World")

let response = client.post("/", body: "Kyle")
assert(response.body == "Hello Kyle")
```

### Spectre

```swift
try expect(client.get("/").body) == "Hello World"
```

### XCTest

```swift
XCTAssertEqual(client.get("/").body, "Hello World")
```
