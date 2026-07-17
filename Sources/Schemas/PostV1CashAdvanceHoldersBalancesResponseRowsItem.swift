import Foundation

public struct PostV1CashAdvanceHoldersBalancesResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let firstName: String
    public let lastName: String
    public let issued: String
    public let returned: String
    public let balance: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        firstName: String,
        lastName: String,
        issued: String,
        returned: String,
        balance: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.firstName = firstName
        self.lastName = lastName
        self.issued = issued
        self.returned = returned
        self.balance = balance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.issued = try container.decode(String.self, forKey: .issued)
        self.returned = try container.decode(String.self, forKey: .returned)
        self.balance = try container.decode(String.self, forKey: .balance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.issued, forKey: .issued)
        try container.encode(self.returned, forKey: .returned)
        try container.encode(self.balance, forKey: .balance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case firstName
        case lastName
        case issued
        case returned
        case balance
    }
}