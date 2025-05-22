.class public interface abstract Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onCancel(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
.end method

.method public abstract onDownloadSuccess(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;Ljava/io/File;)V
.end method

.method public abstract onDownloading(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
.end method

.method public abstract onError(Lcom/zui/launcher/networksdk/download/DownloadTask;I)V
.end method

.method public abstract onPause(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
.end method
