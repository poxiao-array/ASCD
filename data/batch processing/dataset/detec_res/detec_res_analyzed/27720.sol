'solc --version' running
'solc ./dataset/contracts/transaction_order/27720.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ZTRTokenSale.suicide() (dataset/contracts/transaction_order/27720.sol#152-155) allows anyone to destruct the contract
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#suicidal
INFO:Detectors:
ZTRToken (dataset/contracts/transaction_order/27720.sol#54-56) has incorrect ERC20 function interface:ZTRToken.transfer(address,uint256) (dataset/contracts/transaction_order/27720.sol#55)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
ZTRTokenSale.fallback() (dataset/contracts/transaction_order/27720.sol#94-115) ignores return value by remaining.sub(purchase) (dataset/contracts/transaction_order/27720.sol#106)
ZTRTokenSale.fallback() (dataset/contracts/transaction_order/27720.sol#94-115) ignores return value by remaining.sub(purchase) (dataset/contracts/transaction_order/27720.sol#113)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
SafeMath.assert(bool) (dataset/contracts/transaction_order/27720.sol#48-52) (function) shadows built-in symbol"
ZTRTokenSale.suicide() (dataset/contracts/transaction_order/27720.sol#152-155) (function) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
ZTRTokenSale.setDeadline(uint256) (dataset/contracts/transaction_order/27720.sol#142-145) should emit an event for: 
	- deadline = ti (dataset/contracts/transaction_order/27720.sol#144) 
ZTRTokenSale.setStart(uint256) (dataset/contracts/transaction_order/27720.sol#147-150) should emit an event for: 
	- start = ti (dataset/contracts/transaction_order/27720.sol#149) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Modifier ZTRTokenSale.admin() (dataset/contracts/transaction_order/27720.sol#76) does not always execute _; or revert
Modifier ZTRTokenSale.afterUnlock() (dataset/contracts/transaction_order/27720.sol#77) does not always execute _; or revert
Modifier ZTRTokenSale.afterDeadline() (dataset/contracts/transaction_order/27720.sol#78) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
ZTRTokenSale.fallback() (dataset/contracts/transaction_order/27720.sol#94-115) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > start) (dataset/contracts/transaction_order/27720.sol#96)
	- require(bool)(now < deadline) (dataset/contracts/transaction_order/27720.sol#97)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/27720.sol#26-30) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/27720.sol#14-19) is never used and should be removed
SafeMath.max256(uint256,uint256) (dataset/contracts/transaction_order/27720.sol#40-42) is never used and should be removed
SafeMath.max64(uint64,uint64) (dataset/contracts/transaction_order/27720.sol#32-34) is never used and should be removed
SafeMath.min256(uint256,uint256) (dataset/contracts/transaction_order/27720.sol#44-46) is never used and should be removed
SafeMath.min64(uint64,uint64) (dataset/contracts/transaction_order/27720.sol#36-38) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/27720.sol#8-12) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/27720.sol#21-24) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.11 (dataset/contracts/transaction_order/27720.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable ZTRTokenSale.ZTRTokenContract (dataset/contracts/transaction_order/27720.sol#64) is not in mixedCase
Variable ZTRTokenSale.ZTR_ETH_initial_price (dataset/contracts/transaction_order/27720.sol#72) is not in mixedCase
Variable ZTRTokenSale.ZTR_ETH_extra_price (dataset/contracts/transaction_order/27720.sol#73) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ZTRTokenSale.ZTRTokenSale() (dataset/contracts/transaction_order/27720.sol#80-93) uses literals with too many digits:
	- remaining = 800000000000000000000000000 (dataset/contracts/transaction_order/27720.sol#92)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/27720.sol analyzed (3 contracts with 100 detectors), 26 result(s) found
