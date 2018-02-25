.class Lcom/ansca/corona/Controller$Gingerbread;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gingerbread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1599
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createAlertDialogBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .prologue
    .line 1611
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
