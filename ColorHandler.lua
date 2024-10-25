local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Events = ReplicatedStorage.Events

local Modules = ReplicatedStorage.Modules

local Countries = require(Modules.Countries)

local Event_Loaded = Events.Event_Loaded

local ScenarioCountriesData,LoadStatus = Countries:GetScenarioCountryData()

print(ScenarioCountriesData)

local ImportantCountryDatas = ScenarioCountriesData.ImportantCountryTable

local NormalCountryDatas = ScenarioCountriesData.NormalCountryTable

if LoadStatus == true then
	warn("Loading country datas...")
	for _,v in NormalCountryDatas do
		if v.OwnedColor and v.State_Names then
			for _,StateName in v.State_Names do
				local State = workspace:FindFirstChild(StateName)
				for _,tile in State:GetChildren() do
					tile.Color = v.OwnedColor
				end
			end	
		end
	end
	for _,v in ImportantCountryDatas do
			print(v)
		if v.OwnedColor and v.State_Names then
			for _,StateName in v.State_Names do
				local State = workspace:FindFirstChild(StateName)
				for _,tile in State:GetChildren() do
					tile.Color = v.OwnedColor
				end
			end	
		end
	end
	warn("Loaded Datas.")
end