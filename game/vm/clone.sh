#!/bin/bash

function cloneHTTPS {
    echo "What code do you want to clone? (enter number):"
    select c in "C++ AI" "C# AI" "Java AI" "JavaScript AI" "Lua AI" "Python AI" "Game Server" "Visualizer"; do
        case $c in
            C++\ AI ) git clone https://github.com/siggame/Joueur.cpp-MegaMinerAI-Dev.git; break;;
            C#\ AI ) git clone https://github.com/siggame/Joueur.cs-MegaMinerAI-Dev.git; break;;
            Java\ AI ) git clone https://github.com/siggame/Joueur.java-MegaMinerAI-Dev.git; break;;
            JavaScript\ AI ) git clone https://github.com/siggame/Joueur.js-MegaMinerAI-Dev.git; break;;
            Lua\ AI ) git clone https://github.com/siggame/Joueur.lua-MegaMinerAI-Dev.git; break;;
            Python\ AI ) git clone https://github.com/siggame/Joueur.py-MegaMinerAI-Dev.git; break;;
            Game\ Server ) git clone https://github.com/siggame/Cerveau-MegaMinerAI-Dev.git; break;;
            Visualizer ) git clone https://github.com/siggame/Viseur-MegaMinerAI-Dev.git; break;;
        esac
    done
}

function cloneSSH {
	echo "What code do you want to clone? (enter number):"
    select c in "C++ AI" "C# AI" "Java AI" "JavaScript AI" "Lua AI" "Python AI" "Game Server" "Visualizer"; do
        case $c in
            C++\ AI ) git clone git@github.com:siggame/Joueur.cpp-MegaMinerAI-Dev.git; break;;
            C#\ AI ) git clone git@github.com:siggame/Joueur.cs-MegaMinerAI-Dev.git; break;;
            Java\ AI ) git clone git@github.com:siggame/Joueur.java-MegaMinerAI-Dev.git; break;;
            JavaScript\ AI ) git clone git@github.com:siggame/Joueur.js-MegaMinerAI-Dev.git; break;;
            Lua\ AI ) git clone git@github.com:siggame/Joueur.lua-MegaMinerAI-Dev.git; break;;
            Python\ AI ) git clone git@github.com:siggame/Joueur.py-MegaMinerAI-Dev.git; break;;
            Game\ Server ) git clone git@github.com:siggame/Cerveau-MegaMinerAI-Dev.git; break;;
            Visualizer ) git clone git@github.com:siggame/Viseur-MegaMinerAI-Dev.git; break;;
        esac
    done
}

echo "Clone via HTTPS (Recommended) or SSH? (enter number):"
select c in "HTTPS" "SSH"; do
	case $c in
		HTTPS ) cloneHTTPS; break;;
		SSH ) cloneSSH; break;;
	esac
done