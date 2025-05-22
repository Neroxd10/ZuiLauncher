.class public abstract Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final PROGRESS_HIT_TOTAL:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "AbsFileAPIImpl"

.field protected static instanceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected cancelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected cost:J

.field protected pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->instanceCache:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-direct {v0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;-><init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->context:Landroid/content/Context;

    return-void
.end method

.method private a(J)V
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    return-void
.end method


# virtual methods
.method protected initCancelPilot(JLcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    if-nez p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;-><init>()V

    :cond_0
    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->setPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    return-void
.end method

.method protected notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->a(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->a(J)V

    throw p1
.end method

.method protected notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    return-void
.end method

.method protected notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "taskId"

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    return-void
.end method

.method protected notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    return-void
.end method

.method protected notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    return-void
.end method
