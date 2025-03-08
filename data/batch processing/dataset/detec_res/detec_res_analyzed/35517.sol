'solc --version' running
'solc ./dataset/contracts/transaction_order/35517.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/35517.sol:
./dataset/contracts/transaction_order/35517.sol:47:20: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'.
      bkaddress  = 0xE254FC78C94D7A358F78323E56D9BBBC4C2F9993;                   
                   ^----------------------------------------^

INFO:Detectors:
JPMD100B.fallback() (dataset/contracts/transaction_order/35517.sol#58-80) performs a multiplication on the result of a division:
	- finalTokens = (msg.value * ethRate) / icoTokenPrice (dataset/contracts/transaction_order/35517.sol#62)
	- finalTokens = finalTokens * (10 ** 2) (dataset/contracts/transaction_order/35517.sol#63)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
JPMD100B (dataset/contracts/transaction_order/35517.sol#3-267) has incorrect ERC20 function interface:JPMD100B.transfer(address,uint256) (dataset/contracts/transaction_order/35517.sol#220-223)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
JPMD100B.transferOwnership(address) (dataset/contracts/transaction_order/35517.sol#193-198) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/35517.sol#197) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
JPMD100B.setTransferStatus(uint256) (dataset/contracts/transaction_order/35517.sol#126-129) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/35517.sol#128) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
JPMD100B.transferOwnership(address).newOwner (dataset/contracts/transaction_order/35517.sol#193) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/35517.sol#197)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
JPMD100B.freezeAccount(address,bool) (dataset/contracts/transaction_order/35517.sol#170-174) is never used and should be removed
JPMD100B.totalSupply() (dataset/contracts/transaction_order/35517.sol#187-190) is never used and should be removed
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
	- ^0.4.17 (dataset/contracts/transaction_order/35517.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/35517.sol#2) is not in CapWords
Parameter JPMD100B.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/35517.sol#82) is not in mixedCase
Parameter JPMD100B.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/35517.sol#82) is not in mixedCase
Function JPMD100B.withdraw_all() (dataset/contracts/transaction_order/35517.sol#149-160) is not in mixedCase
Parameter JPMD100B.balanceOf(address)._owner (dataset/contracts/transaction_order/35517.sol#182) is not in mixedCase
Parameter JPMD100B.transfer(address,uint256)._to (dataset/contracts/transaction_order/35517.sol#220) is not in mixedCase
Parameter JPMD100B.transfer(address,uint256)._value (dataset/contracts/transaction_order/35517.sol#220) is not in mixedCase
Parameter JPMD100B.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35517.sol#225) is not in mixedCase
Parameter JPMD100B.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35517.sol#225) is not in mixedCase
Parameter JPMD100B.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35517.sol#225) is not in mixedCase
Parameter JPMD100B.approve(address,uint256)._spender (dataset/contracts/transaction_order/35517.sol#233) is not in mixedCase
Parameter JPMD100B.approve(address,uint256)._value (dataset/contracts/transaction_order/35517.sol#233) is not in mixedCase
Parameter JPMD100B.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/35517.sol#239) is not in mixedCase
Parameter JPMD100B.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/35517.sol#239) is not in mixedCase
Parameter JPMD100B.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/35517.sol#239) is not in mixedCase
Parameter JPMD100B.burn(uint256)._value (dataset/contracts/transaction_order/35517.sol#248) is not in mixedCase
Parameter JPMD100B.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/35517.sol#257) is not in mixedCase
Parameter JPMD100B.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/35517.sol#257) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
JPMD100B.JPMD100B() (dataset/contracts/transaction_order/35517.sol#33-49) uses literals with too many digits:
	- totalSupply = 10000000000000000000000000000 (dataset/contracts/transaction_order/35517.sol#35)
JPMD100B.withdraw_all() (dataset/contracts/transaction_order/35517.sol#149-160) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/35517.sol#153)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/35517.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- JPMD100B.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/35517.sol#239-246)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/35517.sol analyzed (2 contracts with 100 detectors), 31 result(s) found
