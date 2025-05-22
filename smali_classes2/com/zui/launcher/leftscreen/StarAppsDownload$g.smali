.class Lcom/zui/launcher/leftscreen/StarAppsDownload$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/download/DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/leftscreen/StarAppsDownload;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/leftscreen/StarAppsDownload;


# direct methods
.method constructor <init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->c:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iput-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDownloadSuccess ~~~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->c:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->j(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public onDownloading(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/zui/launcher/networksdk/download/DownloadTask;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " download onFailue \n "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->c:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->b:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->h(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->c:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;->b:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->h(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
