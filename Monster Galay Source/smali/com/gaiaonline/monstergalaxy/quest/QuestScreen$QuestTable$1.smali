.class Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable$1;
.super Ljava/lang/Object;
.source "QuestScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->makeRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

.field private final synthetic val$aQuestProgress:Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable$1;->this$1:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable$1;->val$aQuestProgress:Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 108
    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable$1;->val$aQuestProgress:Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 109
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 108
    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;-><init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 110
    return-void
.end method
