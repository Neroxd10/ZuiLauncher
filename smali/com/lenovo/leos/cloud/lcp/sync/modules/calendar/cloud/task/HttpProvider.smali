.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# virtual methods
.method public abstract get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
.end method

.method public abstract getB(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
.end method

.method public abstract getForHttpResponse(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;
.end method

.method public abstract post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;
.end method

.method public abstract post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
.end method

.method public abstract setProgressStatus(I)V
.end method
