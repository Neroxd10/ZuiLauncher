.class Lcom/zui/launcher/networksdk/download/DownloadTask$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/download/DownloadTask;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->h(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->h(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {v1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->k(Lcom/zui/launcher/networksdk/download/DownloadTask;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->a(Lcom/zui/launcher/networksdk/download/DownloadTask;)J

    move-result-wide v4

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getDownLoadPercent()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/zui/launcher/networksdk/download/DownloadTaskListener;->onPause(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->h(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->d(Lcom/zui/launcher/networksdk/download/DownloadTask;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->e(Lcom/zui/launcher/networksdk/download/DownloadTask;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTaskListener;->onDownloadSuccess(Lcom/zui/launcher/networksdk/download/DownloadTask;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->h(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->i(Lcom/zui/launcher/networksdk/download/DownloadTask;)I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskListener;->onError(Lcom/zui/launcher/networksdk/download/DownloadTask;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->b(Lcom/zui/launcher/networksdk/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->c(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->cancel(Ljava/lang/String;Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->h(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {v1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->k(Lcom/zui/launcher/networksdk/download/DownloadTask;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->a(Lcom/zui/launcher/networksdk/download/DownloadTask;)J

    move-result-wide v4

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->getDownLoadPercent()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/zui/launcher/networksdk/download/DownloadTaskListener;->onDownloading(Lcom/zui/launcher/networksdk/download/DownloadTask;JJLjava/lang/String;)V

    :goto_0
    return-void
.end method
