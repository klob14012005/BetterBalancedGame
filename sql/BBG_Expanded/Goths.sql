-- ========================================================================
-- =                              GOTHS                                   =
-- ========================================================================

-- start bias
DELETE FROM StartBiasTerrains WHERE CivilizationType = 'CIVILIZATION_MER_GOTHS';
-- change in Lua : need habitation to gain pop

-- unit militond +10 -> +5 in district, adjust base strength 44-> 38
UPDATE Units SET Combat = 38 WHERE UnitType = 'UNIT_MER_MILITOND';
UPDATE ModifierArguments SET Value = '5' WHERE ModifierId = 'MER_MILITOND_DISTRICT' AND Name = 'Amount';

-- unit gadrauht now a pikeman, --> changed in base mod
