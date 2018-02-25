.class Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader$1;
.super Ljava/lang/Object;
.source "AssetsDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader$1;->this$0:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader$1;->this$0:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->access$0(Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;)V

    .line 67
    return-void
.end method
