.class public Lcom/zui/launcher/dot/FolderDotInfo;
.super Lcom/zui/launcher/dot/DotInfo;
.source ""


# instance fields
.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/dot/DotInfo;-><init>(ZI)V

    iput-boolean v1, p0, Lcom/zui/launcher/dot/FolderDotInfo;->e:Z

    iput-boolean p1, p0, Lcom/zui/launcher/dot/FolderDotInfo;->e:Z

    return-void
.end method


# virtual methods
.method public addDotInfo(Lcom/zui/launcher/dot/DotInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    iget v0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    invoke-static {v0, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    return-void
.end method

.method public getNotificationCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasDot()Z
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public subtractDotInfo(Lcom/zui/launcher/dot/DotInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/dot/FolderDotInfo;->d:I

    iget v0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    invoke-static {v0, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    return-void
.end method
