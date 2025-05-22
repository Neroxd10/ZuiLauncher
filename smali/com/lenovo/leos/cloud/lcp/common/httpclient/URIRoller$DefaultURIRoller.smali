.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultURIRoller"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected current:I

.field protected uriArray:[Ljava/net/URI;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/net/URI;

    array-length v2, p1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_0
    new-instance v5, Ljava/net/URI;

    aget-object v6, p1, v3

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI Format error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DefaultURIRoller"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    new-array p1, v4, [Ljava/net/URI;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    invoke-static {v1, v0, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    return-void
.end method

.method public varargs constructor <init>([Ljava/net/URI;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    return-void
.end method

.method private declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    array-length v0, v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public recordException(Ljava/lang/Exception;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->a()I

    move-result p0

    aget-object p0, p1, p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a(Ljava/net/URI;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized roll(Ljava/lang/Exception;)Ljava/net/URI;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->a()I

    move-result v0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a(Ljava/net/URI;)V

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    :cond_1
    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->a()I

    move-result p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->b([Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->c(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->b([Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_2

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->a()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rollHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->setCurrentRolledUri(Ljava/net/URI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
