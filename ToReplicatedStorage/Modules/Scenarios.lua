-- START OF MODULE --

-- 1-VARIABLES --

-- Locals

local Module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage.Events
local LoadedEvent = Events.Event_Loaded

-- Local Function

local function Check(t,i,v)
	if type(v) == "table" then
		t[i] = {}
		for k2,v2 in v do
			Check(t[i],k2,v2)
		end
	else
		t[i] = v
	end
end


-- Globals

Scenarios = {}

-- Tables

-- Example Scenario

Scenarios.ExampleScenarioTable = {}

Scenarios.ExampleScenarioTable.ImpCountries = {}

Scenarios.ExampleScenarioTable.NorCountries = {}

Scenarios.ExampleScenarioTable.CountryTags = {}

Scenarios.ExampleScenarioTable.Code = 33333333333

Scenarios.ExampleScenarioTable.Country_Values = {}

-----------------------------COUNTRYVALUES------------------------------

Scenarios.ExampleScenarioTable.Start_Date = {}

Scenarios.ExampleScenarioTable.Start_Date.Month = 1

Scenarios.ExampleScenarioTable.Start_Date.Day = 1

Scenarios.ExampleScenarioTable.Start_Date.Year = 2100

Scenarios.ExampleScenarioTable.Country_Values.Name = "Example_Name_Here"

Scenarios.ExampleScenarioTable.Country_Values.OwnedColor = Color3.fromRGB(255,255,255)

Scenarios.ExampleScenarioTable.Country_Values.OccupationColor = Color3.fromRGB(255,255,255)

Scenarios.ExampleScenarioTable.Country_Values.Ethnicity = "Ethnicity_Name_Here"

Scenarios.ExampleScenarioTable.Country_Values.Offical_Name = "Example_Offical_Name_Here"

Scenarios.ExampleScenarioTable.Country_Values.Goverment = "Goverment_Type_Here"

Scenarios.ExampleScenarioTable.Country_Values.Ideology = "Ideology_Name_Here"

Scenarios.ExampleScenarioTable.Country_Values.Leader = "Leader_Name_Here"

Scenarios.ExampleScenarioTable.Country_Values.Factories = {}

Scenarios.ExampleScenarioTable.Country_Values.States = {}

Scenarios.ExampleScenarioTable.Country_Values.State_Names = {}

Scenarios.ExampleScenarioTable.Country_Values.Tiles = {}

Scenarios.ExampleScenarioTable.Country_Values.TileNames = {}

Scenarios.ExampleScenarioTable.Country_Values.Equipments = {}

Scenarios.ExampleScenarioTable.Country_Values.Lore = "Lore_Here"

Scenarios.ExampleScenarioTable.Country_Values.Research_Slot_Amount = 5

Scenarios.ExampleScenarioTable.Country_Values.Recruitable_Population = 1200000

Scenarios.ExampleScenarioTable.Country_Values.Manpower = 300000

Scenarios.ExampleScenarioTable.Country_Values.Population = 10000000

Scenarios.ExampleScenarioTable.Country_Values.MonthlyPopulationGrowth = 40000

Scenarios.ExampleScenarioTable.Country_Values.RulingParty = "A_Party_Name"

Scenarios.ExampleScenarioTable.Country_Values.Parties_Ideology = {}

Scenarios.ExampleScenarioTable.Country_Values.Parties_Percentage = {}

Scenarios.ExampleScenarioTable.Country_Values.Party_Names = {}

Scenarios.ExampleScenarioTable.Country_Values.Military = {}

Scenarios.ExampleScenarioTable.Country_Values.Military.Land_Forces = {}

Scenarios.ExampleScenarioTable.Country_Values.Military.Land_Forces.Organization = 100

Scenarios.ExampleScenarioTable.Country_Values.Military.Land_Forces.LandBattleProfessionalism = 10

Scenarios.ExampleScenarioTable.Country_Values.Military.Land_Forces.Morale = 50

Scenarios.ExampleScenarioTable.Country_Values.Military.Air_Forces = {}

Scenarios.ExampleScenarioTable.Country_Values.Military.Air_Forces.GroundSupport = 60

Scenarios.ExampleScenarioTable.Country_Values.Military.Air_Forces.NavalSupport = 60

Scenarios.ExampleScenarioTable.Country_Values.Military.Air_Forces.Efficiency = 50

Scenarios.ExampleScenarioTable.Country_Values.Military.Naval_Forces = {}

Scenarios.ExampleScenarioTable.Country_Values.Military.Naval_Forces.Efficiency = 50

Scenarios.ExampleScenarioTable.Country_Values.Military.Naval_Forces.NavyMorale = 50

Scenarios.ExampleScenarioTable.Country_Values.Military.Naval_Forces.NavyOrganization = 50

Scenarios.ExampleScenarioTable.Country_Values.Modifiers = {}

Scenarios.ExampleScenarioTable.Country_Values.Technology = {}

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces = {}

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Gun = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Sword = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Artilery = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Cavarly = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Cannon = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Tank = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.ArmoredVehicle = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Anti_Tank = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Anti_Air = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Land_Forces.Motorized = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Air_Forces = {}

Scenarios.ExampleScenarioTable.Country_Values.Technology.Air_Forces.Bomber = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Air_Forces.Fighter = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Air_Forces.Hunter = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces = {}

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.BattleShip = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.Cruiser = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.Air_Carrier = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.Destroyer = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.Galleon = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.Small_Galleon = 1

Scenarios.ExampleScenarioTable.Country_Values.Technology.Naval_Forces.Submarine = 1

------------------------------------------------------------------------

Scenarios.MyScenario = {}

Scenarios.MyScenario.ImpCountries = {}

Scenarios.MyScenario.NorCountries = {}

Scenarios.MyScenario.CountryTags = {
	RED = {
		Name = "Redland"
		,
		Offical_Name = "Republic of Redland"
		,
		ImportanceDegree = "IsImportant"
		,
		Motto = "We die for our fatherland!"
		,
		State_Names = {"STATE_001","STATE_003","STATE_005"}	
		,
		OwnedColor = Color3.fromRGB(255, 0, 0)
		,
		OccupationColor = Color3.fromRGB(255, 138, 140)
	}
	,
	BLU = {
		Name = "Blueland"
		,
		Offical_Name = "Republic of Blueland"
		,
		ImportanceDegree = "NotImportant"
		,
		Motto = "We go up!"
		,
		State_Names = {"STATE_002","STATE_004","STATE_006"}
		,
		OwnedColor = Color3.fromRGB(0, 0, 255)
		,
		OccupationColor = Color3.fromRGB(70, 87, 165)
	}
}

Scenarios.MyScenario.Code = 12939132812

Scenarios.MyScenario.Country_Values = {}

-----------------------------COUNTRYVALUES------------------------------

Scenarios.MyScenario.Start_Date = {}

Scenarios.MyScenario.Start_Date.Month = 1

Scenarios.MyScenario.Start_Date.Day = 1

Scenarios.MyScenario.Start_Date.Year = 2500

Scenarios.MyScenario.Country_Values.Name = "Example_Name_Here"

Scenarios.MyScenario.Country_Values.OwnedColor = Color3.fromRGB(204, 204, 204)

Scenarios.MyScenario.Country_Values.OccupationColor = Color3.fromRGB(189, 189, 189)

Scenarios.MyScenario.Country_Values.Offical_Name = "Example_Offical_Name_Here"

Scenarios.MyScenario.Country_Values.Goverment = "Goverment_Type_Here"

Scenarios.MyScenario.Country_Values.Ideology = "Ideology_Name_Here"

Scenarios.MyScenario.Country_Values.Leader = "Leader_Name_Here"

Scenarios.MyScenario.Country_Values.Ethnicity = "Ethnicity_Name_Here"

Scenarios.MyScenario.Country_Values.Factories = {}

Scenarios.MyScenario.Country_Values.States = {}

Scenarios.MyScenario.Country_Values.State_Names = {}

Scenarios.MyScenario.Country_Values.Tiles = {}

Scenarios.MyScenario.Country_Values.TileNames = {}

Scenarios.MyScenario.Country_Values.Equipments = {}

Scenarios.MyScenario.Country_Values.Lore = "Lore_Here"

Scenarios.MyScenario.Country_Values.Research_Slot_Amount = 5

Scenarios.MyScenario.Country_Values.Recruitable_Population = 1200000

Scenarios.MyScenario.Country_Values.Manpower = 300000

Scenarios.MyScenario.Country_Values.Population = 10000000

Scenarios.MyScenario.Country_Values.MonthlyPopulationGrowth = 40000

Scenarios.MyScenario.Country_Values.RulingParty = "A_Party_Name"

Scenarios.MyScenario.Country_Values.Parties_Ideology = {}

Scenarios.MyScenario.Country_Values.Parties_Percentage = {}

Scenarios.MyScenario.Country_Values.Party_Names = {}

Scenarios.MyScenario.Country_Values.Military = {}

Scenarios.MyScenario.Country_Values.Military.Land_Forces = {}

Scenarios.MyScenario.Country_Values.Military.Land_Forces.Organization = 100

Scenarios.MyScenario.Country_Values.Military.Land_Forces.LandBattleProfessionalism = 10

Scenarios.MyScenario.Country_Values.Military.Land_Forces.Morale = 50

Scenarios.MyScenario.Country_Values.Military.Air_Forces = {}

Scenarios.MyScenario.Country_Values.Military.Air_Forces.GroundSupport = 60

Scenarios.MyScenario.Country_Values.Military.Air_Forces.NavalSupport = 60

Scenarios.MyScenario.Country_Values.Military.Air_Forces.Efficiency = 50

Scenarios.MyScenario.Country_Values.Military.Naval_Forces = {}

Scenarios.MyScenario.Country_Values.Military.Naval_Forces.Efficiency = 50

Scenarios.MyScenario.Country_Values.Military.Naval_Forces.NavyMorale = 50

Scenarios.MyScenario.Country_Values.Military.Naval_Forces.NavyOrganization = 50

Scenarios.MyScenario.Country_Values.Modifiers = {}

Scenarios.MyScenario.Country_Values.Technology = {}

Scenarios.MyScenario.Country_Values.Technology.Land_Forces = {}

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Gun = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Sword = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Artilery = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Cavarly = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Cannon = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Tank = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.ArmoredVehicle = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Anti_Tank = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Anti_Air = 1

Scenarios.MyScenario.Country_Values.Technology.Land_Forces.Motorized = 1

Scenarios.MyScenario.Country_Values.Technology.Air_Forces = {}

Scenarios.MyScenario.Country_Values.Technology.Air_Forces.Bomber = 1

Scenarios.MyScenario.Country_Values.Technology.Air_Forces.Fighter = 1

Scenarios.MyScenario.Country_Values.Technology.Air_Forces.Hunter = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces = {}

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.BattleShip = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.Cruiser = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.Air_Carrier = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.Destroyer = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.Galleon = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.Small_Galleon = 1

Scenarios.MyScenario.Country_Values.Technology.Naval_Forces.Submarine = 1

------------------------------------------------------------------------

-- HANDLERS --

for _,Scenario in Scenarios do
	local CountryTagStateNames = nil
	local CountryOccupationColor = nil
	local CountryOwnedColor = nil
	local CountryTagOfficalName = nil
	local CountryTagName = nil
	local StateValue = nil
	for _,Tag in Scenario.CountryTags do
		if CountryTagName == nil then
			CountryTagName = Tag.Name
		else
			if CountryTagName == Tag.Name then
				error("Two country tags have the same name,this is not allowed!")
			end
		end
		if CountryTagStateNames == nil then
			CountryTagStateNames = Tag.State_Names
		else
			for _,anyvalue in Tag.State_Names do
				if table.find(CountryTagStateNames,anyvalue) then
					error("Two country tags have the same state name,this is not allowed!")
				end
			end
		end
		if CountryTagOfficalName == nil then
			CountryTagOfficalName = Tag.Offical_Name
		else
			if CountryTagOfficalName == Tag.Offical_Name then
				error("Two country tags have the same offical name,this is not allowed!")
			end
		end
		if CountryOccupationColor == nil then
			CountryOccupationColor = Tag.OccupationColor
		else
			if CountryOccupationColor == Tag.OccupationColor then
				error("Two country tags have the same occupation color,this is not allowed!")
			end
		end
		if CountryOwnedColor == nil then
			CountryOwnedColor = Tag.OwnedColor
		else
			if CountryOwnedColor == Tag.OwnedColor then
				error("Two country tags have the same owned color,this is not allowed!")
			end
		end
	end
end

for _,Scenario in Scenarios do
	local ImpCountries : {} = Scenario.ImpCountries
	local NorCountries : {} = Scenario.NorCountries
	local ExampleTable : {} = Scenario.Country_Values
	local CountryTags : {} = Scenario.CountryTags
	local Amount = 0
	for _,Tag in CountryTags do
		Amount += 1
	end
	local Code : number = Scenario.Code
	if Code == 33333333333 then
		continue
	else
		warn("Code is not 33333333333,proceeding.")
		if Amount == 0 then
			error("Cannot proceed,Country name value array has 0 values!")
		else
			for CountryName,Table in CountryTags do
				if Table.ImportanceDegree == "IsImportant" then
					ImpCountries[CountryName] = Table
					ImpCountries[CountryName].ImportanceDegree = nil
				elseif Table.ImportanceDegree == "NotImportant" then
					NorCountries[CountryName] = Table
					NorCountries[CountryName].ImportanceDegree = nil
				else
					error("Unknown value is seen,stopping procedure...")
				end
			end
			for ImpCountryName,ImpCountryTable in ImpCountries do
				local CountryTable = {}
				
				for k,v in ExampleTable do
					if ImpCountryTable[k] == nil then
						Check(CountryTable,k,v)
					else
						Check(CountryTable,k,ImpCountryTable[k])
					end
					ImpCountries[ImpCountryName] = CountryTable
				end
				
			end
			for NorCountryName,NorCountryTable in NorCountries do
				local CountryTable = {}
				for k,v in ExampleTable do
					if NorCountryTable[k] == nil then
						Check(CountryTable,k,v)
					else
						Check(CountryTable,k,NorCountryTable[k])
					end
					NorCountries[NorCountryName] = CountryTable
				end
				
			end
			
		end
	end
end

------------------------------------------------------------------------

-- FUNCTIONS --

function Module:GetScenariosTable()
	return Scenarios
end

function Module:LoadScenario(ScenarioCode : number)
	for _,Scenario in Scenarios do
		wait(1)
		if Scenario.Code == ScenarioCode then
			warn("Scenario is found!Loading...")
			wait(5)
			warn("Scenario loaded.")
			return Scenario,true
		end
	end
end

return Module

-- END OF MODULE --