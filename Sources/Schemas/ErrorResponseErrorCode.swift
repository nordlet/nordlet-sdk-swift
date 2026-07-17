import Foundation

public enum ErrorResponseErrorCode: String, Codable, Hashable, CaseIterable, Sendable {
    case validation
    case unauthorized
    case forbidden
    case notFound = "not_found"
    case conflict
    case idempotencyKeyReuse = "idempotency_key_reuse"
    case idempotencyInProgress = "idempotency_in_progress"
    case rateLimited = "rate_limited"
    case `internal`
}