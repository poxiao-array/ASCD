'solc --version' running
'solc ./dataset/contracts/transaction_order/5727.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EIP20Wrapper.eip20TransferFrom(address,address,address,uint256) (dataset/contracts/transaction_order/5727.sol#156-181) uses arbitrary from in transferFrom: NonCompliantEIP20(token).transferFrom(from,to,value) (dataset/contracts/transaction_order/5727.sol#164)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
NonCompliantEIP20 (dataset/contracts/transaction_order/5727.sol#117-121) has incorrect ERC20 function interface:NonCompliantEIP20.transfer(address,uint256) (dataset/contracts/transaction_order/5727.sol#118)
NonCompliantEIP20 (dataset/contracts/transaction_order/5727.sol#117-121) has incorrect ERC20 function interface:NonCompliantEIP20.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/5727.sol#119)
NonCompliantEIP20 (dataset/contracts/transaction_order/5727.sol#117-121) has incorrect ERC20 function interface:NonCompliantEIP20.approve(address,uint256) (dataset/contracts/transaction_order/5727.sol#120)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
BZxVault.withdrawEther(address,uint256).to (dataset/contracts/transaction_order/5727.sol#216) lacks a zero-check on :
		- (to.send(amount)) (dataset/contracts/transaction_order/5727.sol#227)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
EIP20Wrapper.eip20Transfer(address,address,uint256) (dataset/contracts/transaction_order/5727.sol#130-154) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5727.sol#139-153)
EIP20Wrapper.eip20TransferFrom(address,address,address,uint256) (dataset/contracts/transaction_order/5727.sol#156-181) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5727.sol#166-180)
EIP20Wrapper.eip20Approve(address,address,uint256) (dataset/contracts/transaction_order/5727.sol#183-207) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5727.sol#192-206)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
EIP20Wrapper.eip20Approve(address,address,uint256) (dataset/contracts/transaction_order/5727.sol#183-207) is never used and should be removed
Ownable._transferOwnership(address) (dataset/contracts/transaction_order/5727.sol#73-77) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint 0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.24 (dataset/contracts/transaction_order/5727.sol#19)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Ownable.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/5727.sol#65) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/5727.sol analyzed (5 contracts with 100 detectors), 13 result(s) found
