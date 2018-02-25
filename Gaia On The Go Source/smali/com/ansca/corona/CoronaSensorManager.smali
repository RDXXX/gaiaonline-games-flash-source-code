.class Lcom/ansca/corona/CoronaSensorManager;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;,
        Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;,
        Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;,
        Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;,
        Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
    }
.end annotation


# instance fields
.field private myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

.field private myActiveSensors:[Z

.field private myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

.field private myLastHeading:F

.field private myLocationListener:Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

.field private myLocationManager:Landroid/location/LocationManager;

.field private myLocationThreshold:D

.field private myOrientationSensor:Landroid/hardware/Sensor;

.field private myOrientationSensorListener:Landroid/hardware/SensorEventListener;

.field private mySensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationThreshold:D

    .line 31
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLastHeading:F

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;
    .param p1, "x1"    # Landroid/hardware/Sensor;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensorListener:Landroid/hardware/SensorEventListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ansca/corona/CoronaSensorManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLastHeading:F

    return v0
.end method

.method static synthetic access$502(Lcom/ansca/corona/CoronaSensorManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLastHeading:F

    return p1
.end method

.method static synthetic access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationListener:Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;
    .param p1, "x1"    # Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationListener:Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ansca/corona/CoronaSensorManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationThreshold:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static compareSensorTimestamps(JJ)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 945
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 946
    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    .line 950
    :cond_0
    sub-long v0, p0, p2

    .line 951
    .local v0, "deltaTime":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 952
    const/4 v2, -0x1

    .line 957
    :goto_0
    return v2

    .line 954
    :cond_1
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 955
    const/4 v2, 0x0

    goto :goto_0

    .line 957
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startType(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaSensorManager$1;-><init>(Lcom/ansca/corona/CoronaSensorManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopType(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 762
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$2;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaSensorManager$2;-><init>(Lcom/ansca/corona/CoronaSensorManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static subtractSensorTimestamps(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 968
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 969
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    .line 973
    :cond_0
    sub-long v0, p0, p2

    return-wide v0
.end method


# virtual methods
.method public hasAccelerometer()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, "hasSensor":Z
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 877
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGyroscope()Z
    .locals 3

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 890
    .local v0, "hasSensor":Z
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 894
    :cond_0
    :goto_0
    return v0

    .line 892
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    .line 48
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationManager:Landroid/location/LocationManager;

    .line 49
    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .line 50
    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isActive(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 809
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 901
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 902
    invoke-direct {p0, v0}, Lcom/ansca/corona/CoronaSensorManager;->stopType(I)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 912
    invoke-direct {p0, v0}, Lcom/ansca/corona/CoronaSensorManager;->startType(I)V

    .line 910
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 914
    :cond_1
    return-void
.end method

.method public setAccelerometerInterval(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->setIntervalInHertz(I)V

    .line 856
    return-void
.end method

.method public setEventNotification(IZ)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->start(I)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->stop(I)V

    goto :goto_0
.end method

.method public setGyroscopeInterval(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->setIntervalInHertz(I)V

    .line 865
    return-void
.end method

.method public setLocationAccuracy(D)V
    .locals 0
    .param p1, "meters"    # D

    .prologue
    .line 923
    return-void
.end method

.method public setLocationThreshold(D)V
    .locals 0
    .param p1, "meters"    # D

    .prologue
    .line 931
    iput-wide p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationThreshold:D

    .line 932
    return-void
.end method

.method public start(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    const/4 v1, 0x1

    .line 818
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v0, v0, p1

    if-ne v0, v1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->startType(I)V

    .line 823
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 844
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 845
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager;->stop(I)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->stopType(I)V

    .line 837
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    goto :goto_0
.end method
