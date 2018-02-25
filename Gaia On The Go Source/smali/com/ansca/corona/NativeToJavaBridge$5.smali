.class final Lcom/ansca/corona/NativeToJavaBridge$5;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callRequestNearestAddressFromCoordinates(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field final synthetic val$functionListenerFinal:I

.field final synthetic val$latitudeFinal:D

.field final synthetic val$longitudeFinal:D


# direct methods
.method constructor <init>(DDILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V
    .locals 0

    .prologue
    .line 2254
    iput-wide p1, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$latitudeFinal:D

    iput-wide p3, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$longitudeFinal:D

    iput p5, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$functionListenerFinal:I

    iput-object p6, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2257
    const/4 v7, 0x0

    .line 2258
    .local v7, "address":Landroid/location/Address;
    const/4 v10, 0x0

    .line 2264
    .local v10, "errorMessage":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 2265
    .local v1, "geocoder":Landroid/location/Geocoder;
    iget-wide v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$latitudeFinal:D

    iget-wide v4, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$longitudeFinal:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 2266
    .local v9, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2267
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/location/Address;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v9    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    move-object v8, v7

    .line 2280
    .local v8, "addressFinal":Landroid/location/Address;
    new-instance v12, Lcom/ansca/corona/NativeToJavaBridge$5$1;

    invoke-direct {v12, p0, v8}, Lcom/ansca/corona/NativeToJavaBridge$5$1;-><init>(Lcom/ansca/corona/NativeToJavaBridge$5;Landroid/location/Address;)V

    .line 2351
    .local v12, "task":Lcom/ansca/corona/CoronaRuntimeTask;
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {v2, v12}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 2352
    return-void

    .line 2270
    .end local v8    # "addressFinal":Landroid/location/Address;
    .end local v12    # "task":Lcom/ansca/corona/CoronaRuntimeTask;
    .restart local v1    # "geocoder":Landroid/location/Geocoder;
    .restart local v9    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    :try_start_1
    const-string v10, "Address not found for given coordinates."
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2273
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v9    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v11

    .line 2274
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method
