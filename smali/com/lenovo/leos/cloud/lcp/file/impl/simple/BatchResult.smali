.class public Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/FileResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;,
        Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->a:I

    return p0
.end method

.method public getResultList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->b:Ljava/util/List;

    return-object p0
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->a:I

    return-void
.end method

.method public setResultObjectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->b:Ljava/util/List;

    return-void
.end method
