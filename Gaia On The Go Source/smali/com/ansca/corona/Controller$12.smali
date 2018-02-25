.class Lcom/ansca/corona/Controller$12;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showAppStoreWindow(Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$appStringId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/ansca/corona/Controller$12;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$12;->val$appStringId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1085
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 1086
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v4, p0, Lcom/ansca/corona/Controller$12;->this$0:Lcom/ansca/corona/Controller;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/ansca/corona/purchasing/StoreActivity;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result v1

    .line 1091
    .local v1, "canShowCoronaStoreActivity":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1092
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/WindowOrientation;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 1096
    const/4 v3, 0x0

    .line 1097
    .local v3, "isFullScreen":Z
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 1098
    const/4 v3, 0x1

    .line 1100
    :cond_1
    const-class v4, Lcom/ansca/corona/purchasing/StoreActivity;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1101
    const-string v4, "full_screen"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1102
    const-string v4, "nook_app_ean"

    iget-object v5, p0, Lcom/ansca/corona/Controller$12;->val$appStringId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    const/high16 v4, 0x10000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1111
    .end local v3    # "isFullScreen":Z
    :goto_1
    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1108
    :cond_2
    const-string v4, "com.bn.sdk.shop.details"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v4, "product_details_ean"

    iget-object v5, p0, Lcom/ansca/corona/Controller$12;->val$appStringId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
