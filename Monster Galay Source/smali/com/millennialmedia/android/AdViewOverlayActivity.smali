.class public Lcom/millennialmedia/android/AdViewOverlayActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "AdViewOverlayActivity.java"


# instance fields
.field private accelerometerEventListener:Landroid/hardware/SensorEventListener;

.field private final interval:I

.field private mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private settings:Lcom/millennialmedia/android/OverlaySettings;

.field private final threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 168
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->threshold:F

    .line 169
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->interval:I

    .line 202
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayActivity$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayActivity$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/AdViewOverlayActivity;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->didAccelerate(FFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/AdViewOverlayActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayActivity;
    .param p1, "x1"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->didShake(F)V

    return-void
.end method

.method private didAccelerate(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 152
    const-string v0, "Accelerometer x:%fy:%fz:%f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:didAccelerate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->injectJS(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private didShake(F)V
    .locals 4
    .param p1, "force"    # F

    .prologue
    .line 162
    const-string v0, "Phone shaken: %f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:didShake("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->injectJS(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private startAccelerating()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 177
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 178
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    .local v0, "isAccelerometerSupported":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "Accelerometer not supported by this device. Unregistering listener."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 183
    iput-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    .line 184
    iput-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 186
    :cond_0
    return-void
.end method

.method private stopAccelerating()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->overlayClosed(Landroid/content/Context;)V

    .line 83
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

    .line 84
    return-void
.end method

.method public bridge synthetic getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 33
    const v3, 0x1030010

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setTheme(I)V

    .line 34
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/AdViewOverlayActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 39
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 43
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "settings"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/OverlaySettings;

    iput-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 49
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v3}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    iput-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v3}, Lcom/millennialmedia/android/OverlaySettings;->log()V

    .line 53
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v3, v3, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v3, v3, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 63
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 65
    const-string v3, "Path: %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v3, v4, v5}, Lcom/millennialmedia/android/AdViewOverlayView;-><init>(Landroid/app/Activity;Lcom/millennialmedia/android/OverlaySettings;)V

    iput-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    .line 70
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/AdViewOverlayView;->loadWebContent(Ljava/lang/String;)V

    .line 76
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v4, "expanded"

    iput-object v4, v3, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 77
    return-void

    .line 55
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v3, v3, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v3, v3, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 58
    :cond_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 101
    const-string v0, "Overlay onDestroy"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 133
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->goBack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->dismiss(Z)V

    .line 139
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "Overlay onPause"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->stopAccelerating()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setResult(I)V

    .line 119
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v1, "hidden"

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 120
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Overlay onResume"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->startAccelerating()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v1, "expanded"

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 94
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    .line 95
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->getNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onStop()V

    .line 108
    return-void
.end method

.method public bridge synthetic registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "x0"    # Landroid/content/BroadcastReceiver;
    .param p2, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setRequestedOrientation(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public bridge synthetic setTheme(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->setTheme(I)V

    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;
    .param p2, "x1"    # I

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
