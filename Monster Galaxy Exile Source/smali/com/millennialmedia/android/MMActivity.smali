.class public Lcom/millennialmedia/android/MMActivity;
.super Landroid/app/Activity;
.source "MMActivity.java"


# instance fields
.field private activity:Lcom/millennialmedia/android/MMBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method onActivityResultSuper(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 21
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "activityClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMBaseActivity;

    iput-object v3, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    .line 24
    iget-object v3, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    iput-object p0, v3, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    .line 25
    iget-object v3, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "activityClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Could not start activity for %s. %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->finish()V

    goto :goto_0
.end method

.method onCreateSuper(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method onDestroySuper()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onKeyDownSuper(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0
.end method

.method onPauseSuper()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRestart()V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    goto :goto_0
.end method

.method onRestartSuper()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 95
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method onRestoreInstanceStateSuper(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method onResumeSuper()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method onRetainNonConfigurationInstanceSuper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method onSaveInstanceStateSuper(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onStart()V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    goto :goto_0
.end method

.method onStartSuper()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->activity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onStop()V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_0
.end method

.method onStopSuper()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    return-void
.end method
