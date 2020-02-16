//
//  StringExtension.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

extension String
{
    
  func toDate(withFormat format: String = "yyyy-MM-dd") -> Date                                       //https://medium.com/@lugearma/converting-date-string-to-date-type-with-swift-8b6b2f07d50
  {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    guard let date = dateFormatter.date(from: self) else {
      preconditionFailure("not valid date")
    }
    return date
  }
    
    /*func isValidEmail(_ email: String) -> Bool
    {
        //https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}*/
extension Double
{
    
    func currency() -> String
    {
        let s = String.init(format: "$%.2f", self)
        return s
    }
}
