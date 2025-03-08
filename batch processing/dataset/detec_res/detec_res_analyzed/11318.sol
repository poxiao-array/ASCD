'solc --version' running
'solc ./dataset/contracts/transaction_order/11318.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.21 (dataset/contracts/transaction_order/11318.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/11318.sol#41) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/11318.sol#41) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/11318.sol#57) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/11318.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/11318.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/11318.sol#119) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/11318.sol#141) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/11318.sol#141) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/11318.sol#153) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/11318.sol#153) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/11318.sol#167) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/11318.sol#167) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/11318.sol#183) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/11318.sol#183) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/11318.sol#245) is not in mixedCase
Constant CTCToken.million (dataset/contracts/transaction_order/11318.sol#302) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.totalToken (dataset/contracts/transaction_order/11318.sol#303) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nThirdPartyPlatform (dataset/contracts/transaction_order/11318.sol#306) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nPlatformAutonomy (dataset/contracts/transaction_order/11318.sol#307) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nResearchGroup (dataset/contracts/transaction_order/11318.sol#308) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nMarketing (dataset/contracts/transaction_order/11318.sol#309) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nInvEnterprise (dataset/contracts/transaction_order/11318.sol#310) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nAngelInvestment (dataset/contracts/transaction_order/11318.sol#311) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nCultureTravelFoundation (dataset/contracts/transaction_order/11318.sol#312) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CTCToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/11318.sol#296-337) uses literals with too many digits:
	- million = 1000000e18 (dataset/contracts/transaction_order/11318.sol#302)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/11318.sol analyzed (9 contracts with 100 detectors), 27 result(s) found
