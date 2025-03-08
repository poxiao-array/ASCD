'solc --version' running
'solc ./dataset/contracts/transaction_order/35396.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/35396.sol:
./dataset/contracts/transaction_order/35396.sol:128:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (isFinalized) throw;
                       ^---^
./dataset/contracts/transaction_order/35396.sol:129:45: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (block.number < fundingStartBlock) throw;
                                            ^---^
./dataset/contracts/transaction_order/35396.sol:130:43: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (block.number > fundingEndBlock) throw;
                                          ^---^
./dataset/contracts/transaction_order/35396.sol:131:27: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.value == 0) throw;
                          ^---^
./dataset/contracts/transaction_order/35396.sol:137:45: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (tokenCreationCap < checkedSupply) throw;
                                            ^---^
./dataset/contracts/transaction_order/35396.sol:149:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (isFinalized) throw;
                       ^---^
./dataset/contracts/transaction_order/35396.sol:150:41: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != ethFundDeposit) throw;
                                        ^---^
./dataset/contracts/transaction_order/35396.sol:152:78: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(block.number <= fundingEndBlock && totalSupply != tokenCreationCap) throw;
                                                                             ^---^
./dataset/contracts/transaction_order/35396.sol:155:46: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!ethFundDeposit.send(this.balance)) throw;
                                             ^---^

INFO:Detectors:
APPToken.APPToken(address,address,uint256,uint256)._ethFundDeposit (dataset/contracts/transaction_order/35396.sol#111) lacks a zero-check on :
		- ethFundDeposit = _ethFundDeposit (dataset/contracts/transaction_order/35396.sol#117)
APPToken.APPToken(address,address,uint256,uint256)._appFundDeposit (dataset/contracts/transaction_order/35396.sol#112) lacks a zero-check on :
		- appFundDeposit = _appFundDeposit (dataset/contracts/transaction_order/35396.sol#118)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SafeMath.safeSubtract(uint256,uint256) (dataset/contracts/transaction_order/35396.sol#12-16) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#128):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#129):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#130):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#131):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#137):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#149):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#150):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#152):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/35396.sol#155):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.15 (dataset/contracts/transaction_order/35396.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter StandardToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/35396.sol#41) is not in mixedCase
Parameter StandardToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/35396.sol#41) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35396.sol#52) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35396.sol#52) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35396.sol#52) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/35396.sol#64) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/35396.sol#68) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/35396.sol#68) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/35396.sol#74) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/35396.sol#74) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
APPToken.version (dataset/contracts/transaction_order/35396.sol#87) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/35396.sol analyzed (4 contracts with 100 detectors), 25 result(s) found
