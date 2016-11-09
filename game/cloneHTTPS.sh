#!/bin/bash

echo "What code do you want to clone? (enter number):"
select c in "C++ AI" "C# AI" "Java AI" "JavaScript AI" "Lua AI" "Python AI" "Game Server" "Visualizer"; do
	case $c in
		C++\ AI ) git clone https://github.com/siggame/Joueur.cpp-MegaMinerAI-Dev.git;;
		C#\ AI ) git clone https://github.com/siggame/Joueur.cs-MegaMinerAI-Dev.git;;
		Java\ AI ) git clone https://github.com/siggame/Joueur.java-MegaMinerAI-Dev.git;;
		JavaScript\ AI ) git clone https://github.com/siggame/Joueur.js-MegaMinerAI-Dev.git;;
		Lua\ AI ) git clone https://github.com/siggame/Joueur.lua-MegaMinerAI-Dev.git;;
		Python\ AI ) git clone https://github.com/siggame/Joueur.py-MegaMinerAI-Dev.git;;
		Game\ Server ) git clone https://github.com/siggame/Cerveau-MegaMinerAI-Dev.git;;
		Visualizer ) git clone https://github.com/siggame/Viseur-MegaMinerAI-Dev.git;;
	esac
done

read -p "Press ENTER to exit..."
