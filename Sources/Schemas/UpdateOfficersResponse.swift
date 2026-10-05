import Foundation

public struct UpdateOfficersResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let role: UpdateOfficersResponseRole
    public let personalCode: Nullable<String>
    public let birthDate: Nullable<CalendarDate>
    public let appointedOn: Nullable<String>
    public let powerNotary: Nullable<String>
    public let resignedOn: Nullable<String>
    public let signsAccounts: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        role: UpdateOfficersResponseRole,
        personalCode: Nullable<String>,
        birthDate: Nullable<CalendarDate>,
        appointedOn: Nullable<String>,
        powerNotary: Nullable<String>,
        resignedOn: Nullable<String>,
        signsAccounts: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.role = role
        self.personalCode = personalCode
        self.birthDate = birthDate
        self.appointedOn = appointedOn
        self.powerNotary = powerNotary
        self.resignedOn = resignedOn
        self.signsAccounts = signsAccounts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.role = try container.decode(UpdateOfficersResponseRole.self, forKey: .role)
        self.personalCode = try container.decode(Nullable<String>.self, forKey: .personalCode)
        self.birthDate = try container.decode(Nullable<CalendarDate>.self, forKey: .birthDate)
        self.appointedOn = try container.decode(Nullable<String>.self, forKey: .appointedOn)
        self.powerNotary = try container.decode(Nullable<String>.self, forKey: .powerNotary)
        self.resignedOn = try container.decode(Nullable<String>.self, forKey: .resignedOn)
        self.signsAccounts = try container.decode(Bool.self, forKey: .signsAccounts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.personalCode, forKey: .personalCode)
        try container.encode(self.birthDate, forKey: .birthDate)
        try container.encode(self.appointedOn, forKey: .appointedOn)
        try container.encode(self.powerNotary, forKey: .powerNotary)
        try container.encode(self.resignedOn, forKey: .resignedOn)
        try container.encode(self.signsAccounts, forKey: .signsAccounts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case role
        case personalCode
        case birthDate
        case appointedOn
        case powerNotary
        case resignedOn
        case signsAccounts
    }
}