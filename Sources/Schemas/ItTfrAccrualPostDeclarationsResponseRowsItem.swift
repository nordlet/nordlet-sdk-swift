import Foundation

public struct ItTfrAccrualPostDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let name: String
    public let destination: ItTfrAccrualPostDeclarationsResponseRowsItemDestination
    public let base: String
    public let quota: String
    public let contributionBase: String
    public let contribution: String
    public let accrual: String
    public let leftOut: [ItTfrAccrualPostDeclarationsResponseRowsItemLeftOutItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        name: String,
        destination: ItTfrAccrualPostDeclarationsResponseRowsItemDestination,
        base: String,
        quota: String,
        contributionBase: String,
        contribution: String,
        accrual: String,
        leftOut: [ItTfrAccrualPostDeclarationsResponseRowsItemLeftOutItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.name = name
        self.destination = destination
        self.base = base
        self.quota = quota
        self.contributionBase = contributionBase
        self.contribution = contribution
        self.accrual = accrual
        self.leftOut = leftOut
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.name = try container.decode(String.self, forKey: .name)
        self.destination = try container.decode(ItTfrAccrualPostDeclarationsResponseRowsItemDestination.self, forKey: .destination)
        self.base = try container.decode(String.self, forKey: .base)
        self.quota = try container.decode(String.self, forKey: .quota)
        self.contributionBase = try container.decode(String.self, forKey: .contributionBase)
        self.contribution = try container.decode(String.self, forKey: .contribution)
        self.accrual = try container.decode(String.self, forKey: .accrual)
        self.leftOut = try container.decode([ItTfrAccrualPostDeclarationsResponseRowsItemLeftOutItem].self, forKey: .leftOut)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.destination, forKey: .destination)
        try container.encode(self.base, forKey: .base)
        try container.encode(self.quota, forKey: .quota)
        try container.encode(self.contributionBase, forKey: .contributionBase)
        try container.encode(self.contribution, forKey: .contribution)
        try container.encode(self.accrual, forKey: .accrual)
        try container.encode(self.leftOut, forKey: .leftOut)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case name
        case destination
        case base
        case quota
        case contributionBase
        case contribution
        case accrual
        case leftOut
    }
}