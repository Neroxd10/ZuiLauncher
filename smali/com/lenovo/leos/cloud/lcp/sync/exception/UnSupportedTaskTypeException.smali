.class public Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x5f1526cda2f9b599L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "unsupported task type"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
