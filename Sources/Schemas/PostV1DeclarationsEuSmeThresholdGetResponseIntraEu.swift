import Foundation

public struct PostV1DeclarationsEuSmeThresholdGetResponseIntraEu: Codable, Hashable, Sendable {
    public let trigger: String
    public let currency: String
    public let acquisitionsFromMemberStates: String
    public let servicesToMemberStates: String
    public let total: String
    public let status: PostV1DeclarationsEuSmeThresholdGetResponseIntraEuStatus
    public let note: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        trigger: String,
        currency: String,
        acquisitionsFromMemberStates: String,
        servicesToMemberStates: String,
        total: String,
        status: PostV1DeclarationsEuSmeThresholdGetResponseIntraEuStatus,
        note: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.trigger = trigger
        self.currency = currency
        self.acquisitionsFromMemberStates = acquisitionsFromMemberStates
        self.servicesToMemberStates = servicesToMemberStates
        self.total = total
        self.status = status
        self.note = note
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.trigger = try container.decode(String.self, forKey: .trigger)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.acquisitionsFromMemberStates = try container.decode(String.self, forKey: .acquisitionsFromMemberStates)
        self.servicesToMemberStates = try container.decode(String.self, forKey: .servicesToMemberStates)
        self.total = try container.decode(String.self, forKey: .total)
        self.status = try container.decode(PostV1DeclarationsEuSmeThresholdGetResponseIntraEuStatus.self, forKey: .status)
        self.note = try container.decode(String.self, forKey: .note)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.trigger, forKey: .trigger)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.acquisitionsFromMemberStates, forKey: .acquisitionsFromMemberStates)
        try container.encode(self.servicesToMemberStates, forKey: .servicesToMemberStates)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.note, forKey: .note)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case trigger
        case currency
        case acquisitionsFromMemberStates
        case servicesToMemberStates
        case total
        case status
        case note
    }
}