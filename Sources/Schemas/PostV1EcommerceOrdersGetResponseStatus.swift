import Foundation

public enum PostV1EcommerceOrdersGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case reserved
    case fulfilled
    case cancelled
}