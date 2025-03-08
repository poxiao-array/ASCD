'solc --version' running
'solc ./dataset/contracts/transaction_order/14258.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenERC20.setPrices(uint256) (dataset/contracts/transaction_order/14258.sol#203-205) should emit an event for: 
	- buyPrice = newBuyPrice (dataset/contracts/transaction_order/14258.sol#204) 
TokenERC20.modifyairdrop(uint256,uint256) (dataset/contracts/transaction_order/14258.sol#225-228) should emit an event for: 
	- airdrop = _airdrop (dataset/contracts/transaction_order/14258.sol#226) 
	- startBalance = _startBalance (dataset/contracts/transaction_order/14258.sol#227) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
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
	- ^0.4.21 (dataset/contracts/transaction_order/14258.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/14258.sol#37) is not in CapWords
Parameter TokenERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/14258.sol#95) is not in mixedCase
Parameter TokenERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/14258.sol#95) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/14258.sol#113) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/14258.sol#113) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/14258.sol#113) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/14258.sol#133) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/14258.sol#133) is not in mixedCase
Parameter TokenERC20.allowance(address,address)._owner (dataset/contracts/transaction_order/14258.sol#139) is not in mixedCase
Parameter TokenERC20.allowance(address,address)._spender (dataset/contracts/transaction_order/14258.sol#139) is not in mixedCase
Parameter TokenERC20.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/14258.sol#143) is not in mixedCase
Parameter TokenERC20.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/14258.sol#143) is not in mixedCase
Parameter TokenERC20.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/14258.sol#149) is not in mixedCase
Parameter TokenERC20.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/14258.sol#149) is not in mixedCase
Parameter TokenERC20.getBalance(address)._a (dataset/contracts/transaction_order/14258.sol#160) is not in mixedCase
Parameter TokenERC20.balanceOf(address)._owner (dataset/contracts/transaction_order/14258.sol#171) is not in mixedCase
Parameter TokenERC20.burn(uint256)._value (dataset/contracts/transaction_order/14258.sol#176) is not in mixedCase
Parameter TokenERC20.modifyairdrop(uint256,uint256)._airdrop (dataset/contracts/transaction_order/14258.sol#225) is not in mixedCase
Parameter TokenERC20.modifyairdrop(uint256,uint256)._startBalance (dataset/contracts/transaction_order/14258.sol#225) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/14258.sol analyzed (4 contracts with 100 detectors), 23 result(s) found
