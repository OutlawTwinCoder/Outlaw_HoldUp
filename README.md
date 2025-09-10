# Outlaw_HoldUp


Donnez du risque/récompense à vos rues : les joueurs peuvent braquer des PNJ à l’arme à feu ou tenter un pickpocket discret au couteau. Chaque action déclenche une barre de progression et inclut une chance d’échec. Récompenses configurables (argent sale + items via ox_inventory), cooldown anti-spam et réactions PNJ (mains en l’air, panique/fuite).

Points forts

🔫 Braquage (gun) : pointer un PNJ humain avec une arme à feu → il vide ses poches.

🔪 Vol à la tire (couteau) : se placer derrière la cible → vol discret avec risque.

⏳ Progress + RNG : durée et % de réussite configurables pour chaque méthode.

💰 Récompenses flexibles : black_money + liste d’items (min/max/chance).

🚫 Cooldown par joueur entre deux réussites (anti-farm).

🧠 Réactions PNJ : mains en l’air, puis fuite/panique.

🎯 ox_target natif : interaction propre, distance configurable.

🎛️ ox_lib (optionnel) : jolie progressbar (fallback intégré si absent).

🧩 Style “Outlaw” : code stylisé/peu lisible pour garder votre “patte”.

Dépendances

ESX (pour l’argent)

ox_inventory

ox_target

(Optionnel) ox_lib pour la progressbar circulaire

Installation

Glissez le dossier outlaw_Holdup dans resources/[kheiro]/.

Dans server.cfg :

ensure ox_target
ensure ox_inventory
ensure outlaw_Holdup


Ajustez config.lua (durées, chances, récompenses, distances).

Configuration (extrait)
Config.Durations = { gun = 3500, knife = 5500 }
Config.Success   = { gun = 85,   knife = 55   }  -- % réussite
Config.Cooldown  = 30 * 1000                      -- ms
Config.Reward = {
  black_money = { min = 80, max = 220 },
  items = {
    { name='water', min=1, max=2, chance=50 },
    { name='bread', min=1, max=2, chance=50 },
    { name='phone', min=1, max=1, chance=8  },
    { name='lockpick', min=1, max=1, chance=12 },
  }
}
Config.TargetDistance = 2.0

Compatibilité & perfs

Testé sur ESX récents + ox_core stack.

Overhead très faible (hooks ox_target + events serveur légers).

Les PNJ ambient peuvent être non réseautés : le script intègre un marquage local + statebag pour limiter le spam.

Support & personnalisation

Monnaie alternative (cash/bank), appel police, logs, drop tables RP, animations joueur (fouille), messages traductions — sur demande.
