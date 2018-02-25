.class Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .param p2, "x1"    # Lcom/ansca/corona/CoronaSensorManager$1;

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 647
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    .line 629
    if-nez p1, :cond_0

    .line 645
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$1900(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$1902(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2000(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->copyFrom(Landroid/hardware/SensorEvent;)V

    .line 644
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2102(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z

    goto :goto_0
.end method
