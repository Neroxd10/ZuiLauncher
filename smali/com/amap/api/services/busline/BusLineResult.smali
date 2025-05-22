.class public final Lcom/amap/api/services/busline/BusLineResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/busline/BusLineQuery;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/busline/BusLineQuery;",
            "I",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineResult;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageSize()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, p1

    const/16 p1, 0x1e

    if-le p2, p1, :cond_0

    move p2, p1

    :cond_0
    iput p2, p0, Lcom/amap/api/services/busline/BusLineResult;->a:I

    iput-object p3, p0, Lcom/amap/api/services/busline/BusLineResult;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/amap/api/services/busline/BusLineResult;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/amap/api/services/busline/BusLineResult;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static createPagedResult(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)Lcom/amap/api/services/busline/BusLineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/busline/BusLineQuery;",
            "I",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;)",
            "Lcom/amap/api/services/busline/BusLineResult;"
        }
    .end annotation

    new-instance v6, Lcom/amap/api/services/busline/BusLineResult;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/busline/BusLineResult;-><init>(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    return-object v6
.end method


# virtual methods
.method public final getBusLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/busline/BusLineResult;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getPageCount()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/busline/BusLineResult;->a:I

    return p0
.end method

.method public final getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/busline/BusLineResult;->c:Lcom/amap/api/services/busline/BusLineQuery;

    return-object p0
.end method

.method public final getSearchSuggestionCities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/busline/BusLineResult;->e:Ljava/util/List;

    return-object p0
.end method

.method public final getSearchSuggestionKeywords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/busline/BusLineResult;->d:Ljava/util/List;

    return-object p0
.end method
