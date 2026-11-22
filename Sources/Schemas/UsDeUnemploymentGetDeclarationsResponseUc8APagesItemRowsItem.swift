import Foundation

public struct UsDeUnemploymentGetDeclarationsResponseUc8APagesItemRowsItem: Codable, Hashable, Sendable {
    public let line: Double
    public let socialSecurityNumber: Nullable<String>
    public let firstInitial: String
    public let middleInitial: Nullable<String>
    public let lastName: String
    public let grossCoveredWages: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        line: Double,
        socialSecurityNumber: Nullable<String>,
        firstInitial: String,
        middleInitial: Nullable<String>,
        lastName: String,
        grossCoveredWages: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.line = line
        self.socialSecurityNumber = socialSecurityNumber
        self.firstInitial = firstInitial
        self.middleInitial = middleInitial
        self.lastName = lastName
        self.grossCoveredWages = grossCoveredWages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.line = try container.decode(Double.self, forKey: .line)
        self.socialSecurityNumber = try container.decode(Nullable<String>.self, forKey: .socialSecurityNumber)
        self.firstInitial = try container.decode(String.self, forKey: .firstInitial)
        self.middleInitial = try container.decode(Nullable<String>.self, forKey: .middleInitial)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.grossCoveredWages = try container.decode(String.self, forKey: .grossCoveredWages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.line, forKey: .line)
        try container.encode(self.socialSecurityNumber, forKey: .socialSecurityNumber)
        try container.encode(self.firstInitial, forKey: .firstInitial)
        try container.encode(self.middleInitial, forKey: .middleInitial)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.grossCoveredWages, forKey: .grossCoveredWages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case line
        case socialSecurityNumber
        case firstInitial
        case middleInitial
        case lastName
        case grossCoveredWages
    }
}