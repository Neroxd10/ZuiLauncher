.class public Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/LenovoId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LenovoIdImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f7d0a0cf6fbfa10L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
