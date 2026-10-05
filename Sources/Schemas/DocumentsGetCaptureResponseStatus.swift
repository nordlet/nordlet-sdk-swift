import Foundation

public enum DocumentsGetCaptureResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}