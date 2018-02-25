.class Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
.super Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GyroscopeMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;,
        Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;
    }
.end annotation


# instance fields
.field private fHasReceivedMeasurement:Z

.field private fHasReceivedSample:Z

.field private fHasSkippedFirstMeasurement:Z

.field private fLastSampleTimestamp:J

.field private fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 594
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 595
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    .line 598
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    .line 599
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    .line 600
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    .line 601
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    .line 602
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    .line 603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSampleTimestamp:J

    .line 606
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;

    invoke-direct {v0, p0, v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->setSensorListener(Landroid/hardware/SensorEventListener;)V

    .line 607
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;

    invoke-direct {v0, p0, v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->setTimerListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 608
    return-void

    .line 599
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1900(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    .prologue
    .line 573
    iget-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSampleTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 573
    iput-wide p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSampleTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public getSensorType()I
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x4

    return v0
.end method

.method protected onStarting()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    .line 621
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    .line 622
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    .line 623
    return-void
.end method
