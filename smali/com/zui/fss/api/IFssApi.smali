.class public interface abstract Lcom/zui/fss/api/IFssApi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/fss/api/IFssApi$ErrorCallback;,
        Lcom/zui/fss/api/IFssApi$ProgressCallback;,
        Lcom/zui/fss/api/IFssApi$ListFilesCallback;,
        Lcom/zui/fss/api/IFssApi$DeleteFileCallback;
    }
.end annotation


# virtual methods
.method public abstract cancelTask(Ljava/lang/String;)V
.end method

.method public abstract deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$DeleteFileCallback;)V
.end method

.method public abstract downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)Ljava/lang/String;
.end method

.method public abstract getMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/zui/fss/api/IFssApi$ListFilesCallback;)V
.end method

.method public abstract uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/zui/fss/api/IFssApi$ProgressCallback;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zui/fss/api/IFssApi$ProgressCallback;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
