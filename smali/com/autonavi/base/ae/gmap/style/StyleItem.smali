.class public Lcom/autonavi/base/ae/gmap/style/StyleItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mainKey:I

.field private styleElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/base/ae/gmap/style/StyleElement;",
            ">;"
        }
    .end annotation
.end field

.field private styleTypeId:I

.field public subKey:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    iput p1, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleTypeId:I

    return-void
.end method


# virtual methods
.method public get(I)Lcom/autonavi/base/ae/gmap/style/StyleElement;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/autonavi/base/ae/gmap/style/StyleElement;

    return-object p0
.end method

.method public getStyleElements()[Lcom/autonavi/base/ae/gmap/style/StyleElement;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/base/ae/gmap/style/StyleElement;

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/autonavi/base/ae/gmap/style/StyleElement;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleTypeId:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public put(ILcom/autonavi/base/ae/gmap/style/StyleElement;)V
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "styleTypeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleTypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "styleElements.size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
