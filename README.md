
# Caesar Cipher

Цей GEM реалізує шифр Цезаря для Ruby. Шифр Цезаря дозволяє кодувати та декодувати текст, зсуваючи кожну букву на вказану кількість позицій у алфавіті.

## Встановлення

Для встановлення GEM локально виконайте:

```bash
gem build caesar_cipher.gemspec
```
```bash
gem install ./caesar_cipher-0.1.0.gem
```

## Використання

### Приклад використання

```ruby
irb
```
```ruby
require 'caesar_cipher'

cipher = CaesarCipher::Cipher.new(3) # Зміщення на 3
encoded = cipher.encode("Hello, World!") # Закодувати текст
puts encoded # "Khoor, Zruog!"

decoded = cipher.decode(encoded) # Розкодувати текст
puts decoded # "Hello, World!"

```
### Вихід із irb
```
Ctrl + D
```

## Тестування

Для запуску тестів виконайте:

```bash
bundle exec rspec
```
```bash
ruby test_caesar_cipher.rb  
```

## Структура файлів

- `lib/caesar_cipher.rb`: Основний код GEM.
- `lib/caesar_cipher/version.rb`: Визначення версії GEM.
- `spec/`: Тести для GEM.
- `bin/console`: Консоль для експериментів із GEM.

## Ліцензія

Цей проєкт ліцензовано на умовах ліцензії MIT.

## Автор

Горбачов Роман КС31
