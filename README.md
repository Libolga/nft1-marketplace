# NFT Trading Platform - Final Project

NFT Marketplace built with Scaffold-ETH 2

## Start project:
```bash
yarn install
yarn chain
yarn deploy  
yarn start

- **Внизу страницы в разделе "Commit new file":**
  - **Первое поле:** `Initial commit`
  - **Нажмите:** `Commit new file`

## Шаг 3: Создайте package.json

**Теперь вы в репозитории. Вверху справа:**
- **Нажмите "Add file" → "Create new file"**

### Файл 2: package.json
- **Имя файла:** `package.json`
- **Содержимое:**
```json
{
  "name": "nft-trading-platform",
  "version": "0.1.0",
  "private": true,
  "workspaces": {
    "packages": [
      "packages/hardhat",
      "packages/nextjs"
    ]
  },
  "scripts": {
    "chain": "yarn workspace @nft-trading-platform/hardhat chain",
    "deploy": "yarn workspace @nft-trading-platform/hardhat deploy",
    "start": "yarn workspace @nft-trading-platform/nextjs dev",
    "test": "yarn workspace @nft-trading-platform/hardhat test"
  },
  "packageManager": "yarn@4.1.0"
}
