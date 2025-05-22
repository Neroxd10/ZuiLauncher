.class final Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->abortRequest([Lorg/apache/http/client/methods/HttpRequestBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method constructor <init>([Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$a;->a:[Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$a;->a:[Lorg/apache/http/client/methods/HttpRequestBase;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
