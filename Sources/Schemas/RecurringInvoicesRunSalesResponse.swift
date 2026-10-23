import Foundation

public struct RecurringInvoicesRunSalesResponse: Codable, Hashable, Sendable {
    public let generated: [RecurringInvoicesRunSalesResponseGeneratedItem]
    public let errors: [RecurringInvoicesRunSalesResponseErrorsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        generated: [RecurringInvoicesRunSalesResponseGeneratedItem],
        errors: [RecurringInvoicesRunSalesResponseErrorsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.generated = generated
        self.errors = errors
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.generated = try container.decode([RecurringInvoicesRunSalesResponseGeneratedItem].self, forKey: .generated)
        self.errors = try container.decode([RecurringInvoicesRunSalesResponseErrorsItem].self, forKey: .errors)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.generated, forKey: .generated)
        try container.encode(self.errors, forKey: .errors)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case generated
        case errors
    }
}