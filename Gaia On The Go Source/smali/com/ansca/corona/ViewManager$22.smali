.class Lcom/ansca/corona/ViewManager$22;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->requestWebViewGoBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;I)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$22;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$22;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 971
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$22;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaWebView;

    iget v3, p0, Lcom/ansca/corona/ViewManager$22;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaWebView;

    .line 972
    .local v0, "view":Lcom/ansca/corona/CoronaWebView;
    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaWebView;->goBack()V

    .line 974
    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaWebView;->requestFocus(I)Z

    .line 976
    :cond_0
    return-void
.end method
