*LivingCode-Core
lcSlots

	^ self class instVarNames collect: [ :e | LcSlot in: self named: e  ]