.class Lcom/chartboost/sdk/CBAPIConnection$1;
.super Ljava/lang/Object;
.source "CBAPIConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBAPIConnection;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBAPIConnection;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBAPIConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->this$0:Lcom/chartboost/sdk/CBAPIConnection;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->this$0:Lcom/chartboost/sdk/CBAPIConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBAPIConnection;->cancel(Z)Z

    .line 90
    return-void
.end method
