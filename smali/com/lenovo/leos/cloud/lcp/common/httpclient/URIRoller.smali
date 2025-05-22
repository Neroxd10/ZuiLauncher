.class public interface abstract Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;,
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
    }
.end annotation


# virtual methods
.method public abstract recordException(Ljava/lang/Exception;)V
.end method

.method public abstract roll(Ljava/lang/Exception;)Ljava/net/URI;
.end method

.method public abstract rollHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)V
.end method
