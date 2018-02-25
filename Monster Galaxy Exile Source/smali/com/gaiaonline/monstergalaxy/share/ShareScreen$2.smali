.class Lcom/gaiaonline/monstergalaxy/share/ShareScreen$2;
.super Ljava/lang/Object;
.source "ShareScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->shareOnFacebook(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 204
    return-void
.end method
