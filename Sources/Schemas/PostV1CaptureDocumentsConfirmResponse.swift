import Foundation

public struct PostV1CaptureDocumentsConfirmResponse: Codable, Hashable, Sendable {
    public let capture: PostV1CaptureDocumentsConfirmResponseCapture
    public let invoice: PostV1CaptureDocumentsConfirmResponseInvoice
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capture: PostV1CaptureDocumentsConfirmResponseCapture,
        invoice: PostV1CaptureDocumentsConfirmResponseInvoice,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capture = capture
        self.invoice = invoice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capture = try container.decode(PostV1CaptureDocumentsConfirmResponseCapture.self, forKey: .capture)
        self.invoice = try container.decode(PostV1CaptureDocumentsConfirmResponseInvoice.self, forKey: .invoice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capture, forKey: .capture)
        try container.encode(self.invoice, forKey: .invoice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capture
        case invoice
    }
}