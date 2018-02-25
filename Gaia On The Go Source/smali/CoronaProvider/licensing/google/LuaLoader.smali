.class public LCoronaProvider/licensing/google/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$InitWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final PREFS_FILE:Ljava/lang/String; = "CoronaProvider.licensing.google.lualoader"

.field private static SALT:[B


# instance fields
.field private fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fListener:I

.field private licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

.field private licenseKey:Ljava/lang/String;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, LCoronaProvider/licensing/google/LuaLoader;->initialize()V

    .line 54
    return-void
.end method

.method static synthetic access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/licensing/google/LuaLoader;

    .prologue
    .line 40
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    return-object v0
.end method

.method static synthetic access$500(LCoronaProvider/licensing/google/LuaLoader;)I
    .locals 1
    .param p0, "x0"    # LCoronaProvider/licensing/google/LuaLoader;

    .prologue
    .line 40
    iget v0, p0, LCoronaProvider/licensing/google/LuaLoader;->fListener:I

    return v0
.end method

.method static synthetic access$600(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LCoronaProvider/licensing/google/LuaLoader;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, LCoronaProvider/licensing/google/LuaLoader;->callLuaCallback(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private callLuaCallback(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "isVerified"    # Z
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "isError"    # Z
    .param p4, "errorType"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v6, p0, LCoronaProvider/licensing/google/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 199
    .local v6, "dispatcher":Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    new-instance v0, LCoronaProvider/licensing/google/LuaLoader$1;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LCoronaProvider/licensing/google/LuaLoader$1;-><init>(LCoronaProvider/licensing/google/LuaLoader;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v0, "task":Lcom/ansca/corona/CoronaRuntimeTask;
    invoke-virtual {v6, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 269
    return-void
.end method

.method private initLicenseChecker(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "licenseKey"    # Ljava/lang/String;
    .param p2, "policyType"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v4, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    iput-object v4, p0, LCoronaProvider/licensing/google/LuaLoader;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 148
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v4, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    invoke-direct {v0, v4, v3, v1}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, "aes":Lcom/google/android/vending/licensing/AESObfuscator;
    const-string v4, "strict"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    new-instance v4, Lcom/google/android/vending/licensing/StrictPolicy;

    invoke-direct {v4}, Lcom/google/android/vending/licensing/StrictPolicy;-><init>()V

    iput-object v4, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 165
    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-direct {v4, v5, v6, p1}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v4, p0, LCoronaProvider/licensing/google/LuaLoader;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 162
    :cond_0
    new-instance v4, Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object v4, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Corona"

    const-string v5, "Invalid public key"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/naef/jnlua/LuaState;)I
    .locals 8
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 98
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v3

    .line 100
    .local v3, "top":I
    const-string v0, ""

    .line 101
    .local v0, "licenseKey":Ljava/lang/String;
    const-string v1, ""

    .line 104
    .local v1, "policyType":Ljava/lang/String;
    const-string v5, "require"

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 105
    const-string v5, "config"

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v4, v7}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 109
    const-string v5, "application"

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const-string v5, "license"

    invoke-virtual {p1, v7, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 113
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const-string v5, "google"

    invoke-virtual {p1, v7, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 116
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    const-string v5, "key"

    invoke-virtual {p1, v7, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 119
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    const/4 v5, -0x2

    const-string v6, "policy"

    invoke-virtual {p1, v5, v6}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 125
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_1
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v2, v4

    .line 134
    .local v2, "success":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 135
    invoke-direct {p0, v0, v1}, LCoronaProvider/licensing/google/LuaLoader;->initLicenseChecker(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 138
    :cond_3
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    .line 140
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 141
    return v4

    .line 132
    .end local v2    # "success":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "CoronaProvider.licensing.google.lualoader"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "salt"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "salty":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 61
    const/16 v3, 0x14

    new-array v3, v3, [B

    sput-object v3, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    .line 62
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 63
    new-instance v1, Ljava/lang/String;

    .end local v1    # "salty":Ljava/lang/String;
    sget-object v3, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 64
    .restart local v1    # "salty":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "salt"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sput-object v3, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    .line 69
    return-void
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    invoke-virtual {p0}, LCoronaProvider/licensing/google/LuaLoader;->initialize()V

    .line 77
    new-instance v2, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v2, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 79
    const/4 v2, 0x3

    new-array v1, v2, [Lcom/naef/jnlua/NamedJavaFunction;

    const/4 v2, 0x0

    new-instance v3, LCoronaProvider/licensing/google/LuaLoader$InitWrapper;

    invoke-direct {v3, p0, v5}, LCoronaProvider/licensing/google/LuaLoader$InitWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    aput-object v3, v1, v2

    new-instance v2, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;

    invoke-direct {v2, p0, v5}, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;

    invoke-direct {v3, v5}, LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader$1;)V

    aput-object v3, v1, v2

    .line 85
    .local v1, "luaFunctions":[Lcom/naef/jnlua/NamedJavaFunction;
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "libName":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 88
    return v4
.end method

.method public verify(Lcom/naef/jnlua/LuaState;)I
    .locals 4
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 177
    const/4 v0, 0x1

    .line 178
    .local v0, "listenerIndex":I
    const/4 v1, 0x0

    .line 179
    .local v1, "success":Z
    const-string v2, "licensing"

    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    :cond_1
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v2

    iput v2, p0, LCoronaProvider/licensing/google/LuaLoader;->fListener:I

    .line 181
    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 182
    const/4 v1, 0x1

    .line 185
    :cond_2
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 186
    const/4 v2, 0x1

    return v2
.end method
