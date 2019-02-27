//
// Copyright (c) 2019 Adyen B.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import Foundation

public extension Array where Element == PaymentDetail {
    /// The payment detail for Encrypted Card Number
    public var encryptedCardNumber: PaymentDetail? {
        get {
            return self[encryptedCardNumberKey]
        }
        
        set {
            self[encryptedCardNumberKey] = newValue
        }
    }
    
    /// The payment detail for Encrypted Security Code
    public var encryptedSecurityCode: PaymentDetail? {
        get {
            return self[encryptedSecurityCodeKey]
        }
        
        set {
            self[encryptedSecurityCodeKey] = newValue
        }
    }
    
    /// The payment detail for Encrypted Expiry Month
    public var encryptedExpiryMonth: PaymentDetail? {
        get {
            return self[encryptedExpiryMonthKey]
        }
        
        set {
            self[encryptedExpiryMonthKey] = newValue
        }
    }
    
    /// The payment detail for Encrypted Expiry Year
    public var encryptedExpiryYear: PaymentDetail? {
        get {
            return self[encryptedExpiryYearKey]
        }
        
        set {
            self[encryptedExpiryYearKey] = newValue
        }
    }
    
    /// The payment detail for Cardholder Name
    public var cardholderName: PaymentDetail? {
        get {
            return self[cardholderNameKey]
        }
        
        set {
            self[cardholderNameKey] = newValue
        }
    }
    
    /// The payment detail for Installments
    public var installments: PaymentDetail? {
        get {
            return self[cardInstallmentsKey]
        }
        
        set {
            self[cardInstallmentsKey] = newValue
        }
    }
    
    /// The payment detail for a 3D-Secure 2.0 fingerprint.
    public var threeDS2Fingerprint: PaymentDetail? {
        get {
            return self[threeDS2FingerprintKey]
        }
        
        set {
            self[threeDS2FingerprintKey] = newValue
        }
    }
    
    /// The payment detail for a 3D-Secure 2.0 challenge result.
    public var threeDS2ChallengeResult: PaymentDetail? {
        get {
            return self[threeDS2ChallengeResultKey]
        }
        
        set {
            self[threeDS2ChallengeResultKey] = newValue
        }
    }
}

public extension IdentificationPaymentDetails {
    
    /// The 3D-Secure 2.0 fingerprint token.
    public var threeDS2FingerprintToken: String? {
        return userInfo[threeDS2FingerprintTokenKey]
    }
    
}

public extension ChallengePaymentDetails {
    
    /// The 3D-Secure 2.0 challenge token.
    public var threeDS2ChallengeToken: String? {
        return userInfo[threeDS2ChallengeTokenKey]
    }
    
}

private let encryptedCardNumberKey = "encryptedCardNumber"
private let encryptedSecurityCodeKey = "encryptedSecurityCode"
private let encryptedExpiryMonthKey = "encryptedExpiryMonth"
private let encryptedExpiryYearKey = "encryptedExpiryYear"
private let cardCvcKey = "cardDetails.cvc"
private let cardInstallmentsKey = "installments"
private let cardholderNameKey = "holderName"
private let threeDS2FingerprintTokenKey = "threeds2.fingerprintToken"
private let threeDS2FingerprintKey = "threeds2.fingerprint"
private let threeDS2ChallengeTokenKey = "threeds2.challengeToken"
private let threeDS2ChallengeResultKey = "threeds2.challengeResult"
