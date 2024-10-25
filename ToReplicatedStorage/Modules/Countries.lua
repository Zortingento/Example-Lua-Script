-- START OF MODULE --

-- 1-VARIABLES --

local Module = {}
Countries = {}
Countries.ImportantCountryTable = {}
Countries.NormalCountryTable = {}

CountryClass = {}
local ModulesFolder = script.Parent
local RequiredModule = require(ModulesFolder.Scenarios)
local TargetScenario,LoadStatus = RequiredModule:LoadScenario(12939132812)
local ImportantCountries = TargetScenario.ImpCountries
local NormalCountries = TargetScenario.NorCountries

-- Handler 1 --

for tag,ICountry in ImportantCountries do
	Countries.ImportantCountryTable[tag] = ICountry
end

-- Handler 2 --

for tag,NCountry in NormalCountries do
	Countries.NormalCountryTable[tag] = NCountry
end

-- Functions --

function Module:GetScenarioCountryData()
	return Countries,LoadStatus
end


return Module

-- END OF MODULE --
