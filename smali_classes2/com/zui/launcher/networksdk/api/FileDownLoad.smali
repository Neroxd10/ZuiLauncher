.class public Lcom/zui/launcher/networksdk/api/FileDownLoad;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networksdk/api/FileDownLoad$b;,
        Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String; = "FileDownLoad"

.field private static e:Lcom/zui/launcher/networksdk/api/FileDownLoad;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/api/FileDownLoad$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->b:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    new-instance v0, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;-><init>(Lcom/zui/launcher/networksdk/api/FileDownLoad;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->c:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->getInstance()Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->b:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot instantiate outside UI thread."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/api/FileDownLoad;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/api/FileDownLoad;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->b:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->removeTaskIdSet(Ljava/lang/String;)Z

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->e:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad;-><init>()V

    sput-object v0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->e:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    :cond_0
    sget-object v0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->e:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/Downloader;->cancelAll()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteDownLoad(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/Downloader;->deleteAll()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public downloadfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;)Z
    .locals 8

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    sget-object v0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "new one Downloader for url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/networksdk/download/Downloader;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, p2, p3, p1}, Lcom/zui/launcher/networksdk/download/Downloader;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance p1, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;-><init>(Lcom/zui/launcher/networksdk/api/FileDownLoad;Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/networksdk/download/Downloader;)V

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->b:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/Downloader;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDownLoading(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pauseDownLoad(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->pause()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeDownLoadData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/download/Downloader;->abortDownload()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resumDownLoad(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->resume()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
