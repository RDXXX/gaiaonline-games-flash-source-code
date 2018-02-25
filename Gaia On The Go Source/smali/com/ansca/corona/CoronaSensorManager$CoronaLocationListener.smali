.class Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaLocationListener"
.end annotation


# instance fields
.field private fHasReceivedData:Z

.field private fSupportsGps:Z

.field private fSupportsNetwork:Z

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 708
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fHasReceivedData:Z

    .line 710
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsGps:Z

    .line 711
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsNetwork:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaSensorManager;
    .param p2, "x1"    # Lcom/ansca/corona/CoronaSensorManager$1;

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fHasReceivedData:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsGps:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    :goto_0
    return-void

    .line 742
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fHasReceivedData:Z

    .line 745
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-virtual/range {v1 .. v15}, Lcom/ansca/corona/events/EventManager;->locationEvent(DDDDDDD)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 731
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 727
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 723
    return-void
.end method

.method public setSupportsGps()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsGps:Z

    .line 715
    return-void
.end method

.method public setSupportsNetwork()V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsNetwork:Z

    .line 719
    return-void
.end method
