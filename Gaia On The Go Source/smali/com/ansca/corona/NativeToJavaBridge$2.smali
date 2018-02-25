.class final Lcom/ansca/corona/NativeToJavaBridge$2;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callRequestSystem(JLjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 300
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->moveTaskToBack(Z)Z

    .line 303
    :cond_0
    return-void
.end method
