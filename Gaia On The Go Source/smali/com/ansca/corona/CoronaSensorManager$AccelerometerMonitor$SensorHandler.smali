.class Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .param p2, "x1"    # Lcom/ansca/corona/CoronaSensorManager$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 511
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    .line 493
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1200(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1202(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1300(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->copyFrom(Landroid/hardware/SensorEvent;)V

    .line 508
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1402(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z

    goto :goto_0
.end method
