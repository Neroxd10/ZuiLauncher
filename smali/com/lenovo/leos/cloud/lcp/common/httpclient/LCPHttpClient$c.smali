.class Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$c;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$c;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$c;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->b(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->a(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p2, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->c(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->b(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
