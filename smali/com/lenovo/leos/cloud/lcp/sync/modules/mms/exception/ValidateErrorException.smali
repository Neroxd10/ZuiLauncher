.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;
.super Ljava/lang/RuntimeException;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x1933fd62fcc0b6a4L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->a:I

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->a:I

    return p0
.end method
