.class public Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
.super Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->b:I

    return p0
.end method
