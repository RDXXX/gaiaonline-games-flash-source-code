.class Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$8;
.super Ljava/lang/Object;
.source "TweaksScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->snapshotPicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$8;->val$name:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getExportDirectory()Ljava/io/File;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$8;->val$name:Ljava/lang/String;

    .line 197
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->access$3(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->loadAndSetTrainer(Ljava/io/File;)V

    .line 205
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 206
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V

    .line 207
    return-void
.end method
