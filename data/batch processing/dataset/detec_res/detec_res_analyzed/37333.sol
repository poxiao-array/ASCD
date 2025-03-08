'solc --version' running
'solc ./dataset/contracts/transaction_order/37333.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
DEST.hasStarted() (dataset/contracts/transaction_order/37333.sol#182-184) uses timestamp for comparisons
	Dangerous comparisons:
	- now >= START_TIMESTAMP (dataset/contracts/transaction_order/37333.sol#183)
DEST.hasFinished() (dataset/contracts/transaction_order/37333.sol#188-190) uses timestamp for comparisons
	Dangerous comparisons:
	- now >= END_TIMESTAMP || ethCollected >= ETH_MAX_LIMIT (dataset/contracts/transaction_order/37333.sol#189)
DEST.tokensAreLiquid() (dataset/contracts/transaction_order/37333.sol#194-197) uses timestamp for comparisons
	Dangerous comparisons:
	- (ethCollected >= ETH_MIN_LIMIT && now >= END_TIMESTAMP) || (ethCollected >= ETH_MAX_LIMIT) (dataset/contracts/transaction_order/37333.sol#195-196)
DEST.fallback() (dataset/contracts/transaction_order/37333.sol#223-234) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(hasStarted() && ! hasFinished()) (dataset/contracts/transaction_order/37333.sol#224)
DEST.refund() (dataset/contracts/transaction_order/37333.sol#238-247) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(ethCollected < ETH_MIN_LIMIT && now >= END_TIMESTAMP) (dataset/contracts/transaction_order/37333.sol#239)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/37333.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/37333.sol#61) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/37333.sol#61) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/37333.sol#73) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37333.sol#109) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37333.sol#109) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/37333.sol#109) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/37333.sol#127) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/37333.sol#127) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/37333.sol#146) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/37333.sol#146) is not in mixedCase
Parameter DEST.price(uint256)._v (dataset/contracts/transaction_order/37333.sol#200) is not in mixedCase
Parameter DEST.transfer(address,uint256)._to (dataset/contracts/transaction_order/37333.sol#260) is not in mixedCase
Parameter DEST.transfer(address,uint256)._value (dataset/contracts/transaction_order/37333.sol#260) is not in mixedCase
Parameter DEST.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37333.sol#267) is not in mixedCase
Parameter DEST.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37333.sol#267) is not in mixedCase
Parameter DEST.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/37333.sol#267) is not in mixedCase
Parameter DEST.approve(address,uint256)._spender (dataset/contracts/transaction_order/37333.sol#275) is not in mixedCase
Parameter DEST.approve(address,uint256)._value (dataset/contracts/transaction_order/37333.sol#275) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/37333.sol analyzed (6 contracts with 100 detectors), 25 result(s) found
