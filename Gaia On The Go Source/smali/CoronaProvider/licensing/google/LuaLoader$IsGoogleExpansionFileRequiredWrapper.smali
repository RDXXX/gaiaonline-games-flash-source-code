.class LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsGoogleExpansionFileRequiredWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/licensing/google/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/licensing/google/LuaLoader$1;

    .prologue
    .line 379
    invoke-direct {p0}, LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, "isGoogleExpansionFileRequired"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 8
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 389
    const/4 v2, 0x0

    .line 391
    .local v2, "isRequired":Z
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "targetedAppStoreName":Ljava/lang/String;
    const-string v5, "google"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 396
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 397
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 399
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 400
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "usesExpansionFile"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 407
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "targetedAppStoreName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 408
    const/4 v5, 0x1

    return v5

    .line 404
    :catch_0
    move-exception v5

    goto :goto_0
.end method
