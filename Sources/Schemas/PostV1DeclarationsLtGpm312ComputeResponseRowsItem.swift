import Foundation

public struct PostV1DeclarationsLtGpm312ComputeResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let personalCode: Nullable<String>
    public let firstName: String
    public let lastName: String
    public let paymentCode: String
    public let paidAmount: String
    public let gpmWithheld: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        personalCode: Nullable<String>,
        firstName: String,
        lastName: String,
        paymentCode: String,
        paidAmount: String,
        gpmWithheld: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.personalCode = personalCode
        self.firstName = firstName
        self.lastName = lastName
        self.paymentCode = paymentCode
        self.paidAmount = paidAmount
        self.gpmWithheld = gpmWithheld
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.personalCode = try container.decode(Nullable<String>.self, forKey: .personalCode)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.paymentCode = try container.decode(String.self, forKey: .paymentCode)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.gpmWithheld = try container.decode(String.self, forKey: .gpmWithheld)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.personalCode, forKey: .personalCode)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.paymentCode, forKey: .paymentCode)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.gpmWithheld, forKey: .gpmWithheld)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case personalCode
        case firstName
        case lastName
        case paymentCode
        case paidAmount
        case gpmWithheld
    }
}