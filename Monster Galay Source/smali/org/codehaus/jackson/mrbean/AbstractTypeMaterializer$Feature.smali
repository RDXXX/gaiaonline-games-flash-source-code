.class public final enum Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
.super Ljava/lang/Enum;
.source "AbstractTypeMaterializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

.field public static final enum FAIL_ON_UNMATERIALIZED_METHOD:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    const-string v1, "FAIL_ON_UNMATERIALIZED_METHOD"

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->FAIL_ON_UNMATERIALIZED_METHOD:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    sget-object v1, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->FAIL_ON_UNMATERIALIZED_METHOD:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    aput-object v1, v0, v2

    sput-object v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->$VALUES:[Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "defaultState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->_defaultState:Z

    return-void
.end method

.method protected static collectDefaults()I
    .locals 6

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "flags":I
    invoke-static {}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->values()[Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    move-result-object v0

    .local v0, "arr$":[Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 44
    .local v1, "f":Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    invoke-virtual {v1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "f":Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->$VALUES:[Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
