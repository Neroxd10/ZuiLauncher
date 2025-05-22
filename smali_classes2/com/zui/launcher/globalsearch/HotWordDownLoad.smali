.class public Lcom/zui/launcher/globalsearch/HotWordDownLoad;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "GlobalSearch.HotWordDownLoad"

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field

.field public static loadFinish:Z

.field public static mInterval:[Z


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/zui/launcher/globalsearch/HotWordData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/DeferredHandler;

    invoke-direct {v0}, Lcom/zui/launcher/DeferredHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadFinish:Z

    const/4 v0, 0x4

    new-array v0, v0, [Z

    sput-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c:Z

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->d:Z

    new-instance p1, Lcom/zui/launcher/globalsearch/HotWordDownLoad$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad$d;-><init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->e:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->d:Z

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a:Z

    return p0
.end method

.method static synthetic h(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a:Z

    return p1
.end method


# virtual methods
.method public bulkInsertHotWord(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/zui/launcher/GlobalSearchDbSettings$HotWordSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v7, v5, [Landroid/content/ContentValues;

    new-instance v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v8, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;-><init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/util/List;[Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->GLOBAL_SEARCH_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkToppingWord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a:Z

    return p0
.end method

.method public getCurrentHotWord()Lcom/zui/launcher/globalsearch/HotWordData;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->g:Lcom/zui/launcher/globalsearch/HotWordData;

    return-object p0
.end method

.method public getCurrentPosition(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getHotWordPos(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getGlobalhotWordList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->queryGlobalHotWordDatabase(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    sput v2, Lcom/zui/launcher/globalsearch/HotWordAdapter;->clickCount:I

    iput-boolean v2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->queryGlobalHotWordDatabase(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalhotWordList mCurrentHotWordList.size --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tempList --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GlobalSearch.HotWordDownLoad"

    invoke-static {v3, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sput v2, Lcom/zui/launcher/globalsearch/HotWordAdapter;->clickCount:I

    :goto_0
    return-object v0
.end method

.method public getHintHotWord(Landroid/content/Context;)Lcom/zui/launcher/globalsearch/HotWordData;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/ObserverManager;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHintHotWord  size ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlobalSearch.HotWordDownLoad"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getCurrentHotWord()Lcom/zui/launcher/globalsearch/HotWordData;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->queryGlobalHotWordDatabase(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getCurrentPosition(Landroid/content/Context;)I

    move-result p0

    sget-object p1, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_2

    sget-object p1, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/globalsearch/HotWordData;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getInterval(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "firstInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    const/4 p1, 0x0

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    const-string p0, "twoInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    return p0

    :cond_1
    const-string p0, "threeInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    return p0

    :cond_2
    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getWidgteHotWordList(ZLandroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->queryWidgetHotWordDatabases(ZLandroid/content/Context;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWidgteHotWordList "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalSearch.HotWordDownLoad"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    return-object p0
.end method

.method public hotWordDownLoad(Ljava/lang/String;Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-static {p2}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;-><init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Ljava/lang/String;Lcom/zui/launcher/Launcher;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    const-string p1, "https://hao.lenovo.com.cn/hotWord/list"

    invoke-virtual {v0, p1, v1, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->postAsyn(Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)V

    return-void
.end method

.method public declared-synchronized loadHotWordData(Lcom/zui/launcher/Launcher;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "GlobalSearch.HotWordDownLoad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hotWordDownLoad   networkAvailable --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->queryWidgetHotWordDatabases(ZLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/zui/launcher/util/Executors;->GLOBAL_SEARCH_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;-><init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryGlobalHotWordDatabase(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object v1, Lcom/zui/launcher/GlobalSearchDbSettings$HotWordSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    sget-object v0, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zui/launcher/globalsearch/HotWordData;

    invoke-direct {v6, v3, v4, v5}, Lcom/zui/launcher/globalsearch/HotWordData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    return-object p0
.end method

.method public queryWidgetHotWordDatabases(ZLandroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;-><init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Landroid/content/Context;Z)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->GLOBAL_SEARCH_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveInterval(Ljava/lang/String;Z)V
    .locals 4

    const-string p0, "firstInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    aput-boolean p2, p0, v3

    aput-boolean v3, p0, v2

    aput-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, "twoInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    aput-boolean v3, p0, v3

    aput-boolean p2, p0, v2

    aput-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    goto :goto_0

    :cond_1
    const-string p0, "threeInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    aput-boolean v3, p0, v3

    aput-boolean v3, p0, v2

    aput-boolean p2, p0, v1

    aput-boolean v3, p0, v0

    goto :goto_0

    :cond_2
    const-string p0, "fourInterval"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->mInterval:[Z

    aput-boolean v3, p0, v3

    aput-boolean v3, p0, v2

    aput-boolean v3, p0, v1

    aput-boolean p2, p0, v0

    :cond_3
    :goto_0
    return-void
.end method

.method public setCurrentHotWord(Lcom/zui/launcher/globalsearch/HotWordData;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->g:Lcom/zui/launcher/globalsearch/HotWordData;

    return-void
.end method

.method public setCurrentHotWordList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentHotWordList mCurrentHotWordList.size --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalSearch.HotWordDownLoad"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCurrentPosition(Landroid/content/Context;I)V
    .locals 0

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/timelaweather/util/SpUtills;->saveHotWordPos(Landroid/content/Context;I)Lcom/zui/timelaweather/util/SpUtills;

    return-void
.end method

.method public splitWidgetHotWordList(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget v3, v1, Lcom/zui/launcher/globalsearch/HotWordData;->flag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a:Z

    goto :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a:Z

    sget-object v2, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->setCurrentPosition(Landroid/content/Context;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "splitWidgetHotWordList  mWidgtehotWordList --> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalSearch.HotWordDownLoad"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
