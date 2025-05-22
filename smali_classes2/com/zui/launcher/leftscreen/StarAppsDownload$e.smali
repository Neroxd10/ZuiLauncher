.class Lcom/zui/launcher/leftscreen/StarAppsDownload$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/download/DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/leftscreen/StarAppsDownload;->m(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/zui/launcher/leftscreen/StarAppsDownload;


# direct methods
.method constructor <init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iput-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume=== onDownloadSuccess ~~~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->g(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->j(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public onDownloading(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  is resume Downloading, percent ==="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    invoke-static {p1, p2, p0, p6}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->g(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/zui/launcher/networksdk/download/DownloadTask;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " download onFailue \n "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    invoke-static {v0, p1, p0, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->k(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPause(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->h(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->d:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;->a:Landroid/view/View;

    invoke-static {p1, p2, p3, p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->i(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
