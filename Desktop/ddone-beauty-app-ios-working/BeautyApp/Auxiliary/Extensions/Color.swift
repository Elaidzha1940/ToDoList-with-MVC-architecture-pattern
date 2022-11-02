//
//  Color.swift
//  BeautyApp
//
//  Created by Егор Бойко on 13.10.2022.
//

import SwiftUI

//MARK: Описание цветов
extension Color {
    
    ///Разделитель префикса от значений
    fileprivate static let separator: String = "-"
    
    ///bc
    enum Background: String {
        static let annex: String = "bc"
        case `default`, scheme, contrast
    
    }
    
    enum Text: String {
        fileprivate static let annex: String = "tx"
        ///Базовый цвет для текста
        case `default`
        ///Цвет, соответствующий действующей цветовой схеме
        case scheme
        ///Цвет, выступающий контрастом для действующей цветовой схемы
        case contrast
    }
    
    ///el
    enum Elements: String {
        static let annex: String = "el"
        case `default`, bright, chevron, Epink, Eblue, Egreen, Ered, Evinous, Eviolet, Eyellow, ECviolet, ECyellow, ECblue, ECgreen
        
        
    }
    
}

//MARK: Методы
extension Color {
    
    //MARK: Элемент
    internal static func elements(_ option: Self.Elements = .default) -> Color {
        Color(Self.Elements.annex + Self.separator + option.rawValue)
    }
    ///Цвет текста по умолчанию
    internal static var elements: Color { self.elements() }
    
    //MARK: Текст
    ///Получение цвета текста из ассетов
    internal static func text(_ option: Self.Text = .default) -> Color {
        Color(Self.Text.annex + Self.separator + option.rawValue)
    }
    ///Цвет текста по умолчанию
    internal static var text: Color { self.text() }
    
    //MARK: Фоновый цвет
    internal static func background(_ option: Self.Background = .default) -> Color {
        Color(Self.Background.annex + Self.separator + option.rawValue)
    }
    ///Цвет фона по умолчанию
    internal static var background: Color { self.background() }
}
