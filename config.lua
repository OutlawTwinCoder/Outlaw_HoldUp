Config = {}

-- Durée des progress (ms)
Config.Durations = {
    gun = 3500,        -- braquage à l'arme à feu
    knife = 5500       -- vol à la tire au couteau
}

-- Chances de réussite (0-100)
Config.Success = {
    gun = 85,          -- % de chance de réussir avec un gun
    knife = 55         -- % de chance de réussir par derrière avec couteau
}

-- Cooldown par joueur entre 2 braquages réussis (ms)
Config.Cooldown = 30 * 1000

-- Récompenses : argent sale + items possibles
Config.Reward = {
    black_money = { min = 80, max = 220 }, -- changez pour 0 si vous ne voulez pas d'argent
    items = {
        { name = 'water', min = 1, max = 2, chance = 50 },
        { name = 'bread', min = 1, max = 2, chance = 50 },
        { name = 'phone', min = 1, max = 1, chance = 8 },
        { name = 'lockpick', min = 1, max = 1, chance = 12 }
    }
}

-- Distance max pour cibler un ped
Config.TargetDistance = 2.0

-- Debug prints server
Config.Debug = false

-- Appel police (chance %)
Config.Police = {
    enabled = true,
    chance = {
        gun = 35,   -- % d'alerte lors d'un braquage au gun (base)
        knife = 15  -- % d'alerte lors d'un pickpocket (base)
    },
    failBonus = 25,       -- bonus de % si l'action ÉCHOUE
    alertDuration = 60,   -- durée du blip chez la police (secondes)
    radius = 65.0,        -- rayon de la zone (blip)
    job = 'police'        -- nom du job police (ESX)
}
