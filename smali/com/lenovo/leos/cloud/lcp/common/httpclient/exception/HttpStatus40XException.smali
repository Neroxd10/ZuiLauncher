.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
.source ""


# static fields
.field public static final HTTP_AUTH_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

.field public static final HTTP_FORBIDDEN_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;-><init>(I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;->HTTP_AUTH_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    const/16 v1, 0x193

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;-><init>(I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;->HTTP_FORBIDDEN_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;-><init>(Ljava/lang/String;I)V

    const/16 p0, 0x190

    if-lt p2, p0, :cond_0

    const/16 p0, 0x1f4

    if-ge p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "code should between 400 and 499 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
