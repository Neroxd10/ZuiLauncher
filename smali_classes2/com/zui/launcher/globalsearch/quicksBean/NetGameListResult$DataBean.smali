.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;
    }
.end annotation


# instance fields
.field private allcount:I

.field private c:I

.field private code:Ljava/lang/String;

.field private datalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;",
            ">;"
        }
    .end annotation
.end field

.field private datatype:Ljava/lang/String;

.field private endpage:I

.field private si:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllcount()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->allcount:I

    return p0
.end method

.method public getC()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->c:I

    return p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getDatalist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->datalist:Ljava/util/List;

    return-object p0
.end method

.method public getDatatype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->datatype:Ljava/lang/String;

    return-object p0
.end method

.method public getEndpage()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->endpage:I

    return p0
.end method

.method public getSi()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->si:I

    return p0
.end method

.method public setAllcount(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->allcount:I

    return-void
.end method

.method public setC(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->c:I

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setDatalist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->datalist:Ljava/util/List;

    return-void
.end method

.method public setDatatype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->datatype:Ljava/lang/String;

    return-void
.end method

.method public setEndpage(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->endpage:I

    return-void
.end method

.method public setSi(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->si:I

    return-void
.end method
