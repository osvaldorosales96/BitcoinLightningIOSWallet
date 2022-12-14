# BitcoinLightningIOSWallet

<table style="padding:10px">
  <tr>
    <td> <h2 align="center">Home</h2> </td>
    <td> <h2 align="center">Bitcoin Wallet</h2> </td>
    <td> <h2 align="center">Lightning Wallet</h2> </td>
    <td> <h2 align="center">Transaction History</h2> </td>
  </tr>
  <tr>
    <td> <img src="./Sample-Screenshots/01_Startapp.PNG"  alt="1" width = 200px> </td>
    <td> <img src="./Sample-Screenshots/06_BitcoinWalletView.PNG"  alt="1" width = 200px> </td>
    <td> <img src="./Sample-Screenshots/09_LightningWalletView.PNG"  alt="1" width = 200px> </td>
    <td> <img src="./Sample-Screenshots/14_TransactionHistory.PNG"  alt="1" width = 200px> </td>
  </tr>
  
  
  <tr>
    <td> <h2 align="center">Receive BTC</h2> </td>
    <td> <h2 align="center">Send BTC</h2> </td>
    <td> <h2 align="center">Create Invoice</h2> </td>
    <td> <h2 align="center">invoice View</h2> </td>
  </tr>
  <tr>
    <td> <img src="./Sample-Screenshots/07_ReceiveBitcoin.PNG"  alt="1" width = 200px> </td>
    <td> <img src="./Sample-Screenshots/08_SendBitcoin.PNG"  alt="1" width = 200px> </td>
    <td> <img src="./Sample-Screenshots/10_CreateLNInvoice.PNG"  alt="1" width = 200px> </td>
    <td> <img src="./Sample-Screenshots/11_LNInvoiceView.PNG"  alt="1" width = 200px> </td>
  </tr>
</table>


This project is a prototype Bitcoin-Lightning IOS app built with  `bdk` (Bitcoin Dev Kit) Swift bindings and IBEXHub API. 

Features include
 - Create or import seedphrase for bitcoin wallet.
 - Create or import Lightning wallet (Provided by IBEXHub API).
 - Sync with Electrum Server for Blockchain data and transaction broadcast (Mainnet & Testnet).
 - Create Lightning invoice.
 - Pay Lightning invoice.
 - Transaction history.
 - Scan Bitcoin and Lightning invoice QR codes.

BitoinLightningIOSWallet was inspired by @thunderbiscuit's [Bitcoindevkit Android Demo Wallet](https://github.com/thunderbiscuit/bitcoindevkit-android-sample-app) and @futurepaul's [BdkSwiftSample](https://github.com/futurepaul/BdkSwiftSample), with the primary changes being a code restructure following the MVVM design pattern and Lightning payments integration.

Check this app transactions on Mainnet:
 - Received 501 sats, TXID: [28f82da2adfa482225c4019d011bf062dd3474ccd59f50b5027ec758a6e6c13b](https://mempool.space/tx/28f82da2adfa482225c4019d011bf062dd3474ccd59f50b5027ec758a6e6c13b)
 - Sent 8000 sats TXID: [aaa68a80cea4842647966d336cbef961029e51d0661a53ea4b201883ea756ff6](https://mempool.space/tx/aaa68a80cea4842647966d336cbef961029e51d0661a53ea4b201883ea756ff6)

## Requirements
- Electrum server
- IbexHub API account
- Dependencies: [bdk-swift 0.3.0](https://github.com/bitcoindevkit/bdk-swift) and [CodeScanner 1.1.0](https://github.com/twostraws/CodeScanner)

Check these out:
 - [bdk](https://github.com/bitcoindevkit/bdk)
 - [bdk-swift](https://github.com/bitcoindevkit/bdk-swift)
 - [IBEXHub API](https://ibexmercado.gitbook.io/ibex-hub-api/)
