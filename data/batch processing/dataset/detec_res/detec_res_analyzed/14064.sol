'solc --version' running
'solc ./dataset/contracts/transaction_order/14064.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/14064.sol:
./dataset/contracts/transaction_order/14064.sol:416:25: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member, for example use "address(contract).balance" instead.
    msg.sender.transfer(this.balance);
                        ^----------^

INFO:Detectors:
Spider.buy() (dataset/contracts/transaction_order/14064.sol#408-414) performs a multiplication on the result of a division:
	- count = msg.value.div(100000000000000000).mul(exchangeRate) (dataset/contracts/transaction_order/14064.sol#410)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
Spider.setExchangeRate(uint256) (dataset/contracts/transaction_order/14064.sol#378-380) should emit an event for: 
	- exchangeRate = x (dataset/contracts/transaction_order/14064.sol#379) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.23 (dataset/contracts/transaction_order/14064.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/14064.sol#153) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/14064.sol#153) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/14064.sol#168) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/14064.sol#199) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/14064.sol#200) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/14064.sol#201) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/14064.sol#227) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/14064.sol#227) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/14064.sol#240) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/14064.sol#241) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/14064.sol#261) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/14064.sol#262) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/14064.sol#284) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/14064.sol#285) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/14064.sol#304) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/14064.sol#305) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/14064.sol#315) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/14064.sol#316) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/14064.sol#317) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/14064.sol#327) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._value (dataset/contracts/transaction_order/14064.sol#328) is not in mixedCase
Parameter PausableToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/14064.sol#338) is not in mixedCase
Parameter PausableToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/14064.sol#339) is not in mixedCase
Parameter PausableToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/14064.sol#349) is not in mixedCase
Parameter PausableToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/14064.sol#350) is not in mixedCase
Parameter Spider.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/14064.sol#419) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/14064.sol analyzed (9 contracts with 100 detectors), 30 result(s) found
