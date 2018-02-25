.class public Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;
.super Ljava/lang/Object;
.source "ScreenHistoryEntry.java"


# instance fields
.field private screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

.field private screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V
    .locals 0
    .param p1, "screenCode"    # Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .line 10
    return-void
.end method


# virtual methods
.method public getScreen()Lcom/gaiaonline/monstergalaxy/app/Screen;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->createScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)Lcom/gaiaonline/monstergalaxy/app/Screen;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    goto :goto_0
.end method

.method public getScreenCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method
