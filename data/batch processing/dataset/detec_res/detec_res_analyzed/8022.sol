'solc --version' running
'solc ./dataset/contracts/transaction_order/8022.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/8022.sol:
./dataset/contracts/transaction_order/8022.sol:9:5: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
    function Ownable() public {
    ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
myPreICO (dataset/contracts/transaction_order/8022.sol#19-58) contract sets array length with a user-controlled value:
	- holders.push(msg.sender) (dataset/contracts/transaction_order/8022.sol#49)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
myPreICO.owner (dataset/contracts/transaction_order/8022.sol#23) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/8022.sol#7)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
myPreICO.sendFunds(address)._addr (dataset/contracts/transaction_order/8022.sol#33) lacks a zero-check on :
		- _addr.transfer(address(this).balance) (dataset/contracts/transaction_order/8022.sol#35)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
myPreICO.withdraw() (dataset/contracts/transaction_order/8022.sol#38-45) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > end_date) (dataset/contracts/transaction_order/8022.sol#40)
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
	- ^0.4.24 (dataset/contracts/transaction_order/8022.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract myPreICO (dataset/contracts/transaction_order/8022.sol#19-58) is not in CapWords
Parameter myPreICO.sendFunds(address)._addr (dataset/contracts/transaction_order/8022.sol#33) is not in mixedCase
Variable myPreICO.ETHRaised (dataset/contracts/transaction_order/8022.sol#20) is not in mixedCase
Variable myPreICO.soft_cap (dataset/contracts/transaction_order/8022.sol#21) is not in mixedCase
Variable myPreICO.hard_cap (dataset/contracts/transaction_order/8022.sol#22) is not in mixedCase
Variable myPreICO.end_date (dataset/contracts/transaction_order/8022.sol#24) is not in mixedCase
Variable myPreICO.holder_balance (dataset/contracts/transaction_order/8022.sol#26) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
myPreICO.hard_cap (dataset/contracts/transaction_order/8022.sol#22) should be constant 
myPreICO.soft_cap (dataset/contracts/transaction_order/8022.sol#21) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/8022.sol analyzed (2 contracts with 100 detectors), 15 result(s) found
