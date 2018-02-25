.class public final Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/stream/JsonReader$1;
    }
.end annotation


# static fields
.field private static final NON_EXECUTE_PREFIX:[C


# instance fields
.field private final buffer:[C

.field private hasToken:Z

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/stream/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private token:Lcom/google/gson/stream/JsonToken;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 201
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 202
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 203
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    .line 207
    sget-object v0, Lcom/google/gson/stream/JsonScope;->EMPTY_DOCUMENT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    .line 233
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 243
    return-void
.end method

.method private advance()Lcom/google/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 426
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 427
    .local v0, "result":Lcom/google/gson/stream/JsonToken;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 428
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 429
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 430
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 431
    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 892
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 894
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    .line 404
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 406
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 417
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private decodeLiteral()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 1104
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    :cond_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 1096
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1097
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1101
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 3
    .param p1, "expected"    # Lcom/google/gson/stream/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 322
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    if-eq v0, p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 326
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 818
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v2, v3, :cond_2

    .line 819
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 820
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    :goto_0
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 827
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .local v0, "total":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 828
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 829
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_0

    .line 830
    const/4 v1, 0x1

    .line 833
    :cond_1
    return v1

    .line 822
    .end local v0    # "total":I
    :cond_2
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    .local v2, "snippet":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1117
    .local v1, "beforePos":I
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1118
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1119
    .local v0, "afterPos":I
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1120
    return-object v2
.end method

.method private nextInArray(Z)Lcom/google/gson/stream/JsonToken;
    .locals 2
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 670
    if-eqz p1, :cond_0

    .line 671
    sget-object v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_ARRAY:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 688
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 705
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 706
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 684
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 676
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 677
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 678
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_1

    .line 680
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 690
    :sswitch_3
    if-eqz p1, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 692
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 693
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_1

    .line 699
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 700
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 701
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 702
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 703
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_1

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 674
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcom/google/gson/stream/JsonToken;
    .locals 3
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 717
    if-eqz p1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 725
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 742
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 743
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_0

    .line 750
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 751
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 752
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextLiteral()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 754
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 721
    .end local v0    # "quote":I
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 722
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 723
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 760
    :goto_0
    return-object v1

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 737
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 730
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 731
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 732
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 745
    .restart local v0    # "quote":I
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 747
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 758
    :cond_1
    sget-object v1, Lcom/google/gson/stream/JsonScope;->DANGLING_NAME:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 759
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 760
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 728
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextLiteral()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 979
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 980
    .local v2, "start":I
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_3

    .line 981
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v3, v4

    .line 982
    .local v1, "c":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1001
    :goto_1
    :sswitch_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1002
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-eqz v3, :cond_1

    .line 1003
    const-string v3, "skipped!"

    .line 1019
    .end local v1    # "c":I
    :goto_2
    return-object v3

    .line 988
    .restart local v1    # "c":I
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    .line 1004
    :cond_1
    if-nez v0, :cond_2

    .line 1005
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v5, v2

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 1007
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1013
    .end local v1    # "c":I
    :cond_3
    if-nez v0, :cond_4

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1016
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1017
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 837
    :goto_0
    :sswitch_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 838
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 839
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 884
    :cond_1
    :goto_1
    return v0

    .line 847
    :sswitch_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 852
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v2, v3

    .line 853
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 856
    :sswitch_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 857
    const-string v2, "*/"

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 858
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 860
    :cond_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 865
    :sswitch_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 866
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 879
    .end local v1    # "peek":C
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 880
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 887
    .end local v0    # "c":I
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of input"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 839
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 853
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    const/4 v0, 0x0

    .line 937
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 938
    .local v2, "start":I
    :cond_1
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_6

    .line 939
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v3, v4

    .line 941
    .local v1, "c":I
    if-ne v1, p1, :cond_4

    .line 942
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-eqz v3, :cond_2

    .line 943
    const-string v3, "skipped!"

    .line 948
    :goto_1
    return-object v3

    .line 944
    :cond_2
    if-nez v0, :cond_3

    .line 945
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 947
    :cond_3
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 951
    :cond_4
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_1

    .line 952
    if-nez v0, :cond_5

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 956
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 961
    .end local v1    # "c":I
    :cond_6
    if-nez v0, :cond_7

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 965
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 967
    const-string v3, "Unterminated string"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private nextValue()Lcom/google/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 787
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 788
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 807
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 808
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readLiteral()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    :goto_0
    return-object v1

    .line 790
    :sswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    .line 791
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 792
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 795
    :sswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonScope;->EMPTY_ARRAY:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    .line 796
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 797
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 800
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 802
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 803
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 804
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 788
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 778
    :pswitch_0
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 772
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 773
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 774
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 781
    :cond_1
    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 782
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    .line 768
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekStack()Lcom/google/gson/stream/JsonScope;
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/stream/JsonScope;

    return-object v0
.end method

.method private pop()Lcom/google/gson/stream/JsonScope;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/stream/JsonScope;

    return-object v0
.end method

.method private push(Lcom/google/gson/stream/JsonScope;)V
    .locals 1
    .param p1, "newTop"    # Lcom/google/gson/stream/JsonScope;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method private quickPeek()Lcom/google/gson/stream/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 355
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    if-eqz v3, :cond_1

    .line 356
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 389
    :cond_0
    :goto_0
    return-object v1

    .line 359
    :cond_1
    sget-object v3, Lcom/google/gson/stream/JsonReader$1;->$SwitchMap$com$google$gson$stream$JsonScope:[I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekStack()Lcom/google/gson/stream/JsonScope;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 394
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 361
    :pswitch_0
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v3, :cond_2

    .line 362
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 364
    :cond_2
    sget-object v3, Lcom/google/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 365
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 366
    .local v1, "firstToken":Lcom/google/gson/stream/JsonToken;
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v3, :cond_0

    .line 367
    const-string v3, "Expected JSON document to start with \'[\' or \'{\'"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    goto :goto_0

    .line 371
    .end local v1    # "firstToken":Lcom/google/gson/stream/JsonToken;
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextInArray(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 373
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextInArray(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 375
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextInObject(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 377
    :pswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->objectValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 379
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextInObject(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 382
    :pswitch_6
    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 383
    .local v2, "token":Lcom/google/gson/stream/JsonToken;
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 384
    goto :goto_0

    .line 386
    :cond_3
    const-string v3, "Expected EOF"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v2    # "token":Lcom/google/gson/stream/JsonToken;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/EOFException;
    iput-boolean v5, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 389
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readEscapeCharacter()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1036
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1037
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1040
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 1041
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_0

    .line 1069
    .end local v0    # "escaped":C
    :goto_0
    return v0

    .line 1043
    .restart local v0    # "escaped":C
    :sswitch_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v2, v3, :cond_1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1044
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1046
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1047
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1048
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_0

    .line 1051
    .end local v1    # "hex":Ljava/lang/String;
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1054
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1057
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1060
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 1063
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 1041
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1077
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextLiteral()Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "literal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    const-string v1, "Expected literal value"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1081
    :cond_0
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1082
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 1083
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1
.end method

.method private replaceTop(Lcom/google/gson/stream/JsonScope;)V
    .locals 2
    .param p1, "newTop"    # Lcom/google/gson/stream/JsonScope;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 913
    :cond_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 912
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 913
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 918
    :cond_2
    const/4 v1, 0x1

    .line 920
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 904
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 908
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " near "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 291
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 307
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 620
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 621
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 622
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 623
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/google/gson/stream/JsonScope;->CLOSED:Lcom/google/gson/stream/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 625
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 299
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 315
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 333
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 479
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 480
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    const/4 v0, 0x1

    .line 492
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 493
    return v0

    .line 486
    .end local v0    # "result":Z
    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 489
    .end local v0    # "result":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 527
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 533
    .local v0, "result":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids octal prefixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_1
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 538
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 542
    return-wide v0
.end method

.method public nextInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 592
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 593
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 607
    .local v3, "result":I
    :cond_1
    int-to-long v4, v3

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 608
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids octal prefixes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    .end local v3    # "result":I
    :catch_0
    move-exception v2

    .line 600
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 601
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 602
    .restart local v3    # "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_1

    .line 603
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 611
    .end local v0    # "asDouble":D
    .end local v2    # "ignored":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 612
    return v3
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 557
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 558
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 563
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 572
    .local v3, "result":J
    :cond_1
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON forbids octal prefixes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 564
    .end local v3    # "result":J
    :catch_0
    move-exception v2

    .line 565
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 566
    .local v0, "asDouble":D
    double-to-long v3, v0

    .line 567
    .restart local v3    # "result":J
    long-to-double v5, v3

    cmpl-double v5, v5, v0

    if-eqz v5, :cond_1

    .line 568
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 576
    .end local v0    # "asDouble":D
    .end local v2    # "ignored":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 577
    return-wide v3
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 443
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 444
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 447
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 448
    return-object v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 505
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 514
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 461
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 462
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 466
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 467
    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 342
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->decodeLiteral()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 276
    return-void
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, "count":I
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 638
    .local v1, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_3

    .line 639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 643
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    .line 645
    iput-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    .line 647
    return-void

    .line 640
    :cond_3
    :try_start_1
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_2

    .line 641
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 645
    .end local v1    # "token":Lcom/google/gson/stream/JsonToken;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
