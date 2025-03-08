'solc --version' running
'solc ./dataset/contracts/transaction_order/35514.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/35514.sol:
./dataset/contracts/transaction_order/35514.sol:46:20: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'.
      bkaddress  = 0xE254FC78C94D7A358F78323E56D9BBBC4C2F9993;                   
                   ^----------------------------------------^

INFO:Detectors:
ElevateCoin.fallback() (dataset/contracts/transaction_order/35514.sol#57-79) performs a multiplication on the result of a division:
	- finalTokens = (msg.value * ethRate) / icoTokenPrice (dataset/contracts/transaction_order/35514.sol#61)
	- finalTokens = finalTokens * (10 ** 2) (dataset/contracts/transaction_order/35514.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
ElevateCoin (dataset/contracts/transaction_order/35514.sol#3-268) has incorrect ERC20 function interface:ElevateCoin.transfer(address,uint256) (dataset/contracts/transaction_order/35514.sol#221-224)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
ElevateCoin.transferOwnership(address) (dataset/contracts/transaction_order/35514.sol#195-200) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/35514.sol#199) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
ElevateCoin.setTransferStatus(uint256) (dataset/contracts/transaction_order/35514.sol#125-128) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/35514.sol#127) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
ElevateCoin.transferOwnership(address).newOwner (dataset/contracts/transaction_order/35514.sol#195) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/35514.sol#199)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
ElevateCoin.freezeAccount(address,bool) (dataset/contracts/transaction_order/35514.sol#172-176) is never used and should be removed
ElevateCoin.totalSupply() (dataset/contracts/transaction_order/35514.sol#189-192) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.17 (dataset/contracts/transaction_order/35514.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/35514.sol#2) is not in CapWords
Parameter ElevateCoin.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/35514.sol#81) is not in mixedCase
Parameter ElevateCoin.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/35514.sol#81) is not in mixedCase
Function ElevateCoin.withdraw_all() (dataset/contracts/transaction_order/35514.sol#148-159) is not in mixedCase
Parameter ElevateCoin.balanceOf(address)._owner (dataset/contracts/transaction_order/35514.sol#184) is not in mixedCase
Parameter ElevateCoin.transfer(address,uint256)._to (dataset/contracts/transaction_order/35514.sol#221) is not in mixedCase
Parameter ElevateCoin.transfer(address,uint256)._value (dataset/contracts/transaction_order/35514.sol#221) is not in mixedCase
Parameter ElevateCoin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35514.sol#226) is not in mixedCase
Parameter ElevateCoin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35514.sol#226) is not in mixedCase
Parameter ElevateCoin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35514.sol#226) is not in mixedCase
Parameter ElevateCoin.approve(address,uint256)._spender (dataset/contracts/transaction_order/35514.sol#234) is not in mixedCase
Parameter ElevateCoin.approve(address,uint256)._value (dataset/contracts/transaction_order/35514.sol#234) is not in mixedCase
Parameter ElevateCoin.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/35514.sol#240) is not in mixedCase
Parameter ElevateCoin.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/35514.sol#240) is not in mixedCase
Parameter ElevateCoin.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/35514.sol#240) is not in mixedCase
Parameter ElevateCoin.burn(uint256)._value (dataset/contracts/transaction_order/35514.sol#249) is not in mixedCase
Parameter ElevateCoin.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/35514.sol#258) is not in mixedCase
Parameter ElevateCoin.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/35514.sol#258) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ElevateCoin.ElevateCoin() (dataset/contracts/transaction_order/35514.sol#33-48) uses literals with too many digits:
	- totalSupply = 10000000000000000000000000000 (dataset/contracts/transaction_order/35514.sol#35)
ElevateCoin.withdraw_all() (dataset/contracts/transaction_order/35514.sol#148-159) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/35514.sol#152)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/35514.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- ElevateCoin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/35514.sol#240-247)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/35514.sol analyzed (2 contracts with 100 detectors), 31 result(s) found
