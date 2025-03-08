'solc --version' running
'solc ./dataset/contracts/transaction_order/33342.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/33342.sol:
./dataset/contracts/transaction_order/33342.sol:114:26: Warning: Unused local variable
  function tokenFallback(address from_, uint256 value_, bytes data_) external {
                         ^-----------^
./dataset/contracts/transaction_order/33342.sol:114:41: Warning: Unused local variable
  function tokenFallback(address from_, uint256 value_, bytes data_) external {
                                        ^------------^
./dataset/contracts/transaction_order/33342.sol:114:57: Warning: Unused local variable
  function tokenFallback(address from_, uint256 value_, bytes data_) external {
                                                        ^---------^

INFO:Detectors:
HasNoTokens.reclaimToken(address) (dataset/contracts/transaction_order/33342.sol#122-126) ignores return value by tokenInst.transfer(owner,balance) (dataset/contracts/transaction_order/33342.sol#125)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/33342.sol#55-59) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/33342.sol#57) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Version constraint ^0.4.13 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.13 (dataset/contracts/transaction_order/33342.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/33342.sol#74) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/33342.sol#146) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/33342.sol#146) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/33342.sol#158) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/33342.sol#182) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/33342.sol#182) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/33342.sol#182) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/33342.sol#200) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/33342.sol#200) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/33342.sol#219) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/33342.sol#219) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
WIZE.decimals (dataset/contracts/transaction_order/33342.sol#229) should be constant 
WIZE.name (dataset/contracts/transaction_order/33342.sol#227) should be constant 
WIZE.symbol (dataset/contracts/transaction_order/33342.sol#228) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/33342.sol analyzed (10 contracts with 100 detectors), 18 result(s) found
