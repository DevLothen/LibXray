import Foundation
import LibXray
    
public enum XrayCore {
    private static func callCStringFunction(_ input: String, _ function: (UnsafeMutablePointer<CChar>) -> UnsafeMutablePointer<CChar>?) -> String? {
        return input.withCString { cString in
            if let result = function(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }
    
    private static func callIntFunction(_ input: Int64, _ function: (Int64) -> UnsafeMutablePointer<CChar>?) -> String? {
        if let result = function(input) {
            let resultString = String(cString: result)
            free(UnsafeMutablePointer(mutating: result))
            return resultString
        } else {
            return nil
        }
    }
    
    private static func callVoidFunction(_ function: () -> UnsafeMutablePointer<CChar>?) -> String? {
        if let result = function() {
            let resultString = String(cString: result)
            free(UnsafeMutablePointer(mutating: result))
            return resultString
        } else {
            return nil
        }
    }

    public static func convertShareLinksToJson(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoConvertShareLinksToXrayJson)
    }

    public static func convertJsonToShareLinks(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGOConvertXrayJsonToShareLinks)
    }

    public static func getFreePorts(_ count: Int) -> String? {
        return callIntFunction(Int64(count), CGoGetFreePorts)
    }

    public static func loadGeoData(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoLoadGeoData)
    }

    public static func ping(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoPing)
    }

    public static func queryStats(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoQueryStats)
    }

    public static func customUUID(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoCustomUUID)
    }

    public static func test(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoTestXray)
    }

    public static func run(_ base64Text: String) -> String? {
        return callCStringFunction(base64Text, CGoRunXray)
    }

    public static func stop() -> String? {
        return callVoidFunction(CGoStopXray)
    }

    public static func version() -> String? {
        return callVoidFunction(CGoXrayVersion)
    }
}

