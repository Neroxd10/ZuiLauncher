.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PilotResult"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->b:I

    return-void
.end method


# virtual methods
.method public addException(ILjava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->c:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addException(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPilotUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExceptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->c:Ljava/util/List;

    return-object p0
.end method

.method public getPilotUrls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->d:Ljava/util/List;

    return-object p0
.end method

.method public getUploadObject()Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    return-object p0
.end method

.method public isOK()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setUploadObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    return-void
.end method
