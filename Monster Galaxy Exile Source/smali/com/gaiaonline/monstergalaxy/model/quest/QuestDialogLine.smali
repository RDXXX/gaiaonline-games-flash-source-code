.class public Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
.super Ljava/lang/Object;
.source "QuestDialogLine.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6f93f2a2801c429aL


# instance fields
.field private speaker:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "speaker"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->speaker:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->text:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getSpeaker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->speaker:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->text:Ljava/lang/String;

    return-object v0
.end method
