/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_ISKANDAR_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ISKANDAR_UA_ATTACH_DISTRICTS',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ISKANDAR_UA_ADJUST_POPULATION',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_ISKANDAR_UA',	'LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_ISKANDAR',	'TRAIT_LEADER_CVS_ISKANDAR_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,							ModifierId									)
VALUES	('TRAIT_LEADER_CVS_ISKANDAR_UA',	'MODIFIER_CVS_ISKANDAR_UA_ATTACH_DISTRICTS'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_SCIENTIST'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_WRITER'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_PROPHET'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_ENGINEER'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_MERCHANT'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_GENERAL'	),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CVS_ISKANDAR_UA_ATTACH_ADMIRAL'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType							)
VALUES	('MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'COLLECTION_ALL_PLAYERS',		'EFFECT_ATTACH_MODIFIER'			),
		('MODTYPE_CVS_ISKANDAR_UA_ATTACH_DISTRICTS',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ATTACH_MODIFIER'			),
		('MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			'COLLECTION_OWNER',				'EFFECT_ADJUST_GREAT_PERSON_POINTS'	),
		('MODTYPE_CVS_ISKANDAR_UA_ADJUST_POPULATION',	'COLLECTION_OWNER',				'EFFECT_ADJUST_CITY_POPULATION'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									OwnerRequirementSetId,							SubjectRequirementSetId,				RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_ISKANDAR_UA_ATTACH_SCIENTIST',	'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_CAMPUS',			'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_SCIENTIST',			'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_WRITER',		'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_THEATER',			'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_WRITER',				'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_PROPHET',		'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_HOLY_SITE',			'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_PROPHET',			'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_ENGINEER',	'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_INDUSTRIAL_ZONE',	'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ENGINEER',			'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_MERCHANT',	'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_COMMERCIAL_HUB',	'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_MERCHANT',			'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_GENERAL',		'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_ENCAMPMENT',		'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_GENERAL',			'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_ADMIRAL',		'MODTYPE_CVS_ISKANDAR_UA_ATTACH_PLAYERS',		'REQSET_CVS_ISKANDAR_UA_HAS_HARBOR',			'REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ADMIRAL',			'MODTYPE_CVS_ISKANDAR_UA_ADJUST_GPP',			NULL,											NULL,									0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_DISTRICTS',	'MODTYPE_CVS_ISKANDAR_UA_ATTACH_DISTRICTS',		NULL,											'REQSET_CVS_ISKANDAR_UA_NEAR_COAST',	0,			0			),
		('MODIFIER_CVS_ISKANDAR_UA_ADJUST_POPULATION',	'MODTYPE_CVS_ISKANDAR_UA_ADJUST_POPULATION',	NULL,											NULL,									1,			1			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,					Value											)
VALUES	('MODIFIER_CVS_ISKANDAR_UA_ATTACH_SCIENTIST',	'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_SCIENTIST'			),
		('MODIFIER_CVS_ISKANDAR_UA_SCIENTIST',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_SCIENTIST'					),
		('MODIFIER_CVS_ISKANDAR_UA_SCIENTIST',			'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_WRITER',		'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_WRITER'				),
		('MODIFIER_CVS_ISKANDAR_UA_WRITER',				'GreatPersonClassType',	'GREAT_PERSON_CLASS_WRITER'						),
		('MODIFIER_CVS_ISKANDAR_UA_WRITER',				'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_PROPHET',		'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_PROPHET'				),
		('MODIFIER_CVS_ISKANDAR_UA_PROPHET',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_PROPHET'					),
		('MODIFIER_CVS_ISKANDAR_UA_PROPHET',			'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_ENGINEER',	'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_ENGINEER'				),
		('MODIFIER_CVS_ISKANDAR_UA_ENGINEER',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_ENGINEER'					),
		('MODIFIER_CVS_ISKANDAR_UA_ENGINEER',			'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_MERCHANT',	'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_MERCHANT'				),
		('MODIFIER_CVS_ISKANDAR_UA_MERCHANT',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'					),
		('MODIFIER_CVS_ISKANDAR_UA_MERCHANT',			'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_GENERAL',		'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_GENERAL'				),
		('MODIFIER_CVS_ISKANDAR_UA_GENERAL',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'					),
		('MODIFIER_CVS_ISKANDAR_UA_GENERAL',			'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_ADMIRAL',		'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_ADMIRAL'				),
		('MODIFIER_CVS_ISKANDAR_UA_ADMIRAL',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_ADMIRAL'					),
		('MODIFIER_CVS_ISKANDAR_UA_ADMIRAL',			'Amount',				1												),
		('MODIFIER_CVS_ISKANDAR_UA_ATTACH_DISTRICTS',	'ModifierId',			'MODIFIER_CVS_ISKANDAR_UA_ADJUST_POPULATION'	),
		('MODIFIER_CVS_ISKANDAR_UA_ADJUST_POPULATION',	'Amount',				1												);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_CAMPUS',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_THEATER',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_HOLY_SITE',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_INDUSTRIAL_ZONE',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_COMMERCIAL_HUB',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_ENCAMPMENT',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_HARBOR',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_UA_NEAR_COAST',			'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId								)
VALUES	('REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',			'REQ_CVS_LEADER_IS_ISKANDAR'				),
		('REQSET_CVS_ISKANDAR_UA_IS_SUZERAIN',			'REQUIRES_PLAYER_IS_SUZERAIN'				),
		('REQSET_CVS_ISKANDAR_UA_HAS_CAMPUS',			'REQ_CVS_ISKANDAR_UA_HAS_CAMPUS'			),
		('REQSET_CVS_ISKANDAR_UA_HAS_THEATER',			'REQ_CVS_ISKANDAR_UA_HAS_THEATER'			),
		('REQSET_CVS_ISKANDAR_UA_HAS_HOLY_SITE',		'REQ_CVS_ISKANDAR_UA_HAS_HOLY_SITE'			),
		('REQSET_CVS_ISKANDAR_UA_HAS_INDUSTRIAL_ZONE',	'REQ_CVS_ISKANDAR_UA_HAS_INDUSTRIAL_ZONE'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_COMMERCIAL_HUB',	'REQ_CVS_ISKANDAR_UA_HAS_COMMERCIAL_HUB'	),
		('REQSET_CVS_ISKANDAR_UA_HAS_ENCAMPMENT',		'REQ_CVS_ISKANDAR_UA_HAS_ENCAMPMENT'		),
		('REQSET_CVS_ISKANDAR_UA_HAS_HARBOR',			'REQ_CVS_ISKANDAR_UA_HAS_HARBOR'			),
		('REQSET_CVS_ISKANDAR_UA_NEAR_COAST',			'REQ_CVS_ISKANDAR_UA_NEAR_COAST'			),
		('REQSET_CVS_ISKANDAR_UA_NEAR_COAST',			'REQ_CVS_ISKANDAR_UA_IS_CITY'				),
		('REQSET_CVS_ISKANDAR_UA_NEAR_COAST',			'REQ_CVS_ISKANDAR_UA_IS_NEW_CITY'			);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,						Inverse	)
VALUES	('REQ_CVS_ISKANDAR_UA_HAS_CAMPUS',			'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_HAS_THEATER',			'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_HAS_HOLY_SITE',		'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_HAS_INDUSTRIAL_ZONE',	'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_HAS_COMMERCIAL_HUB',	'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_HAS_ENCAMPMENT',		'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_HAS_HARBOR',			'REQUIREMENT_PLAYER_HAS_DISTRICT',		0		),
		('REQ_CVS_ISKANDAR_UA_NEAR_COAST',			'REQUIREMENT_PLOT_ADJACENT_TO_COAST',	0		),
		('REQ_CVS_ISKANDAR_UA_IS_CITY',				'REQUIREMENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_ISKANDAR_UA_IS_NEW_CITY',			'REQUIREMENT_CITY_HAS_X_POPULATION',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value						)
VALUES	('REQ_CVS_ISKANDAR_UA_HAS_CAMPUS',			'DistrictType',		'DISTRICT_CAMPUS'			),
		('REQ_CVS_ISKANDAR_UA_HAS_THEATER',			'DistrictType',		'DISTRICT_THEATER'			),
		('REQ_CVS_ISKANDAR_UA_HAS_HOLY_SITE',		'DistrictType',		'DISTRICT_HOLY_SITE'		),
		('REQ_CVS_ISKANDAR_UA_HAS_INDUSTRIAL_ZONE',	'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'	),
		('REQ_CVS_ISKANDAR_UA_HAS_COMMERCIAL_HUB',	'DistrictType',		'DISTRICT_COMMERCIAL_HUB'	),
		('REQ_CVS_ISKANDAR_UA_HAS_ENCAMPMENT',		'DistrictType',		'DISTRICT_ENCAMPMENT'		),
		('REQ_CVS_ISKANDAR_UA_HAS_HARBOR',			'DistrictType',		'DISTRICT_HARBOR'			),
		('REQ_CVS_ISKANDAR_UA_NEAR_COAST',			'MinRange',			0							),
		('REQ_CVS_ISKANDAR_UA_NEAR_COAST',			'MaxRange',			3							),
		('REQ_CVS_ISKANDAR_UA_IS_CITY',				'DistrictType',		'DISTRICT_CITY_CENTER'		),
		('REQ_CVS_ISKANDAR_UA_IS_NEW_CITY',			'Amount',			1							);