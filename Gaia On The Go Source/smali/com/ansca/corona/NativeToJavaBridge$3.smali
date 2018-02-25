.class final Lcom/ansca/corona/NativeToJavaBridge$3;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callOnRuntimeStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 519
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->hideSplashScreen()V

    .line 522
    :cond_0
    return-void
.end method
