//
// EnumArrays.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class EnumArrays: JSONEncodable {

    public enum JustSymbol: String { 
        case greaterThanOrEqualTo = ">="
        case dollar = "$"
    }
    public enum ArrayEnum: String { 
        case fish = "fish"
        case crab = "crab"
    }
    public var justSymbol: JustSymbol?
    public var arrayEnum: [ArrayEnum]?


    public init(justSymbol: JustSymbol?=nil, arrayEnum: [ArrayEnum]?=nil) {
        self.justSymbol = justSymbol
        self.arrayEnum = arrayEnum
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["just_symbol"] = self.justSymbol?.rawValue
        nillableDictionary["array_enum"] = self.arrayEnum?.map({$0.rawValue}).encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
