'solc --version' running
'solc ./dataset/contracts/transaction_order/10843.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenERC20.startBalance (dataset/contracts/transaction_order/10843.sol#71) is never initialized. It is used in:
	- TokenERC20.getBalance(address) (dataset/contracts/transaction_order/10843.sol#145-154)
TokenERC20.touched (dataset/contracts/transaction_order/10843.sol#74) is never initialized. It is used in:
	- TokenERC20.getBalance(address) (dataset/contracts/transaction_order/10843.sol#145-154)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.21 (dataset/contracts/transaction_order/10843.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/10843.sol#37) is not in CapWords
Parameter TokenERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/10843.sol#95) is not in mixedCase
Parameter TokenERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/10843.sol#95) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/10843.sol#105) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/10843.sol#105) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/10843.sol#105) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/10843.sol#118) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/10843.sol#118) is not in mixedCase
Parameter TokenERC20.allowance(address,address)._owner (dataset/contracts/transaction_order/10843.sol#124) is not in mixedCase
Parameter TokenERC20.allowance(address,address)._spender (dataset/contracts/transaction_order/10843.sol#124) is not in mixedCase
Parameter TokenERC20.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/10843.sol#128) is not in mixedCase
Parameter TokenERC20.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/10843.sol#128) is not in mixedCase
Parameter TokenERC20.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/10843.sol#134) is not in mixedCase
Parameter TokenERC20.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/10843.sol#134) is not in mixedCase
Parameter TokenERC20.getBalance(address)._a (dataset/contracts/transaction_order/10843.sol#145) is not in mixedCase
Parameter TokenERC20.balanceOf(address)._owner (dataset/contracts/transaction_order/10843.sol#156) is not in mixedCase
Parameter TokenERC20.burn(uint256)._value (dataset/contracts/transaction_order/10843.sol#161) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TokenERC20.airdrop (dataset/contracts/transaction_order/10843.sol#70) should be constant 
TokenERC20.buyPrice (dataset/contracts/transaction_order/10843.sol#72) should be constant 
TokenERC20.currentTotalSupply (dataset/contracts/transaction_order/10843.sol#69) should be constant 
TokenERC20.startBalance (dataset/contracts/transaction_order/10843.sol#71) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/10843.sol analyzed (4 contracts with 100 detectors), 25 result(s) found
