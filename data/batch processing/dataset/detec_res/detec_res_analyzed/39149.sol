'solc --version' running
'solc ./dataset/contracts/transaction_order/39149.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Cancelot.withdraw() (dataset/contracts/transaction_order/39149.sol#40-42) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(this.balance) (dataset/contracts/transaction_order/39149.sol#41)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Cancelot.Cancelot(address,address)._owner (dataset/contracts/transaction_order/39149.sol#30) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/39149.sol#31)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Modifier Cancelot.only_owner() (dataset/contracts/transaction_order/39149.sol#26-28) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Deprecated standard detected registrar.cancelBid.gas(msg.gas)(bidder,seal) (dataset/contracts/transaction_order/39149.sol#37):
	- Usage of "msg.gas" should be replaced with "gasleft()"
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
	- ^0.4.11 (dataset/contracts/transaction_order/39149.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Modifier Cancelot.only_owner() (dataset/contracts/transaction_order/39149.sol#26-28) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/39149.sol analyzed (2 contracts with 100 detectors), 7 result(s) found
