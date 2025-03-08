'solc --version' running
'solc ./dataset/contracts/transaction_order/22930.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/22930.sol:
./dataset/contracts/transaction_order/22930.sol:138:17: Warning: Use of the "var" keyword is deprecated.
                var amountWith = this.balance - 10000000000000000;
                ^------------^
./dataset/contracts/transaction_order/22930.sol:151:17: Warning: Use of the "var" keyword is deprecated.
                var totalTokenToMint = tokensToMint * (10 ** 18);
                ^------------------^
./dataset/contracts/transaction_order/22930.sol:70:21: Warning: Invoking events without "emit" prefix is deprecated.
                    TransferSell(owner, rec_address, finalTokens,'Offline');
                    ^-----------------------------------------------------^
./dataset/contracts/transaction_order/22930.sol:91:16: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
        return this.balance;
               ^----------^
./dataset/contracts/transaction_order/22930.sol:138:34: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
                var amountWith = this.balance - 10000000000000000;
                                 ^----------^
./dataset/contracts/transaction_order/22930.sol:154:17: Warning: Invoking events without "emit" prefix is deprecated.
                Transfer(0, owner, totalTokenToMint);
                ^----------------------------------^
./dataset/contracts/transaction_order/22930.sol:169:13: Warning: Invoking events without "emit" prefix is deprecated.
            FrozenFunds(target, freeze);
            ^-------------------------^
./dataset/contracts/transaction_order/22930.sol:207:15: Warning: Invoking events without "emit" prefix is deprecated.
              Transfer(_from, _to, _value);                                     // raise event
              ^--------------------------^
./dataset/contracts/transaction_order/22930.sol:248:11: Warning: Invoking events without "emit" prefix is deprecated.
          Burn(msg.sender, _value);
          ^----------------------^
./dataset/contracts/transaction_order/22930.sol:259:11: Warning: Invoking events without "emit" prefix is deprecated.
          Burn(_from, _value);
          ^-----------------^

INFO:Detectors:
CERB_Coin.amountCollected (dataset/contracts/transaction_order/22930.sol#13) is never initialized. It is used in:
	- CERB_Coin.getCollectedAmount() (dataset/contracts/transaction_order/22930.sol#173-176)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
CERB_Coin (dataset/contracts/transaction_order/22930.sol#3-262) has incorrect ERC20 function interface:CERB_Coin.transfer(address,uint256) (dataset/contracts/transaction_order/22930.sol#215-218)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
CERB_Coin.transferOwnership(address) (dataset/contracts/transaction_order/22930.sol#189-194) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/22930.sol#193) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CERB_Coin.setTransferStatus(uint256) (dataset/contracts/transaction_order/22930.sol#111-114) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/22930.sol#113) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
CERB_Coin.transferOwnership(address).newOwner (dataset/contracts/transaction_order/22930.sol#189) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/22930.sol#193)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
CERB_Coin.totalSupply() (dataset/contracts/transaction_order/22930.sol#183-186) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.21 (dataset/contracts/transaction_order/22930.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/22930.sol#2) is not in CapWords
Contract CERB_Coin (dataset/contracts/transaction_order/22930.sol#3-262) is not in CapWords
Parameter CERB_Coin.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/22930.sol#61) is not in mixedCase
Parameter CERB_Coin.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/22930.sol#61) is not in mixedCase
Function CERB_Coin.withdraw_all() (dataset/contracts/transaction_order/22930.sol#134-145) is not in mixedCase
Function CERB_Coin.adm_trasfer(address,address,uint256) (dataset/contracts/transaction_order/22930.sol#160-163) is not in mixedCase
Parameter CERB_Coin.adm_trasfer(address,address,uint256)._from (dataset/contracts/transaction_order/22930.sol#160) is not in mixedCase
Parameter CERB_Coin.adm_trasfer(address,address,uint256)._to (dataset/contracts/transaction_order/22930.sol#160) is not in mixedCase
Parameter CERB_Coin.adm_trasfer(address,address,uint256)._value (dataset/contracts/transaction_order/22930.sol#160) is not in mixedCase
Parameter CERB_Coin.balanceOf(address)._owner (dataset/contracts/transaction_order/22930.sol#178) is not in mixedCase
Parameter CERB_Coin.transfer(address,uint256)._to (dataset/contracts/transaction_order/22930.sol#215) is not in mixedCase
Parameter CERB_Coin.transfer(address,uint256)._value (dataset/contracts/transaction_order/22930.sol#215) is not in mixedCase
Parameter CERB_Coin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/22930.sol#220) is not in mixedCase
Parameter CERB_Coin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/22930.sol#220) is not in mixedCase
Parameter CERB_Coin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/22930.sol#220) is not in mixedCase
Parameter CERB_Coin.approve(address,uint256)._spender (dataset/contracts/transaction_order/22930.sol#228) is not in mixedCase
Parameter CERB_Coin.approve(address,uint256)._value (dataset/contracts/transaction_order/22930.sol#228) is not in mixedCase
Parameter CERB_Coin.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/22930.sol#234) is not in mixedCase
Parameter CERB_Coin.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/22930.sol#234) is not in mixedCase
Parameter CERB_Coin.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/22930.sol#234) is not in mixedCase
Parameter CERB_Coin.burn(uint256)._value (dataset/contracts/transaction_order/22930.sol#243) is not in mixedCase
Parameter CERB_Coin.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/22930.sol#252) is not in mixedCase
Parameter CERB_Coin.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/22930.sol#252) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CERB_Coin.CERB_Coin() (dataset/contracts/transaction_order/22930.sol#33-48) uses literals with too many digits:
	- totalSupply = 1000000000000000000000000000 (dataset/contracts/transaction_order/22930.sol#35)
CERB_Coin.withdraw_all() (dataset/contracts/transaction_order/22930.sol#134-145) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/22930.sol#138)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
CERB_Coin.amountCollected (dataset/contracts/transaction_order/22930.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/22930.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- CERB_Coin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/22930.sol#234-241)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/22930.sol analyzed (2 contracts with 100 detectors), 36 result(s) found
