.class Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->getStop()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->getDownloadTask()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-static {v1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->getStop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;Z)V

    :cond_2
    return-void
.end method
