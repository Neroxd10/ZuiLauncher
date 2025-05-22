.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getDocServer()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "contact.cloud.lps.lenovo.com"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    return-object v1
.end method

.method public static isDefCategory(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;)Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->WORD:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->PPT:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->PDF:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->EXCEL:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->EPUB:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->UMD:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
