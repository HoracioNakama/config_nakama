# config_nakama

Primera aclaración: Esta configuracin está orientada a programar en Python y puede usarse en diseño web (html, css) sin especializarse demasiado en esta última.

## PLUGIN MANAGER: Vim-Plug

Guía para instalarlog [aquí](https://github.com/junegunn/vim-plug)
    
## PLUGINS
* ### EDICION
#### Vim-conda
Para poder utilizar Anaconda como interprete
Presiona F9 y se ejecuta el archivo

#### Jedi-vim
Autocompletado.

#### Ultisnips y Vim-snippets

#### NerdCommenter
Comenta lineas con "\ci"

#### Autoclose

#### Syntastic

* ### HERRAMIENTAS
#### Vim-ChooseWin
Presiona "-" y te permite elegir la ventana, eso si trabajas con varios archivos abiertos al mismo tiempo.

#### Vim-Airline and Vim-Airline-themes
Es la barra de estado de abajo, utiliza el theme Bubblegum

#### CtrlP
Presiona ",e" y puedes buscar archivos en tu carpeta o subcarpetas, si escribes algunas letras te muestra los archivos que tienen esas letras.

* ### HTML + CSS

#### Colorizer
Aparecen los colores CSS.

#### Emmet (Zen Coding)
Muy ùtil para diseño web.
1. Escribe #books>ul>li.book*5>a
2. Presiona "Ctrl-y ,"
3. Te genera:
~~~
<div id="books">
    <ul>
        <li class="book">
            <a href=""></a>
        </li>
        <li class="book">
            <a href=""></a>
        </li>
        <li class="book">
            <a href=""></a>
        </li>
        <li class="book">
            <a href=""></a>
        </li>
        <li class="book">
            <a href=""></a>
        </li>
    </ul>
</div>
~~~
