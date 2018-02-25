.class Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;
.super Ljava/lang/Object;
.source "GaiaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;

.field private final synthetic val$amsg:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;->val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;->val$amsg:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;->val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;->val$amsg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;->onHttpDone(Ljava/lang/String;)V

    .line 168
    return-void
.end method
