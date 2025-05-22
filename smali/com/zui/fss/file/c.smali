.class public Lcom/zui/fss/file/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zui/fss/file/c;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/file/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method b(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/c;->b:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method

.method c(Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/fss/file/c;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/c;->a:Ljava/lang/String;

    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lcom/zui/fss/file/c;->b:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/zui/fss/file/c;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method
