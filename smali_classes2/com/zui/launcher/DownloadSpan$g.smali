.class Lcom/zui/launcher/DownloadSpan$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/download/DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->R(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ItemInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/zui/launcher/DownloadSpan$g;->d:Z

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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resume=== onDownloadSuccess ~~~ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "download onSucess filepath==="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {p1, p2, v1, v0}, Lcom/zui/launcher/DownloadSpan;->h(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getInstance()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getReDownloadCount(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->i(Lcom/zui/launcher/DownloadSpan;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->i(Lcom/zui/launcher/DownloadSpan;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "isSingleLayerDesktop"

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/zui/launcher/LauncherModel;->removeDownloadingApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getInstance()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->addReDownloadTask(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getInstance()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->startTask(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/zui/launcher/DownloadSpan;->j(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/zui/launcher/LauncherModel;->removeDownloadingApp(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "downloadfile+"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "Launcher.Download"

    const-string p3, "end"

    invoke-static {p2, p3, p0, p1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onDownloading(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  is resume Downloading, percent ==="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "download currentbyts==="

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, ";totals==="

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "download pause, so ignore update."

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object p6, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    invoke-static {p1, p6}, Lcom/zui/launcher/DownloadSpan;->g(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object p6, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    div-long/2addr p2, p4

    long-to-int p2, p2

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    invoke-static {p1, p6, p2, p0}, Lcom/zui/launcher/DownloadSpan;->h(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onError(Lcom/zui/launcher/networksdk/download/DownloadTask;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " download onFailue \n "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/zui/launcher/DownloadSpan;->handleErrorSocketException(ILcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p2}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f12033c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->a:Lcom/zui/launcher/ItemInfo;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/zui/launcher/DownloadSpan;->k(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/zui/launcher/DownloadSpan;->e(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/zui/launcher/DownloadSpan;->c(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$g;->e:Lcom/zui/launcher/DownloadSpan;

    iget-boolean p2, p0, Lcom/zui/launcher/DownloadSpan$g;->d:Z

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$g;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/zui/launcher/DownloadSpan;->f(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "downloadfile+"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$g;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Download"

    const-string p2, "end"

    invoke-static {p1, p2, p0, v3}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onPause(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V
    .locals 0

    return-void
.end method
