.class Lcom/ansca/corona/CoronaSensorManager$1$1;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSensorManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$1;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 107
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    monitor-exit p0

    .line 136
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 123
    .local v0, "currentHeading":F
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->isNaturalOrientationPortrait()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    .line 125
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 126
    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v1, v1, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v1, v1, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1, v0}, Lcom/ansca/corona/CoronaSensorManager;->access$502(Lcom/ansca/corona/CoronaSensorManager;F)F

    .line 133
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v2, v2, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/events/EventManager;->headingEvent(F)V

    .line 135
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v0    # "currentHeading":F
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
