import Spectre
import Nest
import Inquiline
import NestTest


/// Hello World Nest application
func helloWorld(request: RequestType) -> ResponseType {
  switch request.method {
  case "GET":
    return Response(.Ok, contentType: "plain/text", body: "Hello World")
  case "POST":
    let name = request.body ?? "World"
    return Response(.Ok, contentType: "plain/text", body: "Hello \(name)")
  default:
    return Response(.MethodNotAllowed, contentType: "plain/text", body: "Unsupported Method")
  }
}


func testTestClient() {
  describe("TestClient") {
    let client = TestClient(helloWorld)

    $0.it("lets you perform a get request") {
      let response = client.get("/")
      try expect(response.statusLine) == "200 OK"
      try expect(response.body) == "Hello World"
    }

    $0.it("lets you perform a post request") {
      let response = client.post("/", body: "Kyle")
      try expect(response.statusLine) == "200 OK"
      try expect(response.body) == "Hello Kyle"
    }
  }
}
