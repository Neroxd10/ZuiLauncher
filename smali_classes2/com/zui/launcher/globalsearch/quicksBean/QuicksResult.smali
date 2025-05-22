.class public Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private docs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;",
            ">;"
        }
    .end annotation
.end field

.field private numFound:I

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->docs:Ljava/util/List;

    return-object p0
.end method

.method public getNumFound()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->numFound:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->start:I

    return p0
.end method

.method public setDocs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->docs:Ljava/util/List;

    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->numFound:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->start:I

    return-void
.end method
