'solc --version' running
'solc ./dataset/contracts/transaction_order/13632.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Operable (dataset/contracts/transaction_order/13632.sol#59-123) contract sets array length with a user-controlled value:
	- operators.push(candidate) (dataset/contracts/transaction_order/13632.sol#104)
EtherShuffleLite (dataset/contracts/transaction_order/13632.sol#125-386) contract sets array length with a user-controlled value:
	- game.players.push(player) (dataset/contracts/transaction_order/13632.sol#214)
EtherShuffleLite (dataset/contracts/transaction_order/13632.sol#125-386) contract sets array length with a user-controlled value:
	- gamesByPlayer[player].push(game.id) (dataset/contracts/transaction_order/13632.sol#215)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
EtherShuffleLite.constructor(address[]).operators (dataset/contracts/transaction_order/13632.sol#160) shadows:
	- Operable.operators (dataset/contracts/transaction_order/13632.sol#60) (state variable)
EtherShuffleLite.joinGameFromBalance(uint256).balanceOf (dataset/contracts/transaction_order/13632.sol#196) shadows:
	- EtherShuffleLite.balanceOf(address) (dataset/contracts/transaction_order/13632.sol#228-230) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
TokenAware.withdrawToken(address,uint256).addressOfToken (dataset/contracts/transaction_order/13632.sol#25) lacks a zero-check on :
		- addressOfToken.call(hashOfTransfer,owner,amount) (dataset/contracts/transaction_order/13632.sol#28)
EtherShuffleLite.withdrawTo(address).player (dataset/contracts/transaction_order/13632.sol#340) lacks a zero-check on :
		- player.transfer(playerBalance) (dataset/contracts/transaction_order/13632.sol#346)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
EtherShuffleLite.withdrawTo(address) (dataset/contracts/transaction_order/13632.sol#340-348) has external calls inside a loop: player.transfer(playerBalance) (dataset/contracts/transaction_order/13632.sol#346)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
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
	- ^0.4.23 (dataset/contracts/transaction_order/13632.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in TokenAware.withdrawToken(address,uint256) (dataset/contracts/transaction_order/13632.sol#25-29):
	- addressOfToken.call(hashOfTransfer,owner,amount) (dataset/contracts/transaction_order/13632.sol#28)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
EtherShuffleLite.slitherConstructorVariables() (dataset/contracts/transaction_order/13632.sol#125-386) uses literals with too many digits:
	- distributions = (300000000000000000,240000000000000000,220000000000000000,0,0) (dataset/contracts/transaction_order/13632.sol#130-134)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Loop condition x < operators.length (dataset/contracts/transaction_order/13632.sol#81) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition x < operators.length (dataset/contracts/transaction_order/13632.sol#92) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
EtherShuffleLite.lowestGameWithoutQuorum (dataset/contracts/transaction_order/13632.sol#128) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
reveal(uint256,uint8[5],bytes32) should be declared external:
	- EtherShuffleLite.reveal(uint256,uint8[5],bytes32) (dataset/contracts/transaction_order/13632.sol#278-290)
setDistribution(uint256[5]) should be declared external:
	- EtherShuffleLite.setDistribution(uint256[5]) (dataset/contracts/transaction_order/13632.sol#320-323)
withdrawToMany(address[]) should be declared external:
	- EtherShuffleLite.withdrawToMany(address[]) (dataset/contracts/transaction_order/13632.sol#328-334)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/13632.sol analyzed (6 contracts with 100 detectors), 18 result(s) found
