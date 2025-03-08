'solc --version' running
'solc ./dataset/contracts/transaction_order/12397.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/12397.sol:
./dataset/contracts/transaction_order/12397.sol:79:44: Warning: Initial value for constant variable has to be compile-time constant. This will fail to compile with the next breaking version change.
  address constant public Bitcoin_address =0xB6eD7644C69416d67B522e20bC294A9a9B405B31;// TESTNET CONTRACT: 0x9D2Cc383E677292ed87f63586086CfF62a009010;
                                           ^----------------------------------------^

INFO:Detectors:
BitcoinStore.fallback() (dataset/contracts/transaction_order/12397.sol#120-126) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(this.balance) (dataset/contracts/transaction_order/12397.sol#125)
BitcoinStore.buy() (dataset/contracts/transaction_order/12397.sol#128-134) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(this.balance) (dataset/contracts/transaction_order/12397.sol#133)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
ERC20 (dataset/contracts/transaction_order/12397.sol#69-74) has incorrect ERC20 function interface:ERC20Basic.transfer(address,uint256) (dataset/contracts/transaction_order/12397.sol#65)
ERC20 (dataset/contracts/transaction_order/12397.sol#69-74) has incorrect ERC20 function interface:ERC20.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/12397.sol#71)
ERC20 (dataset/contracts/transaction_order/12397.sol#69-74) has incorrect ERC20 function interface:ERC20.approve(address,uint256) (dataset/contracts/transaction_order/12397.sol#72)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
SafeMath.assert(bool) (dataset/contracts/transaction_order/12397.sol#21-23) (function) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/12397.sol#54-58) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/12397.sol#56) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
BitcoinStore.update_eth_ratio(uint256) (dataset/contracts/transaction_order/12397.sol#83-87) should emit an event for: 
	- eth_ratio = new_eth_ratio (dataset/contracts/transaction_order/12397.sol#86) 
BitcoinStore.update_bitcoin_ratio(uint256) (dataset/contracts/transaction_order/12397.sol#89-93) should emit an event for: 
	- bitcoin_ratio = new_bitcoin_ratio (dataset/contracts/transaction_order/12397.sol#92) 
BitcoinStore.update_ratio(uint256,uint256) (dataset/contracts/transaction_order/12397.sol#95-100) should emit an event for: 
	- bitcoin_ratio = new_bitcoin_ratio (dataset/contracts/transaction_order/12397.sol#98) 
	- eth_ratio = new_eth_ratio (dataset/contracts/transaction_order/12397.sol#99) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
BitcoinStore.multisend(address,address[],uint256[]) (dataset/contracts/transaction_order/12397.sol#108-117) has external calls inside a loop: ERC20(_tokenAddr).transfer(dests[i],values[i]) (dataset/contracts/transaction_order/12397.sol#113)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
SafeMath.safeAdd(uint256,uint256) (dataset/contracts/transaction_order/12397.sol#15-19) is never used and should be removed
SafeMath.safeSub(uint256,uint256) (dataset/contracts/transaction_order/12397.sol#10-13) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/12397.sol#22):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/12397.sol#44):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/12397.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function BitcoinStore.update_eth_ratio(uint256) (dataset/contracts/transaction_order/12397.sol#83-87) is not in mixedCase
Parameter BitcoinStore.update_eth_ratio(uint256).new_eth_ratio (dataset/contracts/transaction_order/12397.sol#83) is not in mixedCase
Function BitcoinStore.update_bitcoin_ratio(uint256) (dataset/contracts/transaction_order/12397.sol#89-93) is not in mixedCase
Parameter BitcoinStore.update_bitcoin_ratio(uint256).new_bitcoin_ratio (dataset/contracts/transaction_order/12397.sol#89) is not in mixedCase
Function BitcoinStore.update_ratio(uint256,uint256) (dataset/contracts/transaction_order/12397.sol#95-100) is not in mixedCase
Parameter BitcoinStore.update_ratio(uint256,uint256).new_bitcoin_ratio (dataset/contracts/transaction_order/12397.sol#95) is not in mixedCase
Parameter BitcoinStore.update_ratio(uint256,uint256).new_eth_ratio (dataset/contracts/transaction_order/12397.sol#95) is not in mixedCase
Parameter BitcoinStore.send(address,address,uint256)._tokenAddr (dataset/contracts/transaction_order/12397.sol#102) is not in mixedCase
Parameter BitcoinStore.multisend(address,address[],uint256[])._tokenAddr (dataset/contracts/transaction_order/12397.sol#108) is not in mixedCase
Variable BitcoinStore.bitcoin_ratio (dataset/contracts/transaction_order/12397.sol#80) is not in mixedCase
Variable BitcoinStore.eth_ratio (dataset/contracts/transaction_order/12397.sol#81) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
multisend(address,address[],uint256[]) should be declared external:
	- BitcoinStore.multisend(address,address[],uint256[]) (dataset/contracts/transaction_order/12397.sol#108-117)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/12397.sol analyzed (5 contracts with 100 detectors), 29 result(s) found
