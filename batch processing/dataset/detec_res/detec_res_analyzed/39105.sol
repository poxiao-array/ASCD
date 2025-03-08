'solc --version' running
'solc ./dataset/contracts/transaction_order/39105.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
FundariaBonusFund.setFinalTimestampOfBonusPeriod(uint256) (dataset/contracts/transaction_order/39105.sol#37-40) should emit an event for: 
	- finalTimestampOfBonusPeriod = _finalTimestampOfBonusPeriod (dataset/contracts/transaction_order/39105.sol#39) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
FundariaBonusFund.setFundariaTokenBuyAddress(address)._fundariaTokenBuyAddress (dataset/contracts/transaction_order/39105.sol#28) lacks a zero-check on :
		- fundariaTokenBuyAddress = _fundariaTokenBuyAddress (dataset/contracts/transaction_order/39105.sol#29)
FundariaBonusFund.setRegisteringContractAddress(address)._registeringContractAddress (dataset/contracts/transaction_order/39105.sol#32) lacks a zero-check on :
		- registeringContractAddress = _registeringContractAddress (dataset/contracts/transaction_order/39105.sol#33)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Modifier FundariaBonusFund.onlyCreator() (dataset/contracts/transaction_order/39105.sol#19-21) does not always execute _; or revert
Modifier FundariaBonusFund.onlyBonusOwner() (dataset/contracts/transaction_order/39105.sol#24-26) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
FundariaBonusFund.withdrawBonus() (dataset/contracts/transaction_order/39105.sol#44-51) uses timestamp for comparisons
	Dangerous comparisons:
	- now > finalTimestampOfBonusPeriod (dataset/contracts/transaction_order/39105.sol#45)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.11 (dataset/contracts/transaction_order/39105.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter FundariaBonusFund.setFundariaTokenBuyAddress(address)._fundariaTokenBuyAddress (dataset/contracts/transaction_order/39105.sol#28) is not in mixedCase
Parameter FundariaBonusFund.setRegisteringContractAddress(address)._registeringContractAddress (dataset/contracts/transaction_order/39105.sol#32) is not in mixedCase
Parameter FundariaBonusFund.setFinalTimestampOfBonusPeriod(uint256)._finalTimestampOfBonusPeriod (dataset/contracts/transaction_order/39105.sol#37) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/39105.sol analyzed (1 contracts with 100 detectors), 11 result(s) found
