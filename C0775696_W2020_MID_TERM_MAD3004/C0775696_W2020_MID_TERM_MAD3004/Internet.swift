//
//  Internet.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

class Internet: Bill
{
    var providerName: String
    var internetGBUsed: Double
    
    init(providerName: String, internetGBUsed: Double, billId: Int, billType: BillType) {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        super.init(billId: billId, billType: billType)
    }
    var totalInternetBill: Double
    {
        return self.calculateInternetBill()
    }
    
    private func calculateInternetBill() -> Double
    {
        var t = 0.0
        t = self.internetGBUsed * 10
        return t
    }
    
     override func display() {
        print("************* Internet Bill ******************************")
        print("Provider name:                      \(providerName)")
        print("Internet Used in GB:                    \(internetGBUsed)")
        print("Total Internet Bill:                  \(totalInternetBill)")
        print("*********************************************************")
    }
    
    
}
