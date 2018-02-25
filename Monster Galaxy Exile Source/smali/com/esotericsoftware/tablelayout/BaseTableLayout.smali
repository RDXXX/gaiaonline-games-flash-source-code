.class public abstract Lcom/esotericsoftware/tablelayout/BaseTableLayout;
.super Ljava/lang/Object;
.source "BaseTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:TC;",
        "L:Lcom/esotericsoftware/tablelayout/BaseTableLayout;",
        "K:",
        "Lcom/esotericsoftware/tablelayout/Toolkit;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x4

.field public static final CENTER:I = 0x1

.field public static final DEBUG_ALL:I = 0x1

.field public static final DEBUG_CELL:I = 0x4

.field public static final DEBUG_NONE:I = 0x0

.field public static final DEBUG_TABLE:I = 0x2

.field public static final DEBUG_WIDGET:I = 0x8

.field public static final LEFT:I = 0x8

.field public static final MAX:Ljava/lang/String; = "max"

.field public static final MIN:Ljava/lang/String; = "min"

.field public static final PREF:Ljava/lang/String; = "pref"

.field public static final RIGHT:I = 0x10

.field public static final TOP:I = 0x2


# instance fields
.field align:I

.field private final cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

.field private final cells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private final columnDefaults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private columns:I

.field debug:I

.field height:Ljava/lang/String;

.field private layoutHeight:I

.field private layoutWidth:I

.field private layoutX:I

.field private layoutY:I

.field nameToWidget:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;"
        }
    .end annotation
.end field

.field padBottom:Ljava/lang/String;

.field padLeft:Ljava/lang/String;

.field padRight:Ljava/lang/String;

.field padTop:Ljava/lang/String;

.field private rowDefaults:Lcom/esotericsoftware/tablelayout/Cell;

.field private rows:I

.field table:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tableMinHeight:I

.field private tableMinWidth:I

.field private tablePrefHeight:I

.field private tablePrefWidth:I

.field toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field widgetToCell:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TC;",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            ">;"
        }
    .end annotation
.end field

.field width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/tablelayout/Toolkit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p1, "toolkit":Lcom/esotericsoftware/tablelayout/Toolkit;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    .line 61
    invoke-static {p0}, Lcom/esotericsoftware/tablelayout/Cell;->defaults(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 77
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    .line 78
    return-void
.end method

.method private endRow()V
    .locals 5

    .prologue
    .line 167
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    const/4 v2, 0x0

    .line 168
    .local v2, "rowColumns":I
    iget-object v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 169
    iget-object v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/tablelayout/Cell;

    .line 170
    .local v0, "cell":Lcom/esotericsoftware/tablelayout/Cell;
    iget-boolean v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    if-eqz v3, :cond_1

    .line 173
    .end local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_0
    iget v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    .line 174
    iget v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    .line 175
    iget-object v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/tablelayout/Cell;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    .line 176
    return-void

    .line 171
    .restart local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_1
    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/esotericsoftware/tablelayout/Cell",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p1, "widget":Ljava/lang/Object;, "TC;"
    new-instance v0, Lcom/esotericsoftware/tablelayout/Cell;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/tablelayout/Cell;-><init>(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    .line 109
    .local v0, "cell":Lcom/esotericsoftware/tablelayout/Cell;
    iput-object p1, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    .line 113
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-ne p1, v9, :cond_0

    .line 117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Lcom/esotericsoftware/tablelayout/Cell;->name:Ljava/lang/String;

    .line 122
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    :cond_1
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 124
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/esotericsoftware/tablelayout/Cell;

    .line 125
    .local v6, "lastCell":Lcom/esotericsoftware/tablelayout/Cell;
    iget-boolean v9, v6, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    if-nez v9, :cond_3

    .line 126
    iget v9, v6, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    iget-object v10, v6, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    .line 127
    iget v9, v6, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    iput v9, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    .line 131
    :goto_0
    iget v9, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    if-lez v9, :cond_2

    .line 133
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 134
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/esotericsoftware/tablelayout/Cell;

    .line 135
    .local v8, "other":Lcom/esotericsoftware/tablelayout/Cell;
    iget v1, v8, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    .local v1, "column":I
    iget-object v9, v8, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int v7, v1, v9

    .local v7, "nn":I
    :goto_2
    if-ge v1, v7, :cond_5

    .line 136
    iget v9, v8, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    iget v10, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    if-ne v9, v10, :cond_4

    .line 137
    iput v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->cellAboveIndex:I

    .line 144
    .end local v1    # "column":I
    .end local v4    # "i":I
    .end local v6    # "lastCell":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v7    # "nn":I
    .end local v8    # "other":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_2
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget v9, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    iget-object v10, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 147
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    iget v10, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/tablelayout/Cell;

    .line 148
    .local v2, "columnDefaults":Lcom/esotericsoftware/tablelayout/Cell;
    if-eqz v2, :cond_6

    .end local v2    # "columnDefaults":Lcom/esotericsoftware/tablelayout/Cell;
    :goto_3
    invoke-virtual {v0, v2}, Lcom/esotericsoftware/tablelayout/Cell;->set(Lcom/esotericsoftware/tablelayout/Cell;)V

    .line 151
    :goto_4
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rowDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/tablelayout/Cell;->merge(Lcom/esotericsoftware/tablelayout/Cell;)V

    .line 153
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    iget-object v10, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->table:Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Lcom/esotericsoftware/tablelayout/Toolkit;->addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    return-object v0

    .line 129
    .restart local v6    # "lastCell":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_3
    iget v9, v6, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    goto :goto_0

    .line 135
    .restart local v1    # "column":I
    .restart local v4    # "i":I
    .restart local v7    # "nn":I
    .restart local v8    # "other":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 148
    .end local v1    # "column":I
    .end local v4    # "i":I
    .end local v6    # "lastCell":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v7    # "nn":I
    .end local v8    # "other":Lcom/esotericsoftware/tablelayout/Cell;
    .restart local v2    # "columnDefaults":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_6
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    goto :goto_3

    .line 150
    .end local v2    # "columnDefaults":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_7
    iget-object v9, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/tablelayout/Cell;->set(Lcom/esotericsoftware/tablelayout/Cell;)V

    goto :goto_4
.end method

.method public align(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 470
    return-object p0
.end method

.method public align(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 477
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 478
    :cond_0
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 479
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 480
    :cond_2
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 481
    :cond_3
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 482
    :cond_4
    return-object p0
.end method

.method public bottom()Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 508
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 509
    return-object p0
.end method

.method public center()Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 488
    return-object p0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    const/4 v4, 0x0

    .line 211
    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    iget-object v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->table:Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/tablelayout/Cell;

    iget-object v1, v1, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/esotericsoftware/tablelayout/Toolkit;->removeChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 215
    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 216
    iput v4, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    .line 217
    iput v4, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    .line 218
    return-void
.end method

.method public columnDefaults(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 4
    .param p1, "column"    # I

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    const/4 v3, 0x0

    .line 180
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/tablelayout/Cell;

    move-object v0, v2

    .line 181
    .local v0, "cell":Lcom/esotericsoftware/tablelayout/Cell;
    :goto_0
    if-nez v0, :cond_2

    .line 182
    new-instance v0, Lcom/esotericsoftware/tablelayout/Cell;

    .end local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    invoke-direct {v0, p0}, Lcom/esotericsoftware/tablelayout/Cell;-><init>(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    .line 183
    .restart local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/tablelayout/Cell;->set(Lcom/esotericsoftware/tablelayout/Cell;)V

    .line 184
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 186
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v1    # "i":I
    :cond_0
    move-object v0, v3

    .line 180
    goto :goto_0

    .line 187
    .restart local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public debug(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "debug"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 523
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/tablelayout/Toolkit;->clearDebugRectangles(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    .line 524
    :cond_0
    return-object p0
.end method

.method public debug(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 531
    if-nez p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-object p0

    .line 532
    :cond_1
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 533
    :cond_2
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 534
    :cond_3
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 535
    :cond_4
    const-string v0, "table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 536
    :cond_5
    const-string v0, "widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 537
    :cond_6
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/tablelayout/Toolkit;->clearDebugRectangles(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    goto :goto_0
.end method

.method public defaults()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 337
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 570
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    return v0
.end method

.method public getAllCells()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllCells(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "namePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esotericsoftware/tablelayout/Cell;>;"
    iget-object v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/tablelayout/Cell;

    .line 257
    .local v0, "cell":Lcom/esotericsoftware/tablelayout/Cell;
    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0    # "cell":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_1
    return-object v1
.end method

.method public getCell(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/esotericsoftware/tablelayout/Cell;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p1, "widget":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/tablelayout/Cell;

    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getWidget(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getCell(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebug()I
    .locals 1

    .prologue
    .line 542
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutHeight:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutWidth:I

    return v0
.end method

.method public getLayoutX()I
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutX:I

    return v0
.end method

.method public getLayoutY()I
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutY:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 322
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    return v0
.end method

.method public getPadBottom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getPadLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getPadRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    return-object v0
.end method

.method public getPadTop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefHeight()I
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    return v0
.end method

.method public getPrefWidth()I
    .locals 1

    .prologue
    .line 327
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    return v0
.end method

.method public getTable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->table:Ljava/lang/Object;

    return-object v0
.end method

.method public getToolkit()Lcom/esotericsoftware/tablelayout/Toolkit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    return-object v0
.end method

.method public getWidget(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWidgets(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "namePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    iget-object v3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    :cond_1
    return-object v2
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    return-object v0
.end method

.method public height(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public height(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "height"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public abstract invalidate()V
.end method

.method public abstract invalidateHierarchy()V
.end method

.method public layout()V
    .locals 70

    .prologue
    .line 575
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    .line 576
    .local v2, "toolkit":Lcom/esotericsoftware/tablelayout/Toolkit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 578
    .local v23, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esotericsoftware/tablelayout/Cell;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/tablelayout/Cell;

    iget-boolean v3, v3, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->endRow()V

    .line 581
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 582
    .local v26, "columnMinWidth":[I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    new-array v0, v3, [I

    move-object/from16 v54, v0

    .line 583
    .local v54, "rowMinHeight":[I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    new-array v0, v3, [I

    move-object/from16 v27, v0

    .line 584
    .local v27, "columnPrefWidth":[I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    new-array v0, v3, [I

    move-object/from16 v55, v0

    .line 585
    .local v55, "rowPrefHeight":[I
    const/16 v57, 0x0

    .line 586
    .local v57, "spaceRightLast":I
    const/16 v42, 0x0

    .local v42, "i":I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    .local v48, "n":I
    :goto_0
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_9

    .line 587
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 588
    .local v22, "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    :goto_1
    add-int/lit8 v42, v42, 0x1

    goto :goto_0

    .line 591
    :cond_1
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    if-nez v3, :cond_5

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    :goto_2
    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    .line 593
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->cellAboveIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    :goto_3
    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    .line 595
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v56

    .line 596
    .local v56, "spaceRight":I
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    if-ne v3, v4, :cond_7

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    :goto_4
    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    .line 598
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    :goto_5
    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    .line 600
    move/from16 v57, v56

    .line 602
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v51

    .line 603
    .local v51, "prefWidth":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetHeight(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v50

    .line 604
    .local v50, "prefHeight":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v47

    .line 605
    .local v47, "minWidth":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetHeight(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v46

    .line 606
    .local v46, "minHeight":I
    move/from16 v0, v51

    move/from16 v1, v47

    if-ge v0, v1, :cond_2

    move/from16 v51, v47

    .line 607
    :cond_2
    move/from16 v0, v50

    move/from16 v1, v46

    if-ge v0, v1, :cond_3

    move/from16 v50, v46

    .line 609
    :cond_3
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 610
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int v41, v3, v4

    .line 611
    .local v41, "hpadding":I
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    aget v4, v27, v4

    add-int v5, v51, v41

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v27, v3

    .line 612
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    aget v4, v26, v4

    add-int v5, v47, v41

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v26, v3

    .line 614
    .end local v41    # "hpadding":I
    :cond_4
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    add-int v68, v3, v4

    .line 615
    .local v68, "vpadding":I
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v4, v55, v4

    add-int v5, v50, v68

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v55, v3

    .line 616
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v4, v54, v4

    add-int v5, v46, v68

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v54, v3

    goto/16 :goto_1

    .line 591
    .end local v46    # "minHeight":I
    .end local v47    # "minWidth":I
    .end local v50    # "prefHeight":I
    .end local v51    # "prefWidth":I
    .end local v56    # "spaceRight":I
    .end local v68    # "vpadding":I
    :cond_5
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v5

    sub-int v5, v5, v57

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_2

    .line 593
    :cond_6
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->cellAboveIndex:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/tablelayout/Cell;

    iget-object v3, v3, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    sub-int v3, v6, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v4

    goto/16 :goto_3

    .line 596
    .restart local v56    # "spaceRight":I
    :cond_7
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    add-int v3, v3, v56

    goto/16 :goto_4

    .line 598
    :cond_8
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_5

    .line 620
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v56    # "spaceRight":I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    .line 621
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    .line 622
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    .line 623
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    .line 624
    const/16 v42, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_a

    .line 625
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    aget v4, v26, v42

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    .line 626
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    aget v4, v27, v42

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    .line 624
    add-int/lit8 v42, v42, 0x1

    goto :goto_6

    .line 628
    :cond_a
    const/16 v42, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_b

    .line 629
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    aget v4, v54, v42

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    .line 630
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    aget v4, v54, v42

    aget v5, v55, v42

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    .line 628
    add-int/lit8 v42, v42, 0x1

    goto :goto_7

    .line 632
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v4

    add-int v41, v3, v4

    .line 633
    .restart local v41    # "hpadding":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v4

    add-int v68, v3, v4

    .line 634
    .restart local v68    # "vpadding":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    sub-int v69, v3, v41

    .line 635
    .local v69, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v3

    sub-int v40, v3, v68

    .line 636
    .local v40, "height":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    add-int v3, v3, v41

    move/from16 v0, v69

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    .line 637
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    add-int v3, v3, v68

    move/from16 v0, v40

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    .line 638
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    add-int v3, v3, v41

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    .line 639
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    add-int v3, v3, v68

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    .line 642
    move-object/from16 v0, p0

    iget v7, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutWidth:I

    .line 643
    .local v7, "tableLayoutWidth":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    sub-int v64, v3, v4

    .line 644
    .local v64, "totalGrowWidth":I
    if-nez v64, :cond_e

    .line 645
    move-object/from16 v25, v26

    .line 657
    .local v25, "columnMaxWidth":[I
    :cond_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutHeight:I

    .line 658
    .local v8, "tableLayoutHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    sub-int v63, v3, v4

    .line 659
    .local v63, "totalGrowHeight":I
    if-nez v63, :cond_f

    .line 660
    move-object/from16 v53, v54

    .line 672
    .local v53, "rowMaxHeight":[I
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    new-array v0, v3, [I

    move-object/from16 v28, v0

    .line 673
    .local v28, "columnWidth":[I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    new-array v0, v3, [I

    move-object/from16 v52, v0

    .line 674
    .local v52, "rowHeight":[I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    new-array v0, v3, [F

    move-object/from16 v33, v0

    .line 675
    .local v33, "expandWidth":[F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    new-array v0, v3, [F

    move-object/from16 v32, v0

    .line 676
    .local v32, "expandHeight":[F
    const/16 v62, 0x0

    .local v62, "totalExpandWidth":F
    const/16 v61, 0x0

    .line 677
    .local v61, "totalExpandHeight":F
    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_8
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_17

    .line 678
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 679
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 677
    :goto_9
    add-int/lit8 v42, v42, 0x1

    goto :goto_8

    .line 647
    .end local v8    # "tableLayoutHeight":I
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v25    # "columnMaxWidth":[I
    .end local v28    # "columnWidth":[I
    .end local v32    # "expandHeight":[F
    .end local v33    # "expandWidth":[F
    .end local v52    # "rowHeight":[I
    .end local v53    # "rowMaxHeight":[I
    .end local v61    # "totalExpandHeight":F
    .end local v62    # "totalExpandWidth":F
    .end local v63    # "totalGrowHeight":I
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    sub-int v4, v7, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 648
    .local v36, "extraWidth":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 649
    .restart local v25    # "columnMaxWidth":[I
    const/16 v42, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_c

    .line 650
    aget v3, v27, v42

    aget v4, v26, v42

    sub-int v39, v3, v4

    .line 651
    .local v39, "growWidth":I
    move/from16 v0, v39

    int-to-float v3, v0

    move/from16 v0, v64

    int-to-float v4, v0

    div-float v38, v3, v4

    .line 652
    .local v38, "growRatio":F
    aget v3, v26, v42

    move/from16 v0, v36

    int-to-float v4, v0

    mul-float v4, v4, v38

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v25, v42

    .line 649
    add-int/lit8 v42, v42, 0x1

    goto :goto_a

    .line 662
    .end local v36    # "extraWidth":I
    .end local v38    # "growRatio":F
    .end local v39    # "growWidth":I
    .restart local v8    # "tableLayoutHeight":I
    .restart local v63    # "totalGrowHeight":I
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    sub-int v4, v8, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 663
    .local v35, "extraHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    new-array v0, v3, [I

    move-object/from16 v53, v0

    .line 664
    .restart local v53    # "rowMaxHeight":[I
    const/16 v42, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_d

    .line 665
    aget v3, v55, v42

    aget v4, v54, v42

    sub-int v37, v3, v4

    .line 666
    .local v37, "growHeight":I
    move/from16 v0, v37

    int-to-float v3, v0

    move/from16 v0, v63

    int-to-float v4, v0

    div-float v38, v3, v4

    .line 667
    .restart local v38    # "growRatio":F
    aget v3, v54, v42

    move/from16 v0, v35

    int-to-float v4, v0

    mul-float v4, v4, v38

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v53, v42

    .line 664
    add-int/lit8 v42, v42, 0x1

    goto :goto_b

    .line 681
    .end local v35    # "extraHeight":I
    .end local v37    # "growHeight":I
    .end local v38    # "growRatio":F
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .restart local v28    # "columnWidth":[I
    .restart local v32    # "expandHeight":[F
    .restart local v33    # "expandWidth":[F
    .restart local v52    # "rowHeight":[I
    .restart local v61    # "totalExpandHeight":F
    .restart local v62    # "totalExpandWidth":F
    :cond_10
    const/16 v58, 0x0

    .line 682
    .local v58, "spannedCellMaxWidth":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move/from16 v24, v0

    .local v24, "column":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v49, v24, v3

    .local v49, "nn":I
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v49

    if-ge v0, v1, :cond_12

    .line 683
    aget v3, v25, v24

    add-int v58, v58, v3

    .line 685
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_11

    aget v3, v33, v24

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_11

    .line 686
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v33, v24

    .line 687
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float v62, v62, v3

    .line 682
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 690
    :cond_12
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int/2addr v3, v4

    sub-int v58, v58, v3

    .line 691
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v32, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_13

    .line 692
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v32, v3

    .line 693
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    add-float v61, v61, v3

    .line 696
    :cond_13
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v51

    .line 697
    .restart local v51    # "prefWidth":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetHeight(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v50

    .line 698
    .restart local v50    # "prefHeight":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v47

    .line 699
    .restart local v47    # "minWidth":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetHeight(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v46

    .line 700
    .restart local v46    # "minHeight":I
    move/from16 v0, v51

    move/from16 v1, v47

    if-ge v0, v1, :cond_14

    move/from16 v51, v47

    .line 701
    :cond_14
    move/from16 v0, v50

    move/from16 v1, v46

    if-ge v0, v1, :cond_15

    move/from16 v50, v46

    .line 703
    :cond_15
    move/from16 v0, v58

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    .line 704
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v53, v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    sub-int/2addr v3, v4

    move/from16 v0, v50

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    .line 706
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 707
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    aget v4, v28, v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    add-int/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v28, v3

    .line 708
    :cond_16
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v4, v52, v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    add-int/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v52, v3

    goto/16 :goto_9

    .line 712
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v24    # "column":I
    .end local v46    # "minHeight":I
    .end local v47    # "minWidth":I
    .end local v49    # "nn":I
    .end local v50    # "prefHeight":I
    .end local v51    # "prefWidth":I
    .end local v58    # "spannedCellMaxWidth":I
    :cond_17
    const/16 v66, 0x0

    .local v66, "uniformMaxWidth":I
    const/16 v65, 0x0

    .line 713
    .local v65, "uniformMaxHeight":I
    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_d
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_1b

    .line 714
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 715
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 713
    :cond_18
    :goto_e
    add-int/lit8 v42, v42, 0x1

    goto :goto_d

    .line 716
    :cond_19
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v3, :cond_1a

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    aget v3, v28, v3

    move/from16 v0, v66

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v66

    .line 717
    :cond_1a
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz v3, :cond_18

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    move/from16 v0, v65

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v65

    goto :goto_e

    .line 719
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    :cond_1b
    if-gtz v66, :cond_1c

    if-lez v65, :cond_20

    .line 721
    :cond_1c
    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_f
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_20

    .line 722
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 723
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 721
    :cond_1d
    :goto_10
    add-int/lit8 v42, v42, 0x1

    goto :goto_f

    .line 724
    :cond_1e
    if-lez v66, :cond_1f

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v3, :cond_1f

    .line 725
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    aget v3, v28, v3

    sub-int v31, v66, v3

    .line 726
    .local v31, "diff":I
    if-lez v31, :cond_1f

    .line 727
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    aput v66, v28, v3

    .line 728
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    add-int v3, v3, v31

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinWidth:I

    .line 729
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    add-int v3, v3, v31

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    .line 732
    .end local v31    # "diff":I
    :cond_1f
    if-lez v65, :cond_1d

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz v3, :cond_1d

    .line 733
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    sub-int v31, v65, v3

    .line 734
    .restart local v31    # "diff":I
    if-lez v31, :cond_1d

    .line 735
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aput v65, v52, v3

    .line 736
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    add-int v3, v3, v31

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tableMinHeight:I

    .line 737
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    add-int v3, v3, v31

    move-object/from16 v0, p0

    iput v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    goto :goto_10

    .line 745
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v31    # "diff":I
    :cond_20
    const/4 v3, 0x0

    cmpl-float v3, v62, v3

    if-lez v3, :cond_23

    .line 746
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefWidth:I

    sub-int v4, v7, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 747
    .local v34, "extra":I
    const/16 v67, 0x0

    .local v67, "used":I
    const/16 v43, 0x0

    .line 748
    .local v43, "lastIndex":I
    const/16 v42, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_22

    .line 749
    aget v3, v33, v42

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_21

    .line 748
    :goto_12
    add-int/lit8 v42, v42, 0x1

    goto :goto_11

    .line 750
    :cond_21
    move/from16 v0, v34

    int-to-float v3, v0

    aget v4, v33, v42

    mul-float/2addr v3, v4

    div-float v3, v3, v62

    float-to-int v0, v3

    move/from16 v21, v0

    .line 751
    .local v21, "amount":I
    aget v3, v28, v42

    add-int v3, v3, v21

    aput v3, v28, v42

    .line 752
    add-int v67, v67, v21

    .line 753
    move/from16 v43, v42

    goto :goto_12

    .line 755
    .end local v21    # "amount":I
    :cond_22
    aget v3, v28, v43

    sub-int v4, v34, v67

    add-int/2addr v3, v4

    aput v3, v28, v43

    .line 757
    .end local v34    # "extra":I
    .end local v43    # "lastIndex":I
    .end local v67    # "used":I
    :cond_23
    const/4 v3, 0x0

    cmpl-float v3, v61, v3

    if-lez v3, :cond_26

    .line 758
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->tablePrefHeight:I

    sub-int v4, v8, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 759
    .restart local v34    # "extra":I
    const/16 v67, 0x0

    .restart local v67    # "used":I
    const/16 v43, 0x0

    .line 760
    .restart local v43    # "lastIndex":I
    const/16 v42, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_25

    .line 761
    aget v3, v32, v42

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_24

    .line 760
    :goto_14
    add-int/lit8 v42, v42, 0x1

    goto :goto_13

    .line 762
    :cond_24
    move/from16 v0, v34

    int-to-float v3, v0

    aget v4, v32, v42

    mul-float/2addr v3, v4

    div-float v3, v3, v61

    float-to-int v0, v3

    move/from16 v21, v0

    .line 763
    .restart local v21    # "amount":I
    aget v3, v52, v42

    add-int v3, v3, v21

    aput v3, v52, v42

    .line 764
    add-int v67, v67, v21

    .line 765
    move/from16 v43, v42

    goto :goto_14

    .line 767
    .end local v21    # "amount":I
    :cond_25
    aget v3, v52, v43

    sub-int v4, v34, v67

    add-int/2addr v3, v4

    aput v3, v52, v43

    .line 771
    .end local v34    # "extra":I
    .end local v43    # "lastIndex":I
    .end local v67    # "used":I
    :cond_26
    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_15
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_2b

    .line 772
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 773
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 771
    :cond_27
    :goto_16
    add-int/lit8 v42, v42, 0x1

    goto :goto_15

    .line 774
    :cond_28
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    .line 776
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v47

    .line 778
    .restart local v47    # "minWidth":I
    const/16 v19, 0x0

    .line 779
    .local v19, "spannedCellWidth":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move/from16 v24, v0

    .restart local v24    # "column":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v49, v24, v3

    .restart local v49    # "nn":I
    :goto_17
    move/from16 v0, v24

    move/from16 v1, v49

    if-ge v0, v1, :cond_29

    .line 780
    aget v3, v28, v24

    add-int v19, v19, v3

    .line 779
    add-int/lit8 v24, v24, 0x1

    goto :goto_17

    .line 782
    :cond_29
    const/4 v3, 0x0

    sub-int v4, v47, v19

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int v36, v3, v4

    .line 783
    .restart local v36    # "extraWidth":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v49, v24, v3

    :goto_18
    move/from16 v0, v24

    move/from16 v1, v49

    if-ge v0, v1, :cond_2a

    .line 784
    aget v3, v28, v24

    add-int v3, v3, v36

    aput v3, v28, v24

    .line 783
    add-int/lit8 v24, v24, 0x1

    goto :goto_18

    .line 786
    :cond_2a
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int/2addr v4, v5

    sub-int v4, v47, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    goto/16 :goto_16

    .line 790
    .end local v19    # "spannedCellWidth":I
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v24    # "column":I
    .end local v36    # "extraWidth":I
    .end local v47    # "minWidth":I
    .end local v49    # "nn":I
    :cond_2b
    const/16 v60, 0x0

    .local v60, "tableWidth":I
    const/16 v59, 0x0

    .line 791
    .local v59, "tableHeight":I
    const/16 v42, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columns:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_2c

    .line 792
    aget v3, v28, v42

    add-int v60, v60, v3

    .line 791
    add-int/lit8 v42, v42, 0x1

    goto :goto_19

    .line 793
    :cond_2c
    add-int v3, v60, v41

    move/from16 v0, v69

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v60

    .line 794
    const/16 v42, 0x0

    :goto_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rows:I

    move/from16 v0, v42

    if-ge v0, v3, :cond_2d

    .line 795
    aget v3, v52, v42

    add-int v59, v59, v3

    .line 794
    add-int/lit8 v42, v42, 0x1

    goto :goto_1a

    .line 796
    :cond_2d
    add-int v3, v59, v68

    move/from16 v0, v40

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v59

    .line 799
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v4

    add-int v12, v3, v4

    .line 800
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_30

    .line 801
    sub-int v3, v7, v60

    add-int/2addr v12, v3

    .line 805
    :cond_2e
    :goto_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v4

    add-int v13, v3, v4

    .line 806
    .local v13, "y":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_31

    .line 807
    sub-int v3, v8, v59

    add-int/2addr v13, v3

    .line 812
    :cond_2f
    :goto_1c
    move/from16 v17, v12

    .line 813
    .local v17, "currentX":I
    move/from16 v30, v13

    .line 814
    .local v30, "currentY":I
    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_1d
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_3b

    .line 815
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 816
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 814
    :goto_1e
    add-int/lit8 v42, v42, 0x1

    goto :goto_1d

    .line 802
    .end local v13    # "y":I
    .end local v17    # "currentX":I
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v30    # "currentY":I
    :cond_30
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2e

    .line 803
    sub-int v3, v7, v60

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    goto :goto_1b

    .line 808
    .restart local v13    # "y":I
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2f

    .line 809
    sub-int v3, v8, v59

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v13, v3

    goto :goto_1c

    .line 818
    .restart local v17    # "currentX":I
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .restart local v30    # "currentY":I
    :cond_32
    const/16 v19, 0x0

    .line 819
    .restart local v19    # "spannedCellWidth":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move/from16 v24, v0

    .restart local v24    # "column":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v49, v24, v3

    .restart local v49    # "nn":I
    :goto_1f
    move/from16 v0, v24

    move/from16 v1, v49

    if-ge v0, v1, :cond_33

    .line 820
    aget v3, v28, v24

    add-int v19, v19, v3

    .line 819
    add-int/lit8 v24, v24, 0x1

    goto :goto_1f

    .line 821
    :cond_33
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int/2addr v3, v4

    sub-int v19, v19, v3

    .line 823
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    add-int v17, v17, v3

    .line 825
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_34

    .line 826
    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    .line 827
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v45

    .line 828
    .local v45, "maxWidth":I
    if-lez v45, :cond_34

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    move/from16 v0, v45

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    .line 830
    .end local v45    # "maxWidth":I
    :cond_34
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    .line 831
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    int-to-float v3, v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    .line 832
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getWidgetHeight(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v44

    .line 833
    .local v44, "maxHeight":I
    if-lez v44, :cond_35

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    move/from16 v0, v44

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    .line 836
    .end local v44    # "maxHeight":I
    :cond_35
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_36

    .line 837
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/esotericsoftware/tablelayout/Cell;->widgetX:I

    .line 843
    :goto_20
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_38

    .line 844
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    add-int v3, v3, v30

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetY:I

    .line 850
    :goto_21
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    if-eqz v3, :cond_3a

    .line 851
    move/from16 v17, v12

    .line 852
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    add-int v30, v30, v3

    goto/16 :goto_1e

    .line 838
    :cond_36
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_37

    .line 839
    add-int v3, v17, v19

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetX:I

    goto :goto_20

    .line 841
    :cond_37
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    sub-int v3, v19, v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v17

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetX:I

    goto :goto_20

    .line 845
    :cond_38
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_39

    .line 846
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    add-int v3, v3, v30

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetY:I

    goto :goto_21

    .line 848
    :cond_39
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    add-int/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v30

    move-object/from16 v0, v22

    iput v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetY:I

    goto :goto_21

    .line 854
    :cond_3a
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int v3, v3, v19

    add-int v17, v17, v3

    goto/16 :goto_1e

    .line 858
    .end local v19    # "spannedCellWidth":I
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v24    # "column":I
    .end local v49    # "nn":I
    :cond_3b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    if-nez v3, :cond_3c

    .line 891
    :goto_22
    return-void

    .line 859
    :cond_3c
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/tablelayout/Toolkit;->clearDebugRectangles(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    .line 860
    move/from16 v17, v12

    .line 861
    move/from16 v30, v13

    .line 862
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3e

    .line 863
    :cond_3d
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutY:I

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/esotericsoftware/tablelayout/Toolkit;->addDebugRectangle(Lcom/esotericsoftware/tablelayout/BaseTableLayout;IIIII)V

    .line 864
    const/4 v11, 0x2

    sub-int v14, v60, v41

    sub-int v15, v59, v68

    move-object v9, v2

    move-object/from16 v10, p0

    invoke-virtual/range {v9 .. v15}, Lcom/esotericsoftware/tablelayout/Toolkit;->addDebugRectangle(Lcom/esotericsoftware/tablelayout/BaseTableLayout;IIIII)V

    .line 866
    :cond_3e
    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v48

    move/from16 v29, v17

    .end local v17    # "currentX":I
    .local v29, "currentX":I
    :goto_23
    move/from16 v0, v42

    move/from16 v1, v48

    if-ge v0, v1, :cond_46

    .line 867
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/esotericsoftware/tablelayout/Cell;

    .line 868
    .restart local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3f

    move/from16 v17, v29

    .line 866
    .end local v29    # "currentX":I
    .restart local v17    # "currentX":I
    :goto_24
    add-int/lit8 v42, v42, 0x1

    move/from16 v29, v17

    .end local v17    # "currentX":I
    .restart local v29    # "currentX":I
    goto :goto_23

    .line 871
    :cond_3f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    .line 872
    :cond_40
    const/16 v16, 0x8

    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetX:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetY:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    move/from16 v20, v0

    move-object v14, v2

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v20}, Lcom/esotericsoftware/tablelayout/Toolkit;->addDebugRectangle(Lcom/esotericsoftware/tablelayout/BaseTableLayout;IIIII)V

    .line 875
    :cond_41
    const/16 v19, 0x0

    .line 876
    .restart local v19    # "spannedCellWidth":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    move/from16 v24, v0

    .restart local v24    # "column":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v49, v24, v3

    .restart local v49    # "nn":I
    :goto_25
    move/from16 v0, v24

    move/from16 v1, v49

    if-ge v0, v1, :cond_42

    .line 877
    aget v3, v28, v24

    add-int v19, v19, v3

    .line 876
    add-int/lit8 v24, v24, 0x1

    goto :goto_25

    .line 878
    :cond_42
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int/2addr v3, v4

    sub-int v19, v19, v3

    .line 879
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeftTemp:I

    add-int v17, v29, v3

    .line 880
    .end local v29    # "currentX":I
    .restart local v17    # "currentX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_44

    .line 881
    :cond_43
    const/16 v16, 0x4

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    add-int v18, v30, v3

    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTopTemp:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottomTemp:I

    sub-int v20, v3, v4

    move-object v14, v2

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v20}, Lcom/esotericsoftware/tablelayout/Toolkit;->addDebugRectangle(Lcom/esotericsoftware/tablelayout/BaseTableLayout;IIIII)V

    .line 885
    :cond_44
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    if-eqz v3, :cond_45

    .line 886
    move/from16 v17, v12

    .line 887
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    aget v3, v52, v3

    add-int v30, v30, v3

    goto/16 :goto_24

    .line 889
    :cond_45
    move-object/from16 v0, v22

    iget v3, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRightTemp:I

    add-int v3, v3, v19

    add-int v17, v17, v3

    goto/16 :goto_24

    .end local v17    # "currentX":I
    .end local v19    # "spannedCellWidth":I
    .end local v22    # "c":Lcom/esotericsoftware/tablelayout/Cell;
    .end local v24    # "column":I
    .end local v49    # "nn":I
    .restart local v29    # "currentX":I
    :cond_46
    move/from16 v17, v29

    .line 891
    .end local v29    # "currentX":I
    .restart local v17    # "currentX":I
    goto/16 :goto_22
.end method

.method public left()Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 501
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 502
    return-object p0
.end method

.method public pad(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "pad"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 427
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 428
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 429
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public pad(IIII)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 436
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 437
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 438
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 439
    return-object p0
.end method

.method public pad(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "pad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 385
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 386
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public pad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "top"    # Ljava/lang/String;
    .param p2, "left"    # Ljava/lang/String;
    .param p3, "bottom"    # Ljava/lang/String;
    .param p4, "right"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 394
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 395
    iput-object p3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 396
    iput-object p4, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public padBottom(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "padBottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 457
    return-object p0
.end method

.method public padBottom(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "padBottom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 415
    return-object p0
.end method

.method public padLeft(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "padLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public padLeft(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "padLeft"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public padRight(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "padRight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 463
    return-object p0
.end method

.method public padRight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "padRight"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 421
    return-object p0
.end method

.method public padTop(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "padTop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 445
    return-object p0
.end method

.method public padTop(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "padTop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableDescription"    # Ljava/lang/String;

    .prologue
    .line 102
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p0, p1}, Lcom/esotericsoftware/tablelayout/TableLayoutParser;->parse(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;)TC;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p2, "widget":Ljava/lang/Object;, "TC;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name is already used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object p2
.end method

.method public reset()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->clear()V

    .line 197
    iput-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 198
    iput-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    .line 199
    iput-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 200
    iput-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 202
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/tablelayout/Toolkit;->clearDebugRectangles(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    .line 204
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cellDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    invoke-static {p0}, Lcom/esotericsoftware/tablelayout/Cell;->defaults(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/tablelayout/Cell;->set(Lcom/esotericsoftware/tablelayout/Cell;)V

    .line 205
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iput-object v2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rowDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    .line 207
    return-void
.end method

.method public right()Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 515
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 516
    return-object p0
.end method

.method public row()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->endRow()V

    .line 162
    :cond_0
    new-instance v0, Lcom/esotericsoftware/tablelayout/Cell;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/tablelayout/Cell;-><init>(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rowDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    .line 163
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->rowDefaults:Lcom/esotericsoftware/tablelayout/Cell;

    return-object v0
.end method

.method public setLayoutSize(IIII)V
    .locals 0
    .param p1, "tableLayoutX"    # I
    .param p2, "tableLayoutY"    # I
    .param p3, "tableLayoutWidth"    # I
    .param p4, "tableLayoutHeight"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutX:I

    .line 87
    iput p2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutY:I

    .line 88
    iput p3, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutWidth:I

    .line 89
    iput p4, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layoutHeight:I

    .line 90
    return-void
.end method

.method public setParent(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V
    .locals 1
    .param p1, "parent"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .prologue
    .line 275
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    .line 276
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    .line 277
    return-void
.end method

.method public setTable(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p1, "table":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->table:Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public setToolkit(Lcom/esotericsoftware/tablelayout/Toolkit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p1, "toolkit":Lcom/esotericsoftware/tablelayout/Toolkit;, "TK;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    .line 281
    return-void
.end method

.method public setWidget(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    .local p2, "widget":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getCell(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/tablelayout/Cell;->setWidget(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/Cell;

    .line 269
    return-void
.end method

.method public size(II)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    .line 366
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public size(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "width"    # Ljava/lang/String;
    .param p2, "height"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    .line 347
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public top()Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 494
    iget v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    .line 495
    return-object p0
.end method

.method public width(I)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 1
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public width(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .locals 0
    .param p1, "width"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "Lcom/esotericsoftware/tablelayout/BaseTableLayout<TC;TT;TL;TK;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    .line 354
    return-object p0
.end method
