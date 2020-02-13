//
//  Bill.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation


enum BillType
{
    case Mobile,Internet,Hydro
}
class Bill: IDisplay
{
    var billId: Int
    var billDate: Date?
    var billType: BillType
    lazy var totalBilltoPay: Double
    
    init(billId: Int, billDate: Date, billType: BillType, totalBilltoPay: Double) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBilltoPay = totalBilltoPay
    }
    func display() {
      print("Bill Id:          :\(self.billId)")
       print("Bill Date:        :\(self.billDate)")
       print("Gender:      :\(self.gender)")
      if let d = self.birthDate
      {
       print("BirthDate:    : \(d)")
          print("Age:\(self.age)")
      } else {
          print("-- No Birthdate Found")
      }
       print("ID: \(self.id)")
      
        
    }}



