import Foundation

public struct PostV1ReportsAdvanceReconciliationResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let firstName: String
    public let lastName: String
    public let opening: String
    public let issued: String
    public let returned: String
    public let closing: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        firstName: String,
        lastName: String,
        opening: String,
        issued: String,
        returned: String,
        closing: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.firstName = firstName
        self.lastName = lastName
        self.opening = opening
        self.issued = issued
        self.returned = returned
        self.closing = closing
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.opening = try container.decode(String.self, forKey: .opening)
        self.issued = try container.decode(String.self, forKey: .issued)
        self.returned = try container.decode(String.self, forKey: .returned)
        self.closing = try container.decode(String.self, forKey: .closing)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.opening, forKey: .opening)
        try container.encode(self.issued, forKey: .issued)
        try container.encode(self.returned, forKey: .returned)
        try container.encode(self.closing, forKey: .closing)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case firstName
        case lastName
        case opening
        case issued
        case returned
        case closing
    }
}