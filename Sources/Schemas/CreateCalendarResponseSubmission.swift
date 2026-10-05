import Foundation

public struct CreateCalendarResponseSubmission: Codable, Hashable, Sendable {
    public let id: String
    public let obligation: String
    public let periodYear: Int64
    public let periodMonth: Nullable<Int64>
    public let variant: Nullable<String>
    public let status: CreateCalendarResponseSubmissionStatus
    public let fileName: String
    public let fileId: Nullable<String>
    public let externalRef: Nullable<String>
    public let message: Nullable<String>
    public let ruleKey: Nullable<String>
    public let period: Nullable<String>
    public let documentKey: Nullable<String>
    public let amendment: Int64
    public let origin: String
    public let transportSystem: Nullable<String>
    public let environment: Nullable<CreateCalendarResponseSubmissionEnvironment>
    public let submittedAt: Nullable<Date>
    public let acceptedAt: Nullable<Date>
    public let rejectedAt: Nullable<Date>
    public let checkedAt: Nullable<Date>
    public let nextCheckAt: Nullable<Date>
    public let attempts: Int64
    public let deliveryError: Nullable<String>
    public let sentSha256: Nullable<String>
    public let certificateFingerprint: Nullable<String>
    public let submittedByActorType: Nullable<String>
    public let submittedByActorId: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        obligation: String,
        periodYear: Int64,
        periodMonth: Nullable<Int64>,
        variant: Nullable<String>,
        status: CreateCalendarResponseSubmissionStatus,
        fileName: String,
        fileId: Nullable<String>,
        externalRef: Nullable<String>,
        message: Nullable<String>,
        ruleKey: Nullable<String>,
        period: Nullable<String>,
        documentKey: Nullable<String>,
        amendment: Int64,
        origin: String,
        transportSystem: Nullable<String>,
        environment: Nullable<CreateCalendarResponseSubmissionEnvironment>,
        submittedAt: Nullable<Date>,
        acceptedAt: Nullable<Date>,
        rejectedAt: Nullable<Date>,
        checkedAt: Nullable<Date>,
        nextCheckAt: Nullable<Date>,
        attempts: Int64,
        deliveryError: Nullable<String>,
        sentSha256: Nullable<String>,
        certificateFingerprint: Nullable<String>,
        submittedByActorType: Nullable<String>,
        submittedByActorId: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.obligation = obligation
        self.periodYear = periodYear
        self.periodMonth = periodMonth
        self.variant = variant
        self.status = status
        self.fileName = fileName
        self.fileId = fileId
        self.externalRef = externalRef
        self.message = message
        self.ruleKey = ruleKey
        self.period = period
        self.documentKey = documentKey
        self.amendment = amendment
        self.origin = origin
        self.transportSystem = transportSystem
        self.environment = environment
        self.submittedAt = submittedAt
        self.acceptedAt = acceptedAt
        self.rejectedAt = rejectedAt
        self.checkedAt = checkedAt
        self.nextCheckAt = nextCheckAt
        self.attempts = attempts
        self.deliveryError = deliveryError
        self.sentSha256 = sentSha256
        self.certificateFingerprint = certificateFingerprint
        self.submittedByActorType = submittedByActorType
        self.submittedByActorId = submittedByActorId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.obligation = try container.decode(String.self, forKey: .obligation)
        self.periodYear = try container.decode(Int64.self, forKey: .periodYear)
        self.periodMonth = try container.decode(Nullable<Int64>.self, forKey: .periodMonth)
        self.variant = try container.decode(Nullable<String>.self, forKey: .variant)
        self.status = try container.decode(CreateCalendarResponseSubmissionStatus.self, forKey: .status)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.fileId = try container.decode(Nullable<String>.self, forKey: .fileId)
        self.externalRef = try container.decode(Nullable<String>.self, forKey: .externalRef)
        self.message = try container.decode(Nullable<String>.self, forKey: .message)
        self.ruleKey = try container.decode(Nullable<String>.self, forKey: .ruleKey)
        self.period = try container.decode(Nullable<String>.self, forKey: .period)
        self.documentKey = try container.decode(Nullable<String>.self, forKey: .documentKey)
        self.amendment = try container.decode(Int64.self, forKey: .amendment)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.transportSystem = try container.decode(Nullable<String>.self, forKey: .transportSystem)
        self.environment = try container.decode(Nullable<CreateCalendarResponseSubmissionEnvironment>.self, forKey: .environment)
        self.submittedAt = try container.decode(Nullable<Date>.self, forKey: .submittedAt)
        self.acceptedAt = try container.decode(Nullable<Date>.self, forKey: .acceptedAt)
        self.rejectedAt = try container.decode(Nullable<Date>.self, forKey: .rejectedAt)
        self.checkedAt = try container.decode(Nullable<Date>.self, forKey: .checkedAt)
        self.nextCheckAt = try container.decode(Nullable<Date>.self, forKey: .nextCheckAt)
        self.attempts = try container.decode(Int64.self, forKey: .attempts)
        self.deliveryError = try container.decode(Nullable<String>.self, forKey: .deliveryError)
        self.sentSha256 = try container.decode(Nullable<String>.self, forKey: .sentSha256)
        self.certificateFingerprint = try container.decode(Nullable<String>.self, forKey: .certificateFingerprint)
        self.submittedByActorType = try container.decode(Nullable<String>.self, forKey: .submittedByActorType)
        self.submittedByActorId = try container.decode(Nullable<String>.self, forKey: .submittedByActorId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.obligation, forKey: .obligation)
        try container.encode(self.periodYear, forKey: .periodYear)
        try container.encode(self.periodMonth, forKey: .periodMonth)
        try container.encode(self.variant, forKey: .variant)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.externalRef, forKey: .externalRef)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.ruleKey, forKey: .ruleKey)
        try container.encode(self.period, forKey: .period)
        try container.encode(self.documentKey, forKey: .documentKey)
        try container.encode(self.amendment, forKey: .amendment)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.transportSystem, forKey: .transportSystem)
        try container.encode(self.environment, forKey: .environment)
        try container.encode(self.submittedAt, forKey: .submittedAt)
        try container.encode(self.acceptedAt, forKey: .acceptedAt)
        try container.encode(self.rejectedAt, forKey: .rejectedAt)
        try container.encode(self.checkedAt, forKey: .checkedAt)
        try container.encode(self.nextCheckAt, forKey: .nextCheckAt)
        try container.encode(self.attempts, forKey: .attempts)
        try container.encode(self.deliveryError, forKey: .deliveryError)
        try container.encode(self.sentSha256, forKey: .sentSha256)
        try container.encode(self.certificateFingerprint, forKey: .certificateFingerprint)
        try container.encode(self.submittedByActorType, forKey: .submittedByActorType)
        try container.encode(self.submittedByActorId, forKey: .submittedByActorId)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case obligation
        case periodYear
        case periodMonth
        case variant
        case status
        case fileName
        case fileId
        case externalRef
        case message
        case ruleKey
        case period
        case documentKey
        case amendment
        case origin
        case transportSystem
        case environment
        case submittedAt
        case acceptedAt
        case rejectedAt
        case checkedAt
        case nextCheckAt
        case attempts
        case deliveryError
        case sentSha256
        case certificateFingerprint
        case submittedByActorType
        case submittedByActorId
        case createdAt
        case updatedAt
    }
}