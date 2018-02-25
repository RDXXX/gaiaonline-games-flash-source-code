.class public Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;
.super Lcom/esotericsoftware/tablelayout/Toolkit;
.source "LibgdxToolkit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/tablelayout/Toolkit",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static defaultFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private static fonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.badlogic.gdx.scenes.scene2d."

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addClassPrefix(Ljava/lang/String;)V

    .line 50
    const-string v0, "com.badlogic.gdx.scenes.scene2d.actors."

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addClassPrefix(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->fonts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/esotericsoftware/tablelayout/Toolkit;-><init>()V

    .line 154
    return-void
.end method

.method public static getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->fonts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 150
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    return-object v0
.end method

.method public static registerFont(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 144
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->defaultFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-nez v0, :cond_0

    sput-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->defaultFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "layoutString"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    .line 98
    :cond_0
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local p1    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 99
    return-void
.end method

.method public bridge synthetic addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V

    return-void
.end method

.method public addDebugRectangle(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;IIIII)V
    .locals 7
    .param p1, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 138
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 139
    :cond_0
    iget-object v6, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public bridge synthetic addDebugRectangle(Lcom/esotericsoftware/tablelayout/BaseTableLayout;IIIII)V
    .locals 7
    .param p1, "x0"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 47
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addDebugRectangle(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;IIIII)V

    return-void
.end method

.method public clearDebugRectangles(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .prologue
    .line 134
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 135
    :cond_0
    return-void
.end method

.method public bridge synthetic clearDebugRectangles(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V
    .locals 0
    .param p1, "x0"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .end local p1    # "x0":Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->clearDebugRectangles(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    return-void
.end method

.method public getLayout(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .locals 1
    .param p1, "table"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLayout(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getLayout(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getMaxHeight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getMaxWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getMaxWidth(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMaxWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 111
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v0

    float-to-int v0, v0

    .line 112
    :goto_0
    return v0

    .restart local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinHeight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 106
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v0

    float-to-int v0, v0

    .line 107
    :goto_0
    return v0

    .restart local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinWidth(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 121
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v0

    float-to-int v0, v0

    .line 122
    :goto_0
    return v0

    .restart local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getPrefHeight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 116
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v0

    float-to-int v0, v0

    .line 117
    :goto_0
    return v0

    .restart local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getPrefWidth(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public newStack()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newStack()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newStack()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public newWidget(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    .line 69
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-direct {v1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 72
    .end local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const-string v1, "button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->newWidget(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public bridge synthetic newWidget(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .end local p1    # "x0":Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newWidget(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public removeChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "parent"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 102
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local p1    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 103
    return-void
.end method

.method public bridge synthetic removeChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->removeChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public setProperty(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .param p2, "object"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v2, p2, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 85
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    .line 86
    .local v0, "label":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "value":Ljava/lang/String;
    const-string v2, "font"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    .line 94
    .end local v0    # "label":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/tablelayout/Toolkit;->setProperty(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic setProperty(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/List;

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .end local p1    # "x0":Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->setProperty(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public wrap(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 58
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->defaultFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default font has been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->defaultFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {v0, v1, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-object v0

    .line 62
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-super {p0, p1}, Lcom/esotericsoftware/tablelayout/Toolkit;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public bridge synthetic wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->wrap(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method
