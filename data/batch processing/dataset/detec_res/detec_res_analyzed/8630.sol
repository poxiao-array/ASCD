'solc --version' running
'solc ./dataset/contracts/transaction_order/8630.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/8630.sol:
./dataset/contracts/transaction_order/8630.sol:10:5: Warning: No visibility specified. Defaulting to "public".
    function depositAndWithdraw(uint256 withdrawAmount) payable{
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/8630.sol:18:5: Warning: No visibility specified. Defaulting to "public".
    function () payable{
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/8630.sol:22:5: Warning: No visibility specified. Defaulting to "public".
    function withdraw (){
    ^
Spanning multiple lines.

INFO:Detectors:
Test.depositAndWithdraw(uint256) (dataset/contracts/transaction_order/8630.sol#10-17) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/8630.sol#16)
Test.withdraw() (dataset/contracts/transaction_order/8630.sol#22-24) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/8630.sol#23)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Test.poppins (dataset/contracts/transaction_order/8630.sol#7) is set pre-construction with a non-constant function or state variable:
	- Test1(Poppins_address)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#function-initializing-state
INFO:Detectors:
Version constraint ^0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.20 (dataset/contracts/transaction_order/8630.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Test.Poppins_address (dataset/contracts/transaction_order/8630.sol#6) is not in mixedCase
Function Test1.Invest() (dataset/contracts/transaction_order/8630.sol#29-31) is not in mixedCase
Function Test1.Divest(uint256) (dataset/contracts/transaction_order/8630.sol#32-33) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Test.Poppins_address (dataset/contracts/transaction_order/8630.sol#6) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/8630.sol analyzed (2 contracts with 100 detectors), 9 result(s) found
