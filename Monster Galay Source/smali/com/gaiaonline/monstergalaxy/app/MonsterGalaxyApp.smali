.class public Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;
.super Landroid/app/Application;
.source "MonsterGalaxyApp.java"


# static fields
.field public static BILLING_SERVICE:Lcom/nextive/android/billing/market/BillingService;

.field public static final PURCHASE_LISTENER:Lcom/gaiaonline/monstergalaxy/app/MarketPurchaseListener;

.field private static instance:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;


# instance fields
.field private dbHelper:Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MarketPurchaseListener;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/MarketPurchaseListener;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->PURCHASE_LISTENER:Lcom/gaiaonline/monstergalaxy/app/MarketPurchaseListener;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->instance:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    return-object v0
.end method


# virtual methods
.method public getDbHelper()Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsswC4eF0Uvaj7PAUzyucWUZ+tNAoiXJRolYDp9K88cvD0El1uSCR9wDDfzMnEjPnyQNKVyPVsHS2FYdcl85TQru5CmbezJyg9SNKRoe2fTZ+xukqKuDEwCWjJpgNZuwyQ1lkU9aJar++2LEWRqVRUvn/jVNkvA+8p1PH+JZmnwgFzWUJnxaFJs8LPvWv5FYkvECtG2StrKW7/CyTGX3rAKfKj3dk352BiUxXlcDGovmA1ss4yPufQu8wUSWD6HGkbEN2R7XqQSr+H6iEC80+oheyPu/FmzU4mpTlOhQASm2spoqQJ3TVi4S663Vkw6AVvNQxC5PRhickxpp2obr7PQIDAQAB"

    .line 38
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/nextive/android/billing/market/BillingSecurity;->setBase64PublicKey(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->PURCHASE_LISTENER:Lcom/gaiaonline/monstergalaxy/app/MarketPurchaseListener;

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingResponseHandler;->registerPurchaseListener(Lcom/nextive/android/billing/market/BillingPurchaseObserver;)V

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nextive/android/billing/market/BillingConstants;->USE_MOCK_DATA:Z

    .line 46
    sput-object p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->instance:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    .line 47
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->close()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->instance:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    .line 58
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 59
    return-void
.end method
