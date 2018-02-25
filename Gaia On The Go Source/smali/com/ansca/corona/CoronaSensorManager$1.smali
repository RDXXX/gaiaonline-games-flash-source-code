.class Lcom/ansca/corona/CoronaSensorManager$1;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSensorManager;->startType(I)V
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
    .line 80
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    iput p2, p0, Lcom/ansca/corona/CoronaSensorManager$1;->val$eventType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x3e8

    .line 83
    iget v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->val$eventType:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$000(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->start()V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$100(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->start()V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager;->access$202(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 105
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$1$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaSensorManager$1$1;-><init>(Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager;->access$402(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 142
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager;->access$200(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 147
    :pswitch_4
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v6

    .line 148
    .local v6, "activity":Lcom/ansca/corona/CoronaActivity;
    invoke-virtual {v6}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 149
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.location.gps"

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    .line 150
    .local v7, "hasGps":Z
    const-string v0, "android.hardware.location.network"

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 151
    .local v8, "hasNetworkLocater":Z
    if-nez v7, :cond_1

    if-nez v8, :cond_1

    .line 152
    const-string v0, "Corona"

    const-string v1, "Unable to set up location listener. This device is incapable of providing location data."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_1
    const-wide/16 v11, 0x3e8

    .line 158
    .local v11, "minTime":J
    const/4 v9, 0x0

    .line 159
    .local v9, "isLocationListenerEnabled":Z
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;-><init>(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager;->access$602(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    .line 160
    if-eqz v7, :cond_2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v0}, Lcom/ansca/corona/CoronaActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->setSupportsGps()V

    .line 163
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v4}, Lcom/ansca/corona/CoronaSensorManager;->access$800(Lcom/ansca/corona/CoronaSensorManager;)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 165
    const/4 v9, 0x1

    .line 167
    :cond_2
    if-eqz v8, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v0}, Lcom/ansca/corona/CoronaActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->setSupportsNetwork()V

    .line 170
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v4}, Lcom/ansca/corona/CoronaSensorManager;->access$800(Lcom/ansca/corona/CoronaSensorManager;)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 172
    const/4 v9, 0x1

    .line 174
    :cond_3
    if-nez v9, :cond_0

    .line 175
    const-string v10, "This application does not have permission to read your current location."

    .line 176
    .local v10, "message":Ljava/lang/String;
    const-string v0, "Corona"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    const-string v1, "Corona"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "OK"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v10, v2}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
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
