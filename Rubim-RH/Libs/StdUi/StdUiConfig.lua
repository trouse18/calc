--- @type StdUi
local StdUi = LibStub and LibStub('StdUi', true);
if not StdUi then
	return;
end

local module, version = 'Config', 1;
if not StdUi:UpgradeNeeded(module, version) then return end;

StdUi.config = {};

function StdUi:ResetConfig()
	self.config = {
		font      = {
			familly       = [[Fonts\FRIZQT__.ttf]],
			size          = 12,
			titleSize     = 16,
			effect        = 'NONE',
			strata        = 'OVERLAY',
			color         = {
				normal   = { r = 1, g = 1, b = 1, a = 1 },
				disabled = { r = 0.55, g = 0.55, b = 0.55, a = 1 },
				header   = { r = 1, g = 0.9, b = 0, a = 1 },
			}
		},

		backdrop  = {
			texture        = [[Interface\Buttons\WHITE8X8]],
			panel          = { r = 0.0588, g = 0.0588, b = 0, a = 0.6 },
			slider         = { r = 0.15, g = 0.15, b = 0.15, a = 1 },

			button         = { r = 0.20, g = 0.20, b = 0.20, a = 1 },
			buttonDisabled = { r = 0.15, g = 0.15, b = 0.15, a = 1 },

			border         = { r = 0.00, g = 0.00, b = 0.00, a = 1 },
			borderDisabled = { r = 0.40, g = 0.40, b = 0.40, a = 1 }
		},

		progressBar = {
			color = { r = 1, g = 0.9, b = 0, a = 0.5 },
		},

		highlight = {
			color = { r = 1, g = 0.9, b = 0, a = 0.4 },
			blank = { r = 0, g = 0, b = 0, a = 0 }
		},

		dialog    = {
			width  = 400,
			height = 100,
			button = {
				width  = 100,
				height = 20,
				margin = 5
			}
		},

		tooltip   = {
			padding = 10
		}
	};
end
StdUi:ResetConfig();

function StdUi:SetDefaultFont(font, size, effect, strata)
	self.config.font.familly = font;
	self.config.font.size = size;
	self.config.font.effect = effect;
	self.config.font.strata = strata;
end

StdUi:RegisterModule(module, version);