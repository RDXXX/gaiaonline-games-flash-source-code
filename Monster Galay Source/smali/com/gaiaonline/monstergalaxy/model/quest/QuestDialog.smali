.class public Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;
.super Ljava/lang/Object;
.source "QuestDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static pattern:Ljava/util/regex/Pattern; = null

.field private static final serialVersionUID:J = -0x3fd3e855fbf73209L


# instance fields
.field public currentLine:I

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "<br\\s*/>"

    .line 3
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->pattern:Ljava/util/regex/Pattern;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->parseDialogText(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private parseDialogText(Ljava/lang/String;)V
    .locals 8
    .param p1, "dialogText"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v5, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_0

    .line 97
    return-void

    .line 83
    :cond_0
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 84
    aget-object v5, v2, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "index":I
    const/4 v3, 0x0

    .line 87
    .local v3, "speaker":Ljava/lang/String;
    const/4 v4, 0x0

    .line 89
    .local v4, "text":Ljava/lang/String;
    aget-object v5, v2, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 90
    aget-object v5, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-instance v5, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->addLine(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V

    .line 81
    .end local v1    # "index":I
    .end local v3    # "speaker":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addLine(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V
    .locals 1
    .param p1, "line"    # Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFirst()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    .line 42
    return-void
.end method

.method public moveLast()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    .line 38
    return-void
.end method

.method public nextLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "line":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    .line 49
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "line":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    .line 53
    .restart local v0    # "line":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    :cond_0
    return-object v0
.end method

.method public previousLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "line":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    .line 61
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    if-ltz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->lines:Ljava/util/List;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "line":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    .line 67
    .restart local v0    # "line":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->currentLine:I

    goto :goto_0
.end method
