import Foundation

public enum ItTfrAccrualPostDeclarationsResponseRowsItemDestination: String, Codable, Hashable, CaseIterable, Sendable {
    case azienda
    case fondoTesoreria = "fondo-tesoreria"
    case previdenzaComplementare = "previdenza-complementare"
}