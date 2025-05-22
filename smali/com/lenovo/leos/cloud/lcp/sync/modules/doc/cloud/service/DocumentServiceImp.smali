.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-hh-mm-sss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public readFile2Byte(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;->readFile2InputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public readFile2InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchAll()Ljava/util/Map;
    .locals 0
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

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->searchAll()Ljava/util/Map;

    const/4 p0, 0x0

    return-object p0
.end method

.method public searchAllV2(Landroid/content/Context;)Ljava/util/Set;
    .locals 0
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

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/FileDbManager;->getAll(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public searchItemByPath(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeFile(Ljava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$OnWriteFileListener;)Z
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, ") File:"

    const-string v3, "user cancel ,delete ("

    const-string v4, "DocumentServiceImp"

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return v5

    :cond_0
    move-object/from16 v6, p0

    invoke-direct {v6, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v8, 0xfd0

    :try_start_1
    new-array v12, v8, [B

    invoke-virtual {v1, v12, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    :goto_0
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    invoke-virtual {v7, v12, v5, v13}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1, v12, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v9, v14

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getSize()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v5, p3

    invoke-interface {v5, v9, v10, v14, v15}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$OnWriteFileListener;->onWriteProgressChange(JJ)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception v0

    move-object v8, v7

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v8, v7

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v8, v7

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0

    :catch_4
    move-exception v0

    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v0

    :catch_5
    move-exception v0

    :goto_3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    :cond_8
    throw v0
.end method

.method public writeFile([BLcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    move-object p2, v1

    goto :goto_0

    :catch_0
    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p0

    :catch_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    return v0
.end method
