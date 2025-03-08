'solc --version' running
'solc ./dataset/contracts/transaction_order/990.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/990.sol:
./dataset/contracts/transaction_order/990.sol:157:5: Warning: Modifiers of functions without implementation are ignored.
    function verifyAccount(address holder, string name, string country) public restricted;
    ^------------------------------------------------------------------------------------^

INFO:Detectors:
ERC20TokenInterface.name (dataset/contracts/transaction_order/990.sol#37) shadows:
	- BasicTokenInterface.name (dataset/contracts/transaction_order/990.sol#5)
ERC20TokenInterface.decimals (dataset/contracts/transaction_order/990.sol#39) shadows:
	- BasicTokenInterface.decimals (dataset/contracts/transaction_order/990.sol#6)
ERC20TokenInterface.symbol (dataset/contracts/transaction_order/990.sol#38) shadows:
	- BasicTokenInterface.symbol (dataset/contracts/transaction_order/990.sol#7)
ERC20TokenInterface.totalSupply (dataset/contracts/transaction_order/990.sol#40) shadows:
	- BasicTokenInterface.totalSupply (dataset/contracts/transaction_order/990.sol#8)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
ManagedInterface.sweepTokens(address,address) (dataset/contracts/transaction_order/990.sol#59-62) ignores return value by ERC20TokenInterface(token).transfer(destination,balance) (dataset/contracts/transaction_order/990.sol#61)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
AVIVAccountInterface.addAlias(address,string).alias (dataset/contracts/transaction_order/990.sol#154) (local variable) shadows built-in symbol"
AVIVAccount.addAlias(address,string).alias (dataset/contracts/transaction_order/990.sol#205) (local variable) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
ManagedInterface.sweepFunds(address,uint256).destination (dataset/contracts/transaction_order/990.sol#65) lacks a zero-check on :
		- address(destination).transfer(amount) (dataset/contracts/transaction_order/990.sol#67)
ManagedContract.constructor(address).creator (dataset/contracts/transaction_order/990.sol#76) lacks a zero-check on :
		- manager = creator (dataset/contracts/transaction_order/990.sol#77)
ManagedContract.setManager(address).newManager (dataset/contracts/transaction_order/990.sol#80) lacks a zero-check on :
		- manager = newManager (dataset/contracts/transaction_order/990.sol#82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.24 (dataset/contracts/transaction_order/990.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable AVIVAccountInterface.verified_users (dataset/contracts/transaction_order/990.sol#114) is not in mixedCase
Variable AVIVAccountInterface.alias_price (dataset/contracts/transaction_order/990.sol#115) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
AVIVAccount.slitherConstructorVariables() (dataset/contracts/transaction_order/990.sol#185-263) uses literals with too many digits:
	- alias_price = 100000000000000000 (dataset/contracts/transaction_order/990.sol#115)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20TokenInterface (dataset/contracts/transaction_order/990.sol#36-48) does not implement functions:
	- ERC20TokenInterface.allowance(address,address) (dataset/contracts/transaction_order/990.sol#42)
	- ERC20TokenInterface.approve(address,uint256) (dataset/contracts/transaction_order/990.sol#43)
	- ERC20TokenInterface.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/990.sol#46)
	- BasicTokenInterface.balanceOf(address) (dataset/contracts/transaction_order/990.sol#15)
	- BasicTokenInterface.transfer(address,uint256) (dataset/contracts/transaction_order/990.sol#16)
	- ERC20TokenInterface.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/990.sol#44)
	- ERC20TokenInterface.transferTokens(address,uint256) (dataset/contracts/transaction_order/990.sol#45)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unimplemented-functions
INFO:Detectors:
BasicTokenInterface.balances (dataset/contracts/transaction_order/990.sol#9) is never used in ERC20TokenInterface (dataset/contracts/transaction_order/990.sol#36-48)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
BasicTokenInterface.decimals (dataset/contracts/transaction_order/990.sol#6) should be constant 
BasicTokenInterface.name (dataset/contracts/transaction_order/990.sol#5) should be constant 
BasicTokenInterface.symbol (dataset/contracts/transaction_order/990.sol#7) should be constant 
BasicTokenInterface.totalSupply (dataset/contracts/transaction_order/990.sol#8) should be constant 
ERC20TokenInterface.decimals (dataset/contracts/transaction_order/990.sol#39) should be constant 
ERC20TokenInterface.name (dataset/contracts/transaction_order/990.sol#37) should be constant 
ERC20TokenInterface.symbol (dataset/contracts/transaction_order/990.sol#38) should be constant 
ERC20TokenInterface.totalSupply (dataset/contracts/transaction_order/990.sol#40) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- ApproveAndCallFallBack.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/990.sol#27-29)
approveAndCall(address,uint256,bytes) should be declared external:
	- ERC20TokenInterface.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/990.sol#46)
addAlias(address,string) should be declared external:
	- AVIVAccount.addAlias(address,string) (dataset/contracts/transaction_order/990.sol#205-213)
	- AVIVAccountInterface.addAlias(address,string) (dataset/contracts/transaction_order/990.sol#154)
verifyAccount(address,string,string) should be declared external:
	- AVIVAccount.verifyAccount(address,string,string) (dataset/contracts/transaction_order/990.sol#188-197)
	- AVIVAccountInterface.verifyAccount(address,string,string) (dataset/contracts/transaction_order/990.sol#157)
changeKeys(string,bytes1[]) should be declared external:
	- AVIVAccount.changeKeys(string,bytes1[]) (dataset/contracts/transaction_order/990.sol#216-219)
	- AVIVAccountInterface.changeKeys(string,bytes1[]) (dataset/contracts/transaction_order/990.sol#160)
getByAlias(string) should be declared external:
	- AVIVAccount.getByAlias(string) (dataset/contracts/transaction_order/990.sol#249-251)
	- AVIVAccountInterface.getByAlias(string) (dataset/contracts/transaction_order/990.sol#175)
getKey(address,string) should be declared external:
	- AVIVAccount.getKey(address,string) (dataset/contracts/transaction_order/990.sol#239-241)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/990.sol analyzed (8 contracts with 100 detectors), 32 result(s) found
