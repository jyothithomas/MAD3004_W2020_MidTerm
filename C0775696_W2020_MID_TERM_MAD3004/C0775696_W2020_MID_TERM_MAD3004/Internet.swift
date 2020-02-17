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
    
    init(billId: String, billDate: Date, billType: BillType, providerName: String, internetGBUsed: Double) {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    override func calculateTotalBill() 
    {
        
         self.totalBilltoPay = internetGBUsed * 0.10
       
    }
    
     override func display() {
        super.display()
        calculateTotalBill()
        print("************* Internet Bill ******************************")
        print("Provider name:                       \(providerName)")
        print("Internet Used in GB:                 \(internetGBUsed)")
        print("Total Internet Bill:                 \(totalBilltoPay)")
        print("*********************************************************")
    }
    
    
}
