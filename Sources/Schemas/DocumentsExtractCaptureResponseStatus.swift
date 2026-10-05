import Foundation

public enum DocumentsExtractCaptureResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}