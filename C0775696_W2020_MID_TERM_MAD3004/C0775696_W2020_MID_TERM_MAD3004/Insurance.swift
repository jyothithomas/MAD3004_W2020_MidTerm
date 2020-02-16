//
//  Insurance.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

/*import Foundation

class Insurance: Bill
{
    var insuranceProviderName: String
    var typeOfInsurance: String
    var startDate: Date
    var endDate: Date
    var totalDays: Int //https://stackoverflow.com/questions/40075850/swift-3-find-number-of-calendar-days-between-two-dates
    {
        var diffInDays = 0
        diffInDays = Calendar.current.dateComponents([.day], from: startDate, to: endDate).day ?? 0
        return diffInDays
    }
    var totalInstalmenttoPay: Int
    {
        return self.calculateTotalInstalment()
    }
    
    init(billId: Int, billType: BillType, insuranceProviderName: String, typeOfInsurance: String, startDate: Date, endDate: Date)
    {
        self.insuranceProviderName = insuranceProviderName
        self.typeOfInsurance = typeOfInsurance
        self.startDate = startDate
        self.endDate = endDate
        super.init(billId: billId, billType: billType)
    }
    private func calculateTotalInstalment() -> Int
    {
        var t = 0
        t = totalDays/30
        return t
    }
    
    override func display() {
        print("************* Insurance Bill ******************************")
        print("Insurance Provider Name:              \(insuranceProviderName)")
        print("Type Of Insurance:                    \(typeOfInsurance)")
        print("Total Days:                           \(totalDays)")
        print("Total Instalments to Pay:             \(totalInstalmenttoPay)")
        print("*********************************************************")
    }
    
}*/

