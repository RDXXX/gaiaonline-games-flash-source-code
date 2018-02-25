.class Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorMeasurement"
.end annotation


# instance fields
.field public accuracy:I

.field public sensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;

.field public timestamp:J

.field public values:[F


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->accuracy:I

    .line 196
    iput-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->sensor:Landroid/hardware/Sensor;

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    .line 198
    iput-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    .line 199
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 202
    if-nez p1, :cond_1

    .line 216
    :cond_0
    return-void

    .line 206
    :cond_1
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->accuracy:I

    .line 207
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->sensor:Landroid/hardware/Sensor;

    .line 208
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    .line 210
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    if-nez v1, :cond_2

    .line 211
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    .line 213
    :cond_2
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
