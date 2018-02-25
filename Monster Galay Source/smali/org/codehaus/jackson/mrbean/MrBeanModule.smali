.class public Lorg/codehaus/jackson/mrbean/MrBeanModule;
.super Lorg/codehaus/jackson/map/Module;
.source "MrBeanModule.java"


# static fields
.field private static final VERSION:Lorg/codehaus/jackson/Version;


# instance fields
.field private final NAME:Ljava/lang/String;

.field protected _materializer:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lorg/codehaus/jackson/Version;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/mrbean/MrBeanModule;->VERSION:Lorg/codehaus/jackson/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/mrbean/MrBeanModule;-><init>(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;)V
    .locals 1
    .param p1, "materializer"    # Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/codehaus/jackson/map/Module;-><init>()V

    .line 9
    const-string v0, "MrBeanModule"

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/MrBeanModule;->NAME:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/codehaus/jackson/mrbean/MrBeanModule;->_materializer:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;

    .line 31
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "MrBeanModule"

    return-object v0
.end method

.method public setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V
    .locals 1
    .param p1, "context"    # Lorg/codehaus/jackson/map/Module$SetupContext;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/MrBeanModule;->_materializer:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 41
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/codehaus/jackson/mrbean/MrBeanModule;->VERSION:Lorg/codehaus/jackson/Version;

    return-object v0
.end method
