import Foundation

public enum DocumentsUploadCaptureResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}