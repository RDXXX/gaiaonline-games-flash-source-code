.class Lcom/ansca/corona/CoronaSensorManager$2;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSensorManager;->stopType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;

.field final synthetic val$eventType:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSensorManager;I)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    iput p2, p0, Lcom/ansca/corona/CoronaSensorManager$2;->val$eventType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    iget v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->val$eventType:I

    packed-switch v0, :pswitch_data_0

    .line 797
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 778
    :pswitch_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$000(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->stop()V

    goto :goto_0

    .line 781
    :pswitch_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$100(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->stop()V

    goto :goto_0

    .line 784
    :pswitch_3
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 786
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$402(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 787
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager;->access$502(Lcom/ansca/corona/CoronaSensorManager;F)F

    goto :goto_0

    .line 791
    :pswitch_4
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 793
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$602(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
