.class public Lcom/ansca/corona/ApplicationContextProvider;
.super Ljava/lang/Object;
.source "ApplicationContextProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
