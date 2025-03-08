'solc --version' running
'solc ./dataset/contracts/transaction_order/38748.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BETSale.withdrawTokens() (dataset/contracts/transaction_order/38748.sol#53-63) ignores return value by token.transfer(seller,token.balanceOf(address(this))) (dataset/contracts/transaction_order/38748.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
BETSale.withdraw() (dataset/contracts/transaction_order/38748.sol#113-126) uses a dangerous strict equality:
	- token.balanceOf(address(this)) == 0 || bet_purchased[msg.sender] == 0 (dataset/contracts/transaction_order/38748.sol#115)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
BETSale.updateAvailability(uint256) (dataset/contracts/transaction_order/38748.sol#86-89) should emit an event for: 
	- total_bet_available += _bet_amount (dataset/contracts/transaction_order/38748.sol#88) 
BETSale.updatePrice(uint256) (dataset/contracts/transaction_order/38748.sol#94-97) should emit an event for: 
	- price_per_eth = _price (dataset/contracts/transaction_order/38748.sol#96) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#54):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#55):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#69):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#77):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#87):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#95):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#104):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#109):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#115):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#125):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#129):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38748.sol#135):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/38748.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable DaoCasinoToken.CAP (dataset/contracts/transaction_order/38748.sol#15) is not in mixedCase
Parameter BETSale.updateAvailability(uint256)._bet_amount (dataset/contracts/transaction_order/38748.sol#86) is not in mixedCase
Parameter BETSale.updatePrice(uint256)._price (dataset/contracts/transaction_order/38748.sol#94) is not in mixedCase
Variable BETSale.bet_purchased (dataset/contracts/transaction_order/38748.sol#24) is not in mixedCase
Variable BETSale.eth_sent (dataset/contracts/transaction_order/38748.sol#27) is not in mixedCase
Variable BETSale.total_bet_available (dataset/contracts/transaction_order/38748.sol#30) is not in mixedCase
Variable BETSale.total_bet_purchased (dataset/contracts/transaction_order/38748.sol#33) is not in mixedCase
Variable BETSale.total_bet_withdrawn (dataset/contracts/transaction_order/38748.sol#36) is not in mixedCase
Variable BETSale.price_per_eth (dataset/contracts/transaction_order/38748.sol#39) is not in mixedCase
Variable BETSale.halt_purchases (dataset/contracts/transaction_order/38748.sol#48) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
BETSale.seller (dataset/contracts/transaction_order/38748.sol#45) should be constant 
BETSale.token (dataset/contracts/transaction_order/38748.sol#42) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/38748.sol analyzed (2 contracts with 100 detectors), 30 result(s) found
