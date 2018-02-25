.class public Lcom/ansca/corona/NativeToJavaBridge;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;,
        Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
    }
.end annotation


# static fields
.field private static sClassLoader:Ldalvik/system/DexClassLoader;

.field private static sPluginCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/JavaFunction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private myActivity:Lcom/ansca/corona/CoronaActivity;

.field private myDexCacheDir:Ljava/lang/String;

.field private myLastBitmapHeight:I

.field private myLastBitmapScaleFactor:F

.field private myLastBitmapWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/NativeToJavaBridge;->sPluginCache:Ljava/util/HashMap;

    .line 366
    const/4 v0, 0x0

    sput-object v0, Lcom/ansca/corona/NativeToJavaBridge;->sClassLoader:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 248
    iput v2, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapWidth:I

    .line 249
    iput v2, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapHeight:I

    .line 250
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapScaleFactor:F

    .line 252
    const-string v1, "CoronaDexCache"

    invoke-virtual {p1, v1, v2}, Lcom/ansca/corona/CoronaActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 253
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ansca/corona/NativeToJavaBridge;->myDexCacheDir:Ljava/lang/String;

    .line 254
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p0}, Lcom/ansca/corona/NativeToJavaBridge;->getLocationFromName(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected static callCanShowPopup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1805
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->canShowPopup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static callCancelNativeAlert(I)V
    .locals 1
    .param p0, "which"    # I

    .prologue
    .line 1775
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->cancelNativeAlert(I)V

    .line 1776
    return-void
.end method

.method protected static callCancelTimer()V
    .locals 1

    .prologue
    .line 1665
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->cancelTimer()V

    .line 1666
    return-void
.end method

.method protected static callCloseNativeActivityIndicator()V
    .locals 1

    .prologue
    .line 1790
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->closeNativeActivityIndicator()V

    .line 1791
    return-void
.end method

.method protected static callCryptoCalculateDigest(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 2214
    invoke-static {p0, p1}, Lcom/ansca/corona/Crypto;->CalculateDigest(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static callCryptoCalculateHMAC(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 2218
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/Crypto;->CalculateHMAC(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static callCryptoGetDigestLength(Ljava/lang/String;)I
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 2210
    invoke-static {p0}, Lcom/ansca/corona/Crypto;->GetDigestLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static callDisplayObjectDestroy(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2043
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V

    .line 2044
    return-void
.end method

.method protected static callDisplayObjectGetAlpha(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2073
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getDisplayObjectAlpha(I)F

    move-result v0

    return v0
.end method

.method protected static callDisplayObjectGetBackground(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2078
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getDisplayObjectBackground(I)Z

    move-result v0

    return v0
.end method

.method protected static callDisplayObjectGetVisible(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2068
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getDisplayObjectVisible(I)Z

    move-result v0

    return v0
.end method

.method protected static callDisplayObjectSetAlpha(IF)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 2058
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setDisplayObjectAlpha(IF)V

    .line 2059
    return-void
.end method

.method protected static callDisplayObjectSetBackground(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "bg"    # Z

    .prologue
    .line 2063
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setDisplayObjectBackground(IZ)V

    .line 2064
    return-void
.end method

.method protected static callDisplayObjectSetFocus(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "focus"    # Z

    .prologue
    .line 2083
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewFocus(IZ)V

    .line 2084
    return-void
.end method

.method protected static callDisplayObjectSetVisible(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "visible"    # Z

    .prologue
    .line 2048
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setDisplayObjectVisible(IZ)V

    .line 2049
    return-void
.end method

.method protected static callDisplayObjectUpdateScreenBounds(IIIII)V
    .locals 6
    .param p0, "id"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 2053
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/ViewManager;->displayObjectUpdateScreenBounds(IIIII)V

    .line 2054
    return-void
.end method

.method protected static callDisplayUpdate()V
    .locals 1

    .prologue
    .line 1825
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->displayUpdate()V

    .line 1826
    return-void
.end method

.method protected static callExternalizeResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 876
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/NativeToJavaBridge;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ansca/corona/FileServices;->externalizeAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 877
    .local v0, "destinationFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 878
    const/4 v1, 0x0

    .line 880
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static callFBConnectLogin(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 2018
    if-nez p2, :cond_0

    .line 2020
    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/String;

    .line 2023
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/Controller;->facebookLogin(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2024
    return-void
.end method

.method protected static callFBConnectLogout(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2028
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->facebookLogout()V

    .line 2029
    return-void
.end method

.method protected static callFBConnectRequest(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/HashMap;

    .prologue
    .line 2033
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ansca/corona/Controller;->facebookRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2034
    return-void
.end method

.method protected static callFBShowDialog(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/HashMap;

    .prologue
    .line 2038
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/Controller;->facebookDialog(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2039
    return-void
.end method

.method protected static callFlurryEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .line 2523
    return-void
.end method

.method protected static callFlurryInit(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 2519
    return-void
.end method

.method protected static callGetAvailableStoreNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2621
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getAvailableInAppStoreNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetBitmapAsset(Ljava/lang/String;)[I
    .locals 1
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 1407
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/ansca/corona/NativeToJavaBridge;->getBitmapAsset(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected static callGetBitmapMaskAsset(Ljava/lang/String;)[B
    .locals 1
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 1419
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/ansca/corona/NativeToJavaBridge;->getBitmapMaskAsset(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static callGetBytesFromFile(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePathName"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/NativeToJavaBridge;->getBytesFromFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static callGetExceptionStackTraceFrom(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 489
    if-nez p0, :cond_0

    .line 495
    :goto_0
    return-object v1

    .line 494
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaError;

    invoke-direct {v0, v1, p0}, Lcom/naef/jnlua/LuaError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    .local v0, "luaError":Lcom/naef/jnlua/LuaError;
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaError;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static callGetFonts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1616
    invoke-static {}, Lcom/ansca/corona/CoronaText;->getFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetIdleTimer()Z
    .locals 1

    .prologue
    .line 1720
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getIdleTimer()Z

    move-result v0

    return v0
.end method

.method protected static callGetLastGraphicHeight()I
    .locals 1

    .prologue
    .line 1636
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    iget v0, v0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapHeight:I

    return v0
.end method

.method protected static callGetLastGraphicScaleFactor()F
    .locals 1

    .prologue
    .line 1647
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    iget v0, v0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapScaleFactor:F

    return v0
.end method

.method protected static callGetLastGraphicWidth()I
    .locals 1

    .prologue
    .line 1626
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    iget v0, v0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapWidth:I

    return v0
.end method

.method protected static callGetManufacturerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1855
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1860
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1865
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1875
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetPreference(I)Ljava/lang/String;
    .locals 1
    .param p0, "category"    # I

    .prologue
    .line 1885
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->getPreference(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetRawAssetExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 784
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/ansca/corona/NativeToJavaBridge;->getRawAssetExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static callGetStatusBarHeight()I
    .locals 4

    .prologue
    .line 1755
    const/4 v1, 0x0

    .line 1757
    .local v1, "height":I
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v3

    monitor-enter v3

    .line 1758
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1759
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 1760
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 1761
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarHeight()I

    move-result v1

    .line 1764
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :cond_0
    monitor-exit v3

    .line 1765
    return v1

    .line 1764
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static callGetStatusBarMode()I
    .locals 4

    .prologue
    .line 1741
    const/4 v1, 0x0

    .line 1743
    .local v1, "mode":I
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v3

    monitor-enter v3

    .line 1744
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1745
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 1746
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 1747
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarMode()I

    move-result v1

    .line 1750
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :cond_0
    monitor-exit v3

    .line 1751
    return v1

    .line 1750
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static callGetTargetedStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2625
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetText(Ljava/lang/String;Ljava/lang/String;FII)[B
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1593
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v6

    .line 1595
    .local v6, "bridge":Lcom/ansca/corona/NativeToJavaBridge;
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/ansca/corona/CoronaText;->getCoronaText(Ljava/lang/String;FLcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaText;

    move-result-object v0

    .line 1597
    .local v0, "theText":Lcom/ansca/corona/CoronaText;
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/CoronaText;->render(Ljava/lang/String;FIILcom/ansca/corona/CoronaActivity;)V

    .line 1598
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaText;->getWidth()I

    move-result v1

    iput v1, v6, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapWidth:I

    .line 1599
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaText;->getHeight()I

    move-result v1

    iput v1, v6, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapHeight:I

    .line 1600
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v6, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapScaleFactor:F

    .line 1602
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaText;->getBits()[B

    move-result-object v7

    .line 1604
    .local v7, "result":[B
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaText;->release()V

    .line 1606
    return-object v7
.end method

.method protected static callGetUniqueIdentifier(I)Ljava/lang/String;
    .locals 1
    .param p0, "identifierType"    # I

    .prologue
    .line 1870
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->getUniqueIdentifier(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetVolume(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1905
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/MediaManager;->getVolume(I)F

    move-result v0

    return v0
.end method

.method protected static callGooglePushNotificationsRegister(Ljava/lang/String;)V
    .locals 6
    .param p0, "projectNumber"    # Ljava/lang/String;

    .prologue
    .line 2801
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2808
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    invoke-direct {v2, v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;-><init>(Landroid/content/Context;)V

    .line 2811
    .local v2, "gcmServices":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 2812
    .local v4, "registrationId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getCommaSeparatedRegisteredProjectNumbers()Ljava/lang/String;

    move-result-object v3

    .line 2816
    .local v3, "registeredProjectNumbers":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2818
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 2819
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_0

    .line 2820
    new-instance v5, Lcom/ansca/corona/events/NotificationRegistrationEvent;

    invoke-direct {v5, v4}, Lcom/ansca/corona/events/NotificationRegistrationEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto :goto_0

    .line 2827
    .end local v1    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_2
    invoke-virtual {v2, p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->register(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static callGooglePushNotificationsUnregister()V
    .locals 2

    .prologue
    .line 2831
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2833
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;-><init>(Landroid/content/Context;)V

    .line 2834
    .local v1, "gcmServices":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->unregister()V

    .line 2835
    return-void
.end method

.method protected static callHasAccelerometer()Z
    .locals 1

    .prologue
    .line 1840
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->hasAccelerometer()Z

    move-result v0

    return v0
.end method

.method protected static callHasGyroscope()Z
    .locals 1

    .prologue
    .line 1845
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->hasGyroscope()Z

    move-result v0

    return v0
.end method

.method protected static callHasMediaSource(I)Z
    .locals 1
    .param p0, "mediaSourceType"    # I

    .prologue
    .line 1795
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->hasMediaSource(I)Z

    move-result v0

    return v0
.end method

.method protected static callHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1700
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ansca/corona/Controller;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    return-void
.end method

.method protected static callInMobiHide()V
    .locals 1

    .prologue
    .line 2536
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    invoke-static {}, Lcom/ansca/corona/Controller;->getAdManager()Lcom/ansca/corona/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInMobiAd()V

    .line 2537
    return-void
.end method

.method protected static callInMobiInit(Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 2526
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    invoke-static {}, Lcom/ansca/corona/Controller;->getAdManager()Lcom/ansca/corona/AdManager;

    move-result-object v0

    .line 2527
    .local v0, "manager":Lcom/ansca/corona/AdManager;
    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInMobiAd()V

    .line 2528
    invoke-virtual {v0, p0}, Lcom/ansca/corona/AdManager;->setInMobiApplicationId(Ljava/lang/String;)V

    .line 2529
    return-void
.end method

.method protected static callInMobiShow(Ljava/lang/String;FFDZ)V
    .locals 7
    .param p0, "bannerTypeName"    # Ljava/lang/String;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "intervalInSeconds"    # D
    .param p5, "testModeEnabled"    # Z

    .prologue
    .line 2532
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    invoke-static {}, Lcom/ansca/corona/Controller;->getAdManager()Lcom/ansca/corona/AdManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/AdManager;->showInMobiAd(Ljava/lang/String;FFDZ)V

    .line 2533
    return-void
.end method

.method protected static callInneractiveHide()V
    .locals 1

    .prologue
    .line 2550
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    invoke-static {}, Lcom/ansca/corona/Controller;->getAdManager()Lcom/ansca/corona/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInneractiveAd()V

    .line 2551
    return-void
.end method

.method protected static callInneractiveInit(Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 2540
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    invoke-static {}, Lcom/ansca/corona/Controller;->getAdManager()Lcom/ansca/corona/AdManager;

    move-result-object v0

    .line 2541
    .local v0, "manager":Lcom/ansca/corona/AdManager;
    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInneractiveAd()V

    .line 2542
    invoke-virtual {v0, p0}, Lcom/ansca/corona/AdManager;->setInneractiveApplicationId(Ljava/lang/String;)V

    .line 2543
    return-void
.end method

.method protected static callInneractiveShow(Ljava/lang/String;III)V
    .locals 1
    .param p0, "adTypeName"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "intervalInSeconds"    # I

    .prologue
    .line 2546
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    invoke-static {}, Lcom/ansca/corona/Controller;->getAdManager()Lcom/ansca/corona/AdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ansca/corona/AdManager;->showInneractiveAd(Ljava/lang/String;III)V

    .line 2547
    return-void
.end method

.method protected static callInvokeLuaErrorHandler(J)I
    .locals 1
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    .line 560
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaEnvironment;->invokeLuaErrorHandler(J)I

    move-result v0

    return v0
.end method

.method protected static callLoadClass(JLjava/lang/String;Ljava/lang/String;)I
    .locals 25
    .param p0, "luaStateMemoryAddress"    # J
    .param p2, "libName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 371
    const/16 v17, 0x0

    .line 373
    .local v17, "result":I
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v18

    .line 374
    .local v18, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v18, :cond_1

    .line 376
    invoke-virtual/range {v18 .. v18}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v4

    .line 382
    .local v4, "L":Lcom/naef/jnlua/LuaState;
    if-nez v4, :cond_0

    .line 383
    new-instance v4, Lcom/naef/jnlua/LuaState;

    .end local v4    # "L":Lcom/naef/jnlua/LuaState;
    move-wide/from16 v0, p0

    invoke-direct {v4, v0, v1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 386
    .restart local v4    # "L":Lcom/naef/jnlua/LuaState;
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, "classPath":Ljava/lang/String;
    const/16 v20, 0x1

    .line 393
    .local v20, "verbose":Z
    :try_start_0
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "> Class.forName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 395
    .local v9, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "< Class.forName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, v18

    invoke-static {v4, v0, v9}, Lcom/ansca/corona/NativeToJavaBridge;->instantiateClass(Lcom/naef/jnlua/LuaState;Lcom/ansca/corona/CoronaRuntime;Ljava/lang/Class;)I

    move-result v17

    .line 398
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loading via reflection: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v4    # "L":Lcom/naef/jnlua/LuaState;
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "classPath":Ljava/lang/String;
    .end local v20    # "verbose":Z
    :cond_1
    :goto_0
    return v17

    .line 399
    .restart local v4    # "L":Lcom/naef/jnlua/LuaState;
    .restart local v10    # "classPath":Ljava/lang/String;
    .restart local v20    # "verbose":Z
    :catch_0
    move-exception v15

    .line 402
    .local v15, "ex":Ljava/lang/Exception;
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loading plugins: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v14, ""

    .line 408
    .local v14, "dstPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 409
    .local v5, "apkFile":Lcom/ansca/corona/ZipResourceFile;
    const/4 v8, 0x0

    .line 412
    .local v8, "apkStream":Ljava/io/InputStream;
    :try_start_1
    const-string v11, "plugins.dex"

    .line 414
    .local v11, "dexName":Ljava/lang/String;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 415
    .local v7, "apkPath":Ljava/lang/String;
    new-instance v6, Lcom/ansca/corona/ZipResourceFile;

    invoke-direct {v6, v7}, Lcom/ansca/corona/ZipResourceFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 416
    .end local v5    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    .local v6, "apkFile":Lcom/ansca/corona/ZipResourceFile;
    :try_start_2
    const-string v21, "plugins.dex"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ansca/corona/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 418
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/ansca/corona/CoronaEnvironment;->getInternalResourceCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    .line 419
    .local v12, "dstDir":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    const-string v21, "plugins.dex"

    move-object/from16 v0, v21

    invoke-direct {v13, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .local v13, "dstFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 423
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v8, v13}, Lcom/ansca/corona/FileServices;->writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v19

    .line 428
    .local v19, "success":Z
    if-eqz v19, :cond_4

    .line 434
    sget-object v21, Lcom/ansca/corona/NativeToJavaBridge;->sClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v21, :cond_2

    .line 436
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "> Instantiating DexClassLoader for file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with cacheDir "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ansca/corona/NativeToJavaBridge;->getDexCacheDir()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v21, Ldalvik/system/DexClassLoader;

    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/ansca/corona/NativeToJavaBridge;->getDexCacheDir()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const-class v24, Lcom/ansca/corona/CoronaActivity;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v14, v1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v21, Lcom/ansca/corona/NativeToJavaBridge;->sClassLoader:Ldalvik/system/DexClassLoader;

    .line 441
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "< Instantiating DexClassLoader for file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with cacheDir "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ansca/corona/NativeToJavaBridge;->getDexCacheDir()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_2
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "> classLoader.LoadClass: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v21, Lcom/ansca/corona/NativeToJavaBridge;->sClassLoader:Ldalvik/system/DexClassLoader;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 445
    .restart local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "< classLoader.LoadClass: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    move-object/from16 v0, v18

    invoke-static {v4, v0, v9}, Lcom/ansca/corona/NativeToJavaBridge;->instantiateClass(Lcom/naef/jnlua/LuaState;Lcom/ansca/corona/CoronaRuntime;Ljava/lang/Class;)I

    move-result v17

    .line 457
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loading via DexClassLoader: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from library "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " located in file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v5, v6

    .line 474
    .end local v6    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    .end local v7    # "apkPath":Ljava/lang/String;
    .end local v11    # "dexName":Ljava/lang/String;
    .end local v12    # "dstDir":Ljava/io/File;
    .end local v13    # "dstFile":Ljava/io/File;
    .end local v19    # "success":Z
    .restart local v5    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    :goto_2
    if-eqz v8, :cond_3

    .line 475
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 477
    :cond_3
    :goto_3
    if-eqz v5, :cond_1

    .line 478
    :try_start_4
    invoke-virtual {v5}, Lcom/ansca/corona/ZipResourceFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v21

    goto/16 :goto_0

    .line 461
    .end local v5    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    .restart local v6    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    .restart local v7    # "apkPath":Ljava/lang/String;
    .restart local v11    # "dexName":Ljava/lang/String;
    .restart local v12    # "dstDir":Ljava/io/File;
    .restart local v13    # "dstFile":Ljava/io/File;
    .restart local v19    # "success":Z
    :cond_4
    :try_start_5
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to write file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for library "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 463
    .end local v12    # "dstDir":Ljava/io/File;
    .end local v13    # "dstFile":Ljava/io/File;
    .end local v19    # "success":Z
    :catch_2
    move-exception v16

    move-object v5, v6

    .line 464
    .end local v6    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    .end local v7    # "apkPath":Ljava/lang/String;
    .end local v11    # "dexName":Ljava/lang/String;
    .restart local v5    # "apkFile":Lcom/ansca/corona/ZipResourceFile;
    .local v16, "ex2":Ljava/lang/Exception;
    :goto_4
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WARNING: Could not load \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\tCould not find class ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") via reflection: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v21, "Corona"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\tor in file ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 475
    .end local v16    # "ex2":Ljava/lang/Exception;
    :catch_3
    move-exception v21

    goto/16 :goto_3

    .line 463
    :catch_4
    move-exception v16

    goto :goto_4
.end method

.method protected static callLoadEventSound(ILjava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "soundName"    # Ljava/lang/String;

    .prologue
    .line 1675
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/events/EventManager;->loadEventSound(ILjava/lang/String;)V

    .line 1676
    return-void
.end method

.method protected static callLoadSound(ILjava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "soundName"    # Ljava/lang/String;

    .prologue
    .line 1670
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/events/EventManager;->loadSound(ILjava/lang/String;)V

    .line 1671
    return-void
.end method

.method protected static callMapViewAddMarker(IDDLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "id"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 2192
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ansca/corona/ViewManager;->addMapMarker(IDDLjava/lang/String;Ljava/lang/String;)V

    .line 2193
    return-void
.end method

.method protected static callMapViewCreate(IIIII)V
    .locals 6
    .param p0, "id"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2147
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/ViewManager;->addMapView(IIIII)V

    .line 2148
    return-void
.end method

.method protected static callMapViewGetType(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 2175
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ansca/corona/ViewManager;->getMapType(I)Lcom/ansca/corona/MapType;

    move-result-object v0

    .line 2176
    .local v0, "mapType":Lcom/ansca/corona/MapType;
    if-nez v0, :cond_0

    .line 2177
    sget-object v0, Lcom/ansca/corona/MapType;->STANDARD:Lcom/ansca/corona/MapType;

    .line 2179
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/MapType;->toInvariantString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static callMapViewIsCurrentLocationVisible(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2151
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->isCurrentLocationVisibleInMap(I)Z

    move-result v0

    return v0
.end method

.method protected static callMapViewIsScrollEnabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2159
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->isMapScrollEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected static callMapViewIsZoomEnabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2167
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->isMapZoomEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected static callMapViewPushCurrentLocationToLua(IJ)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "luaStateMemoryAddress"    # J

    .prologue
    .line 2155
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager;->pushMapCurrentLocationToLua(IJ)I

    move-result v0

    return v0
.end method

.method protected static callMapViewRemoveAllMarkers(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2196
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->removeAllMapViewMarkers(I)V

    .line 2197
    return-void
.end method

.method protected static callMapViewSetCenter(IDDZ)V
    .locals 7
    .param p0, "id"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "isAnimated"    # Z

    .prologue
    .line 2200
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/ViewManager;->setMapCenter(IDDZ)V

    .line 2201
    return-void
.end method

.method protected static callMapViewSetRegion(IDDDDZ)V
    .locals 11
    .param p0, "id"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "latitudeSpan"    # D
    .param p7, "longitudeSpan"    # D
    .param p9, "isAnimated"    # Z

    .prologue
    .line 2206
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/ansca/corona/ViewManager;->setMapRegion(IDDDDZ)V

    .line 2207
    return-void
.end method

.method protected static callMapViewSetScrollEnabled(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "enabled"    # Z

    .prologue
    .line 2163
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setMapScrollEnabled(IZ)V

    .line 2164
    return-void
.end method

.method protected static callMapViewSetType(ILjava/lang/String;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "mapTypeName"    # Ljava/lang/String;

    .prologue
    .line 2183
    invoke-static {p1}, Lcom/ansca/corona/MapType;->fromInvariantString(Ljava/lang/String;)Lcom/ansca/corona/MapType;

    move-result-object v0

    .line 2184
    .local v0, "mapType":Lcom/ansca/corona/MapType;
    if-eqz v0, :cond_0

    .line 2185
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ansca/corona/ViewManager;->setMapType(ILcom/ansca/corona/MapType;)V

    .line 2187
    :cond_0
    return-void
.end method

.method protected static callMapViewSetZoomEnabled(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "enabled"    # Z

    .prologue
    .line 2171
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setMapZoomEnabled(IZ)V

    .line 2172
    return-void
.end method

.method protected static callNetworkRequest(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "listenerId"    # I
    .param p3, "params"    # Ljava/util/HashMap;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;

    .prologue
    .line 2222
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    .local v0, "bridge":Lcom/ansca/corona/NativeToJavaBridge;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2223
    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/NativeToJavaBridge;->networkRequest(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    return-void
.end method

.method protected static callNotificationCancel(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 2786
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2788
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 2789
    .local v1, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    invoke-virtual {v1, p0}, Lcom/ansca/corona/notifications/NotificationServices;->removeById(I)Z

    .line 2790
    return-void
.end method

.method protected static callNotificationCancelAll()V
    .locals 2

    .prologue
    .line 2793
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2795
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 2796
    .local v1, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationServices;->removeAll()V

    .line 2797
    return-void
.end method

.method protected static callNotificationSchedule(JI)I
    .locals 23
    .param p0, "luaStateMemoryAddress"    # J
    .param p2, "luaStackIndex"    # I

    .prologue
    .line 2630
    const-wide/16 v19, 0x0

    cmp-long v19, p0, v19

    if-nez v19, :cond_0

    .line 2631
    const/16 v19, 0x0

    .line 2782
    :goto_0
    return v19

    .line 2635
    :cond_0
    const/4 v13, 0x0

    .line 2636
    .local v13, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static/range {p0 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v15

    .line 2637
    .local v15, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v15, :cond_1

    .line 2638
    invoke-virtual {v15}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v13

    .line 2640
    :cond_1
    if-nez v13, :cond_2

    .line 2641
    new-instance v13, Lcom/naef/jnlua/LuaState;

    .end local v13    # "luaState":Lcom/naef/jnlua/LuaState;
    move-wide/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 2645
    .restart local v13    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_2
    const/4 v8, 0x0

    .line 2647
    .local v8, "endTime":Ljava/util/Date;
    :try_start_0
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2649
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v19, "GMT"

    invoke-static/range {v19 .. v19}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 2654
    .local v4, "calendarTime":Ljava/util/GregorianCalendar;
    const-string v19, "year"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2655
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2656
    const/16 v19, 0x1

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2658
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2659
    const-string v19, "month"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2660
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2661
    const/16 v19, 0x2

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2663
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2664
    const-string v19, "day"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2665
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2666
    const/16 v19, 0x5

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2668
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2669
    const-string v19, "hour"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2670
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2671
    const/16 v19, 0xa

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2673
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2674
    const-string v19, "min"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2675
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2676
    const/16 v19, 0xc

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2678
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2679
    const-string v19, "sec"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2680
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2681
    const/16 v19, 0xd

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2683
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2686
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 2700
    .end local v4    # "calendarTime":Ljava/util/GregorianCalendar;
    :cond_9
    :goto_1
    if-nez v8, :cond_b

    .line 2701
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2688
    :cond_a
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v19

    sget-object v20, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 2690
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 2691
    .local v6, "currentTime":Ljava/util/Date;
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v11

    .line 2692
    .local v11, "fractionalSeconds":D
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const-wide v21, 0x408f400000000000L    # 1000.0

    mul-double v21, v21, v11

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "endTime":Ljava/util/Date;
    .local v9, "endTime":Ljava/util/Date;
    move-object v8, v9

    .end local v9    # "endTime":Ljava/util/Date;
    .restart local v8    # "endTime":Ljava/util/Date;
    goto :goto_1

    .line 2695
    .end local v6    # "currentTime":Ljava/util/Date;
    .end local v11    # "fractionalSeconds":D
    :catch_0
    move-exception v10

    .line 2696
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2705
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_b
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 2707
    .local v5, "context":Landroid/content/Context;
    new-instance v14, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v14, v5}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 2711
    .local v14, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    new-instance v16, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-direct/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;-><init>()V

    .line 2712
    .local v16, "settings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    invoke-virtual {v14}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setId(I)V

    .line 2713
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setEndTime(Ljava/util/Date;)V

    .line 2714
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTimestamp(Ljava/util/Date;)V

    .line 2717
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2718
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2719
    .local v3, "applicationName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 2720
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 2723
    add-int/lit8 p2, p2, 0x1

    .line 2724
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 2726
    const-string v19, "alert"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2727
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2728
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 2729
    .local v17, "text":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 2730
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 2751
    .end local v17    # "text":Ljava/lang/String;
    :cond_c
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2754
    const-string v19, "sound"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2755
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2756
    const/16 v18, 0x0

    .line 2758
    .local v18, "uri":Landroid/net/Uri;
    const/16 v19, -0x1

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 2763
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    .line 2765
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2768
    const-string v19, "custom"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2769
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2770
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-static {v13, v0}, Lcom/ansca/corona/CoronaData;->from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;

    move-result-object v7

    .line 2771
    .local v7, "customData":Lcom/ansca/corona/CoronaData;
    instance-of v0, v7, Lcom/ansca/corona/CoronaData$Table;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 2772
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    check-cast v7, Lcom/ansca/corona/CoronaData$Table;

    .end local v7    # "customData":Lcom/ansca/corona/CoronaData;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 2775
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2779
    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 2782
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result v19

    goto/16 :goto_0

    .line 2732
    :cond_10
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 2733
    const-string v19, "title"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2734
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2735
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 2737
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2738
    const-string v19, "body"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2739
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 2740
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 2741
    .restart local v17    # "text":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 2742
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 2744
    .end local v17    # "text":Ljava/lang/String;
    :cond_12
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2745
    const-string v19, "number"

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2746
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 2747
    invoke-virtual/range {v16 .. v16}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v19

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    .line 2749
    :cond_13
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto/16 :goto_2

    .line 2760
    .restart local v18    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 2761
    .restart local v10    # "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method protected static callOnAudioEnabled()V
    .locals 1

    .prologue
    .line 552
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    .line 553
    .local v0, "mediaManager":Lcom/ansca/corona/MediaManager;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    .line 556
    :cond_0
    return-void
.end method

.method protected static callOnRuntimeExiting()V
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 546
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->dispose()V

    .line 549
    :cond_0
    return-void
.end method

.method protected static callOnRuntimeLoaded(J)V
    .locals 1
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    .line 500
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 501
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/CoronaRuntime;->onLoaded(J)V

    .line 504
    :cond_0
    return-void
.end method

.method protected static callOnRuntimeResumed()V
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 538
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->onResumed()V

    .line 541
    :cond_0
    return-void
.end method

.method protected static callOnRuntimeStarted()V
    .locals 3

    .prologue
    .line 508
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    .line 509
    .local v1, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->onStarted()V

    .line 513
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 514
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_1

    .line 515
    new-instance v2, Lcom/ansca/corona/NativeToJavaBridge$3;

    invoke-direct {v2}, Lcom/ansca/corona/NativeToJavaBridge$3;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    :cond_1
    return-void
.end method

.method protected static callOnRuntimeSuspended()V
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 530
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->onSuspended()V

    .line 533
    :cond_0
    return-void
.end method

.method protected static callOpenUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1710
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static callPauseSound(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1690
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/events/EventManager;->pauseSound(I)V

    .line 1691
    return-void
.end method

.method protected static callPlaySound(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "soundName"    # Ljava/lang/String;
    .param p2, "loop"    # Z

    .prologue
    .line 1680
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ansca/corona/events/EventManager;->playSound(ILjava/lang/String;Z)V

    .line 1681
    return-void
.end method

.method protected static callPlayVideo(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaControlsEnabled"    # Z

    .prologue
    .line 1705
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ansca/corona/MediaManager;->playVideo(ILjava/lang/String;Z)V

    .line 1706
    return-void
.end method

.method protected static callPushApplicationOpenArgumentsToLuaTable(J)V
    .locals 2
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    .line 573
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 574
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/ansca/corona/NativeToJavaBridge;->pushArgumentsToLuaTable(JLandroid/content/Intent;)V

    .line 577
    :cond_0
    return-void
.end method

.method protected static callPushLaunchArgumentsToLuaTable(J)V
    .locals 2
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    .line 565
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 566
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getInitialIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/ansca/corona/NativeToJavaBridge;->pushArgumentsToLuaTable(JLandroid/content/Intent;)V

    .line 569
    :cond_0
    return-void
.end method

.method protected static callPushLocationNameCoordinatesToLua(Ljava/lang/String;J)I
    .locals 10
    .param p0, "locationName"    # Ljava/lang/String;
    .param p1, "luaStateMemoryAddress"    # J

    .prologue
    .line 2440
    const-wide/16 v1, 0x0

    .line 2441
    .local v1, "latitude":D
    const-wide/16 v4, 0x0

    .line 2444
    .local v4, "longitude":D
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2445
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2446
    const-string v8, "android.permission.INTERNET"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    :cond_0
    const/4 v6, 0x0

    .line 2450
    .local v6, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v7

    .line 2451
    .local v7, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v7, :cond_1

    .line 2452
    invoke-virtual {v7}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v6

    .line 2455
    :cond_1
    if-nez v6, :cond_2

    .line 2456
    new-instance v6, Lcom/naef/jnlua/LuaState;

    .end local v6    # "luaState":Lcom/naef/jnlua/LuaState;
    invoke-direct {v6, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 2459
    .restart local v6    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_2
    invoke-static {p0}, Lcom/ansca/corona/NativeToJavaBridge;->getLocationFromName(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 2460
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_3

    .line 2461
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2462
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2466
    :cond_3
    invoke-virtual {v6, v1, v2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 2467
    invoke-virtual {v6, v4, v5}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 2468
    const/4 v8, 0x2

    return v8
.end method

.method protected static callRecordGetBytes(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 2098
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(I)Lcom/ansca/corona/AudioRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/AudioRecorder;->getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object v0

    .line 2099
    .local v0, "buffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    if-eqz v0, :cond_0

    .line 2100
    iget-object v1, v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myBuffer:Ljava/nio/ByteBuffer;

    .line 2104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static callRecordGetCurrentByteCount(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 2109
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(I)Lcom/ansca/corona/AudioRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/AudioRecorder;->getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object v0

    .line 2110
    .local v0, "buffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    if-eqz v0, :cond_0

    .line 2111
    iget v1, v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myValidBytes:I

    .line 2112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static callRecordReleaseCurrentBuffer(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2117
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(I)Lcom/ansca/corona/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder;->releaseCurrentBuffer()V

    .line 2118
    return-void
.end method

.method protected static callRecordStart(Ljava/lang/String;I)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 2088
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(I)Lcom/ansca/corona/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/AudioRecorder;->startRecording(Ljava/lang/String;)V

    .line 2089
    return-void
.end method

.method protected static callRecordStop(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2093
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(I)Lcom/ansca/corona/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder;->stopRecording()V

    .line 2094
    return-void
.end method

.method protected static callRequestLocationAsync(J)V
    .locals 12
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    const/4 v11, -0x1

    .line 2359
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2360
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 2361
    const-string v9, "android.permission.INTERNET"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    :cond_0
    const/4 v7, 0x0

    .line 2366
    .local v7, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v8

    .line 2367
    .local v8, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v8, :cond_1

    .line 2368
    invoke-virtual {v8}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v7

    .line 2370
    :cond_1
    if-nez v7, :cond_2

    .line 2371
    new-instance v7, Lcom/naef/jnlua/LuaState;

    .end local v7    # "luaState":Lcom/naef/jnlua/LuaState;
    invoke-direct {v7, p0, p1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 2374
    .restart local v7    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_2
    const/4 v6, 0x0

    .line 2375
    .local v6, "locationString":Ljava/lang/String;
    const-string v9, "requestLocation"

    invoke-static {v7, v11, v9}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v9

    const-string v10, "The third arguement of requestLocation should be a listener."

    invoke-virtual {v7, v11, v9, v10}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 2376
    invoke-static {v7, v11}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v3

    .line 2377
    .local v3, "functionListener":I
    const/4 v9, -0x2

    invoke-virtual {v7, v9}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v6

    .line 2379
    move-object v5, v6

    .line 2380
    .local v5, "locationFinal":Ljava/lang/String;
    move v4, v3

    .line 2382
    .local v4, "functionListenerFinal":I
    new-instance v2, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v2, v7}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 2385
    .local v2, "dispatcher":Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/ansca/corona/NativeToJavaBridge$6;

    invoke-direct {v9, v5, v4, v2}, Lcom/ansca/corona/NativeToJavaBridge$6;-><init>(Ljava/lang/String;ILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2432
    .local v0, "asyncOperation":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2433
    return-void
.end method

.method protected static callRequestNearestAddressFromCoordinates(J)V
    .locals 21
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    .line 2229
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 2230
    .local v11, "context":Landroid/content/Context;
    if-eqz v11, :cond_0

    .line 2231
    const-string v3, "android.permission.INTERNET"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_0
    const/16 v17, 0x0

    .line 2235
    .local v17, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static/range {p0 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v18

    .line 2236
    .local v18, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v18, :cond_1

    .line 2237
    invoke-virtual/range {v18 .. v18}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v17

    .line 2239
    :cond_1
    if-nez v17, :cond_2

    .line 2240
    new-instance v17, Lcom/naef/jnlua/LuaState;

    .end local v17    # "luaState":Lcom/naef/jnlua/LuaState;
    move-object/from16 v0, v17

    move-wide/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 2243
    .restart local v17    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_2
    const/4 v3, -0x1

    const/16 v19, -0x1

    const-string v20, "requestLocation"

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v19

    const-string v20, "The third arguement of nearestAddress should be a listener."

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 2244
    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v12

    .line 2245
    .local v12, "functionListener":I
    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide v15

    .line 2246
    .local v15, "longitude":D
    const/4 v3, -0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide v13

    .line 2248
    .local v13, "latitude":D
    move-wide v4, v13

    .line 2249
    .local v4, "latitudeFinal":D
    move-wide v6, v15

    .line 2250
    .local v6, "longitudeFinal":D
    move v8, v12

    .line 2252
    .local v8, "functionListenerFinal":I
    new-instance v9, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 2254
    .local v9, "dispatcher":Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    new-instance v10, Ljava/lang/Thread;

    new-instance v3, Lcom/ansca/corona/NativeToJavaBridge$5;

    invoke-direct/range {v3 .. v9}, Lcom/ansca/corona/NativeToJavaBridge$5;-><init>(DDILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    invoke-direct {v10, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2354
    .local v10, "asyncOperation":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 2355
    return-void
.end method

.method protected static callRequestSystem(JLjava/lang/String;I)Z
    .locals 3
    .param p0, "luaStateMemoryAddress"    # J
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "luaStackIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 276
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 281
    const-string v2, "exitApplication"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$1;

    invoke-direct {v1}, Lcom/ansca/corona/NativeToJavaBridge$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    const-string v2, "suspendApplication"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$2;

    invoke-direct {v1}, Lcom/ansca/corona/NativeToJavaBridge$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected static callResumeSound(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1695
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/events/EventManager;->resumeSound(I)V

    .line 1696
    return-void
.end method

.method protected static callSaveBitmap([IIIILjava/lang/String;)Z
    .locals 7
    .param p0, "pixels"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "quality"    # I
    .param p4, "filePathName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1540
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1541
    const-string v5, "Corona"

    const-string v6, "callSaveBitmap has invalid controller"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    :goto_0
    return v4

    .line 1546
    :cond_1
    const/4 v0, 0x0

    .line 1547
    .local v0, "addToPhotoLibrary":Z
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    .line 1548
    :cond_2
    const/4 p4, 0x0

    .line 1549
    const-string v5, ".png"

    invoke-static {v5}, Lcom/ansca/corona/NativeToJavaBridge;->createUniqueFileNameInPicturesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1550
    .local v3, "newFile":Ljava/io/File;
    if-nez v3, :cond_3

    .line 1551
    const-string v5, "Corona"

    const-string v6, "ERROR: Failed to save bitmap to the photo library."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1554
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    .line 1555
    const/4 v0, 0x1

    .line 1559
    .end local v3    # "newFile":Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    .line 1561
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1567
    :goto_1
    if-eqz v1, :cond_0

    .line 1573
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v5

    invoke-virtual {v5, v1, p3, p4}, Lcom/ansca/corona/Controller;->saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)Z

    move-result v4

    .line 1574
    .local v4, "wasSaved":Z
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 1575
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/ansca/corona/Controller;->addImageFileToPhotoGallery(Ljava/lang/String;)V

    .line 1577
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1564
    .end local v4    # "wasSaved":Z
    :catch_0
    move-exception v2

    .line 1565
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected static callSaveImageToPhotoLibrary(Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePathName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1502
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return v5

    .line 1507
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 1508
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_0

    .line 1513
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, "fileExtensionName":Ljava/lang/String;
    invoke-static {v3}, Lcom/ansca/corona/NativeToJavaBridge;->createUniqueFileNameInPicturesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1515
    .local v1, "destinationFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1518
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1521
    .local v2, "destinationFilePathName":Ljava/lang/String;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p0, v2}, Lcom/ansca/corona/FileServices;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1523
    .local v4, "wasCopied":Z
    if-eqz v4, :cond_0

    .line 1528
    invoke-virtual {v0, v2}, Lcom/ansca/corona/Controller;->addImageFileToPhotoGallery(Ljava/lang/String;)V

    .line 1529
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected static callSetAccelerometerInterval(I)V
    .locals 1
    .param p0, "frequencyInHz"    # I

    .prologue
    .line 1830
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->setAccelerometerInterval(I)V

    .line 1831
    return-void
.end method

.method protected static callSetEventNotification(IZ)V
    .locals 1
    .param p0, "eventType"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 1850
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/Controller;->setEventNotification(IZ)V

    .line 1851
    return-void
.end method

.method protected static callSetGyroscopeInterval(I)V
    .locals 1
    .param p0, "frequencyInHz"    # I

    .prologue
    .line 1835
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->setGyroscopeInterval(I)V

    .line 1836
    return-void
.end method

.method protected static callSetIdleTimer(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1715
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->setIdleTimer(Z)V

    .line 1716
    return-void
.end method

.method protected static callSetLocationAccuracy(D)V
    .locals 0
    .param p0, "meters"    # D

    .prologue
    .line 1896
    return-void
.end method

.method protected static callSetLocationThreshold(D)V
    .locals 1
    .param p0, "meters"    # D

    .prologue
    .line 1900
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/Controller;->setLocationThreshold(D)V

    .line 1901
    return-void
.end method

.method protected static callSetStatusBarMode(I)V
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 1725
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$4;

    invoke-direct {v1, p0}, Lcom/ansca/corona/NativeToJavaBridge$4;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1737
    :cond_0
    return-void
.end method

.method protected static callSetTimer(I)V
    .locals 1
    .param p0, "milliseconds"    # I

    .prologue
    .line 1657
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->setTimer(I)V

    .line 1658
    return-void
.end method

.method protected static callSetVolume(IF)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "v"    # F

    .prologue
    .line 1910
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/MediaManager;->setVolume(IF)V

    .line 1911
    return-void
.end method

.method protected static callShowAppStorePopup(Ljava/util/HashMap;)Z
    .locals 1
    .param p0, "dictionaryOfSettings"    # Ljava/util/HashMap;

    .prologue
    .line 1820
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->showAppStoreWindow(Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method protected static callShowImagePicker(ILjava/lang/String;)V
    .locals 1
    .param p0, "imageSourceType"    # I
    .param p1, "destinationFilePath"    # Ljava/lang/String;

    .prologue
    .line 1800
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/Controller;->showImagePickerWindow(ILjava/lang/String;)V

    .line 1801
    return-void
.end method

.method protected static callShowNativeActivityIndicator()V
    .locals 1

    .prologue
    .line 1785
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->showNativeActivityIndicator()V

    .line 1786
    return-void
.end method

.method protected static callShowNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "buttonLabels"    # [Ljava/lang/String;

    .prologue
    .line 1770
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1771
    return-void
.end method

.method protected static callShowSendMailPopup(Ljava/util/HashMap;)V
    .locals 1
    .param p0, "dictionaryOfSettings"    # Ljava/util/HashMap;

    .prologue
    .line 1810
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->showSendMailWindow(Ljava/util/HashMap;)V

    .line 1811
    return-void
.end method

.method protected static callShowSendSmsPopup(Ljava/util/HashMap;)V
    .locals 1
    .param p0, "dictionaryOfSettings"    # Ljava/util/HashMap;

    .prologue
    .line 1815
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/Controller;->showSendSmsWindow(Ljava/util/HashMap;)V

    .line 1816
    return-void
.end method

.method protected static callShowTrialAlert()V
    .locals 1

    .prologue
    .line 1780
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->showTrialAlert()V

    .line 1781
    return-void
.end method

.method protected static callStopSound(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1685
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/events/EventManager;->stopSound(I)V

    .line 1686
    return-void
.end method

.method protected static callStoreFinishTransaction(Ljava/lang/String;)V
    .locals 2
    .param p0, "transactionStringId"    # Ljava/lang/String;

    .prologue
    .line 2591
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$9;

    invoke-direct {v1, p0}, Lcom/ansca/corona/NativeToJavaBridge$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2603
    :cond_0
    return-void
.end method

.method protected static callStoreInit(Ljava/lang/String;)V
    .locals 2
    .param p0, "storeName"    # Ljava/lang/String;

    .prologue
    .line 2554
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$7;

    invoke-direct {v1, p0}, Lcom/ansca/corona/NativeToJavaBridge$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2573
    :cond_0
    return-void
.end method

.method protected static callStorePurchase(Ljava/lang/String;)V
    .locals 2
    .param p0, "productName"    # Ljava/lang/String;

    .prologue
    .line 2576
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2577
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$8;

    invoke-direct {v1, p0}, Lcom/ansca/corona/NativeToJavaBridge$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2588
    :cond_0
    return-void
.end method

.method protected static callStoreRestoreCompletedTransactions()V
    .locals 2

    .prologue
    .line 2606
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2607
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$10;

    invoke-direct {v1}, Lcom/ansca/corona/NativeToJavaBridge$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2618
    :cond_0
    return-void
.end method

.method protected static callTextFieldCreate(IIIIIZ)I
    .locals 7
    .param p0, "id"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isSingleLine"    # Z

    .prologue
    .line 1915
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/ViewManager;->addTextView(IIIIIZ)V

    .line 1917
    const/4 v0, 0x1

    return v0
.end method

.method protected static callTextFieldGetAlign(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1993
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getTextViewAlign(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callTextFieldGetColor(I)[I
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 1964
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ansca/corona/ViewManager;->getTextViewColor(I)I

    move-result v0

    .line 1966
    .local v0, "argb":I
    const/4 v2, 0x4

    new-array v1, v2, [I

    .line 1968
    .local v1, "result":[I
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v1, v2

    .line 1969
    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v1, v2

    .line 1970
    const/4 v2, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aput v3, v1, v2

    .line 1971
    const/4 v2, 0x3

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    aput v3, v1, v2

    .line 1973
    return-object v1
.end method

.method protected static callTextFieldGetFont(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1988
    const-string v0, ""

    return-object v0
.end method

.method protected static callTextFieldGetInputType(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2003
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getTextViewInputType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callTextFieldGetSecure(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1998
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getTextViewPassword(I)Z

    move-result v0

    return v0
.end method

.method protected static callTextFieldGetSize(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1983
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getTextViewSize(I)F

    move-result v0

    return v0
.end method

.method protected static callTextFieldGetText(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1978
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->getTextViewText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callTextFieldIsEditable(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2013
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->isTextViewEditable(I)Z

    move-result v0

    return v0
.end method

.method protected static callTextFieldIsSingleLine(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2008
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->isTextViewSingleLine(I)Z

    move-result v0

    return v0
.end method

.method protected static callTextFieldSetAlign(ILjava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 1944
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewAlign(ILjava/lang/String;)V

    .line 1945
    return-void
.end method

.method protected static callTextFieldSetColor(IIIII)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .prologue
    .line 1922
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1924
    .local v0, "color":I
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ansca/corona/ViewManager;->setTextViewColor(II)V

    .line 1925
    return-void
.end method

.method protected static callTextFieldSetEditable(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "isEditable"    # Z

    .prologue
    .line 1959
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewEditable(IZ)V

    .line 1960
    return-void
.end method

.method protected static callTextFieldSetFont(ILjava/lang/String;F)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # F

    .prologue
    .line 1939
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/NativeToJavaBridge;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/ansca/corona/ViewManager;->setTextViewFont(ILjava/lang/String;FLcom/ansca/corona/CoronaActivity;)V

    .line 1940
    return-void
.end method

.method protected static callTextFieldSetInputType(ILjava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "inputType"    # Ljava/lang/String;

    .prologue
    .line 1954
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewInputType(ILjava/lang/String;)V

    .line 1955
    return-void
.end method

.method protected static callTextFieldSetSecure(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "isSecure"    # Z

    .prologue
    .line 1949
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewPassword(IZ)V

    .line 1950
    return-void
.end method

.method protected static callTextFieldSetSize(IF)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "fontSize"    # F

    .prologue
    .line 1934
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewSize(IF)V

    .line 1935
    return-void
.end method

.method protected static callTextFieldSetText(ILjava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1929
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->setTextViewText(ILjava/lang/String;)V

    .line 1930
    return-void
.end method

.method protected static callVibrate()V
    .locals 1

    .prologue
    .line 1890
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->vibrate()V

    .line 1891
    return-void
.end method

.method protected static callWebViewCreate(IIIIIZZ)V
    .locals 8
    .param p0, "id"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isPopup"    # Z
    .param p6, "autoCloseEnabled"    # Z

    .prologue
    .line 2123
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ansca/corona/ViewManager;->addWebView(IIIIIZZ)V

    .line 2124
    return-void
.end method

.method protected static callWebViewRequestGoBack(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2139
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewGoBack(I)V

    .line 2140
    return-void
.end method

.method protected static callWebViewRequestGoForward(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2143
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewGoForward(I)V

    .line 2144
    return-void
.end method

.method protected static callWebViewRequestLoadUrl(ILjava/lang/String;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2127
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/ViewManager;->requestWebViewLoadUrl(ILjava/lang/String;)V

    .line 2128
    return-void
.end method

.method protected static callWebViewRequestReload(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2131
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewReload(I)V

    .line 2132
    return-void
.end method

.method protected static callWebViewRequestStop(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2135
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewStop(I)V

    .line 2136
    return-void
.end method

.method private createBitmap(Ljava/lang/String;)Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
    .locals 28
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 975
    const/16 v24, 0x0

    .line 978
    .local v24, "result":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p1}, Lcom/ansca/corona/NativeToJavaBridge;->getBitmapFileInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v20

    .line 979
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    if-nez v20, :cond_0

    .line 981
    const/4 v3, 0x0

    .line 1102
    :goto_0
    return-object v3

    .line 986
    :cond_0
    const/16 v27, 0x0

    .line 987
    .local v27, "stream":Ljava/io/InputStream;
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v16

    .line 988
    .local v16, "isAssetFile":Z
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/NativeToJavaBridge;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 989
    if-nez v27, :cond_1

    .line 990
    const/4 v3, 0x0

    goto :goto_0

    .line 996
    :cond_1
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getMaxTextureSize()I

    move-result v3

    const/16 v4, 0x800

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 997
    .local v9, "MAX_DIMENSION_IN_PIXELS":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    .line 998
    .local v22, "originalWidth":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    .line 999
    .local v21, "originalHeight":I
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v9

    div-float v23, v3, v4

    .line 1000
    .local v23, "percentLength":F
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1001
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v23, v3

    if-lez v3, :cond_2

    .line 1002
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1003
    const/high16 v3, 0x40000000    # 2.0f

    div-float v23, v23, v3

    goto :goto_1

    .line 1005
    :cond_2
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 1006
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapAsset: Downsampling image file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' to fit max texture size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_3
    mul-int v3, v22, v21

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v4

    int-to-long v14, v3

    .line 1014
    .local v14, "imagePixelCount":J
    const-wide/16 v3, 0x4

    mul-long v18, v14, v3

    .line 1015
    .local v18, "memoryUsage":J
    const-wide/16 v3, 0x2

    mul-long v18, v18, v3

    .line 1016
    const-wide/32 v3, 0x1e8480

    add-long v18, v18, v3

    .line 1018
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1019
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    cmp-long v3, v18, v3

    if-lez v3, :cond_4

    .line 1020
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapAsset: Not enough memory to load file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as a 32-bit image. Reducing the image quality to 16-bit."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1026
    :cond_4
    const/4 v2, 0x0

    .line 1028
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1052
    :goto_2
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1056
    :goto_3
    if-nez v2, :cond_6

    .line 1057
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapAsset: Unable to decode file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1030
    :catch_0
    move-exception v17

    .line 1034
    .local v17, "memoryException":Ljava/lang/OutOfMemoryError;
    :try_start_2
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_5

    .line 1035
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapAsset: Failed to load file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as a 32-bit image. Reducing the image quality to 16-bit."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1038
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1039
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 1042
    :cond_5
    throw v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1045
    :catch_1
    move-exception v11

    .line 1046
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1049
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v17    # "memoryException":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v11

    .line 1050
    .restart local v11    # "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1053
    .end local v11    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 1054
    .restart local v11    # "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1062
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1063
    .local v10, "downsampleScale":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v22

    if-eq v3, v0, :cond_7

    .line 1064
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v22

    int-to-float v4, v0

    div-float v10, v3, v4

    .line 1070
    :cond_7
    if-nez v16, :cond_8

    .line 1072
    :try_start_3
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v13, "exifReader":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    .line 1075
    .local v12, "exifOrientation":I
    const/16 v26, 0x0

    .line 1076
    .local v26, "rotationInDegrees":I
    packed-switch v12, :pswitch_data_0

    .line 1087
    :goto_4
    :pswitch_0
    if-lez v26, :cond_8

    .line 1088
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1089
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v26

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1090
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1091
    .local v25, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1092
    move-object/from16 v2, v25

    .line 1102
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "exifOrientation":I
    .end local v13    # "exifReader":Landroid/media/ExifInterface;
    .end local v25    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v26    # "rotationInDegrees":I
    :cond_8
    :goto_5
    new-instance v3, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v10}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(Lcom/ansca/corona/NativeToJavaBridge;Landroid/graphics/Bitmap;F)V

    goto/16 :goto_0

    .line 1078
    .restart local v12    # "exifOrientation":I
    .restart local v13    # "exifReader":Landroid/media/ExifInterface;
    .restart local v26    # "rotationInDegrees":I
    :pswitch_1
    const/16 v26, 0x5a

    .line 1079
    goto :goto_4

    .line 1081
    :pswitch_2
    const/16 v26, 0xb4

    .line 1082
    goto :goto_4

    .line 1084
    :pswitch_3
    const/16 v26, 0x10e

    goto :goto_4

    .line 1095
    .end local v12    # "exifOrientation":I
    .end local v13    # "exifReader":Landroid/media/ExifInterface;
    .end local v26    # "rotationInDegrees":I
    :catch_4
    move-exception v11

    .line 1096
    .local v11, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapAsset: Not enough memory to rotate image \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1098
    .end local v11    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v3

    goto :goto_5

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static createGrayscaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 885
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 886
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 890
    .local v3, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 891
    .local v5, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 892
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 893
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 894
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 895
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 896
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 897
    invoke-virtual {v0, p0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 898
    return-object v5
.end method

.method protected static createUniqueFileNameInPicturesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p0, "fileExtensionName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1438
    if-nez p0, :cond_2

    .line 1439
    const-string p0, ""

    .line 1446
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1447
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_3

    .line 1490
    :cond_1
    :goto_1
    return-object v9

    .line 1441
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string v10, "."

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1442
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1453
    .restart local v2    # "context":Landroid/content/Context;
    :cond_3
    sget-object v10, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1455
    .local v4, "directory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1456
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 1457
    .local v3, "didCreate":Z
    if-nez v3, :cond_4

    .line 1460
    new-instance v4, Ljava/io/File;

    .end local v4    # "directory":Ljava/io/File;
    const-string v10, "/mnt/media/My Files/Pictures"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1461
    .restart local v4    # "directory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1469
    .end local v3    # "didCreate":Z
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1470
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1471
    .local v1, "applicationName":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_6

    .line 1472
    :cond_5
    const-string v1, "Corona"

    .line 1476
    :cond_6
    const/4 v9, 0x0

    .line 1478
    .local v9, "uniqueFile":Ljava/io/File;
    const/4 v7, 0x1

    .local v7, "index":I
    :goto_2
    const/16 v10, 0x2710

    if-gt v7, v10, :cond_1

    .line 1479
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Picture "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1480
    .local v6, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1481
    .local v8, "nextFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_7

    .line 1482
    move-object v9, v8

    .line 1483
    goto/16 :goto_1

    .line 1478
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1487
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "nextFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 1488
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private getBitmapAsset(Ljava/lang/String;)[I
    .locals 11
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 1107
    const/4 v1, 0x0

    .line 1110
    .local v1, "pixels":[I
    invoke-direct {p0, p1}, Lcom/ansca/corona/NativeToJavaBridge;->createBitmap(Ljava/lang/String;)Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    move-result-object v10

    .line 1111
    .local v10, "result":Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 1114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapWidth:I

    .line 1115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapHeight:I

    .line 1116
    invoke-virtual {v10}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getScaleFactor()F

    move-result v2

    iput v2, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapScaleFactor:F

    .line 1121
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1141
    :goto_1
    if-eqz v1, :cond_0

    .line 1143
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1151
    :cond_0
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1155
    :cond_1
    return-object v1

    .line 1111
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1123
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 1127
    .local v9, "memoryException":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1130
    :catch_1
    move-exception v8

    .line 1131
    .local v8, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapAsset: Ran out of memory in the Java VM loading an image ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1136
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v9    # "memoryException":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v8

    .line 1137
    .restart local v8    # "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1145
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 1146
    .restart local v8    # "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getBitmapFileInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 6
    .param p1, "imageFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 908
    const/4 v1, 0x0

    .line 911
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-object v4

    .line 916
    :cond_1
    const/4 v3, 0x0

    .line 919
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/ansca/corona/NativeToJavaBridge;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v4, p1}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 920
    if-eqz v3, :cond_2

    .line 922
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 924
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 928
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v4, :cond_5

    .line 929
    const/4 v1, 0x0

    .line 937
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 938
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    move-object v4, v1

    .line 944
    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    if-eqz v3, :cond_3

    .line 938
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 939
    :catch_1
    move-exception v4

    goto :goto_2

    .line 937
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v3, :cond_4

    .line 938
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 939
    :cond_4
    :goto_5
    throw v4

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_5

    .line 937
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_4

    .line 933
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_3

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method private getBitmapMaskAsset(Ljava/lang/String;)[B
    .locals 13
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1160
    const/4 v8, 0x0

    .line 1162
    .local v8, "bytes":[B
    invoke-direct {p0, p1}, Lcom/ansca/corona/NativeToJavaBridge;->createBitmap(Ljava/lang/String;)Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    move-result-object v12

    .line 1163
    .local v12, "result":Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 1165
    move-object v11, v0

    .line 1166
    .local v11, "oldBitmap":Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/ansca/corona/NativeToJavaBridge;->createGrayscaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1167
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 1169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapWidth:I

    .line 1170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapHeight:I

    .line 1171
    invoke-virtual {v12}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getScaleFactor()F

    move-result v3

    iput v3, p0, Lcom/ansca/corona/NativeToJavaBridge;->myLastBitmapScaleFactor:F

    .line 1173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v10, v3, v4

    .line 1174
    .local v10, "numPixels":I
    new-array v1, v10, [I

    .line 1175
    .local v1, "pixels":[I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1178
    new-array v8, v10, [B

    .line 1179
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 1182
    aget v2, v1, v9

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v9

    .line 1179
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1163
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v9    # "i":I
    .end local v10    # "numPixels":I
    .end local v11    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1186
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v8
.end method

.method private static getBridge()Lcom/ansca/corona/NativeToJavaBridge;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/ansca/corona/Controller;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    return-object v0
.end method

.method private static getLocationFromName(Ljava/lang/String;)Landroid/location/Location;
    .locals 14
    .param p0, "locationName"    # Ljava/lang/String;

    .prologue
    .line 2476
    const/4 v5, 0x0

    .line 2477
    .local v5, "locationObject":Landroid/location/Location;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 2478
    const/4 v2, 0x0

    .line 2482
    .local v2, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.googleapis.com/maps/api/geocode/json?address="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&sensor=true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2484
    .local v11, "url":Ljava/lang/String;
    const-string v12, "Android"

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 2485
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v12, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 2486
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_0

    .line 2487
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2488
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 2491
    .local v8, "responseMessage":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 2492
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2493
    .local v7, "response":Lorg/json/JSONObject;
    const-string v12, "results"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2494
    .local v9, "result":Lorg/json/JSONArray;
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 2495
    .local v10, "result1":Lorg/json/JSONObject;
    const-string v12, "geometry"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2496
    .local v1, "geo":Lorg/json/JSONObject;
    const-string v12, "location"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2497
    .local v4, "location":Lorg/json/JSONObject;
    new-instance v6, Landroid/location/Location;

    const-string v12, "Google"

    invoke-direct {v6, v12}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2498
    .end local v5    # "locationObject":Landroid/location/Location;
    .local v6, "locationObject":Landroid/location/Location;
    :try_start_1
    const-string v12, "lat"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    .line 2499
    const-string v12, "lng"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/location/Location;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 2508
    .end local v1    # "geo":Lorg/json/JSONObject;
    .end local v4    # "location":Lorg/json/JSONObject;
    .end local v6    # "locationObject":Landroid/location/Location;
    .end local v7    # "response":Lorg/json/JSONObject;
    .end local v8    # "responseMessage":Ljava/lang/String;
    .end local v9    # "result":Lorg/json/JSONArray;
    .end local v10    # "result1":Lorg/json/JSONObject;
    .restart local v5    # "locationObject":Landroid/location/Location;
    :cond_0
    if-eqz v2, :cond_1

    .line 2509
    :try_start_2
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2514
    .end local v2    # "httpClient":Landroid/net/http/AndroidHttpClient;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 2504
    .restart local v2    # "httpClient":Landroid/net/http/AndroidHttpClient;
    :catch_0
    move-exception v0

    .line 2505
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2508
    if-eqz v2, :cond_1

    .line 2509
    :try_start_4
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2510
    :catch_1
    move-exception v12

    goto :goto_0

    .line 2508
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_2
    if-eqz v2, :cond_2

    .line 2509
    :try_start_5
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2510
    :cond_2
    :goto_3
    throw v12

    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v11    # "url":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_0

    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "url":Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_3

    .line 2508
    .end local v5    # "locationObject":Landroid/location/Location;
    .restart local v1    # "geo":Lorg/json/JSONObject;
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v4    # "location":Lorg/json/JSONObject;
    .restart local v6    # "locationObject":Landroid/location/Location;
    .restart local v7    # "response":Lorg/json/JSONObject;
    .restart local v8    # "responseMessage":Ljava/lang/String;
    .restart local v9    # "result":Lorg/json/JSONArray;
    .restart local v10    # "result1":Lorg/json/JSONObject;
    .restart local v11    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "locationObject":Landroid/location/Location;
    .restart local v5    # "locationObject":Landroid/location/Location;
    goto :goto_2

    .line 2504
    .end local v5    # "locationObject":Landroid/location/Location;
    .restart local v6    # "locationObject":Landroid/location/Location;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "locationObject":Landroid/location/Location;
    .restart local v5    # "locationObject":Landroid/location/Location;
    goto :goto_1
.end method

.method private getRawAssetExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 766
    const/4 v2, 0x0

    .line 769
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/ansca/corona/NativeToJavaBridge;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v3, p1}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 770
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 771
    :goto_0
    if-eqz v2, :cond_0

    .line 772
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return v2

    .line 770
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 775
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 776
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: asset file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static instantiateClass(Lcom/naef/jnlua/LuaState;Lcom/ansca/corona/CoronaRuntime;Ljava/lang/Class;)I
    .locals 9
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Lcom/ansca/corona/CoronaRuntime;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 334
    .local v5, "result":I
    :try_start_0
    const-class v6, Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    sget-object v6, Lcom/ansca/corona/NativeToJavaBridge;->sPluginCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/naef/jnlua/JavaFunction;

    .line 337
    .local v2, "f":Lcom/naef/jnlua/JavaFunction;
    if-nez v2, :cond_1

    .line 338
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 340
    .local v4, "o":Ljava/lang/Object;
    const-class v6, Lcom/ansca/corona/CoronaRuntimeListener;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    move-object v0, v4

    check-cast v0, Lcom/ansca/corona/CoronaRuntimeListener;

    move-object v3, v0

    .line 344
    .local v3, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    invoke-static {v3}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    .line 346
    invoke-interface {v3, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onLoaded(Lcom/ansca/corona/CoronaRuntime;)V

    .line 349
    .end local v3    # "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    :cond_0
    move-object v0, v4

    check-cast v0, Lcom/naef/jnlua/JavaFunction;

    move-object v2, v0

    .line 352
    sget-object v6, Lcom/ansca/corona/NativeToJavaBridge;->sPluginCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v5, 0x1

    .line 363
    .end local v2    # "f":Lcom/naef/jnlua/JavaFunction;
    :cond_2
    :goto_0
    return v5

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "Corona"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: Could not instantiate class ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private networkRequest(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "listenerId"    # I
    .param p4, "headers"    # Ljava/util/HashMap;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;

    .prologue
    .line 1318
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1319
    .local v5, "context":Landroid/content/Context;
    if-eqz v5, :cond_0

    .line 1320
    const-string v16, "android.permission.INTERNET"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_0
    if-eqz p4, :cond_7

    .line 1325
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v12, "invalidKeyList":Ljava/util/ArrayList;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1328
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 1329
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1335
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "content-length"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1336
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1341
    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 1342
    .local v15, "value":Ljava/lang/Object;
    if-nez v15, :cond_4

    .line 1343
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1345
    :cond_4
    instance-of v0, v15, Ljava/lang/Number;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 1346
    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v16 .. v16}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    .line 1347
    .local v9, "formatter":Ljava/text/NumberFormat;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1348
    check-cast v15, Ljava/lang/Number;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1350
    .end local v9    # "formatter":Ljava/text/NumberFormat;
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 1351
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1354
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1355
    .local v14, "key":Ljava/lang/Object;
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1360
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "invalidKeyList":Ljava/util/ArrayList;
    .end local v14    # "key":Ljava/lang/Object;
    :cond_7
    new-instance v4, Lcom/loopj/android/http/AsyncHttpClient;

    const-string v16, "My User Agent"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v4, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v10, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;-><init>(Lcom/ansca/corona/NativeToJavaBridge;ILjava/lang/String;Ljava/lang/String;)V

    .line 1366
    .local v10, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v13, "javaurl":Ljava/net/URL;
    const-string v16, "get"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1369
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v10}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1396
    .end local v13    # "javaurl":Ljava/net/URL;
    :cond_8
    :goto_2
    return-void

    .line 1371
    .restart local v13    # "javaurl":Ljava/net/URL;
    :cond_9
    const-string v16, "head"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1372
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v10}, Lcom/loopj/android/http/AsyncHttpClient;->head(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1387
    .end local v13    # "javaurl":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 1389
    .local v8, "ex":Ljava/lang/Exception;
    if-eqz p3, :cond_8

    .line 1390
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v7

    .line 1391
    .local v7, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v7, :cond_8

    .line 1392
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2}, Lcom/ansca/corona/events/EventManager;->networkRequestEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1374
    .end local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v13    # "javaurl":Ljava/net/URL;
    :cond_a
    :try_start_1
    const-string v16, "delete"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1375
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v10}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_2

    .line 1377
    :cond_b
    const-string v16, "put"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1378
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2, v10}, Lcom/loopj/android/http/AsyncHttpClient;->put(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_2

    .line 1380
    :cond_c
    const-string v16, "post"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1381
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2, v10}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_2

    .line 1384
    :cond_d
    new-instance v16, Ljava/lang/Exception;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HTTP method \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' not supported"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method protected static ping()V
    .locals 2

    .prologue
    .line 320
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NativeToJavaBridge.ping()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private static pushArgumentsToLuaTable(JLandroid/content/Intent;)V
    .locals 16
    .param p0, "luaStateMemoryAddress"    # J
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 582
    const-wide/16 v14, 0x0

    cmp-long v14, p0, v14

    if-eqz v14, :cond_0

    if-nez p2, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v8, 0x0

    .line 588
    .local v8, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static/range {p0 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v11

    .line 589
    .local v11, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v11, :cond_2

    .line 590
    invoke-virtual {v11}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v8

    .line 592
    :cond_2
    if-nez v8, :cond_3

    .line 593
    new-instance v8, Lcom/naef/jnlua/LuaState;

    .end local v8    # "luaState":Lcom/naef/jnlua/LuaState;
    move-wide/from16 v0, p0

    invoke-direct {v8, v0, v1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 597
    .restart local v8    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_3
    invoke-virtual {v8}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v10

    .line 598
    .local v10, "rootLuaTableStackIndex":I
    invoke-virtual {v8, v10}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 604
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v8, v14}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 605
    const-string v14, "url"

    invoke-virtual {v8, v10, v14}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 608
    invoke-virtual {v8}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 611
    invoke-virtual {v8}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v6

    .line 614
    .local v6, "intentLuaTableStackIndex":I
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v8, v14}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 615
    const-string v14, "url"

    invoke-virtual {v8, v6, v14}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_8

    .end local v2    # "action":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 620
    const-string v14, "action"

    invoke-virtual {v8, v6, v14}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v13

    .line 624
    .local v13, "wasPushed":Z
    if-nez v13, :cond_4

    .line 625
    invoke-virtual {v8}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 627
    :cond_4
    const-string v14, "categories"

    invoke-virtual {v8, v6, v14}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 630
    invoke-virtual {v8}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 632
    invoke-virtual {v8}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v4

    .line 633
    .local v4, "extrasLuaTableStackIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 634
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 635
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 636
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v13

    .line 637
    if-eqz v13, :cond_5

    .line 638
    invoke-virtual {v8, v4, v7}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_4

    .line 604
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "extrasLuaTableStackIndex":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "intentLuaTableStackIndex":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v13    # "wasPushed":Z
    :cond_6
    const-string v14, ""

    goto :goto_1

    .line 614
    .restart local v6    # "intentLuaTableStackIndex":I
    :cond_7
    const-string v14, ""

    goto :goto_2

    .line 619
    .restart local v2    # "action":Ljava/lang/String;
    :cond_8
    const-string v2, ""

    goto :goto_3

    .line 643
    .end local v2    # "action":Ljava/lang/String;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "extrasLuaTableStackIndex":I
    .restart local v13    # "wasPushed":Z
    :cond_9
    const-string v14, "extras"

    invoke-virtual {v8, v6, v14}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 645
    const-string v14, "androidIntent"

    invoke-virtual {v8, v10, v14}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 649
    const-string v9, "notification"

    .line 650
    .local v9, "notificationEventName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v13

    .line 651
    if-eqz v13, :cond_0

    .line 652
    invoke-virtual {v8, v10, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z
    .locals 12
    .param p0, "luaState"    # Lcom/naef/jnlua/LuaState;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 659
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 755
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v10

    .line 664
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v11, p1, Ljava/lang/Boolean;

    if-eqz v11, :cond_3

    .line 665
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 755
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 667
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v11, p1, Ljava/lang/Float;

    if-nez v11, :cond_4

    instance-of v11, p1, Ljava/lang/Double;

    if-eqz v11, :cond_5

    .line 668
    :cond_4
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto :goto_1

    .line 670
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v11, p1, Ljava/lang/Number;

    if-eqz v11, :cond_6

    .line 671
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto :goto_1

    .line 673
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v11, p1, Ljava/lang/Character;

    if-eqz v11, :cond_7

    .line 674
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 676
    :cond_7
    instance-of v11, p1, Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 677
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 679
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v11, p1, Ljava/io/File;

    if-eqz v11, :cond_9

    .line 680
    check-cast p1, Ljava/io/File;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 682
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v11, p1, Landroid/net/Uri;

    if-eqz v11, :cond_a

    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 685
    :cond_a
    instance-of v11, p1, Lcom/ansca/corona/CoronaData;

    if-eqz v11, :cond_b

    .line 686
    check-cast p1, Lcom/ansca/corona/CoronaData;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    goto :goto_1

    .line 688
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v11, p1, Landroid/os/Bundle;

    if-eqz v11, :cond_e

    move-object v2, p1

    .line 689
    check-cast v2, Landroid/os/Bundle;

    .line 690
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v11

    if-lez v11, :cond_d

    .line 691
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 692
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v7

    .line 693
    .local v7, "luaTableStackIndex":I
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 694
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v9

    .line 695
    .local v9, "wasPushed":Z
    if-eqz v9, :cond_c

    .line 696
    invoke-virtual {p0, v7, v6}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_2

    .line 701
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "luaTableStackIndex":I
    .end local v9    # "wasPushed":Z
    :cond_d
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto/16 :goto_1

    .line 704
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 705
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 706
    .local v1, "arrayLength":I
    if-lez v1, :cond_10

    .line 707
    invoke-virtual {p0, v1, v10}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 708
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v7

    .line 709
    .restart local v7    # "luaTableStackIndex":I
    const/4 v0, 0x0

    .local v0, "arrayIndex":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 710
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v9

    .line 711
    .restart local v9    # "wasPushed":Z
    if-eqz v9, :cond_f

    .line 712
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    .line 709
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 717
    .end local v0    # "arrayIndex":I
    .end local v7    # "luaTableStackIndex":I
    .end local v9    # "wasPushed":Z
    :cond_10
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto/16 :goto_1

    .line 720
    .end local v1    # "arrayLength":I
    :cond_11
    instance-of v11, p1, Ljava/util/Map;

    if-eqz v11, :cond_15

    move-object v8, p1

    .line 721
    check-cast v8, Ljava/util/Map;

    .line 722
    .local v8, "map":Ljava/util/Map;
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_14

    .line 723
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 724
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v7

    .line 725
    .restart local v7    # "luaTableStackIndex":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 726
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-nez v10, :cond_13

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/Number;

    if-eqz v10, :cond_12

    .line 727
    :cond_13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v9

    .line 728
    .restart local v9    # "wasPushed":Z
    if-eqz v9, :cond_12

    .line 729
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v7, v10}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_4

    .line 735
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "luaTableStackIndex":I
    .end local v9    # "wasPushed":Z
    :cond_14
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto/16 :goto_1

    .line 738
    .end local v8    # "map":Ljava/util/Map;
    :cond_15
    instance-of v11, p1, Ljava/lang/Iterable;

    if-eqz v11, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 740
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v7

    .line 741
    .restart local v7    # "luaTableStackIndex":I
    const/4 v0, 0x0

    .line 742
    .restart local v0    # "arrayIndex":I
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 743
    .local v3, "collectionValue":Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v9

    .line 744
    .restart local v9    # "wasPushed":Z
    if-eqz v9, :cond_16

    .line 745
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    .line 747
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 748
    goto :goto_5
.end method


# virtual methods
.method public getActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge;->myActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method public getBytesFromFile(Ljava/lang/String;)[B
    .locals 14
    .param p1, "filePathName"    # Ljava/lang/String;

    .prologue
    .line 795
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_2

    .line 796
    :cond_0
    const/4 v2, 0x0

    .line 868
    :cond_1
    :goto_0
    return-object v2

    .line 800
    :cond_2
    const/4 v2, 0x0

    .line 801
    .local v2, "bytes":[B
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 806
    const/4 v10, 0x0

    .line 807
    .local v10, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .line 809
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 810
    .local v0, "apkFilePathName":Ljava/lang/String;
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "assets/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 812
    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v9, :cond_4

    .line 813
    invoke-virtual {v11, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 814
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v1, v12

    .line 815
    .local v1, "byteCount":I
    if-lez v1, :cond_4

    .line 816
    new-array v2, v1, [B

    .line 817
    const/4 v3, 0x0

    .local v3, "bytesCopied":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 818
    sub-int v4, v1, v3

    .line 819
    .local v4, "bytesToRead":I
    const/16 v12, 0x400

    if-le v4, v12, :cond_3

    .line 820
    const/16 v4, 0x400

    .line 822
    :cond_3
    invoke-virtual {v7, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v6

    .line 823
    .local v6, "readBytes":I
    add-int/2addr v3, v6

    .line 824
    goto :goto_1

    .end local v1    # "byteCount":I
    .end local v3    # "bytesCopied":I
    .end local v4    # "bytesToRead":I
    .end local v6    # "readBytes":I
    :cond_4
    move-object v10, v11

    .line 831
    .end local v0    # "apkFilePathName":Ljava/lang/String;
    .end local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2
    if-eqz v7, :cond_5

    .line 832
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 835
    :cond_5
    :goto_3
    if-eqz v10, :cond_1

    .line 836
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v12

    goto :goto_0

    .line 828
    :catch_1
    move-exception v5

    .line 829
    .local v5, "ex":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 842
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v7    # "stream":Ljava/io/InputStream;
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    const/4 v7, 0x0

    .line 844
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 845
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 846
    .restart local v1    # "byteCount":I
    if-lez v1, :cond_8

    .line 847
    new-array v2, v1, [B

    .line 848
    const/4 v3, 0x0

    .restart local v3    # "bytesCopied":I
    :goto_5
    if-ge v3, v1, :cond_8

    .line 849
    sub-int v4, v1, v3

    .line 850
    .restart local v4    # "bytesToRead":I
    const/16 v12, 0x400

    if-le v4, v12, :cond_7

    .line 851
    const/16 v4, 0x400

    .line 853
    :cond_7
    invoke-virtual {v8, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v6

    .line 854
    .restart local v6    # "readBytes":I
    add-int/2addr v3, v6

    .line 855
    goto :goto_5

    .end local v3    # "bytesCopied":I
    .end local v4    # "bytesToRead":I
    .end local v6    # "readBytes":I
    :cond_8
    move-object v7, v8

    .line 861
    .end local v1    # "byteCount":I
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v7, :cond_1

    .line 862
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 863
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 858
    :catch_3
    move-exception v5

    .line 859
    .restart local v5    # "ex":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 833
    .end local v5    # "ex":Ljava/lang/Exception;
    .local v7, "stream":Ljava/io/InputStream;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v12

    goto :goto_3

    .line 858
    .end local v7    # "stream":Ljava/io/InputStream;
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 828
    .restart local v0    # "apkFilePathName":Ljava/lang/String;
    .local v7, "stream":Ljava/io/InputStream;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v5

    move-object v10, v11

    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public getDexCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge;->myDexCacheDir:Ljava/lang/String;

    return-object v0
.end method
