.class Lcom/gaiaonline/monstergalaxy/app/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/tapjoy/TapjoyVideoNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/Analytics;->setActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/app/Analytics;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/app/Analytics;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics$1;->this$0:Lcom/gaiaonline/monstergalaxy/app/Analytics;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoComplete()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public videoError(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 86
    return-void
.end method

.method public videoReady()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
