.class final Lcom/nextive/android/billing/market/BillingLogger;
.super Ljava/lang/Object;
.source "BillingLogger.java"


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "InAppBilling"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nextive/android/billing/market/BillingLogger;->DEBUG:Z

    .line 14
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "InAppBilling"

    invoke-static {v0, p0}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Lcom/nextive/android/billing/market/BillingLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method
