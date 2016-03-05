import Nest
import Inquiline


public class TestClient {
  public let application: RequestType -> ResponseType

  public init(_ application: RequestType -> ResponseType) {
    self.application = application
  }

  public func request(method: String, path: String, headers: [Header]? = nil, body: String? = nil) -> ResponseType {
    let request = Request(method: method, path: path, headers: headers, body: body)
    return application(request)
  }

  public func head(path: String, headers: [Header]? = nil) -> ResponseType {
    return request("HEAD", path: path, headers: headers)
  }

  public func get(path: String, headers: [Header]? = nil) -> ResponseType {
    return request("GET", path: path, headers: headers)
  }

  public func post(path: String, body: String, headers: [Header]? = nil) -> ResponseType {
    return request("POST", path: path, headers: headers, body: body)
  }

  public func put(path: String, body: String, headers: [Header]? = nil) -> ResponseType {
    return request("PUT", path: path, headers: headers, body: body)
  }
  public func patch(path: String, body: String, headers: [Header]? = nil) -> ResponseType {
    return request("PATCH", path: path, headers: headers, body: body)
  }

  public func delete(path: String, headers: [Header]? = nil) -> ResponseType {
    return request("DELETE", path: path, headers: headers, body: nil)
  }
}
