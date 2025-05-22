.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;-><init>(Ljava/lang/String;I)V

    const/16 p0, 0x1f4

    if-lt p2, p0, :cond_0

    const/16 p0, 0x258

    if-ge p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "code should between 500 and 599 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
