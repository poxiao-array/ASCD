'solc --version' running
'solc ./dataset/contracts/transaction_order/4223.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/4223.sol:
./dataset/contracts/transaction_order/4223.sol:370:9: Warning: Return value of low-level calls not used.
        address(admin).call.value(address(this).balance)();
        ^------------------------------------------------^

INFO:Detectors:
PlayerBook.games_ (dataset/contracts/transaction_order/4223.sol#19) is never initialized. It is used in:
	- PlayerBook.addMeToGame(uint256) (dataset/contracts/transaction_order/4223.sol#282-299)
	- PlayerBook.addMeToAllGames() (dataset/contracts/transaction_order/4223.sol#305-324)
	- PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379)
PlayerBook.gameIDs_ (dataset/contracts/transaction_order/4223.sol#21) is never initialized. It is used in:
PlayerBook.gID_ (dataset/contracts/transaction_order/4223.sol#22) is never initialized. It is used in:
	- PlayerBook.addMeToGame(uint256) (dataset/contracts/transaction_order/4223.sol#282-299)
	- PlayerBook.addMeToAllGames() (dataset/contracts/transaction_order/4223.sol#305-324)
	- PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
NameFilter.nameFilter(string) (dataset/contracts/transaction_order/4223.sol#589-651) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379) ignores return value by address(admin).call.value(address(this).balance)() (dataset/contracts/transaction_order/4223.sol#370)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
PlayerBook.registerNameXaddrFromDapp(address,bytes32,address,bool)._affID (dataset/contracts/transaction_order/4223.sol#489) is a local variable never initialized
PlayerBook.registerNameXnameFromDapp(address,bytes32,bytes32,bool)._affID (dataset/contracts/transaction_order/4223.sol#525) is a local variable never initialized
PlayerBook.registerNameXaddr(string,address,bool)._affID (dataset/contracts/transaction_order/4223.sol#216) is a local variable never initialized
PlayerBook.registerNameXname(string,bytes32,bool)._affID (dataset/contracts/transaction_order/4223.sol#256) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
PlayerBook.addMeToGame(uint256) (dataset/contracts/transaction_order/4223.sol#282-299) has external calls inside a loop: games_[_gameID].receivePlayerNameList(_pID,plyrNameList_[_pID][ii]) (dataset/contracts/transaction_order/4223.sol#298)
PlayerBook.addMeToAllGames() (dataset/contracts/transaction_order/4223.sol#305-324) has external calls inside a loop: games_[i].receivePlayerInfo(_pID,_addr,_name,_laff) (dataset/contracts/transaction_order/4223.sol#318)
PlayerBook.addMeToAllGames() (dataset/contracts/transaction_order/4223.sol#305-324) has external calls inside a loop: games_[i].receivePlayerNameList(_pID,plyrNameList_[_pID][ii]) (dataset/contracts/transaction_order/4223.sol#321)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Reentrancy in PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379):
	External calls:
	- address(admin).call.value(address(this).balance)() (dataset/contracts/transaction_order/4223.sol#370)
	- games_[i].receivePlayerInfo(_pID,_addr,_name,_affID) (dataset/contracts/transaction_order/4223.sol#375)
	External calls sending eth:
	- address(admin).call.value(address(this).balance)() (dataset/contracts/transaction_order/4223.sol#370)
	Event emitted after the call(s):
	- onNewName(_pID,_addr,_name,_isNewPlayer,_affID,plyr_[_affID].addr,plyr_[_affID].name,msg.value,now) (dataset/contracts/transaction_order/4223.sol#378)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
NameFilter.nameFilter(string) (dataset/contracts/transaction_order/4223.sol#589-651) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/4223.sol#647-650)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
PlayerBook.useMyOldName(string) (dataset/contracts/transaction_order/4223.sol#332-345) compares to a boolean constant:
	-require(bool,string)(plyrNames_[_pID][_name] == true,umm... thats not a name you own) (dataset/contracts/transaction_order/4223.sol#341)
PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379) compares to a boolean constant:
	-plyrNames_[_pID][_name] == false (dataset/contracts/transaction_order/4223.sol#361)
PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379) compares to a boolean constant:
	-_all == true (dataset/contracts/transaction_order/4223.sol#373)
PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379) compares to a boolean constant:
	-require(bool,string)(plyrNames_[_pID][_name] == true,sorry that names already taken) (dataset/contracts/transaction_order/4223.sol#356)
NameFilter.nameFilter(string) (dataset/contracts/transaction_order/4223.sol#589-651) compares to a boolean constant:
	-_hasNonNumber == false (dataset/contracts/transaction_order/4223.sol#621)
NameFilter.nameFilter(string) (dataset/contracts/transaction_order/4223.sol#589-651) compares to a boolean constant:
	-require(bool,string)(_hasNonNumber == true,string cannot be only numbers) (dataset/contracts/transaction_order/4223.sol#644)
NameFilter.nameFilter(string) (dataset/contracts/transaction_order/4223.sol#589-651) compares to a boolean constant:
	-_hasNonNumber == false && (_temp[i] < 0x30 || _temp[i] > 0x39) (dataset/contracts/transaction_order/4223.sol#639)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.24 (dataset/contracts/transaction_order/4223.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool) (dataset/contracts/transaction_order/4223.sol#351-379):
	- address(admin).call.value(address(this).balance)() (dataset/contracts/transaction_order/4223.sol#370)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Event PlayerBook.onNewName(uint256,address,bytes32,bool,uint256,address,bytes32,uint256,uint256) (dataset/contracts/transaction_order/4223.sol#106-117) is not in CapWords
Parameter PlayerBook.checkIfNameValid(string)._nameStr (dataset/contracts/transaction_order/4223.sol#122) is not in mixedCase
Parameter PlayerBook.registerNameXID(string,uint256,bool)._nameString (dataset/contracts/transaction_order/4223.sol#159) is not in mixedCase
Parameter PlayerBook.registerNameXID(string,uint256,bool)._affCode (dataset/contracts/transaction_order/4223.sol#159) is not in mixedCase
Parameter PlayerBook.registerNameXID(string,uint256,bool)._all (dataset/contracts/transaction_order/4223.sol#159) is not in mixedCase
Parameter PlayerBook.registerNameXaddr(string,address,bool)._nameString (dataset/contracts/transaction_order/4223.sol#194) is not in mixedCase
Parameter PlayerBook.registerNameXaddr(string,address,bool)._affCode (dataset/contracts/transaction_order/4223.sol#194) is not in mixedCase
Parameter PlayerBook.registerNameXaddr(string,address,bool)._all (dataset/contracts/transaction_order/4223.sol#194) is not in mixedCase
Parameter PlayerBook.registerNameXname(string,bytes32,bool)._nameString (dataset/contracts/transaction_order/4223.sol#234) is not in mixedCase
Parameter PlayerBook.registerNameXname(string,bytes32,bool)._affCode (dataset/contracts/transaction_order/4223.sol#234) is not in mixedCase
Parameter PlayerBook.registerNameXname(string,bytes32,bool)._all (dataset/contracts/transaction_order/4223.sol#234) is not in mixedCase
Parameter PlayerBook.addMeToGame(uint256)._gameID (dataset/contracts/transaction_order/4223.sol#282) is not in mixedCase
Parameter PlayerBook.useMyOldName(string)._nameString (dataset/contracts/transaction_order/4223.sol#332) is not in mixedCase
Parameter PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool)._pID (dataset/contracts/transaction_order/4223.sol#351) is not in mixedCase
Parameter PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool)._addr (dataset/contracts/transaction_order/4223.sol#351) is not in mixedCase
Parameter PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool)._affID (dataset/contracts/transaction_order/4223.sol#351) is not in mixedCase
Parameter PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool)._name (dataset/contracts/transaction_order/4223.sol#351) is not in mixedCase
Parameter PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool)._isNewPlayer (dataset/contracts/transaction_order/4223.sol#351) is not in mixedCase
Parameter PlayerBook.registerNameCore(uint256,address,uint256,bytes32,bool,bool)._all (dataset/contracts/transaction_order/4223.sol#351) is not in mixedCase
Parameter PlayerBook.determinePID(address)._addr (dataset/contracts/transaction_order/4223.sol#384) is not in mixedCase
Parameter PlayerBook.getPlayerID(address)._addr (dataset/contracts/transaction_order/4223.sol#404) is not in mixedCase
Parameter PlayerBook.getPlayerName(uint256)._pID (dataset/contracts/transaction_order/4223.sol#412) is not in mixedCase
Parameter PlayerBook.getPlayerLAff(uint256)._pID (dataset/contracts/transaction_order/4223.sol#419) is not in mixedCase
Parameter PlayerBook.getPlayerAddr(uint256)._pID (dataset/contracts/transaction_order/4223.sol#426) is not in mixedCase
Parameter PlayerBook.registerNameXIDFromDapp(address,bytes32,uint256,bool)._addr (dataset/contracts/transaction_order/4223.sol#440) is not in mixedCase
Parameter PlayerBook.registerNameXIDFromDapp(address,bytes32,uint256,bool)._name (dataset/contracts/transaction_order/4223.sol#440) is not in mixedCase
Parameter PlayerBook.registerNameXIDFromDapp(address,bytes32,uint256,bool)._affCode (dataset/contracts/transaction_order/4223.sol#440) is not in mixedCase
Parameter PlayerBook.registerNameXIDFromDapp(address,bytes32,uint256,bool)._all (dataset/contracts/transaction_order/4223.sol#440) is not in mixedCase
Parameter PlayerBook.registerNameXaddrFromDapp(address,bytes32,address,bool)._addr (dataset/contracts/transaction_order/4223.sol#472) is not in mixedCase
Parameter PlayerBook.registerNameXaddrFromDapp(address,bytes32,address,bool)._name (dataset/contracts/transaction_order/4223.sol#472) is not in mixedCase
Parameter PlayerBook.registerNameXaddrFromDapp(address,bytes32,address,bool)._affCode (dataset/contracts/transaction_order/4223.sol#472) is not in mixedCase
Parameter PlayerBook.registerNameXaddrFromDapp(address,bytes32,address,bool)._all (dataset/contracts/transaction_order/4223.sol#472) is not in mixedCase
Parameter PlayerBook.registerNameXnameFromDapp(address,bytes32,bytes32,bool)._addr (dataset/contracts/transaction_order/4223.sol#508) is not in mixedCase
Parameter PlayerBook.registerNameXnameFromDapp(address,bytes32,bytes32,bool)._name (dataset/contracts/transaction_order/4223.sol#508) is not in mixedCase
Parameter PlayerBook.registerNameXnameFromDapp(address,bytes32,bytes32,bool)._affCode (dataset/contracts/transaction_order/4223.sol#508) is not in mixedCase
Parameter PlayerBook.registerNameXnameFromDapp(address,bytes32,bytes32,bool)._all (dataset/contracts/transaction_order/4223.sol#508) is not in mixedCase
Parameter NameFilter.nameFilter(string)._input (dataset/contracts/transaction_order/4223.sol#589) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
PlayerBook.gID_ (dataset/contracts/transaction_order/4223.sol#22) should be constant 
PlayerBook.registrationFee_ (dataset/contracts/transaction_order/4223.sol#18) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
checkIfNameValid(string) should be declared external:
	- PlayerBook.checkIfNameValid(string) (dataset/contracts/transaction_order/4223.sol#122-132)
registerNameXaddr(string,address,bool) should be declared external:
	- PlayerBook.registerNameXaddr(string,address,bool) (dataset/contracts/transaction_order/4223.sol#194-232)
registerNameXname(string,bytes32,bool) should be declared external:
	- PlayerBook.registerNameXname(string,bytes32,bool) (dataset/contracts/transaction_order/4223.sol#234-272)
useMyOldName(string) should be declared external:
	- PlayerBook.useMyOldName(string) (dataset/contracts/transaction_order/4223.sol#332-345)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/4223.sol analyzed (4 contracts with 100 detectors), 67 result(s) found
