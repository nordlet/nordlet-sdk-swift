import Foundation

public enum DocumentsConfirmCaptureResponseCaptureStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}