.class public Lcom/gaiaonline/monstergalaxy/assets/Asset;
.super Ljava/lang/Object;
.source "Asset.java"


# instance fields
.field private final cropWidth:Ljava/lang/Integer;

.field private final extension:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private final folder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "png"

    invoke-direct {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;
    .param p4, "cropWidth"    # Ljava/lang/Integer;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->filename:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->extension:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 59
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 63
    .local v0, "a":Lcom/gaiaonline/monstergalaxy/assets/Asset;
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 65
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->extension:Ljava/lang/String;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 67
    :cond_4
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    .line 68
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    .line 75
    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data/downloaded/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCropWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->cropWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data/downloaded/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->folder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/Asset;->extension:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
