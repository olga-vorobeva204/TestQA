﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария> 
	И В командном интерфейсе я выбираю "Продажи" "Заказ"
	Тогда открылось окно "Заказ (создание)"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Магазин \"Обувь\""
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно "Подбор товара"
	И в таблице 'СписокТоваров' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000036" | "Услуги"       |
	И в таблице 'СписокТоваров' я перехожу на один уровень вниз
	И в таблице 'СписокТоваров' я выбираю текущую строку
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно "Заказ (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Заказ * от *"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно "Подбор товара"
	И в таблице 'СписокТоваров' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000036" | "Услуги"       |
	И в таблице 'СписокТоваров' я перехожу на один уровень вниз
	И в таблице 'СписокТоваров' я перехожу к строке:
		| "Код"       | "Наименование" | "Цена"       |
		| "000000038" | "Ремонт"       | "100 000,00" |
	И в таблице 'СписокТоваров' я выбираю текущую строку
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "10,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно "Заказ * от * *"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Заказ * от *"
	И в таблице 'Товары' я перехожу к строке:
		| "Количество" | "Сумма"        | "Товар"  | "Цена"       |
		| "10"         | "1 000 000,00" | "Ремонт" | "100 000,00" |

