.class public abstract Lcom/sessionm/api/BaseActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 27
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lcom/sessionm/api/SessionM;->onActivityPause(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 20
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lcom/sessionm/api/SessionM;->onActivityResume(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 13
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/sessionm/api/SessionM;->onActivityStart(Landroid/app/Activity;)V

    .line 15
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 34
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lcom/sessionm/api/SessionM;->onActivityStop(Landroid/app/Activity;)V

    .line 36
    return-void
.end method
