# surf_test
test for Surf

Техническое задание на стажировку

Получи возможность проявить навыки iOS-разработки в крутой компании и стать частью большой опытной команды. Выполни тестовое задание, мы его оценим и решим, готов ли ты проходить стажировку в команде iOS-разработки Surf.

Что нужно сделать?

Необходимо сверстать экран, чтобы он полностью повторял дизайн.

Помимо верстки на UIKit, нет никаких ограничений в выборе способов реализации данной задачи. Будет это MVP или VIPER? UITableView или ScrollView? Решать тебе!

Данные для отображения зашиваем в приложении, запросы в сеть не используем.

Задание представлено в двух версиях, в базовой и продвинутой. В базовой описаны общие требования к экрану. В продвинутой предложены варианты для улучшения, которые расположены в порядке увеличения сложности. Некоторые варианты исключают друг друга, так что не нужно делать их все (но чем больше сделаешь сложных вариантов, тем выше шансы на успех).

Базовая версия:

1. Картинка должна быть пропорциональных размеров согласно первому макету;

2. Экран статичный, без возможности скролла;

3. В карусели максимум 10 элементов, карусель можно проскролить вправо. Ширина элемента карусели должна зависеть от текста;

4. По нажатию на кнопку «Отправить заявку» отображать системный алерт об успехе с заголовком «Поздравляем!» и текстом «Ваша заявка успешно отправлена!» и кнопкой «Закрыть».

Продвинутая версия:

5. У всех кнопок присутствует состояние нажатия (press state). Изменение цвета делаем на свое усмотрение;

6. Экран имеет возможность скролла, картинка уезжает вместе с контентом;

7. Элементы «Отправить заявку» и «Хочешь к нам?» должны быть прибиты к низу экрана и не должны скроллиться;

8. По нажатию на элемент в карусели его состояние меняется на выбранное, по повторному нажатию возвращается в обычное состояние;

9. По нажатию на элемент в карусели он анимировано переходит на первую позицию;

10. Зацикленная и бесконечная карусель, то есть ее можно скроллить в любую сторону и сколько угодно, при этом количество элементов должно остаться равным 10, за десятым элементом следует первый;

11. Дополнительная карусель, элементы которой располагаются в два ряда и подстраиваются в зависимости от ширины ячеек. Если элементы не помещаются на экран в два ряда, они не должны отображаться;

12. Скроллить можно только контент, картинка при этом статична. Контент может скроллится вплоть до статус бара;

13. В дополнительной карусели добавить возможность скроллить контент, если на экран не поместились все элементы, которые в нее добавлены. Количество рядов должно остаться так же равным двум. Скроллится должны сразу оба ряда, а не по отдельности.