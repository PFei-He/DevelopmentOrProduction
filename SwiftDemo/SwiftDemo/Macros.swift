//
//  Macros.swift
//  SwiftDemo
//
//  Created by Fay on 2017/4/12.
//  Copyright © 2017年 Fay. All rights reserved.
//

#if DEVELOPMENT
    let version = "developer"
#elseif PRODUCTION
    let version = "production"
#else
    let version = "universal"
#endif
