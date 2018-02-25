.class public Lcom/ansca/corona/purchasing/StoreActivity;
.super Landroid/app/Activity;
.source "StoreActivity.java"


# static fields
.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "full_screen"

.field public static final EXTRA_NOOK_APP_EAN:Ljava/lang/String; = "nook_app_ean"


# instance fields
.field private fHasShownStore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 113
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v2, v2}, Lcom/ansca/corona/purchasing/StoreActivity;->overridePendingTransition(II)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->finish()V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x800

    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nook_app_ean"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x1

    .line 51
    .local v1, "orientation":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 52
    const/4 v1, 0x7

    .line 54
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ansca/corona/purchasing/StoreActivity;->setRequestedOrientation(I)V

    .line 57
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "full_screen"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    .local v0, "isFullScreen":Z
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    :goto_1
    iput-boolean v4, p0, Lcom/ansca/corona/purchasing/StoreActivity;->fHasShownStore:Z

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 64
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-boolean v1, p0, Lcom/ansca/corona/purchasing/StoreActivity;->fHasShownStore:Z

    if-nez v1, :cond_0

    .line 79
    iput-boolean v4, p0, Lcom/ansca/corona/purchasing/StoreActivity;->fHasShownStore:Z

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.bn.sdk.shop.details"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "product_details_ean"

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nook_app_ean"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0, v4}, Lcom/ansca/corona/purchasing/StoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
