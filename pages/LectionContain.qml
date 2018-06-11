import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4


Pane {
    id: lectionContain
    width: swipeView.width
    height: swipeView.height
    GridLayout{
        columns: 2
        width: parent.width



        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "<h1>Material design </h1>"
        }
    Label{
        Layout.fillWidth: true
        Layout.columnSpan: 2

        text: "<p><b>Material Design</b> (<b><a  >рус.</a> <span >Материальный дизайн</span></b>)&#160;— стиль дизайна программного обеспечения и приложений, разработанный компанией <a  title=>Google</a>. <br>Впервые представлен на конференции <a >Google I/O</a> <a>25 июня</a> <a >2014 года</a>. Стиль расширяет идею карточек, появившуюся в <a  >Google Now</a>, более широким применением строгих макетов, анимаций и<br> переходов, отступов и эффектов глубины (света и тени). По идее дизайнеров <a  >Google</a>, у приложений не должно быть острых углов, карточки должны переключаться между собой плавно и<br> практически незаметнo.
</p>

<p>Методические рекомендации по исполнению и внедрению Material Design были опубликованы Google на официальном сайте проекта в разделе Guidelines. Раздел включает в себя<br> рекомендации по использованию цветов, шрифтов, кнопок, иконок, анимаций, переходов и других элементов приложений и сайтов. Помимо этого, платформа предоставляет собственный<br> инструмент для внедрения Material Design - плагин Material Theme Editor для Sketch.



"
    }

    Label{
        Layout.fillWidth: true
        Layout.columnSpan: 2

        text: "

    <p>Каноническое исполнение Material Design для веб-приложений называется Polymer Paper Elements.<br> Оно содержит библиотеку Polymer, прослойку с API к веб-компонентам для браузеров, не поддерживающих стандарт Polymer, а также коллекцию Paper Elements.
</p>


"
    }

    Label{
        Layout.fillWidth: true
        Layout.columnSpan: 2

        text: "

    <p>    Одна из ключевых идей Material Design заключается в создании у пользователя интуитивного ощущения работы с реальными физическими объектами в рамках<br> цифровой среды. По сути, это эмуляция трёхмерного пространства на плоскости экрана, но со всеми преимуществами, которые может дать виртуальная среда. Похожие на картонные карточки <br>кнопки и окна здесь умеют увеличиваться и уменьшаться, распадаться на части и перестраиваться.

    Самым впечатляющим в этой концепции является то,<br> что свойства и поведение объектов на экране будут так же предсказуемы и понятны человеку, как и любое простое событие в физическом мире. В отличие от существующих интерфейсов,<br> где нажатие кнопки не приводит к каким-то изменениям на остальной части экрана, любое действие в Android L <br>вызывает соответствующий эффект, затрагивающий весь интерфейс. Тапните на конкретный день в календаре, <br>и он увеличится, расталкивая своим растущим объёмом и массой остальные дни. Нажмите кнопку воспроизведения в плеере, и она, как фантик, развернётся в панель управления
</p>


"
    }

    }
}



