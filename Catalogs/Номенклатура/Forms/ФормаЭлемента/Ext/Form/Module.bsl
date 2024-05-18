﻿#Область ОбработчикиСобытий
&НаКлиенте
Процедура ПриОткрытии(Отказ)
	УстановитьВидимость();
КонецПроцедуры 

&НаКлиенте
Процедура СчетБухгалтерскогоУчетаНачалоВыбора(Элемент, ДанныеВыбора, ВыборДобавлением, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
        
    СписокДоступныхЗначений = Новый СписокЗначений;    
    Если Объект.ТипНоменклатуры = ПредопределенноеЗначение("Перечисление.ТипыНоменклатуры.Товар") Тогда
        СписокДоступныхЗначений.Добавить(ПредопределенноеЗначение("ПланСчетов.Хозрасчетный.Товары")); 
	ИначеЕсли Объект.ТипНоменклатуры = ПредопределенноеЗначение("Перечисление.ТипыНоменклатуры.Материал") Тогда
		 СписокДоступныхЗначений.Добавить(ПредопределенноеЗначение("ПланСчетов.Хозрасчетный.Материалы"));
    ИначеЕсли Объект.ТипНоменклатуры = ПредопределенноеЗначение("Перечисление.ТипыНоменклатуры.Услуга") Тогда
        СписокДоступныхЗначений.Добавить(ПредопределенноеЗначение("ПланСчетов.Хозрасчетный.РасходыНаПродажу"));
        СписокДоступныхЗначений.Добавить(ПредопределенноеЗначение("ПланСчетов.Хозрасчетный.ПрочиеДоходыИРасходы"));
    Иначе
        СписокДоступныхЗначений.Добавить(ПредопределенноеЗначение("ПланСчетов.Хозрасчетный.ПустаяСсылка"));
    КонецЕсли;
    
    ДанныеВыбора = СписокДоступныхЗначений;
КонецПроцедуры
#КонецОбласти

#Область СлужебныеПроцедурыИФункции 
&НаКлиенте
Процедура ТипНоменклатурыПриИзменении(Элемент)
	УстановитьВидимость();
КонецПроцедуры

&НаКлиенте
Процедура УстановитьВидимость()
	Если Объект.ТипНоменклатуры = ПредопределенноеЗначение("Перечисление.ТипыНоменклатуры.Услуга") Тогда
		Элементы.ДлительностьУслуги.Видимость = Истина;
	Иначе
		Элементы.ДлительностьУслуги.Видимость = Ложь;
	КонецЕсли;
КонецПроцедуры
#КонецОбласти