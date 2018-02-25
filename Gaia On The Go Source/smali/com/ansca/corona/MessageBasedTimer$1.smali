.class Lcom/ansca/corona/MessageBasedTimer$1;
.super Ljava/lang/Object;
.source "MessageBasedTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MessageBasedTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MessageBasedTimer;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MessageBasedTimer;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer$1;->this$0:Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer$1;->this$0:Lcom/ansca/corona/MessageBasedTimer;

    invoke-static {v0}, Lcom/ansca/corona/MessageBasedTimer;->access$000(Lcom/ansca/corona/MessageBasedTimer;)V

    .line 188
    return-void
.end method
