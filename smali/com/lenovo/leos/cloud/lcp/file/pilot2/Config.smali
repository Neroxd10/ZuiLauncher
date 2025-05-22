.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private volatile b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private volatile c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const-string v1, "https://air.lenovows.com"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const-string v1, "https://cos.lenovows.com"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const-string v1, "https://iocos.lenovows.com"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    const-string v0, "591468687c253d13cddfe2de5fd55159"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    const-string v0, "5793cb9eab492b4a71734dfe63226fa0"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    const-string v0, "003f21c2521f5401"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    const-string v0, "lecloud"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    const-string v0, "vip"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAirURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getAppSpecShape()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getCosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object p0
.end method

.method public getDeveloperKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getDeveloperKid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object p0
.end method

.method public getWorkspace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x173

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v2, v1

    return v2
.end method

.method public setAirURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->f:Ljava/lang/String;

    return-void
.end method

.method public setAppSpecShape(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->h:Ljava/lang/String;

    return-void
.end method

.method public setCosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-void
.end method

.method public setDeveloperKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->e:Ljava/lang/String;

    return-void
.end method

.method public setDeveloperKid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->d:Ljava/lang/String;

    return-void
.end method

.method public setIocosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->g:Ljava/lang/String;

    return-void
.end method
