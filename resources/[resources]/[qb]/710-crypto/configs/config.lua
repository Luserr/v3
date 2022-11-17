Config = {
    Debug = {
        Prints = false
    },
    CryptoSystem = {
        TimeBetweenMarketUpdates = 60, -- Time in MINUTES between market updates - price changes 
        RandomizeMarketUpdates = true, -- Randomize market updates - price changes
        RandomizeMarketUpdatesLow = 25, -- Lowest time in MINUTES between market updates - price changes
        RandomizeMarketUpdatesHigh = 75, -- Highest time in MINUTES between market updates - price changes
        RandomCrazyMarketChanges = false, -- if true then everytime the market updates it has a 1 in 10 chance to 2-10x the change 
        AccountToBuySellFrom = 'bank', -- 'bank' or 'cash'
        UseCommand = true, -- true or false to bring up the market with the command below 
        CommandName = 'cryptomarket', -- The command to bring up the market
        UseItem = true, -- true or false to bring up the market with the item below
        ItemName = 'crypto_tablet', -- The item to bring up the market
        WebhookLogs = true, -- true or false to send webhook logs to discord CHECK SERVERCUSTOMIZE IF FALSE 
    },

    Cryptos = {
        GToken = {  --- You can add as many cryptos as you want here this line will be the main name used in backend for exports and 710-lib crypto calls 
            coincode = 'GT',
            name = 'G Token',
            info = 'The Second Crypto Token, used to buy and sell some things.',
            minMarket = 2, --- Min amount this coin will go up or down by you can set this to 0 if you want it to sometimes not go up
            maxMarket = 3, --- Max amount this coin will go up or down by 
            startingPrice = 710, --- Starting price of the coin ONLY USED ON FIRST TIME a coin is added to change it custom you have to change it in the databse.
            maxPrice = 650, --- Max price of the coin
            minPrice = 300, --- Min price of the coin
        },
        BeanToken = {
            coincode = 'BATT',
            name = 'Beans and Toast Token',
            info = 'A crypto based on anonymousness, used to buy and sell alot of things you may find in the streets.',
            minMarket = 1, --- Min amount this coin will go up or down by you can set this to 0 if you want it to sometimes not go up
            maxMarket = 2, --- Max amount this coin will go up or down by 
            startingPrice = 150, --- Starting price of the coin ONLY USED ON FIRST TIME a coin is added to change it custom you have to change it in the databse.
            maxPrice = 36, --- Max price of the coin
            minPrice = 20, --- Min price of the coin
        },
        DripCoin = {
            coincode = 'DC',
            name = 'Drip Coin',
            info = 'Mars currency',
            minMarket = 1, --- Min amount this coin will go up or down by you can set this to 0 if you want it to sometimes not go up
            maxMarket = 2, --- Max amount this coin will go up or down by 
            startingPrice = 350, --- Starting price of the coin ONLY USED ON FIRST TIME a coin is added to change it custom you have to change it in the databse.
            maxPrice = 73, --- Max price of the coin
            minPrice = 48, --- Min price of the coin

        },
        --- Copy and paste the crypto above and put it here to add more cryptos 
        VentureCoin = {
            coincode = 'VENTURE',
            name = 'Venture Coin',
            info = 'The First Crypto Token, used to buy and sell alot of things.',
            minMarket = 2, --- Min amount this coin will go up or down by you can set this to 0 if you want it to sometimes not go up
            maxMarket = 4, --- Max amount this coin will go up or down by 
            startingPrice = 900, --- Starting price of the coin ONLY USED ON FIRST TIME a coin is added to change it custom you have to change it in the databse.
            maxPrice = 1173, --- Max price of the coin
            minPrice = 748, --- Min price of the coin

        },
    }
}