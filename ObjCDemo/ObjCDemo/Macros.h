//
//  Macros.h
//  ObjCDemo
//
//  Created by Fay on 2017/4/12.
//  Copyright © 2017年 Fay. All rights reserved.
//

#ifndef Macros_h
#define Macros_h

#if DEVELOPMENT
    #define version @"development"
#elif PRODUCTION
    #define version @"production"
#else
    #define version @"universal"
#endif

#endif /* Macros_h */
