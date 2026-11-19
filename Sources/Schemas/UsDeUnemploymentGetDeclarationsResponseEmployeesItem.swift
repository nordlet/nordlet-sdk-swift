import Foundation

public struct UsDeUnemploymentGetDeclarationsResponseEmployeesItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let socialSecurityNumber: Nullable<String>
    public let firstName: String
    public let lastName: String
    public let wages: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        socialSecurityNumber: Nullable<String>,
        firstName: String,
        lastName: String,
        wages: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.socialSecurityNumber = socialSecurityNumber
        self.firstName = firstName
        self.lastName = lastName
        self.wages = wages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.socialSecurityNumber = try container.decode(Nullable<String>.self, forKey: .socialSecurityNumber)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.wages = try container.decode(String.self, forKey: .wages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.socialSecurityNumber, forKey: .socialSecurityNumber)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.wages, forKey: .wages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case socialSecurityNumber
        case firstName
        case lastName
        case wages
    }
}