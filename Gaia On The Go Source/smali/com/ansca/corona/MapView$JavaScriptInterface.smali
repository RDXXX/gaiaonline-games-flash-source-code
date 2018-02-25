.class Lcom/ansca/corona/MapView$JavaScriptInterface;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field private final fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/ansca/corona/MapView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/MapView;)V
    .locals 3

    .prologue
    .line 634
    iput-object p1, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ic_maps_indicator_current_position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ic_maps_indicator_current_position_anim1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ic_maps_indicator_current_position_anim2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ic_maps_indicator_current_position_anim3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ic_maps_indicator_current_position_anim2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ic_maps_indicator_current_position_anim1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/MapView;Lcom/ansca/corona/MapView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/MapView;
    .param p2, "x1"    # Lcom/ansca/corona/MapView$1;

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/ansca/corona/MapView$JavaScriptInterface;-><init>(Lcom/ansca/corona/MapView;)V

    return-void
.end method


# virtual methods
.method public getCurrentLocationMarkerUrlByIndex(I)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 662
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    array-length v7, v7

    if-lt p1, v7, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-object v6

    .line 668
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v7}, Lcom/ansca/corona/MapView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ansca/corona/CoronaEnvironment;->getInternalResourceCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 671
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 675
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {v7}, Lcom/ansca/corona/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v3

    .line 677
    .local v3, "resourceId":I
    invoke-static {}, Lcom/ansca/corona/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 679
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 681
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    if-eqz v5, :cond_2

    .line 689
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 692
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 693
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 699
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "resourceId":I
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 683
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 684
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    if-eqz v4, :cond_4

    .line 689
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 692
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 688
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_5

    .line 689
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 692
    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 693
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw v6

    .line 690
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "resourceId":I
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v3    # "resourceId":I
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "ex":Ljava/lang/Exception;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 688
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "resourceId":I
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 683
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public getCurrentLocationMarkerUrlCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getMapTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    iget-object v1, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v1}, Lcom/ansca/corona/MapView;->getMapType()Lcom/ansca/corona/MapType;

    move-result-object v0

    .line 708
    .local v0, "mapType":Lcom/ansca/corona/MapType;
    if-nez v0, :cond_0

    .line 709
    sget-object v0, Lcom/ansca/corona/MapType;->STANDARD:Lcom/ansca/corona/MapType;

    .line 711
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/MapType;->toInvariantString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public onCurrentLocationLost()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/MapView;->access$502(Lcom/ansca/corona/MapView;Landroid/location/Location;)Landroid/location/Location;

    .line 760
    return-void
.end method

.method public onCurrentLocationReceived(DDDDDDDJ)V
    .locals 4
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "positionAccuracyInMeters"    # D
    .param p7, "altitudeInMeters"    # D
    .param p9, "altitudeAccuracyInMeters"    # D
    .param p11, "headingInDegrees"    # D
    .param p13, "speedInMetersPerSecond"    # D
    .param p15, "timestamp"    # J

    .prologue
    .line 746
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 747
    .local v2, "currentLocation":Landroid/location/Location;
    invoke-virtual {v2, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 748
    invoke-virtual {v2, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 749
    double-to-float v3, p5

    invoke-virtual {v2, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 750
    invoke-virtual {v2, p7, p8}, Landroid/location/Location;->setAltitude(D)V

    .line 751
    double-to-float v3, p11

    invoke-virtual {v2, v3}, Landroid/location/Location;->setBearing(F)V

    .line 752
    move-wide/from16 v0, p13

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/location/Location;->setSpeed(F)V

    .line 753
    move-wide/from16 v0, p15

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 754
    iget-object v3, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v3, v2}, Lcom/ansca/corona/MapView;->access$502(Lcom/ansca/corona/MapView;Landroid/location/Location;)Landroid/location/Location;

    .line 755
    return-void
.end method

.method public onMapBoundsChanged(DDDD)V
    .locals 11
    .param p1, "southWestLatitude"    # D
    .param p3, "southWestLongitude"    # D
    .param p5, "northEastLatitude"    # D
    .param p7, "northEastLongitude"    # D

    .prologue
    .line 818
    iget-object v10, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    new-instance v0, Lcom/ansca/corona/MapView$LocationBounds;

    iget-object v1, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/ansca/corona/MapView$LocationBounds;-><init>(Lcom/ansca/corona/MapView;DDDD)V

    invoke-static {v10, v0}, Lcom/ansca/corona/MapView;->access$902(Lcom/ansca/corona/MapView;Lcom/ansca/corona/MapView$LocationBounds;)Lcom/ansca/corona/MapView$LocationBounds;

    .line 820
    return-void
.end method

.method public onMapLoadFinished()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/MapView$JavaScriptInterface$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/MapView$JavaScriptInterface$1;-><init>(Lcom/ansca/corona/MapView$JavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method
