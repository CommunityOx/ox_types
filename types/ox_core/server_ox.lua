---@meta

---@class OxCreateGroupProperties
---@field name string
---@field label string
---@field grades {label: string, accountRole?: OxAccountRole}[]
---@field type string?
---@field colour number?
---@field hasAccount boolean?

---@class OxServer
Ox = {}

---**`server`**
---@param ownerId number | string
---@param label string
---@return OxAccountServer
function Ox.CreateAccount(ownerId, label) end

---**`server`**
---@param data OxCreateGroupProperties
function Ox.CreateGroup(data) end

---**`server`**
---@param data string | CreateVehicleData
---@param coords? vector3
---@param heading? number
---@return OxVehicleServer
function Ox.CreateVehicle(data, coords, heading) end

---**`server`**
---@param invoiceId number
---@return { success: boolean, message?: string }
function Ox.DeleteAccountInvoice(invoiceId) end

---**`server`**
---@param groupName string
function Ox.DeleteGroup(groupName) end

---**`server`**
---@return string
function Ox.GenerateVehiclePlate() end

---**`server`**
---@param modelName string
---@return string
function Ox.GenerateVehicleVin(modelName) end

---**`server`**
---@param accountId number
---@return OxAccountServer
function Ox.GetAccount(accountId) end

---**`server`**
---@param id number | string
---@return OxAccountServer
function Ox.GetCharacterAccount(id) end

---**`server`**
---@param stateId string
---@return number
function Ox.GetCharIdFromStateId(stateId) end

---**`server`**
---@param groupName string
---@return OxAccountServer
function Ox.GetGroupAccount(groupName) end

---**`server`**
---@param groupType string
---@return string[]
function Ox.GetGroupsByType(groupType) end

---**`server`**
---@param playerId number
---@return OxPlayerServer
function Ox.GetPlayer(playerId) end

---**`server`**
---@param filter? table<string, any>
---@return OxPlayerServer
function Ox.GetPlayerFromFilter(filter) end

---**`server`**
---@param userId number
---@return OxPlayerServer
function Ox.GetPlayerFromUserId(userId) end

---**`server`**
---@param filter? table<string, any>
---@return OxPlayerServer[]
function Ox.GetPlayers(filter) end

---**`server`**
---@param entityId number
---@return OxVehicleServer
function Ox.GetVehicle(entityId) end

---**`server`**
---@param entityId number
---@return OxVehicleServer
function Ox.GetVehicleFromEntity(entityId) end

---**`server`**
---@param netId number
---@return OxVehicleServer
function Ox.GetVehicleFromNetId(netId) end

---**`server`**
---@param vin string
---@return OxVehicleServer
function Ox.GetVehicleFromVin(vin) end

---**`server`**
---@param groupName string
---@param grade number
---@param permission string
function Ox.RemoveGroupPermission(groupName, grade, permission) end

---**`server`**
function Ox.SaveAllPlayers() end

---**`server`**
function Ox.SaveAllVehicles() end

---**`server`**
---@param groupName string
---@param grade number
---@param permission string
---@param value "allow" | "deny"
function Ox.SetGroupPermission(groupName, grade, permission, value) end

---**`server`**
---@param groupName string
---@return number[]
function Ox.GetGroupActivePlayers(groupName) end

---**`server`**
---@param groupType string
---@return number[]
function Ox.GetGroupActivePlayersByType(groupType) end

---**`server`**
---@param dbId number
---@param coords vector3
---@param heading? number
---@return OxVehicleServer
function Ox.SpawnVehicle(dbId, coords, heading) end

---**`server`**
---@param name string
---@return OxLicense
function Ox.GetLicense(name) end

---**`server`**
---@return OxLicense[]
function Ox.GetLicenses() end

---**`server`**
---@param userId number
---@param reason string?
---@param hours string?
---@return boolean
function Ox.BanUser(userId, reason, hours) end

---**`server`**
---@param userId number
---@return boolean
function Ox.UnbanUser(userId) end