.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$WriteObjectRequestIntercepter;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->getInstance()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->b:Ljava/util/Map;

    return-object p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;J)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
    .locals 8

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->loadOdometer()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "v3/block/upload/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppUtil;->getAppURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/32 v4, 0x500000

    const-wide/32 v6, 0x280000

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->newInstance(Ljava/io/Serializable;IJJJ)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->persistOdometer(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    :cond_0
    return-object p0
.end method

.method public static getInstance(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->b(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;J)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    invoke-virtual {p0, p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pipeline length() must >0 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
