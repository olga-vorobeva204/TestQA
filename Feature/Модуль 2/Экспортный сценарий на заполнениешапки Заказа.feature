﻿#language: ru

@ExportScenarios

Функционал: Экспортный сценарий на заполнениешапки Заказа

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: Заполнение шапки заказа
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"Товары\""
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Корнет ЗАО"
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Средний"
И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли1"
И я нажимаю на кнопку с именем 'ФормаЗаписать'
