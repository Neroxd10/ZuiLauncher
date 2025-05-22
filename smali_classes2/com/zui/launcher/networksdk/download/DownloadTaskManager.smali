.class public Lcom/zui/launcher/networksdk/download/DownloadTaskManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final f:Ljava/lang/String; = "DownloadTaskManager"

.field private static g:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/networksdk/download/Downloader;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->d:Z

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->e:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->c(Z)V

    return-void
.end method

.method private declared-synchronized c(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->g:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->c(Z)V

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager$a;-><init>(Lcom/zui/launcher/networksdk/download/DownloadTaskManager;)V

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zui/launcher/networksdk/download/DownloadTaskManager;
    .locals 2

    const-class v0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->g:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-direct {v1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;-><init>()V

    sput-object v1, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->g:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    :cond_0
    sget-object v1, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->g:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addDownloadTask(Lcom/zui/launcher/networksdk/download/Downloader;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/Downloader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->isTaskRepeat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->isStartThead()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->d()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDownloadTask()Lcom/zui/launcher/networksdk/download/Downloader;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->f:Ljava/lang/String;

    const-string v2, "\u4e0b\u8f7d\u7ba1\u7406\u5668\u589e\u52a0\u4e0b\u8f7d\u4efb\u52a1\uff1a\u53d6\u51fa\u4efb\u52a1"

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networksdk/download/Downloader;

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized getStop()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStartThead()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTaskRepeat(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u7ba1\u7406\u5668 \u91cd\u590d\u4e0b\u8f7d\u4efb\u52a1 taskIdSet.contains\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    sget-object v1, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u7ba1\u7406\u5668\u589e\u52a0\u4e0b\u8f7d\u4efb\u52a1\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeTaskIdSet(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    sget-object p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u7ba1\u7406\u5668\u6ca1\u6709\u8fd9\u4e2a\u4efb\u52a1\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized setStop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
