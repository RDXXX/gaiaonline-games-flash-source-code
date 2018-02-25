.class LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/licensing/google/LuaLoader;
    .param p2, "x1"    # LCoronaProvider/licensing/google/LuaLoader$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    return-void
.end method

.method private translateResponse(I)Ljava/lang/String;
    .locals 1
    .param p1, "responseCode"    # I

    .prologue
    .line 307
    const-string v0, ""

    .line 308
    .local v0, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 340
    const-string v0, ""

    .line 343
    :goto_0
    return-object v0

    .line 311
    :sswitch_0
    const-string v0, "Invalid public key"

    .line 312
    goto :goto_0

    .line 315
    :sswitch_1
    const-string v0, "Missing permission"

    .line 316
    goto :goto_0

    .line 319
    :sswitch_2
    const-string v0, "Invalid package name"

    .line 320
    goto :goto_0

    .line 323
    :sswitch_3
    const-string v0, "Non matching UID"

    .line 324
    goto :goto_0

    .line 327
    :sswitch_4
    const-string v0, "Not market managed"

    .line 328
    goto :goto_0

    .line 331
    :sswitch_5
    const-string v0, "Error contacting server"

    .line 332
    goto :goto_0

    .line 334
    :sswitch_6
    const-string v0, "Licensed"

    .line 335
    goto :goto_0

    .line 337
    :sswitch_7
    const-string v0, "Not licensed"

    .line 338
    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x100 -> :sswitch_6
        0x123 -> :sswitch_5
        0x231 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public allow(I)V
    .locals 8
    .param p1, "policyReason"    # I

    .prologue
    .line 275
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 276
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/vending/licensing/Policy;->getExpansionURLCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 278
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "expansionFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 280
    const-string v3, "main"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    invoke-static {v0, v1}, Lcom/ansca/corona/FileServices;->setMainExpansionFileName(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const-string v3, "patch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-static {v0, v1}, Lcom/ansca/corona/FileServices;->setPatchExpansionFileName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 291
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "expansionFileName":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_2
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    const/4 v4, 0x1

    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->translateResponse(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v3, v4, v5, v6, v7}, LCoronaProvider/licensing/google/LuaLoader;->access$600(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 292
    return-void
.end method

.method public applicationError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 303
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->translateResponse(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "configuration"

    invoke-static {v0, v1, v2, v3, v4}, LCoronaProvider/licensing/google/LuaLoader;->access$600(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 304
    return-void
.end method

.method public dontAllow(I)V
    .locals 5
    .param p1, "policyReason"    # I

    .prologue
    const/4 v2, 0x0

    .line 296
    const/16 v3, 0x123

    if-ne v3, p1, :cond_0

    const/4 v1, 0x1

    .line 297
    .local v1, "isError":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "network"

    .line 299
    .local v0, "errorType":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->translateResponse(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v1, v0}, LCoronaProvider/licensing/google/LuaLoader;->access$600(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 300
    return-void

    .end local v0    # "errorType":Ljava/lang/String;
    .end local v1    # "isError":Z
    :cond_0
    move v1, v2

    .line 296
    goto :goto_0

    .line 297
    .restart local v1    # "isError":Z
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
