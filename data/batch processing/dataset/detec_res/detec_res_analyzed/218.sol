'solc --version' running
'solc ./dataset/contracts/transaction_order/218.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
PresaleHold.Owner () shadows:
	- Ownable.Owner ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Ownable.transferOwner(address)._owner () lacks a zero-check on :
		- Owner = _owner ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
PresaleHold.withdraw(uint256) () uses timestamp for comparisons
	Dangerous comparisons:
	- isOwner() && now >= openDate ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.10 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- SkipEmptyStringLiteral
	- ConstantOptimizerSubtraction.
It is used by:
	- ^0.4.10 ()
solc-0.4.10 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Ownable.transferOwner(address)._owner () is not in mixedCase
Variable Ownable.Owner () is not in mixedCase
Parameter PresaleHold.setup(uint256)._openDate () is not in mixedCase
Variable PresaleHold.Owner () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/218.sol analyzed (2 contracts with 100 detectors), 9 result(s) found
