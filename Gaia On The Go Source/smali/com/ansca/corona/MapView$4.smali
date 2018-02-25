.class Lcom/ansca/corona/MapView$4;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MapView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MapView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MapView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/ansca/corona/MapView$4;->this$0:Lcom/ansca/corona/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ansca/corona/MapView$4;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v0}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/MapView$4;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v0}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MapView$4;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v0}, Lcom/ansca/corona/MapView;->access$300(Lcom/ansca/corona/MapView;)Lcom/ansca/corona/MessageBasedTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MapView$4;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v0}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method
