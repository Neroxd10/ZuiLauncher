.class public Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/Throwable;

.field protected resultCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->resultCode:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->resultCode:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->resultCode:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getRootCauseException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method
