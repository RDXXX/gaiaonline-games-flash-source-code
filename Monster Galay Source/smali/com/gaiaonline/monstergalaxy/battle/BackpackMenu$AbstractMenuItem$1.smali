.class Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;
.super Ljava/lang/Object;
.source "BackpackMenu.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->init(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;

.field private final synthetic val$menuId:I


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;

    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;->val$menuId:I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;)V
    .locals 2
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;)Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;

    move-result-object v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;->val$menuId:I

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;->onMenuItemSelected(I)V

    .line 152
    return-void
.end method
