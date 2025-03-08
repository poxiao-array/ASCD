'solc --version' running
'solc ./dataset/contracts/transaction_order/31461.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/31461.sol:
./dataset/contracts/transaction_order/31461.sol:34:25: Warning: This declaration shadows an existing declaration.
    function setManager(address manager) public {
                        ^-------------^
./dataset/contracts/transaction_order/31461.sol:27:5: The shadowed declaration is here:
    address public manager;
    ^--------------------^

./dataset/contracts/transaction_order/31461.sol:53:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        msg.sender.send(balances[client]);
        ^-------------------------------^
./dataset/contracts/transaction_order/31461.sol:59:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            msg.sender.send(this.balance + msg.value);
            ^---------------------------------------^
./dataset/contracts/transaction_order/31461.sol:64:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        manager.send(this.balance);
        ^------------------------^
./dataset/contracts/transaction_order/31461.sol:34:5: Warning: Function state mutability can be restricted to view
    function setManager(address manager) public {
    ^
Spanning multiple lines.

INFO:Detectors:
CreditDepositBank.owner (dataset/contracts/transaction_order/31461.sol#19) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/31461.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
CreditDepositBank.manager (dataset/contracts/transaction_order/31461.sol#27) is never initialized. It is used in:
	- CreditDepositBank.close() (dataset/contracts/transaction_order/31461.sol#63-68)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
CreditDepositBank.close() (dataset/contracts/transaction_order/31461.sol#63-68) uses a dangerous strict equality:
	- this.balance == 0 (dataset/contracts/transaction_order/31461.sol#65)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
CreditDepositBank.withdraw(address) (dataset/contracts/transaction_order/31461.sol#51-54) ignores return value by msg.sender.send(balances[client]) (dataset/contracts/transaction_order/31461.sol#53)
CreditDepositBank.credit() (dataset/contracts/transaction_order/31461.sol#56-61) ignores return value by msg.sender.send(this.balance + msg.value) (dataset/contracts/transaction_order/31461.sol#59)
CreditDepositBank.close() (dataset/contracts/transaction_order/31461.sol#63-68) ignores return value by manager.send(this.balance) (dataset/contracts/transaction_order/31461.sol#64)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
CreditDepositBank.setManager(address).manager (dataset/contracts/transaction_order/31461.sol#34) shadows:
	- CreditDepositBank.manager (dataset/contracts/transaction_order/31461.sol#27) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
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
	- ^0.4.17 (dataset/contracts/transaction_order/31461.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
CreditDepositBank.manager (dataset/contracts/transaction_order/31461.sol#27) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/31461.sol analyzed (2 contracts with 100 detectors), 10 result(s) found
