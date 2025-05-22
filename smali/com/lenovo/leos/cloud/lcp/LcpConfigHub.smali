.class public final Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static f:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private c:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

.field private d:Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

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

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->e:Z

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->b:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->e:Z

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/DefaultLenovoPsService;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/DefaultLenovoPsService;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->c:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    return-void
.end method

.method public static init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->f:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->e:Z

    if-nez v0, :cond_3

    :cond_0
    const-class v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->f:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->f:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    iget-boolean v1, v1, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->e:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->f:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->f:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->a:Landroid/content/Context;

    return-object p0
.end method

.method public getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->b:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    return-object p0
.end method

.method public getLenovoPsService()Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->c:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    return-object p0
.end method

.method public getTrackService()Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->d:Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

    return-object p0
.end method

.method public setLenovoPsService(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->c:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;

    return-void
.end method

.method public setTrackService(Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->d:Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

    return-void
.end method
