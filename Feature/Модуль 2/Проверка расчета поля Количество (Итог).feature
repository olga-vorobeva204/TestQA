﻿#language: ru

@tree

Функционал: Проверка расчета поля Количество (Итог) 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Расчет поля Количество (Итог)
И Заполнение шапки заказа

И в таблице 'Товары' я нажимаю на кнопку с именем 'КомандаПодбор'
Тогда открылось окно "Подбор товара"
И в таблице 'СписокТоваров' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000011" | "Продукты"     |
И в таблице 'СписокТоваров' я выбираю текущую строку
И в таблице 'СписокТоваров' я перехожу к строке:
	| "Код"       | "Количество" | "Наименование" | "Цена"   |
	| "000000032" | "230,00"     | "Торт "        | "150,00" |
И в таблице 'СписокТоваров' я выбираю текущую строку
И в таблице 'СписокТоваров' я перехожу к строке:
	| "Код"       | "Количество" | "Наименование" | "Цена"  |
	| "000000029" | "300,00"     | "Хлеб"         | "15,00" |
И в таблице 'СписокТоваров' я выбираю текущую строку
И я нажимаю на кнопку с именем 'ОК'
Тогда открылось окно "Заказ * от * *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "25"
И в таблице 'Товары' я завершаю редактирование строки
И элемент формы 'Количество (итог)' стал равен '26'
И в таблице 'Товары' я перехожу к строке:
	| "Количество" | "Сумма" | "Товар" | "Цена"  |
	| "1"          | "15,00" | "Хлеб"  | "15,00" |
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "58"
И в таблице 'Товары' я завершаю редактирование строки
И элемент формы 'Количество (итог)' стал равен '83'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
