.class public final Lcom/amap/api/col/l3s/if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/INearbySearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/if$a;
    }
.end annotation


# static fields
.field private static e:J


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/col/l3s/gw;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/amap/api/services/core/LatLonPoint;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/util/Timer;

.field private k:Lcom/amap/api/services/nearby/UploadInfoCallback;

.field private l:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->g:Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/if;->i:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->j:Ljava/util/Timer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/if;->d:Lcom/amap/api/col/l3s/gw;

    return-void
.end method

.method private a()I
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/if;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3s/if;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    new-instance v0, Lcom/amap/api/col/l3s/gx;

    iget-object v1, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/amap/api/col/l3s/if;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/gx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "USERID\u975e\u6cd5"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u5df2\u5f00\u542f\u81ea\u52a8\u4e0a\u4f20"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/if;->i:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x898

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    if-nez p1, :cond_0

    const/16 p0, 0x89a

    return p0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/if;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1964

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/16 p0, 0x89b

    return p0

    :cond_1
    sput-wide v0, Lcom/amap/api/col/l3s/if;->e:J

    invoke-virtual {p1}, Lcom/amap/api/services/nearby/UploadInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/if;->a(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x899

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/if;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->h:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/if;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/services/nearby/UploadInfo;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3s/if;->g:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/amap/api/col/l3s/gz;

    iget-object v2, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/amap/api/col/l3s/gz;-><init>(Landroid/content/Context;Lcom/amap/api/services/nearby/UploadInfo;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->copy()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/if;->g:Lcom/amap/api/services/core/LatLonPoint;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x3e8

    return p0

    :cond_6
    :goto_0
    const/16 p0, 0x89c

    return p0

    :catchall_0
    const/16 p0, 0x76c

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/if;->d:Lcom/amap/api/col/l3s/gw;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "^[a-z0-9A-Z_-]{1,32}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/if;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/if;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/if;)I
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/if;->a()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/services/nearby/UploadInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/if;->k:Lcom/amap/api/services/nearby/UploadInfoCallback;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "NearbySearch"

    const-string v1, "addNearbyListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final clearUserInfoAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/if$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/if$1;-><init>(Lcom/amap/api/col/l3s/if;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NearbySearch"

    const-string v1, "clearUserInfoAsynThrowable"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "destryoy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "NearbySearch"

    const-string v1, "removeNearbyListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/col/l3s/gy;

    iget-object p0, p0, Lcom/amap/api/col/l3s/if;->c:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/gy;-><init>(Landroid/content/Context;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/nearby/NearbySearchResult;

    return-object p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    const-string p1, "NearbySearch"

    const-string v0, "searchNearbyInfo"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string p1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/if$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/if$3;-><init>(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NearbySearch"

    const-string v0, "searchNearbyInfoAsynThrowable"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/if;->b:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    .locals 6

    monitor-enter p0

    const/16 v0, 0x1b58

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/if;->k:Lcom/amap/api/services/nearby/UploadInfoCallback;

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/if;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/if;->l:Ljava/util/TimerTask;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/if;->l:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/if;->i:Z

    new-instance v1, Lcom/amap/api/col/l3s/if$a;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/if$a;-><init>(Lcom/amap/api/col/l3s/if;B)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/if;->l:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->j:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "NearbySearch"

    const-string v0, "startUploadNearbyInfoAuto"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stopUploadNearbyInfoAuto()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->l:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->l:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "stopUploadNearbyInfoAuto"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/if;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->l:Ljava/util/TimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/if;->f:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3s/if$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/if$2;-><init>(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/UploadInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
