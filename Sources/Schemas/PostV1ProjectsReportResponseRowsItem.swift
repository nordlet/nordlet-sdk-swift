import Foundation

public struct PostV1ProjectsReportResponseRowsItem: Codable, Hashable, Sendable {
    public let projectId: String
    public let code: String
    public let name: String
    public let status: PostV1ProjectsReportResponseRowsItemStatus
    public let revenue: String
    public let costs: String
    public let profit: String
    public let totalHours: String
    public let billableHours: String
    public let billedHours: String
    public let unbilledHours: String
    public let unbilledAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        projectId: String,
        code: String,
        name: String,
        status: PostV1ProjectsReportResponseRowsItemStatus,
        revenue: String,
        costs: String,
        profit: String,
        totalHours: String,
        billableHours: String,
        billedHours: String,
        unbilledHours: String,
        unbilledAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.projectId = projectId
        self.code = code
        self.name = name
        self.status = status
        self.revenue = revenue
        self.costs = costs
        self.profit = profit
        self.totalHours = totalHours
        self.billableHours = billableHours
        self.billedHours = billedHours
        self.unbilledHours = unbilledHours
        self.unbilledAmount = unbilledAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.projectId = try container.decode(String.self, forKey: .projectId)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.status = try container.decode(PostV1ProjectsReportResponseRowsItemStatus.self, forKey: .status)
        self.revenue = try container.decode(String.self, forKey: .revenue)
        self.costs = try container.decode(String.self, forKey: .costs)
        self.profit = try container.decode(String.self, forKey: .profit)
        self.totalHours = try container.decode(String.self, forKey: .totalHours)
        self.billableHours = try container.decode(String.self, forKey: .billableHours)
        self.billedHours = try container.decode(String.self, forKey: .billedHours)
        self.unbilledHours = try container.decode(String.self, forKey: .unbilledHours)
        self.unbilledAmount = try container.decode(String.self, forKey: .unbilledAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.projectId, forKey: .projectId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.revenue, forKey: .revenue)
        try container.encode(self.costs, forKey: .costs)
        try container.encode(self.profit, forKey: .profit)
        try container.encode(self.totalHours, forKey: .totalHours)
        try container.encode(self.billableHours, forKey: .billableHours)
        try container.encode(self.billedHours, forKey: .billedHours)
        try container.encode(self.unbilledHours, forKey: .unbilledHours)
        try container.encode(self.unbilledAmount, forKey: .unbilledAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case projectId
        case code
        case name
        case status
        case revenue
        case costs
        case profit
        case totalHours
        case billableHours
        case billedHours
        case unbilledHours
        case unbilledAmount
    }
}