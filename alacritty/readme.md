

## Конфигурация под alacritty (windows)

### [general] секция

#### Темы
Для начала склонируйте репозиторий в папку с конфигурацией
```bash
https://github.com/alacritty/alacritty-theme.git
```

В секции `[general]` импортируйте тему:
```toml
[general]
import = [
    "./themes/themes/tokyo_night.toml"
]
```

### [terminal.shell] секция

Замените на используемую вами оболочку
```toml
program = "powershell"
```

Добавьте команды, которые должны выполняться перед открытием терминала
```toml
args = ["-NoExit", "-Command", 
    """
    cls
    function prompt { 'laptop> ' }
    cd E://
    """
]
```

### [font] секция
Установите шрифт [Jetbrains Mono](https://www.jetbrains.com/lp/mono)
```toml
normal = { family = "Jetbrains Mono", style = "Regular" }
```

