//
//  RxSearchControllerDelegateProxy.swift
//  RxCocoa
//
//  Created by Segii Shulga on 3/17/16.
//  Copyright © 2016 Krunoslav Zaher. All rights reserved.
//

#if os(iOS)
   
#if !RX_NO_MODULE
   import RxSwift
#endif
   import UIKit

/// For more information take a look at `DelegateProxyType`.
@available(iOS 8.0, *)
public class RxSearchControllerDelegateProxy
    : DelegateProxy
    , DelegateProxyType
, UISearchControllerDelegate {
    
    public static var factory = DelegateProxyFactory { (parentObject: UISearchController) in
        RxSearchControllerDelegateProxy(parentObject: parentObject)
    }
    
    /// For more information take a look at `DelegateProxyType`.
    public class func setCurrentDelegate(_ delegate: AnyObject?, toObject object: AnyObject) {
        let searchController: UISearchController = castOrFatalError(object)
        searchController.delegate = castOptionalOrFatalError(delegate)
    }
    
    /// For more information take a look at `DelegateProxyType`.
    public class func currentDelegateFor(_ object: AnyObject) -> AnyObject? {
        let searchController: UISearchController = castOrFatalError(object)
        return searchController.delegate
    }
    
}
   
#endif
