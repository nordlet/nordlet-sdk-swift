import Foundation

public enum PostV1EcommerceOrdersCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case reserved
    case fulfilled
    case cancelled
}