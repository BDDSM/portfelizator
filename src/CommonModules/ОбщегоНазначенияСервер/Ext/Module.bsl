﻿
Функция ПолучитьМассивТикеров() Экспорт 
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
	"ВЫБРАТЬ РАЗЛИЧНЫЕ
	|	Котировки.Тикер КАК Тикер
	|ИЗ
	|	РегистрСведений.Котировки КАК Котировки
	|
	|УПОРЯДОЧИТЬ ПО
	|	Тикер";
	МассивТикеров = Запрос.Выполнить().Выгрузить().ВыгрузитьКолонку("Тикер");
	
	Возврат МассивТикеров;
	
КонецФункции