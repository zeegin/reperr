&HttpMethod("POST")
Функция Index() Экспорт
	
	ТелоПоток = ЗапросHttp.ПолучитьТелоКакПоток();
	ЧтениеТекста = Новый ЧтениеТекста(ТелоПоток, "utf-8");
	
	ТелоЗапросаТекст = ЧтениеТекста.Прочитать();
	ЧтениеТекста.Закрыть();

	Ответ = ЗапросыИнфоОбОшибке.ОбработатьЗапрос(ТелоЗапросаТекст);

	Возврат Содержимое(Ответ);
	
КонецФункции
