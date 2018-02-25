.class public abstract Lcom/esotericsoftware/tablelayout/Toolkit;
.super Ljava/lang/Object;
.source "Toolkit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:TC;",
        "L:Lcom/esotericsoftware/tablelayout/BaseTableLayout;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final classPrefixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/esotericsoftware/tablelayout/Toolkit;->classPrefixes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClassPrefix(Ljava/lang/String;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 629
    sget-object v0, Lcom/esotericsoftware/tablelayout/Toolkit;->classPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    return-void
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 614
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 615
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    .line 624
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v0

    .line 622
    .local v1, "fields":[Ljava/lang/reflect/Field;
    .local v2, "i":I
    .local v3, "n":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 618
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    const-class v4, Ljava/lang/Object;

    if-eq p0, v4, :cond_3

    .line 619
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 620
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 621
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v0, v1, v2

    goto :goto_0

    .line 620
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 624
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 20
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v14

    .line 535
    .local v14, "params":[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Class;

    .line 536
    .local v15, "stringParamTypes":[Ljava/lang/Class;
    const/4 v9, 0x0

    .line 538
    .local v9, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .local v6, "i":I
    :try_start_0
    array-length v11, v14

    .local v11, "n":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 539
    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v6

    .line 538
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 549
    .end local v11    # "n":I
    :goto_1
    if-eqz v9, :cond_2

    .line 551
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :goto_2
    return-void

    .line 541
    :catch_0
    move-exception v7

    .line 543
    .local v7, "ignored":Ljava/lang/NoSuchMethodException;
    const/4 v6, 0x0

    :try_start_2
    array-length v11, v14

    .restart local v11    # "n":I
    :goto_3
    if-ge v6, v11, :cond_1

    .line 544
    const-class v17, Ljava/lang/CharSequence;

    aput-object v17, v15, v6

    .line 543
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 545
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v9

    goto :goto_1

    .line 552
    .end local v7    # "ignored":Ljava/lang/NoSuchMethodException;
    .end local v11    # "n":I
    :catch_1
    move-exception v5

    .line 553
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error invoking method: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 558
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 560
    .local v10, "methods":[Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    array-length v11, v10

    .restart local v11    # "n":I
    :goto_4
    if-ge v6, v11, :cond_6

    .line 561
    aget-object v9, v10, v6

    .line 562
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 560
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 563
    :cond_4
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 564
    .local v13, "paramTypes":[Ljava/lang/Class;
    array-length v0, v13

    move/from16 v17, v0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 565
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v14

    .line 566
    const/4 v8, 0x0

    .local v8, "ii":I
    array-length v12, v13

    .local v12, "nn":I
    :goto_5
    if-ge v8, v12, :cond_5

    .line 567
    aget-object v18, v13, v8

    aget-object v17, v14, v8

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->convertType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 568
    .local v16, "value":Ljava/lang/Object;
    if-eqz v16, :cond_3

    .line 569
    aput-object v16, v14, v8

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 572
    .end local v16    # "value":Ljava/lang/Object;
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 574
    :catch_2
    move-exception v5

    .line 575
    .restart local v5    # "ex":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error invoking method: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 578
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v8    # "ii":I
    .end local v12    # "nn":I
    .end local v13    # "paramTypes":[Ljava/lang/Class;
    :cond_6
    new-instance v17, Ljava/lang/NoSuchMethodException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v17

    .line 546
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "n":I
    .restart local v7    # "ignored":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v17

    goto/16 :goto_1
.end method


# virtual methods
.method public abstract addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addDebugRectangle(Lcom/esotericsoftware/tablelayout/BaseTableLayout;IIIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "IIIII)V"
        }
    .end annotation
.end method

.method public abstract clearDebugRectangles(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method protected convertType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "parentObject"    # Ljava/lang/Object;
    .param p2, "memberType"    # Ljava/lang/Class;
    .param p3, "memberName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    const/4 v1, 0x0

    .line 586
    const-class v2, Ljava/lang/String;

    if-eq p2, v2, :cond_0

    const-class v2, Ljava/lang/CharSequence;

    if-ne p2, v2, :cond_1

    .line 609
    .end local p4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p4

    .line 588
    .restart local p4    # "value":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_2

    const-class v2, Ljava/lang/Integer;

    if-ne p2, v2, :cond_3

    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_0

    .line 589
    :cond_3
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_4

    const-class v2, Ljava/lang/Float;

    if-ne p2, v2, :cond_5

    :cond_4
    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p4

    goto :goto_0

    .line 590
    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_6

    const-class v2, Ljava/lang/Long;

    if-ne p2, v2, :cond_7

    :cond_6
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    goto :goto_0

    .line 591
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_8

    const-class v2, Ljava/lang/Double;

    if-ne p2, v2, :cond_9

    :cond_8
    invoke-static {p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p4

    goto :goto_0

    .line 592
    :cond_9
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_a

    const-class v2, Ljava/lang/Short;

    if-ne p2, v2, :cond_b

    :cond_a
    invoke-static {p4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p4

    goto :goto_0

    .line 593
    :cond_b
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_c

    const-class v2, Ljava/lang/Byte;

    if-ne p2, v2, :cond_d

    :cond_c
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 594
    :catch_0
    move-exception v2

    .line 596
    :cond_d
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_e

    const-class v2, Ljava/lang/Boolean;

    if-ne p2, v2, :cond_f

    :cond_e
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_0

    .line 597
    :cond_f
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_10

    const-class v2, Ljava/lang/Character;

    if-ne p2, v2, :cond_11

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    goto :goto_0

    .line 600
    :cond_11
    :try_start_1
    invoke-static {p2, p4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 601
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne p2, v2, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p4

    goto :goto_0

    .line 602
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    .line 605
    :cond_12
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/esotericsoftware/tablelayout/Toolkit;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 606
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne p2, v2, :cond_13

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p4

    goto/16 :goto_0

    .line 607
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v2

    :cond_13
    move-object p4, v1

    .line 609
    goto/16 :goto_0
.end method

.method public abstract getLayout(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getMaxHeight(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation
.end method

.method public abstract getMaxWidth(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation
.end method

.method public abstract getMinHeight(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation
.end method

.method public abstract getMinWidth(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation
.end method

.method public abstract getPrefHeight(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation
.end method

.method public abstract getPrefWidth(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation
.end method

.method getWidgetHeight(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TC;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    .local p2, "widget":Ljava/lang/Object;, "TC;"
    const-string v0, "min"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->getMinHeight(Ljava/lang/Object;)I

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 107
    :cond_0
    const-string v0, "pref"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->getPrefHeight(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "max"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->getMaxHeight(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method getWidgetWidth(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TC;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    .local p2, "widget":Ljava/lang/Object;, "TC;"
    const-string v0, "min"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->getMinWidth(Ljava/lang/Object;)I

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    const-string v0, "pref"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->getPrefWidth(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "max"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/tablelayout/Toolkit;->getMaxWidth(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public height(F)I
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 529
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    float-to-int v0, p1

    return v0
.end method

.method public height(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I
    .locals 5
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 519
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    if-nez v0, :cond_1

    .end local v0    # "length":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(F)I

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 520
    .restart local v0    # "length":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 521
    invoke-virtual {p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getLayoutHeight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 522
    :cond_2
    const-string v2, "px"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 523
    :cond_3
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/tablelayout/Toolkit;->height(F)I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1
.end method

.method protected newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract newStack()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public newTable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "parent":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create an instance of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newWidget(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->wrap(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 131
    :goto_0
    return-object v4

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v4, Lcom/esotericsoftware/tablelayout/Toolkit;->classPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 129
    sget-object v4, Lcom/esotericsoftware/tablelayout/Toolkit;->classPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, "prefix":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->newInstance(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 132
    :catch_1
    move-exception v4

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating instance of class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public abstract removeChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)V"
        }
    .end annotation
.end method

.method public setCellProperty(Lcom/esotericsoftware/tablelayout/Cell;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "c"    # Lcom/esotericsoftware/tablelayout/Cell;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 282
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    :try_start_0
    const-string v4, "expand"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 488
    :cond_1
    :goto_1
    return-void

    .line 288
    :pswitch_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error setting cell property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 291
    .end local v0    # "ex":Ljava/lang/Exception;
    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    .local v3, "value":Ljava/lang/String;
    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    goto :goto_1

    .line 294
    :cond_2
    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    goto :goto_1

    .line 297
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    goto :goto_1

    .line 300
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 302
    :cond_4
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 303
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 307
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const-string v4, "fill"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 308
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 310
    :pswitch_3
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    goto/16 :goto_1

    .line 313
    :pswitch_4
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    .restart local v3    # "value":Ljava/lang/String;
    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 315
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    goto/16 :goto_1

    .line 316
    :cond_6
    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 317
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    goto/16 :goto_1

    .line 319
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    goto/16 :goto_1

    .line 322
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_5
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 324
    :cond_8
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 325
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    goto/16 :goto_1

    .line 329
    .end local v3    # "value":Ljava/lang/String;
    :cond_9
    const-string v4, "size"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 330
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 342
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number of values ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    :pswitch_6
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 333
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 334
    :cond_a
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 335
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    goto/16 :goto_1

    .line 338
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_7
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 339
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    goto/16 :goto_1

    .line 345
    .end local v3    # "value":Ljava/lang/String;
    :cond_b
    const-string v4, "width"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 346
    :cond_c
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 358
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number of values ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    :pswitch_8
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 351
    .end local v3    # "value":Ljava/lang/String;
    :cond_d
    :pswitch_9
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 354
    .end local v3    # "value":Ljava/lang/String;
    :cond_e
    :pswitch_a
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 355
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    goto/16 :goto_1

    .line 361
    .end local v3    # "value":Ljava/lang/String;
    :cond_f
    const-string v4, "height"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "h"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 362
    :cond_10
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 374
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number of values ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    :pswitch_b
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 367
    .end local v3    # "value":Ljava/lang/String;
    :cond_11
    :pswitch_c
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 370
    .end local v3    # "value":Ljava/lang/String;
    :cond_12
    :pswitch_d
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 371
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    goto/16 :goto_1

    .line 377
    .end local v3    # "value":Ljava/lang/String;
    :cond_13
    const-string v4, "spacing"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "space"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 378
    :cond_14
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_5

    .line 395
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number of values ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 380
    :pswitch_e
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 383
    .end local v3    # "value":Ljava/lang/String;
    :cond_15
    :pswitch_f
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 386
    .end local v3    # "value":Ljava/lang/String;
    :cond_16
    :pswitch_10
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 387
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 388
    :cond_17
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 389
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    goto/16 :goto_1

    .line 392
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_11
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    goto/16 :goto_1

    .line 398
    :cond_18
    const-string v4, "padding"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "pad"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 399
    :cond_19
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_6

    .line 416
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number of values ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :pswitch_12
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 402
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 404
    .end local v3    # "value":Ljava/lang/String;
    :cond_1a
    :pswitch_13
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 405
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 407
    .end local v3    # "value":Ljava/lang/String;
    :cond_1b
    :pswitch_14
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 409
    :cond_1c
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 410
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    goto/16 :goto_1

    .line 413
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_15
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    goto/16 :goto_1

    .line 419
    :cond_1d
    const-string v4, "padding"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "pad"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 420
    :cond_1e
    const-string v4, "padding"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pad"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 421
    const-string v4, "top"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "t"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 422
    :cond_1f
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    goto/16 :goto_1

    .line 423
    :cond_20
    const-string v4, "left"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "l"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 424
    :cond_21
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    goto/16 :goto_1

    .line 425
    :cond_22
    const-string v4, "bottom"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "b"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 426
    :cond_23
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    goto/16 :goto_1

    .line 427
    :cond_24
    const-string v4, "right"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 428
    :cond_25
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    goto/16 :goto_1

    .line 430
    :cond_26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown property."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 432
    :cond_27
    const-string v4, "spacing"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "space"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 433
    :cond_28
    const-string v4, "spacing"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "space"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 434
    const-string v4, "top"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "t"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 435
    :cond_29
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    goto/16 :goto_1

    .line 436
    :cond_2a
    const-string v4, "left"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "l"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 437
    :cond_2b
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    goto/16 :goto_1

    .line 438
    :cond_2c
    const-string v4, "bottom"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "b"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 439
    :cond_2d
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    goto/16 :goto_1

    .line 440
    :cond_2e
    const-string v4, "right"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 441
    :cond_2f
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    goto/16 :goto_1

    .line 443
    :cond_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown property."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 445
    :cond_31
    const-string v4, "align"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 446
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 447
    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_1

    .line 448
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 449
    .restart local v3    # "value":Ljava/lang/String;
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 450
    iget-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 447
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 451
    :cond_32
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 452
    iget-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_3

    .line 453
    :cond_33
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 454
    iget-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_3

    .line 455
    :cond_34
    const-string v4, "top"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 456
    iget-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_3

    .line 457
    :cond_35
    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 458
    iget-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_3

    .line 460
    :cond_36
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    .end local v3    # "value":Ljava/lang/String;
    :cond_37
    const-string v4, "ignore"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 464
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_38

    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_38
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_4

    .line 466
    :cond_39
    const-string v4, "colspan"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 467
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 469
    :cond_3a
    const-string v4, "uniform"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 470
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3b

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 471
    :cond_3b
    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_1

    .line 472
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    .restart local v3    # "value":Ljava/lang/String;
    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 474
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 471
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 475
    :cond_3c
    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 476
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    goto :goto_6

    .line 477
    :cond_3d
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 478
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v4, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    goto :goto_6

    .line 480
    :cond_3e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 484
    .end local v3    # "value":Ljava/lang/String;
    :cond_3f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown cell property."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 330
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 346
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 362
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 378
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 399
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public setProperty(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TC;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    .local p2, "object":Ljava/lang/Object;, "TC;"
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/esotericsoftware/tablelayout/Toolkit;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex1":Ljava/lang/NoSuchMethodException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v5, p4}, Lcom/esotericsoftware/tablelayout/Toolkit;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v1

    .line 171
    .local v1, "ex2":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 172
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p2, v6, p3, v5}, Lcom/esotericsoftware/tablelayout/Toolkit;->convertType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 173
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 174
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_2
    move-exception v2

    .line 175
    .local v2, "ex3":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No method, bean property, or field found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nClass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nValues: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setTableProperty(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 186
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 187
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_0
    :try_start_0
    const-string v6, "size"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 275
    :cond_1
    :goto_1
    return-void

    .line 193
    :pswitch_0
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    .line 195
    :pswitch_1
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error setting table property: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 199
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v6, "width"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "w"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    :cond_3
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->width:Ljava/lang/String;

    goto :goto_1

    .line 202
    :cond_4
    const-string v6, "height"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "h"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    :cond_5
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->height:Ljava/lang/String;

    goto :goto_1

    .line 205
    :cond_6
    const-string v6, "padding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "pad"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 206
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 223
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid number of values ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    :pswitch_2
    const/4 v6, 0x3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 209
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    .line 211
    .end local v5    # "value":Ljava/lang/String;
    :cond_8
    :pswitch_3
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 212
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    .line 214
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    :pswitch_4
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    .line 216
    :cond_a
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 217
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    .end local v5    # "value":Ljava/lang/String;
    :pswitch_5
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :cond_b
    const-string v6, "padding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "pad"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 227
    :cond_c
    const-string v6, "padding"

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pad"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 228
    const-string v6, "top"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "t"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 229
    :cond_d
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padTop:Ljava/lang/String;

    goto/16 :goto_1

    .line 230
    :cond_e
    const-string v6, "left"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "l"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 231
    :cond_f
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padLeft:Ljava/lang/String;

    goto/16 :goto_1

    .line 232
    :cond_10
    const-string v6, "bottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "b"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 233
    :cond_11
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padBottom:Ljava/lang/String;

    goto/16 :goto_1

    .line 234
    :cond_12
    const-string v6, "right"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "r"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 235
    :cond_13
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/tablelayout/Toolkit;->validateSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->padRight:Ljava/lang/String;

    goto/16 :goto_1

    .line 237
    :cond_14
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown property."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 239
    :cond_15
    const-string v6, "align"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "align":I
    const/4 v3, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_1b

    .line 242
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 243
    .restart local v5    # "value":Ljava/lang/String;
    const-string v6, "center"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 244
    or-int/lit8 v0, v0, 0x1

    .line 241
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 245
    :cond_16
    const-string v6, "left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 246
    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    .line 247
    :cond_17
    const-string v6, "right"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 248
    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    .line 249
    :cond_18
    const-string v6, "top"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 250
    or-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 251
    :cond_19
    const-string v6, "bottom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 252
    or-int/lit8 v0, v0, 0x4

    goto :goto_3

    .line 254
    :cond_1a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    .end local v5    # "value":Ljava/lang/String;
    :cond_1b
    iput v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->align:I

    goto/16 :goto_1

    .line 258
    .end local v0    # "align":I
    :cond_1c
    const-string v6, "debug"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "debug":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1d

    const/4 v1, 0x1

    .line 261
    :cond_1d
    const/4 v3, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    if-ge v3, v4, :cond_23

    .line 262
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 263
    .restart local v5    # "value":Ljava/lang/String;
    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    or-int/lit8 v1, v1, 0x1

    .line 264
    :cond_1f
    const-string v6, "cell"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    or-int/lit8 v1, v1, 0x4

    .line 265
    :cond_20
    const-string v6, "table"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    or-int/lit8 v1, v1, 0x2

    .line 266
    :cond_21
    const-string v6, "widget"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    or-int/lit8 v1, v1, 0x8

    .line 261
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 268
    .end local v5    # "value":Ljava/lang/String;
    :cond_23
    iput v1, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->debug:I

    goto/16 :goto_1

    .line 271
    .end local v1    # "debug":I
    :cond_24
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown table property: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setWidget(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Lcom/esotericsoftware/tablelayout/Cell;Ljava/lang/Object;)V
    .locals 2
    .param p2, "cell"    # Lcom/esotericsoftware/tablelayout/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Lcom/esotericsoftware/tablelayout/Cell;",
            "TC;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    .local p3, "widget":Ljava/lang/Object;, "TC;"
    if-eqz p3, :cond_0

    .line 85
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->table:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/esotericsoftware/tablelayout/Toolkit;->removeChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    iput-object p3, p2, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    .line 89
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->nameToWidget:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/esotericsoftware/tablelayout/Cell;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->table:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lcom/esotericsoftware/tablelayout/Toolkit;->addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected validateSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 117
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    return-object p1
.end method

.method public width(F)I
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 508
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    float-to-int v0, p1

    return v0
.end method

.method public width(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Ljava/lang/String;)I
    .locals 5
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    .local p1, "layout":Lcom/esotericsoftware/tablelayout/BaseTableLayout;, "TL;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 498
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    if-nez v0, :cond_1

    .end local v0    # "length":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(F)I

    move-result v1

    .line 502
    :goto_0
    return v1

    .line 499
    .restart local v0    # "length":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 500
    invoke-virtual {p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getLayoutWidth()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 501
    :cond_2
    const-string v2, "px"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 502
    :cond_3
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/tablelayout/Toolkit;->width(F)I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1
.end method

.method public wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TC;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Toolkit;, "Lcom/esotericsoftware/tablelayout/Toolkit<TC;TT;TL;>;"
    instance-of v0, p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getTable()Ljava/lang/Object;

    move-result-object p1

    .line 154
    :cond_0
    return-object p1
.end method
