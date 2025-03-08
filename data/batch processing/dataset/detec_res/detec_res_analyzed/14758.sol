'solc --version' running
'solc ./dataset/contracts/transaction_order/14758.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/14758.sol:
./dataset/contracts/transaction_order/14758.sol:18:5: Warning: Return value of low-level calls not used.
    target.call.value(msg.value)(bytes4(keccak256("play(uint256)")), a);
    ^-----------------------------------------------------------------^

INFO:Detectors:
Wforcer.wcf(address,uint256) (dataset/contracts/transaction_order/14758.sol#14-21) ignores return value by target.call.value(msg.value)(bytes4(keccak256()(play(uint256))),a) (dataset/contracts/transaction_order/14758.sol#18)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
Wforcer.wcf(address,uint256).target (dataset/contracts/transaction_order/14758.sol#14) lacks a zero-check on :
		- target.call.value(msg.value)(bytes4(keccak256()(play(uint256))),a) (dataset/contracts/transaction_order/14758.sol#18)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Deprecated standard detected suicide(address)(owner) (dataset/contracts/transaction_order/14758.sol#9):
	- Usage of "suicide()" should be replaced with "selfdestruct()"
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
	- ^0.4.11 (dataset/contracts/transaction_order/14758.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Wforcer.wcf(address,uint256) (dataset/contracts/transaction_order/14758.sol#14-21):
	- target.call.value(msg.value)(bytes4(keccak256()(play(uint256))),a) (dataset/contracts/transaction_order/14758.sol#18)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Slither:./dataset/contracts/transaction_order/14758.sol analyzed (2 contracts with 100 detectors), 6 result(s) found
