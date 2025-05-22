.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;
.super Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x6bb2be651640eacdL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method
