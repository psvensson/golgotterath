test
testShadowCastIsInMemoryPosForSide

	ShadowCaster shadowCastSides values do: [ :side | 
		self testShadowMemoryForSide: side ]