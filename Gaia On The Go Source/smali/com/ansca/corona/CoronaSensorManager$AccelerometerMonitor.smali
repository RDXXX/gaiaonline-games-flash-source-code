.class Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
.super Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccelerometerMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;,
        Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;
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

    .line 458
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 459
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    .line 462
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    .line 463
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    .line 464
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    .line 465
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    .line 466
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    .line 467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSampleTimestamp:J

    .line 470
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;

    invoke-direct {v0, p0, v3}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->setSensorListener(Landroid/hardware/SensorEventListener;)V

    .line 471
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;

    invoke-direct {v0, p0, v3}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->setTimerListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 472
    return-void

    .line 463
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1200(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .prologue
    .line 437
    iget-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSampleTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 437
    iput-wide p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSampleTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public getSensorType()I
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method protected onStarting()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    .line 485
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    .line 486
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    .line 487
    return-void
.end method
