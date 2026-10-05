import Foundation

public struct DocumentsConfirmCaptureResponse: Codable, Hashable, Sendable {
    public let capture: DocumentsConfirmCaptureResponseCapture
    public let invoice: DocumentsConfirmCaptureResponseInvoice
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capture: DocumentsConfirmCaptureResponseCapture,
        invoice: DocumentsConfirmCaptureResponseInvoice,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capture = capture
        self.invoice = invoice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capture = try container.decode(DocumentsConfirmCaptureResponseCapture.self, forKey: .capture)
        self.invoice = try container.decode(DocumentsConfirmCaptureResponseInvoice.self, forKey: .invoice)
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