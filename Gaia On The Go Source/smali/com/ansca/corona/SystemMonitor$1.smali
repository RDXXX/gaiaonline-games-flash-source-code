.class Lcom/ansca/corona/SystemMonitor$1;
.super Ljava/lang/Object;
.source "SystemMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/SystemMonitor;->isLowOnMemory()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/SystemMonitor;


# direct methods
.method constructor <init>(Lcom/ansca/corona/SystemMonitor;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor$1;->this$0:Lcom/ansca/corona/SystemMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->memoryWarningEvent()V

    .line 150
    :cond_0
    return-void
.end method
