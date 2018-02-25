.class public Lcom/ansca/corona/ActivityIndicatorDialog;
.super Landroid/app/Dialog;
.source "ActivityIndicatorDialog.java"


# instance fields
.field private fIsCancelable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {}, Lcom/ansca/corona/ActivityIndicatorDialog;->getDefaultDialogThemeId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/ActivityIndicatorDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    iput-boolean v3, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    .line 29
    invoke-virtual {p0, v3}, Lcom/ansca/corona/ActivityIndicatorDialog;->requestWindowFeature(I)Z

    .line 32
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 34
    .local v1, "xPadding":I
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 35
    .local v2, "yPadding":I
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 36
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/ansca/corona/ActivityIndicatorDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
.end method

.method private static getDefaultDialogThemeId()I
    .locals 3

    .prologue
    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 51
    const v0, 0x103006f

    .line 56
    .local v0, "themeId":I
    :goto_0
    return v0

    .line 54
    .end local v0    # "themeId":I
    :cond_0
    const v0, 0x103000b

    .restart local v0    # "themeId":I
    goto :goto_0
.end method


# virtual methods
.method public isCancelable()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    if-nez v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    .line 67
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 68
    return-void
.end method
