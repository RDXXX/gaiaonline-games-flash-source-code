.class Lcom/sessionm/ui/WebView$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/WebView;->addOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/WebView;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/WebView;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sessionm/ui/WebView$3;->this$0:Lcom/sessionm/ui/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/high16 v5, 0x42340000    # 45.0f

    const/high16 v4, -0x3dcc0000    # -45.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 296
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 297
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    .line 298
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 300
    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    const/high16 v3, -0x3cf90000    # -135.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 312
    :goto_0
    sget v2, Lcom/sessionm/ui/WebView;->lastOrientationDegrees:I

    if-eq v2, v0, :cond_0

    .line 313
    sput v0, Lcom/sessionm/ui/WebView;->lastOrientationDegrees:I

    .line 315
    iget-object v2, p0, Lcom/sessionm/ui/WebView$3;->this$0:Lcom/sessionm/ui/WebView;

    invoke-virtual {v2}, Lcom/sessionm/ui/WebView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const-string v2, "WebView"

    const-string v3, "orientation changed to %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/sessionm/ui/WebView$3;->this$0:Lcom/sessionm/ui/WebView;

    const-string v3, "if(GreyhoundEventDispatcher){GreyhoundEventDispatcher.dispatch(\'orientationChanged\',{\'orientation\':\'%d\'});};"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sessionm/ui/WebView;->executeJavascript(Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void

    .line 303
    :cond_1
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2

    const/high16 v3, 0x43070000    # 135.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 304
    const/16 v0, 0xb4

    goto :goto_0

    .line 306
    :cond_2
    cmpl-float v0, v2, v5

    if-lez v0, :cond_3

    .line 307
    const/16 v0, -0x5a

    goto :goto_0

    .line 309
    :cond_3
    cmpg-float v0, v2, v4

    if-gez v0, :cond_4

    .line 310
    const/16 v0, 0x5a

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
