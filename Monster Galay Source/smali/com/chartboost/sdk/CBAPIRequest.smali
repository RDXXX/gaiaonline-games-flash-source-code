.class public Lcom/chartboost/sdk/CBAPIRequest;
.super Ljava/lang/Object;
.source "CBAPIRequest.java"


# static fields
.field public static final CB_PARAM_AD_ID:Ljava/lang/String; = "ad_id"

.field private static final CB_PARAM_AUID:Ljava/lang/String; = "auid"

.field public static final CB_PARAM_CACHE:Ljava/lang/String; = "cache"

.field private static final CB_PARAM_COUNTRY:Ljava/lang/String; = "country"

.field private static final CB_PARAM_HEIGHT:Ljava/lang/String; = "h"

.field public static final CB_PARAM_IMEI:Ljava/lang/String; = "imei"

.field private static final CB_PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field private static final CB_PARAM_MODEL:Ljava/lang/String; = "model"

.field private static final CB_PARAM_OS:Ljava/lang/String; = "os"

.field private static final CB_PARAM_SCALE:Ljava/lang/String; = "scale"

.field private static final CB_PARAM_SDK:Ljava/lang/String; = "sdk"

.field private static final CB_PARAM_UUID:Ljava/lang/String; = "uuid"

.field private static final CB_PARAM_VERSION:Ljava/lang/String; = "bundle"

.field private static final CB_PARAM_WIDTH:Ljava/lang/String; = "w"


# instance fields
.field private action:Ljava/lang/String;

.field private body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private contextInfoObject:Ljava/lang/Object;

.field private controller:Ljava/lang/String;

.field private displayHeight:I

.field private displayWidth:I

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayWidth:I

    .line 29
    iput v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayHeight:I

    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private serializeDictionaryToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ""

    .line 286
    .local v2, "string":Ljava/lang/String;
    new-instance v1, Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 288
    .local v1, "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 298
    return-object v2

    .line 288
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "key":Ljava/lang/String;
    const-string v5, "app"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "signature"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public appendDeviceInfoParams()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams(Landroid/view/ViewGroup;)V

    .line 99
    return-void
.end method

.method public appendDeviceInfoParams(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "view"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v3, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 106
    :cond_0
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const-string v3, "model"

    const-string v4, "Android Simulator"

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "uuid"

    const-string v4, "ffff"

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "auid"

    const-string v4, "ffff"

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    const-string v3, "os"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Android "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "sdk"

    const-string v4, "3.0.2"

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBAPIRequest;->measureContainer(Landroid/view/ViewGroup;)V

    .line 124
    const-string v3, "w"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "h"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "scale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 135
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const-string v4, "imei"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 144
    .local v0, "manager":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 145
    .local v2, "version":Ljava/lang/String;
    const-string v3, "bundle"

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    .end local v0    # "manager":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    :goto_3
    return-void

    .line 113
    :cond_1
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "uuid"

    iget-object v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "auid"

    iget-object v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/chartboost/sdk/CBUtility;->getAUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 146
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    goto :goto_3

    .line 136
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public appendQueryArgument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    return-object v0
.end method

.method public getContextInfoObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->contextInfoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    return-object v0
.end method

.method public measureContainer(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayWidth:I

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayHeight:I

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 83
    .local v2, "statusBarOffset":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-gt v4, v5, :cond_1

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .local v1, "rectangle":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 87
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 88
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 90
    .end local v1    # "rectangle":Landroid/graphics/Rect;
    .end local v3    # "window":Landroid/view/Window;
    :cond_1
    iget-object v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 91
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayWidth:I

    .line 92
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/chartboost/sdk/CBAPIRequest;->displayHeight:I

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setBody(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    .line 236
    return-void
.end method

.method public setContextInfoObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "contextInfoObject"    # Ljava/lang/Object;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->contextInfoObject:Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public setController(Ljava/lang/String;)V
    .locals 0
    .param p1, "controller"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    .line 266
    return-void
.end method

.method public setQuery(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "query":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    .line 251
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "controller:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "string":Ljava/lang/String;
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    invoke-direct {p0, v11}, Lcom/chartboost/sdk/CBAPIRequest;->serializeDictionaryToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 161
    :cond_0
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    if-eqz v10, :cond_1

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    invoke-direct {p0, v11}, Lcom/chartboost/sdk/CBAPIRequest;->serializeDictionaryToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    :cond_1
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    if-eqz v10, :cond_2

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "count":I
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 174
    .end local v1    # "count":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";signature:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    const-string v10, "STRING"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v10, "ISO-8859-1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 181
    .local v9, "stringBinary":[B
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 182
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 183
    .local v4, "hashBinary":[B
    const-string v3, ""

    .line 184
    .local v3, "hash":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v4

    if-lt v5, v10, :cond_4

    .line 189
    const-string v10, "app"

    move-object/from16 v0, p1

    invoke-virtual {p0, v10, v0}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v10, "signature"

    invoke-virtual {p0, v10, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 168
    .end local v3    # "hash":Ljava/lang/String;
    .end local v4    # "hashBinary":[B
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v9    # "stringBinary":[B
    .restart local v1    # "count":I
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 169
    .local v7, "param":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_0

    .line 185
    .end local v1    # "count":I
    .end local v7    # "param":Ljava/lang/String;
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v4    # "hashBinary":[B
    .restart local v5    # "i":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    .restart local v9    # "stringBinary":[B
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "%02x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-byte v14, v4, v5

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
