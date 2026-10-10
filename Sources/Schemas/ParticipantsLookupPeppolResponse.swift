import Foundation

public struct ParticipantsLookupPeppolResponse: Codable, Hashable, Sendable {
    public let participantId: String
    public let registered: Bool
    public let smpUrl: Nullable<String>
    public let accessPointUrl: Nullable<String>
    public let acceptsInvoice: Bool
    public let acceptsCreditNote: Bool
    public let acceptsCii: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        participantId: String,
        registered: Bool,
        smpUrl: Nullable<String>,
        accessPointUrl: Nullable<String>,
        acceptsInvoice: Bool,
        acceptsCreditNote: Bool,
        acceptsCii: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.participantId = participantId
        self.registered = registered
        self.smpUrl = smpUrl
        self.accessPointUrl = accessPointUrl
        self.acceptsInvoice = acceptsInvoice
        self.acceptsCreditNote = acceptsCreditNote
        self.acceptsCii = acceptsCii
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.participantId = try container.decode(String.self, forKey: .participantId)
        self.registered = try container.decode(Bool.self, forKey: .registered)
        self.smpUrl = try container.decode(Nullable<String>.self, forKey: .smpUrl)
        self.accessPointUrl = try container.decode(Nullable<String>.self, forKey: .accessPointUrl)
        self.acceptsInvoice = try container.decode(Bool.self, forKey: .acceptsInvoice)
        self.acceptsCreditNote = try container.decode(Bool.self, forKey: .acceptsCreditNote)
        self.acceptsCii = try container.decode(Bool.self, forKey: .acceptsCii)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.participantId, forKey: .participantId)
        try container.encode(self.registered, forKey: .registered)
        try container.encode(self.smpUrl, forKey: .smpUrl)
        try container.encode(self.accessPointUrl, forKey: .accessPointUrl)
        try container.encode(self.acceptsInvoice, forKey: .acceptsInvoice)
        try container.encode(self.acceptsCreditNote, forKey: .acceptsCreditNote)
        try container.encode(self.acceptsCii, forKey: .acceptsCii)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case participantId
        case registered
        case smpUrl
        case accessPointUrl
        case acceptsInvoice
        case acceptsCreditNote
        case acceptsCii
    }
}