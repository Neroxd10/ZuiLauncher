.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentService;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract readFile2Byte(Ljava/lang/String;)[B
.end method

.method public abstract readFile2InputStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract searchAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract searchAllV2(Landroid/content/Context;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchItemByPath(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract writeFile(Ljava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$OnWriteFileListener;)Z
.end method

.method public abstract writeFile([BLcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Z
.end method
