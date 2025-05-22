.class public Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$b;,
        Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;
    }
.end annotation


# static fields
.field private static c:Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->c:Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->c:Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;

    return-object v0
.end method


# virtual methods
.method public getIpByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[httpdnsmini] - refresh host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$b;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$b;-><init>(Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[httpdnsmini] - refresh host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$b;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$b;-><init>(Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini$a;->a()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
