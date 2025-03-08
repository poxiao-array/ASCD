'solc --version' running
'solc ./dataset/contracts/transaction_order/16270.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/16270.sol:
./dataset/contracts/transaction_order/16270.sol:77:13: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
            throw;
            ^---^
./dataset/contracts/transaction_order/16270.sol:38:9: Warning: This declaration shadows an existing declaration.
        uint tokens_buy = msg.value*10**18/token_price;
        ^-------------^
./dataset/contracts/transaction_order/16270.sol:33:5: The shadowed declaration is here:
    function tokens_buy() payable returns (bool) {         
    ^ (Relevant source part starts here and spans across multiple lines).

./dataset/contracts/transaction_order/16270.sol:19:25: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x788C45Dd60aE4dBE5055b5Ac02384D5dc84677b0'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
	address public owner = 0x788c45dd60ae4dbe5055b5ac02384d5dc84677b0;	
	                       ^----------------------------------------^
./dataset/contracts/transaction_order/16270.sol:42:27: Warning: "sha3" has been deprecated in favour of "keccak256"
        if(!c.call(bytes4(sha3("transferFrom(address,address,uint256)")),owner, msg.sender,tokens_buy)){
                          ^-------------------------------------------^
./dataset/contracts/transaction_order/16270.sol:48:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        owner2.send(sum2);
        ^---------------^
./dataset/contracts/transaction_order/16270.sol:56:21: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member, for example use "address(contract).balance" instead.
          balance = this.balance;
                    ^----------^
./dataset/contracts/transaction_order/16270.sol:58:11: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
          owner.send(balance);
          ^-----------------^
./dataset/contracts/transaction_order/16270.sol:26:2: Warning: No visibility specified. Defaulting to "public". 
	function() payable {        
 ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/16270.sol:33:5: Warning: No visibility specified. Defaulting to "public". 
    function tokens_buy() payable returns (bool) {         
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/16270.sol:54:7: Warning: No visibility specified. Defaulting to "public". 
      function withdraw(uint256 _amount) onlyOwner returns (bool result) {
      ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/16270.sol:63:7: Warning: No visibility specified. Defaulting to "public". 
      function change_token_price(uint256 _token_price) onlyOwner returns (bool result) {
      ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/16270.sol:69:7: Warning: No visibility specified. Defaulting to "public". 
      function change_active(uint256 _active) onlyOwner returns (bool result) {
      ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
Delta.tokens_buy() (dataset/contracts/transaction_order/16270.sol#33-51) ignores return value by owner2.send(sum2) (dataset/contracts/transaction_order/16270.sol#48)
Delta.withdraw(uint256) (dataset/contracts/transaction_order/16270.sol#54-60) ignores return value by owner.send(balance) (dataset/contracts/transaction_order/16270.sol#58)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Delta.tokens_buy().tokens_buy (dataset/contracts/transaction_order/16270.sol#38) shadows:
	- Delta.tokens_buy() (dataset/contracts/transaction_order/16270.sol#33-51) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Delta.change_token_price(uint256) (dataset/contracts/transaction_order/16270.sol#63-66) should emit an event for: 
	- token_price = _token_price (dataset/contracts/transaction_order/16270.sol#64) 
Delta.change_active(uint256) (dataset/contracts/transaction_order/16270.sol#69-72) should emit an event for: 
	- active = _active (dataset/contracts/transaction_order/16270.sol#70) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Deprecated standard detected ! c.call(bytes4(sha3()(transferFrom(address,address,uint256))),owner,msg.sender,tokens_buy) (dataset/contracts/transaction_order/16270.sol#42):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/16270.sol#77):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.23 (dataset/contracts/transaction_order/16270.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Delta.tokens_buy() (dataset/contracts/transaction_order/16270.sol#33-51):
	- ! c.call(bytes4(sha3()(transferFrom(address,address,uint256))),owner,msg.sender,tokens_buy) (dataset/contracts/transaction_order/16270.sol#42)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function Delta.tokens_buy() (dataset/contracts/transaction_order/16270.sol#33-51) is not in mixedCase
Parameter Delta.withdraw(uint256)._amount (dataset/contracts/transaction_order/16270.sol#54) is not in mixedCase
Function Delta.change_token_price(uint256) (dataset/contracts/transaction_order/16270.sol#63-66) is not in mixedCase
Parameter Delta.change_token_price(uint256)._token_price (dataset/contracts/transaction_order/16270.sol#63) is not in mixedCase
Function Delta.change_active(uint256) (dataset/contracts/transaction_order/16270.sol#69-72) is not in mixedCase
Parameter Delta.change_active(uint256)._active (dataset/contracts/transaction_order/16270.sol#69) is not in mixedCase
Variable Delta.token_price (dataset/contracts/transaction_order/16270.sol#23) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Delta.c (dataset/contracts/transaction_order/16270.sol#18) should be constant 
Delta.owner (dataset/contracts/transaction_order/16270.sol#19) should be constant 
Delta.owner2 (dataset/contracts/transaction_order/16270.sol#20) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/16270.sol analyzed (1 contracts with 100 detectors), 20 result(s) found
