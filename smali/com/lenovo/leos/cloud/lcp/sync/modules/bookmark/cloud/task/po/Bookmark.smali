.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6d881e4aad32b808L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    :cond_7
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->a:I

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->a:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    if-eqz v2, :cond_b

    return v1

    :cond_a
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    return v1

    :cond_c
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->d:I

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->d:I

    if-eq p0, p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getFavicon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->a:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getVisits()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->d:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->a:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    return-void
.end method

.method public setExtend(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    return-void
.end method

.method public setFavicon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->a:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    return-void
.end method

.method public setVisits(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bookmark [sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", favicon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
