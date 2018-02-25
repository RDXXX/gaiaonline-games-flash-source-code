.class public Lcom/ansca/corona/CoronaService;
.super Landroid/app/Service;
.source "CoronaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaService$Binder;
    }
.end annotation


# instance fields
.field private fBinder:Lcom/ansca/corona/CoronaService$Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ansca/corona/CoronaService$Binder;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaService$Binder;-><init>(Lcom/ansca/corona/CoronaService;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
