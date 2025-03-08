'solc --version' running
'solc ./dataset/contracts/transaction_order/8692.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/8692.sol:
./dataset/contracts/transaction_order/8692.sol:10:5: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
    function Ownable() public {
    ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
microICO (dataset/contracts/transaction_order/8692.sol#20-56) contract sets array length with a user-controlled value:
	- holders.push(msg.sender) (dataset/contracts/transaction_order/8692.sol#48)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
microICO.owner (dataset/contracts/transaction_order/8692.sol#23) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/8692.sol#8)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
microICO.sendFunds(address)._addr (dataset/contracts/transaction_order/8692.sol#33) lacks a zero-check on :
		- _addr.transfer(address(this).balance) (dataset/contracts/transaction_order/8692.sol#35)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
microICO.withdraw() (dataset/contracts/transaction_order/8692.sol#38-44) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > end_date) (dataset/contracts/transaction_order/8692.sol#40)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- ^0.4.24 (dataset/contracts/transaction_order/8692.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract microICO (dataset/contracts/transaction_order/8692.sol#20-56) is not in CapWords
Parameter microICO.sendFunds(address)._addr (dataset/contracts/transaction_order/8692.sol#33) is not in mixedCase
Variable microICO.soft_cap (dataset/contracts/transaction_order/8692.sol#21) is not in mixedCase
Variable microICO.end_date (dataset/contracts/transaction_order/8692.sol#22) is not in mixedCase
Variable microICO.holder_balance (dataset/contracts/transaction_order/8692.sol#25) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/8692.sol analyzed (2 contracts with 100 detectors), 11 result(s) found
