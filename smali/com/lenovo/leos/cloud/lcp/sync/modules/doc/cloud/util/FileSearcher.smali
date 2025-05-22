.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setLastModif(Ljava/lang/Long;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setSize(Ljava/lang/Long;)V

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setType(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;->onSearchProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Z

    :cond_0
    return-object v0
.end method

.method public static addMatchType(Ljava/io/File;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->findType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->getName(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {p0, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->a(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static b(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const-wide/32 v3, 0x6400000

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static findFiles(Ljava/io/File;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;",
            "I)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0xc

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_6

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->addMatchType(Ljava/io/File;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2, p1, p2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->findFiles(Ljava/io/File;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6587\u4ef6\u67e5\u627e\u5931\u8d25\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e0d\u662f\u4e00\u4e2a\u76ee\u5f55\uff01"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileSearcher"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static findRestoredDoc(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->findType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->getName(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setLastModif(Ljava/lang/Long;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setSize(Ljava/lang/Long;)V

    invoke-virtual {v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setType(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static findType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
