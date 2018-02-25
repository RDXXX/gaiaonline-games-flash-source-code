.class final Lcom/google/gson/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# static fields
.field private static final HEX_CHARS:[C

.field private static final HTML_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final JS_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final escapeHtmlCharacters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/gson/Escaper;->HEX_CHARS:[C

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    .local v1, "mandatoryEscapeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/gson/Escaper;->JS_ESCAPE_CHARS:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v0, "htmlEscapeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/gson/Escaper;->HTML_ESCAPE_CHARS:Ljava/util/Set;

    .line 60
    return-void

    .line 39
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "escapeHtmlCharacters"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/google/gson/Escaper;->escapeHtmlCharacters:Z

    .line 66
    return-void
.end method

.method private static appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    .locals 4
    .param p0, "codePoint"    # I
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 150
    .local v0, "surrogates":[C
    const/4 v1, 0x0

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/gson/Escaper;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 151
    const/4 v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/gson/Escaper;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 159
    .end local v0    # "surrogates":[C
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v1, "\\u"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/gson/Escaper;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/gson/Escaper;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/gson/Escaper;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/gson/Escaper;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method private escapeJsonString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "plainText"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, "pos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 82
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 83
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 84
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 86
    .local v0, "charCount":I
    invoke-static {v1}, Lcom/google/gson/Escaper;->isControlCharacter(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/google/gson/Escaper;->mustEscapeCharInJsString(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2, p1, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 91
    add-int v4, v2, v0

    .line 92
    sparse-switch v1, :sswitch_data_0

    .line 118
    invoke-static {v1, p2}, Lcom/google/gson/Escaper;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    goto :goto_1

    .line 94
    :sswitch_0
    const-string v5, "\\b"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :sswitch_1
    const-string v5, "\\t"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 100
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :sswitch_3
    const-string v5, "\\f"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    :sswitch_4
    const-string v5, "\\r"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :sswitch_5
    const-string v5, "\\\\"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    :sswitch_6
    const-string v5, "\\/"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :sswitch_7
    const-string v5, "\\\""

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    .end local v0    # "charCount":I
    .end local v1    # "codePoint":I
    :cond_1
    invoke-virtual {p2, p1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 123
    return-void

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_7
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method private static isControlCharacter(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 136
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mustEscapeCharInJsString(I)Z
    .locals 4
    .param p1, "codepoint"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    int-to-char v0, p1

    .line 128
    .local v0, "c":C
    sget-object v2, Lcom/google/gson/Escaper;->JS_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/gson/Escaper;->escapeHtmlCharacters:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/gson/Escaper;->HTML_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 131
    .end local v0    # "c":C
    :cond_1
    return v1
.end method


# virtual methods
.method public escapeJsonString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "plainText"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v1, "escapedString":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/google/gson/Escaper;->escapeJsonString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
