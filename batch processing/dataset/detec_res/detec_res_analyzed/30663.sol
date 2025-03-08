'solc --version' running
'solc ./dataset/contracts/transaction_order/30663.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/30663.sol:
./dataset/contracts/transaction_order/30663.sol:18:26: Warning: This declaration shadows an existing declaration.
    function changeOwner(address adr){
                         ^---------^
./dataset/contracts/transaction_order/30663.sol:6:5: The shadowed declaration is here:
    address adr;
    ^---------^

./dataset/contracts/transaction_order/30663.sol:8:22: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'.
    address emails = 0x25df6e3da49f41ef5b99e139c87abc12c3583d13;
                     ^----------------------------------------^
./dataset/contracts/transaction_order/30663.sol:30:13: Warning: Return value of low-level calls not used.
            emails.delegatecall(bytes4(sha3("logEvent()")));
            ^---------------------------------------------^
./dataset/contracts/transaction_order/30663.sol:31:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            adr.send(this.balance);
            ^--------------------^
./dataset/contracts/transaction_order/30663.sol:18:26: Warning: Unused local variable
    function changeOwner(address adr){
                         ^---------^

INFO:Detectors:
testBank.withdrawal() (dataset/contracts/transaction_order/30663.sol#24-33) sends eth to arbitrary user
	Dangerous calls:
	- adr.send(this.balance) (dataset/contracts/transaction_order/30663.sol#31)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
testBank.withdrawal() (dataset/contracts/transaction_order/30663.sol#24-33) uses delegatecall to a input-controlled function id
	- emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30663.sol#30)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#controlled-delegatecall
INFO:Detectors:
testBank.withdrawal() (dataset/contracts/transaction_order/30663.sol#24-33) ignores return value by emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30663.sol#30)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
testBank.withdrawal() (dataset/contracts/transaction_order/30663.sol#24-33) ignores return value by adr.send(this.balance) (dataset/contracts/transaction_order/30663.sol#31)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
testBank.changeOwner(address).adr (dataset/contracts/transaction_order/30663.sol#18) shadows:
	- testBank.adr (dataset/contracts/transaction_order/30663.sol#6) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
testBank.Update(address,uint256) (dataset/contracts/transaction_order/30663.sol#11-16) should emit an event for: 
	- Limit = limit (dataset/contracts/transaction_order/30663.sol#14) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
testBank.Update(address,uint256).dataBase (dataset/contracts/transaction_order/30663.sol#11) lacks a zero-check on :
		- emails = dataBase (dataset/contracts/transaction_order/30663.sol#15)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Deprecated standard detected emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30663.sol#30):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.16 (dataset/contracts/transaction_order/30663.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in testBank.withdrawal() (dataset/contracts/transaction_order/30663.sol#24-33):
	- emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30663.sol#30)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Contract testBank (dataset/contracts/transaction_order/30663.sol#3-44) is not in CapWords
Function testBank.Update(address,uint256) (dataset/contracts/transaction_order/30663.sol#11-16) is not in mixedCase
Variable testBank.Owner (dataset/contracts/transaction_order/30663.sol#5) is not in mixedCase
Variable testBank.Limit (dataset/contracts/transaction_order/30663.sol#7) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
testBank.slitherConstructorVariables() (dataset/contracts/transaction_order/30663.sol#3-44) uses literals with too many digits:
	- Limit = 1000000000000000000 (dataset/contracts/transaction_order/30663.sol#7)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/30663.sol analyzed (1 contracts with 100 detectors), 16 result(s) found
