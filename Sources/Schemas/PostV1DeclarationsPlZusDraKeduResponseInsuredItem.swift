import Foundation

public struct PostV1DeclarationsPlZusDraKeduResponseInsuredItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let firstName: String
    public let lastName: String
    public let pesel: String
    public let kodTytulu: PostV1DeclarationsPlZusDraKeduResponseInsuredItemKodTytulu
    public let pensionBase: String
    public let healthBase: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        firstName: String,
        lastName: String,
        pesel: String,
        kodTytulu: PostV1DeclarationsPlZusDraKeduResponseInsuredItemKodTytulu,
        pensionBase: String,
        healthBase: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.firstName = firstName
        self.lastName = lastName
        self.pesel = pesel
        self.kodTytulu = kodTytulu
        self.pensionBase = pensionBase
        self.healthBase = healthBase
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.pesel = try container.decode(String.self, forKey: .pesel)
        self.kodTytulu = try container.decode(PostV1DeclarationsPlZusDraKeduResponseInsuredItemKodTytulu.self, forKey: .kodTytulu)
        self.pensionBase = try container.decode(String.self, forKey: .pensionBase)
        self.healthBase = try container.decode(String.self, forKey: .healthBase)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.pesel, forKey: .pesel)
        try container.encode(self.kodTytulu, forKey: .kodTytulu)
        try container.encode(self.pensionBase, forKey: .pensionBase)
        try container.encode(self.healthBase, forKey: .healthBase)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case firstName
        case lastName
        case pesel
        case kodTytulu
        case pensionBase
        case healthBase
    }
}