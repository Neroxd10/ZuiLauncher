.class public Lcom/lenovo/lsf/lds/QueryAddressRequest;
.super Lcom/lenovo/lsf/http/AbstractHttpRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/lenovo/lsf/lds/a;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/http/AbstractHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;)V

    const-string p1, "http://lds.lenovomm.com/"

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->d:Lcom/lenovo/lsf/lds/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->e:J

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLdsDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    const-string v0, "QueryAddressRequest.getRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "addr/2.1/query?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&didt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/lsf/common/Device;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&did="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/lsf/common/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/lsf/common/Device;->getModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/lsf/common/Device;->getManufacture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->c:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&simcountry="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&oslocale="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&locale="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->g:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "url="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->generateGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object p0

    return-object p0
.end method

.method public getServerAddress()Lcom/lenovo/lsf/lds/a;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->d:Lcom/lenovo/lsf/lds/a;

    return-object p0
.end method

.method public getServerDate()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->e:J

    return-wide v0
.end method

.method protected handleError(Lorg/apache/http/HttpResponse;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    const/16 v0, 0x190

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Bad request. Response="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QueryAddressRequest"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Lcom/lenovo/lsf/http/RequestFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknow Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/lsf/lds/a;->e(Ljava/lang/String;)Lcom/lenovo/lsf/lds/a;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->d:Lcom/lenovo/lsf/lds/a;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/lenovo/lsf/http/RequestFailedException;

    const-string v0, "IOException"

    invoke-direct {p1, v0, p0}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/lenovo/lsf/http/RequestFailedException;

    const-string v0, "ParseException"

    invoke-direct {p1, v0, p0}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setLdsDefault(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setServerAddress(Lcom/lenovo/lsf/lds/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->d:Lcom/lenovo/lsf/lds/a;

    return-void
.end method
