'solc --version' running
'solc ./dataset/contracts/transaction_order/240.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/240.sol:
./dataset/contracts/transaction_order/240.sol:84:5: Warning: Invoking events without "emit" prefix is deprecated.
    OwnershipTransferred(owner, newOwner);
    ^-----------------------------------^
./dataset/contracts/transaction_order/240.sol:146:5: Warning: Invoking events without "emit" prefix is deprecated.
    Transfer(msg.sender, _to, _value);
    ^-------------------------------^
./dataset/contracts/transaction_order/240.sol:188:5: Warning: Invoking events without "emit" prefix is deprecated.
    Transfer(_from, _to, _value);
    ^--------------------------^
./dataset/contracts/transaction_order/240.sol:204:5: Warning: Invoking events without "emit" prefix is deprecated.
    Approval(msg.sender, _spender, _value);
    ^------------------------------------^
./dataset/contracts/transaction_order/240.sol:230:5: Warning: Invoking events without "emit" prefix is deprecated.
    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    ^-----------------------------------------------------------^
./dataset/contracts/transaction_order/240.sol:251:5: Warning: Invoking events without "emit" prefix is deprecated.
    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    ^-----------------------------------------------------------^
./dataset/contracts/transaction_order/240.sol:279:7: Warning: Invoking events without "emit" prefix is deprecated.
      Transfer(0x0, msg.sender, INITIAL_SUPPLY);
      ^---------------------------------------^
./dataset/contracts/transaction_order/240.sol:289:9: Warning: Invoking events without "emit" prefix is deprecated.
        Transfer(_from, _to, _value);
        ^--------------------------^
./dataset/contracts/transaction_order/240.sol:324:13: Warning: Invoking events without "emit" prefix is deprecated.
            Transfer(msg.sender, _recipients[j], _values[j]);
            ^----------------------------------------------^

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
	- ^0.4.21 (dataset/contracts/transaction_order/240.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/240.sol#139) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/240.sol#139) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/240.sol#155) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/240.sol#180) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/240.sol#180) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/240.sol#180) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/240.sol#202) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/240.sol#202) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/240.sol#214) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/240.sol#214) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/240.sol#228) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/240.sol#228) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/240.sol#244) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/240.sol#244) is not in mixedCase
Parameter ETC.safeWithdrawal(uint256)._value (dataset/contracts/transaction_order/240.sol#305) is not in mixedCase
Parameter ETC.batchTransfer(address[],uint256[])._recipients (dataset/contracts/transaction_order/240.sol#313) is not in mixedCase
Parameter ETC.batchTransfer(address[],uint256[])._values (dataset/contracts/transaction_order/240.sol#313) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ETC.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/240.sol#265-331) uses literals with too many digits:
	- INITIAL_SUPPLY = 10000000 * (10 ** uint256(decimals)) (dataset/contracts/transaction_order/240.sol#270)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
batchTransfer(address[],uint256[]) should be declared external:
	- ETC.batchTransfer(address[],uint256[]) (dataset/contracts/transaction_order/240.sol#313-329)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/240.sol analyzed (7 contracts with 100 detectors), 21 result(s) found
