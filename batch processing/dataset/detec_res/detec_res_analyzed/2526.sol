'solc --version' running
'solc ./dataset/contracts/transaction_order/2526.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TeambrellaWallet.realtransfer(address[],uint256[]) (dataset/contracts/transaction_order/2526.sol#238-243) sends eth to arbitrary user
	Dangerous calls:
	- tos[i].transfer(values[i]) (dataset/contracts/transaction_order/2526.sol#241)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
TeambrellaWallet.assignOwner(address[],uint256,address) (dataset/contracts/transaction_order/2526.sol#151-158) should emit an event for: 
	- m_owner = newOwner (dataset/contracts/transaction_order/2526.sol#156) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
TeambrellaWallet.assignOwner(address[],uint256,address) (dataset/contracts/transaction_order/2526.sol#151-158) should emit an event for: 
	- m_teamId = teamId (dataset/contracts/transaction_order/2526.sol#155) 
TeambrellaWallet.changeAllCosigners(uint256,address[],uint256[3],bytes,bytes,bytes) (dataset/contracts/transaction_order/2526.sol#160-174) should emit an event for: 
	- m_opNum = opNum + 1 (dataset/contracts/transaction_order/2526.sol#171) 
TeambrellaWallet.changeAllCosigners2(uint256,address[],bytes,bytes,bytes,bytes) (dataset/contracts/transaction_order/2526.sol#176-191) should emit an event for: 
	- m_opNum = opNum + 1 (dataset/contracts/transaction_order/2526.sol#188) 
TeambrellaWallet.transfer(uint256,address[],uint256[],uint256[3],bytes,bytes,bytes) (dataset/contracts/transaction_order/2526.sol#203-218) should emit an event for: 
	- m_opNum = opNum + 1 (dataset/contracts/transaction_order/2526.sol#216) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
TeambrellaWallet.assignOwner(address[],uint256,address).newOwner (dataset/contracts/transaction_order/2526.sol#151) lacks a zero-check on :
		- m_owner = newOwner (dataset/contracts/transaction_order/2526.sol#156)
TeambrellaWallet.disbandTo(address).to (dataset/contracts/transaction_order/2526.sol#259) lacks a zero-check on :
		- to.transfer(this.balance) (dataset/contracts/transaction_order/2526.sol#271)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
TeambrellaWallet.safer_ecrecover(bytes32,uint8,bytes32,bytes32) (dataset/contracts/transaction_order/2526.sol#25-49) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/2526.sol#35-48)
TeambrellaWallet.ecrecovery(bytes32,bytes) (dataset/contracts/transaction_order/2526.sol#51-75) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/2526.sol#59-74)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
TeambrellaWallet.ecverify(bytes32,bytes,address) (dataset/contracts/transaction_order/2526.sol#77-84) compares to a boolean constant:
	-ret == true && addr == signer (dataset/contracts/transaction_order/2526.sol#83)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.19 (dataset/contracts/transaction_order/2526.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function TeambrellaWallet.safer_ecrecover(bytes32,uint8,bytes32,bytes32) (dataset/contracts/transaction_order/2526.sol#25-49) is not in mixedCase
Variable TeambrellaWallet.m_opNum (dataset/contracts/transaction_order/2526.sol#5) is not in mixedCase
Variable TeambrellaWallet.m_teamId (dataset/contracts/transaction_order/2526.sol#6) is not in mixedCase
Variable TeambrellaWallet.m_owner (dataset/contracts/transaction_order/2526.sol#7) is not in mixedCase
Variable TeambrellaWallet.m_cosigners (dataset/contracts/transaction_order/2526.sol#8) is not in mixedCase
Variable TeambrellaWallet.m_cosignersApprovedDisband (dataset/contracts/transaction_order/2526.sol#9) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition pos < m_cosignersApprovedDisband.length (dataset/contracts/transaction_order/2526.sol#247) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition pos < m_cosigners.length (dataset/contracts/transaction_order/2526.sol#252) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Slither:./dataset/contracts/transaction_order/2526.sol analyzed (1 contracts with 100 detectors), 21 result(s) found
