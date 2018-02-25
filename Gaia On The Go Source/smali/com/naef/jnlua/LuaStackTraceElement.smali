.class public Lcom/naef/jnlua/LuaStackTraceElement;
.super Ljava/lang/Object;


# instance fields
.field private functionName:Ljava/lang/String;

.field private lineNumber:I

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    iput p3, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    return-void
.end method

.method private safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/naef/jnlua/LuaStackTraceElement;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/naef/jnlua/LuaStackTraceElement;

    iget-object v2, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/naef/jnlua/LuaStackTraceElement;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/naef/jnlua/LuaStackTraceElement;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    iget v3, p1, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const v3, 0x1003f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    mul-int v0, v1, v3

    iget v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    if-ltz v1, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "(Unknown Function)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "External Function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
