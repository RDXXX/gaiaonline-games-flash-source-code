.class public Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "TableElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/screen/TableElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TableRow"
.end annotation


# instance fields
.field private rowItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/screen/TableElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/TableElement;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->this$0:Lcom/gaiaonline/monstergalaxy/screen/TableElement;

    .line 123
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->rowItem:Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setupRow()V

    .line 126
    invoke-virtual {p1, p0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->makeEmptyListRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;)V

    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/TableElement;Ljava/lang/Object;I)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->this$0:Lcom/gaiaonline/monstergalaxy/screen/TableElement;

    .line 129
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->rowItem:Ljava/lang/Object;

    .line 131
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setupRow()V

    .line 132
    invoke-virtual {p1, p0, p2, p3}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->makeRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;Ljava/lang/Object;I)V

    return-void
.end method

.method private setupRow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->this$0:Lcom/gaiaonline/monstergalaxy/screen/TableElement;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->access$0(Lcom/gaiaonline/monstergalaxy/screen/TableElement;)F

    move-result v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->this$0:Lcom/gaiaonline/monstergalaxy/screen/TableElement;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->access$1(Lcom/gaiaonline/monstergalaxy/screen/TableElement;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setSize(FF)V

    .line 137
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 138
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 139
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->this$0:Lcom/gaiaonline/monstergalaxy/screen/TableElement;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 140
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->dispose()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->rowItem:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->rowItem:Ljava/lang/Object;

    return-object v0
.end method
