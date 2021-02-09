testing
fromISO: point

	"cartX = (2 * isoY + isoX) / 2;"
	"cartY = (2 * isoY - isoX) / 2"

	| cartx carty |
	cartx := 2 * point y + point x / 2.
	carty := 2 * point y - point x / 2.

	^ cartx @ carty