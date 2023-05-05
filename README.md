# eLMS
Система управління електронною бібліотекою. Система має окремий вхід, реєстрацію для кожного рівня користувачів (адміністратор, студент, викладач, бібліотекар). Бібліотекар допомагає студентам або викладачам видавати книги. Перед тим, як видати будь-яку книгу, система перевіряє деякі основні потреби, наприклад: 1) Одна і та ж книга не може бути видана двічі для конкретного користувача бібліотеки. 2) Система не дозволяє видавати більше 3 книг одному користувачеві бібліотеки, якщо він/вона не поверне раніше видані книги. 3) Система не дозволяє видавати книгу користувачеві, якщо він має несплачений штраф за прострочення. Штраф за прострочення буде додано до нього/неї, якщо будь-яка книга буде видана і не повернута після 7 днів. 4) Адміністратор має повний контроль над всією системою, в той час як бібліотекар має обмежений контроль. Система може обслуговувати стільки користувачів бібліотеки, скільки ви хочете.  5) Книги можна додавати до бібліотеки, зберігаючи категорію книги, автора, номер ISBN, ціну, кількість книг. Під час видачі або отримання книги від користувача запас бібліотеки буде автоматично оновлюватися. Завжди відображається інформація про наявність книг на складі. 6) Викладачі, студенти можуть видавати книги з бібліотеки. Вони мають індивідуальну реєстрацію, систему входу, щоб вони могли відстежувати деталі видачі, штрафувати за запізнення та керувати власним профілем.
Для роботи треба встановити XAMPP. Запустити xampp (Apache, MySQL). Я використовував базу даних MySQL. Далі слід створити базу данних з ім'ям elms та імпортувати elms.sql.
Далі потрібно зберегти весь проект в папці c:/xampp/htdocs. Потім відкрити браузер і ввести localhost/elms і натиснути enter. Це все :)

MD DAVID DOVYDENKO
