.class final Lcom/ansca/corona/NativeToJavaBridge$4;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callSetStatusBarMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1726
    iput p1, p0, Lcom/ansca/corona/NativeToJavaBridge$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1728
    monitor-enter p0

    .line 1729
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 1730
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 1731
    iget v1, p0, Lcom/ansca/corona/NativeToJavaBridge$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->setStatusBarMode(I)V

    .line 1733
    :cond_0
    monitor-exit p0

    .line 1734
    return-void

    .line 1733
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
