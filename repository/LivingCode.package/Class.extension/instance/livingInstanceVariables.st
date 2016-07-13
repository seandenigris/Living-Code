*LivingCode
livingInstanceVariables

	^ self instVarNames collect: [ :e | InstanceVariable of: self named: e ].