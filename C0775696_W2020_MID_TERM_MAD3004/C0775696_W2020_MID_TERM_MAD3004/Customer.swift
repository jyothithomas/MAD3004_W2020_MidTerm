//
//  Customer.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

class Customer: IDisplay
{
    var customerId: Int
    var firstName: String
    var lastName: String
    var fullName: String
        {
            return "\(firstName) \(lastName)"
        }
    var emailId: String
    var bill = [Int: Bill?]()
    var totalAmountToPay: Double
    {
        return self.calculateTotalBill()
    }
    
    init(customerId: Int, firstName: String, lastName: String, emailId: String, bill: [Int: Bill?]) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        if let b = bill
        {
            self.bill[code] = b
        }
        else{
            self.computer = nil
        }
    }
    subscript(code: String) -> Double
    {
        get{
            self.bill[code] ?? 0.0
        }
        set(newValue){
            self.bill.updateValue(newValue, forKey: code)
        }
    }
    
    private func calculateTotalBill() -> Double
    {
        var t = 0.0
        for b in self.bill
        {
            t = t + b.value
        }
        return t
    }

    
    func display() {
        print("************************Customer Details*******************************")
        print("Customer ID:                     \(customerId) ")
        print("Customer Name                    \(fullName)")
        print("Customer Email id                \(emailId)")
        print("bill details")
        for b in self.bill
        {
            print(b.key, ":" , b.value)
        }
        print("Total Amount To Pay:             \(totalAmountToPay)")
        print("***********************************************************************")
    }
}
