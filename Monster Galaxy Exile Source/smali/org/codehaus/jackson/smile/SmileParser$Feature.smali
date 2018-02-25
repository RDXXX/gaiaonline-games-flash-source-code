.class public final enum Lorg/codehaus/jackson/smile/SmileParser$Feature;
.super Ljava/lang/Enum;
.source "SmileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/smile/SmileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/smile/SmileParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/smile/SmileParser$Feature;

.field public static final enum REQUIRE_HEADER:Lorg/codehaus/jackson/smile/SmileParser$Feature;


# instance fields
.field final _defaultState:Z

.field final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/codehaus/jackson/smile/SmileParser$Feature;

    const-string v1, "REQUIRE_HEADER"

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->REQUIRE_HEADER:Lorg/codehaus/jackson/smile/SmileParser$Feature;

    .line 24
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileParser$Feature;

    sget-object v1, Lorg/codehaus/jackson/smile/SmileParser$Feature;->REQUIRE_HEADER:Lorg/codehaus/jackson/smile/SmileParser$Feature;

    aput-object v1, v0, v2

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->$VALUES:[Lorg/codehaus/jackson/smile/SmileParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p3, "defaultState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-boolean p3, p0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->_defaultState:Z

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->_mask:I

    .line 55
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "flags":I
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileParser$Feature;->values()[Lorg/codehaus/jackson/smile/SmileParser$Feature;

    move-result-object v0

    .local v0, "arr$":[Lorg/codehaus/jackson/smile/SmileParser$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 45
    .local v1, "f":Lorg/codehaus/jackson/smile/SmileParser$Feature;
    invoke-virtual {v1}, Lorg/codehaus/jackson/smile/SmileParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v1}, Lorg/codehaus/jackson/smile/SmileParser$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "f":Lorg/codehaus/jackson/smile/SmileParser$Feature;
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/smile/SmileParser$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/codehaus/jackson/smile/SmileParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/smile/SmileParser$Feature;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/jackson/smile/SmileParser$Feature;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->$VALUES:[Lorg/codehaus/jackson/smile/SmileParser$Feature;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/smile/SmileParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileParser$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser$Feature;->_mask:I

    return v0
.end method
