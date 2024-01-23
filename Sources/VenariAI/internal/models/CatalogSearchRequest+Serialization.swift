// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.CatalogSearchRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .path, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.CatalogSearchRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.CatalogSearchRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: query, named: "query", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        if limit != nil {
            try builder.addQueryParameters(from: limitWrapper, named: "limit", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        }
        return builder.build()
    }
}