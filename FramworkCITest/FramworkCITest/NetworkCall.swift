//
//  NetworkCall.swift
//  FrameworkCI-Test
//
//  Created by Gaurav Sharma on 29/06/16.
//  Copyright © 2016 GDS. All rights reserved.
//

import Foundation
import Alamofire

public class NetworkCall {
    public func testSomething(
        completion: () -> Void) {
        Alamofire.request(.GET, "http://graph.facebook.com/4")
            .responseJSON { response in
                print ("response \(response)")
                completion()
        }
    }
}
