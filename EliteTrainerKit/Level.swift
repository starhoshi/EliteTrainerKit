//
//  Level.swift
//  EliteTrainerKit
//
//  Created by kensuke-hoshikawa on 2018/08/22.
//  Copyright © 2018年 star__hoshi. All rights reserved.
//

import Foundation

/// https://bulbapedia.bulbagarden.net/wiki/Power_Up
enum Level {
    case _1
    case _1_5
    case _2
    case _2_5
    case _3
    case _3_5
    case _4
    case _4_5
    case _5
    case _5_5
    case _6
    case _6_5
    case _7
    case _7_5
    case _8
    case _8_5
    case _9
    case _9_5
    case _10
    case _10_5
    case _11
    case _11_5
    case _12
    case _12_5
    case _13
    case _13_5
    case _14
    case _14_5
    case _15
    case _15_5
    case _16
    case _16_5
    case _17
    case _17_5
    case _18
    case _18_5
    case _19
    case _19_5
    case _20
    case _20_5
    case _21
    case _21_5
    case _22
    case _22_5
    case _23
    case _23_5
    case _24
    case _24_5
    case _25
    case _25_5
    case _26
    case _26_5
    case _27
    case _27_5
    case _28
    case _28_5
    case _29
    case _29_5
    case _30
    case _30_5
    case _31
    case _31_5
    case _32
    case _32_5
    case _33
    case _33_5
    case _34
    case _34_5
    case _35
    case _35_5
    case _36
    case _36_5
    case _37
    case _37_5
    case _38
    case _38_5
    case _39
    case _39_5
    case _40

    /// https://pokemongo.gamepress.gg/cp-multiplier
    /// CP Multiplier
    var cpm: Float {
        switch self {
        case ._1: return 0.094
        case ._1_5: return 0.135137432
        case ._2: return 0.16639787
        case ._2_5: return 0.192650919
        case ._3: return 0.21573247
        case ._3_5: return 0.236572661
        case ._4: return 0.25572005
        case ._4_5: return 0.273530381
        case ._5: return 0.29024988
        case ._5_5: return 0.306057377
        case ._6: return 0.3210876
        case ._6_5: return 0.335445036
        case ._7: return 0.34921268
        case ._7_5: return 0.362457751
        case ._8: return 0.37523559
        case ._8_5: return 0.387592406
        case ._9: return 0.39956728
        case ._9_5: return 0.411193551
        case ._10: return 0.42250001
        case ._10_5: return 0.432926419
        case ._11: return 0.44310755
        case ._11_5: return 0.4530599578
        case ._12: return 0.46279839
        case ._12_5: return 0.472336083
        case ._13: return 0.48168495
        case ._13_5: return 0.4908558
        case ._14: return 0.49985844
        case ._14_5: return 0.508701765
        case ._15: return 0.51739395
        case ._15_5: return 0.525942511
        case ._16: return 0.53435433
        case ._16_5: return 0.542635767
        case ._17: return 0.55079269
        case ._17_5: return 0.558830576
        case ._18: return 0.56675452
        case ._18_5: return 0.574569153
        case ._19: return 0.58227891
        case ._19_5: return 0.589887917
        case ._20: return 0.59740001
        case ._20_5: return 0.604818814
        case ._21: return 0.61215729
        case ._21_5: return 0.619399365
        case ._22: return 0.62656713
        case ._22_5: return 0.633644533
        case ._23: return 0.64065295
        case ._23_5: return 0.647576426
        case ._24: return 0.65443563
        case ._24_5: return 0.661214806
        case ._25: return 0.667934
        case ._25_5: return 0.674577537
        case ._26: return 0.68116492
        case ._26_5: return 0.687680648
        case ._27: return 0.69414365
        case ._27_5: return 0.700538673
        case ._28: return 0.70688421
        case ._28_5: return 0.713164996
        case ._29: return 0.71939909
        case ._29_5: return 0.725571552
        case ._30: return 0.7317
        case ._30_5: return 0.734741009
        case ._31: return 0.73776948
        case ._31_5: return 0.740785574
        case ._32: return 0.74378943
        case ._32_5: return 0.746781211
        case ._33: return 0.74976104
        case ._33_5: return 0.752729087
        case ._34: return 0.75568551
        case ._34_5: return 0.758630378
        case ._35: return 0.76156384
        case ._35_5: return 0.764486065
        case ._36: return 0.76739717
        case ._36_5: return 0.770297266
        case ._37: return 0.7731865
        case ._37_5: return 0.776064962
        case ._38: return 0.77893275
        case ._38_5: return 0.781790055
        case ._39: return 0.78463697
        case ._39_5: return 0.787473578
        case ._40: return 0.79030001
        }
    }

    /// https://pokemongo.gamepress.gg/power-up-costs
    static func levels(stardust: Int) -> [Level] {
        switch stardust {
        case 200: return [._1, ._1_5, ._2, _2_5]
        case 400: return [._3, ._3_5, ._4, _4_5]
        case 600: return [._5, ._5_5, ._6, _6_5]
        case 800: return [._7, ._7_5, ._8, _8_5]
        case 1000: return [._9, ._9_5, ._10, _10_5]
        case 1300: return [._11, ._11_5, ._12, _12_5]
        case 1600: return [._13, ._13_5, ._14, _14_5]
        case 1900: return [._15, ._15_5, ._16, _16_5]
        case 2200: return [._17, ._17_5, ._18, _18_5]
        case 2500: return [._19, ._19_5, ._20, _20_5]
        case 3000: return [._21, ._21_5, ._22, _22_5]
        case 3500: return [._23, ._23_5, ._24, _24_5]
        case 4000: return [._25, ._25_5, ._26, _26_5]
        case 4500: return [._27, ._27_5, ._28, _28_5]
        case 5000: return [._29, ._29_5, ._30, _30_5]
        case 6000: return [._31, ._31_5, ._32, _32_5]
        case 7000: return [._33, ._33_5, ._34, _34_5]
        case 8000: return [._35, ._35_5, ._36, _36_5]
        case 9000: return [._37, ._37_5, ._38, _38_5]
        case 10000: return [._39, ._39_5]
        default: return []
        }
    }
}
