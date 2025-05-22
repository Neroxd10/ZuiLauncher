.class public final Lcom/amap/api/col/l3s/bf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/amap/api/col/l3s/bb;

.field private final b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/bf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIIII)V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/bb;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    invoke-direct {p0, v0, p5}, Lcom/amap/api/col/l3s/bf;-><init>(Lcom/amap/api/col/l3s/bb;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/amap/api/col/l3s/bb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/bf;-><init>(Lcom/amap/api/col/l3s/bb;I)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3s/bb;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/amap/api/col/l3s/bf;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iput p2, p0, Lcom/amap/api/col/l3s/bf;->b:I

    const/4 p1, 0x5

    const/16 v1, 0xa

    const/16 v2, 0x14

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, p1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x32

    :goto_0
    :pswitch_4
    iput v0, p0, Lcom/amap/api/col/l3s/bf;->c:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/amap/api/col/l3s/bb;Ljava/util/Collection;FD)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/bb;",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;FD)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/bb;->a(Lcom/amap/api/col/l3s/bb;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amap/api/col/l3s/bb;->a(Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_5

    iget-object p3, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v0, p3, Lcom/amap/api/col/l3s/bb;->d:I

    int-to-double v0, v0

    iget v2, p3, Lcom/amap/api/col/l3s/bb;->b:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p3, Lcom/amap/api/col/l3s/bb;->c:I

    int-to-double v2, v2

    iget p3, p3, Lcom/amap/api/col/l3s/bb;->a:I

    int-to-double v4, p3

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    div-double/2addr v0, p4

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double p3, v0, v2

    if-gez p3, :cond_3

    return-void

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v0, v2

    if-lez p3, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const-wide v2, 0x4013467381d7dbf5L    # 4.8188

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    const-wide v4, 0x4013bc504816f007L    # 4.9339

    mul-double/2addr v0, v4

    sub-double/2addr v2, v0

    const-wide v0, 0x3ff1bfb15b573eabL    # 1.1093

    add-double/2addr v2, v0

    double-to-float p3, v2

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/bf;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/bf;->a(Lcom/amap/api/col/l3s/bb;Ljava/util/Collection;FD)V

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/amap/api/col/l3s/bb;Ljava/util/Collection;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/bb;",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;D)V"
        }
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/bf;->a(Lcom/amap/api/col/l3s/bb;Ljava/util/Collection;FD)V

    return-void
.end method

.method protected final a(Lcom/amap/api/maps/model/MultiPointItem;)V
    .locals 11

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/l3s/bb;->a(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/amap/api/col/l3s/bf;->c:I

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/amap/api/col/l3s/bf;->b:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    new-instance v4, Lcom/amap/api/col/l3s/bf;

    iget-object v5, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v6, v5, Lcom/amap/api/col/l3s/bb;->a:I

    iget v7, v5, Lcom/amap/api/col/l3s/bb;->e:I

    iget v8, v5, Lcom/amap/api/col/l3s/bb;->b:I

    iget v9, v5, Lcom/amap/api/col/l3s/bb;->f:I

    iget v5, p0, Lcom/amap/api/col/l3s/bf;->b:I

    add-int/lit8 v10, v5, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/l3s/bf;-><init>(IIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    new-instance v10, Lcom/amap/api/col/l3s/bf;

    iget-object v4, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v5, v4, Lcom/amap/api/col/l3s/bb;->e:I

    iget v6, v4, Lcom/amap/api/col/l3s/bb;->c:I

    iget v7, v4, Lcom/amap/api/col/l3s/bb;->b:I

    iget v8, v4, Lcom/amap/api/col/l3s/bb;->f:I

    iget v4, p0, Lcom/amap/api/col/l3s/bf;->b:I

    add-int/lit8 v9, v4, 0x1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3s/bf;-><init>(IIIII)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    new-instance v10, Lcom/amap/api/col/l3s/bf;

    iget-object v4, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v5, v4, Lcom/amap/api/col/l3s/bb;->a:I

    iget v6, v4, Lcom/amap/api/col/l3s/bb;->e:I

    iget v7, v4, Lcom/amap/api/col/l3s/bb;->f:I

    iget v8, v4, Lcom/amap/api/col/l3s/bb;->d:I

    iget v4, p0, Lcom/amap/api/col/l3s/bf;->b:I

    add-int/lit8 v9, v4, 0x1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3s/bf;-><init>(IIIII)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    new-instance v10, Lcom/amap/api/col/l3s/bf;

    iget-object v4, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v5, v4, Lcom/amap/api/col/l3s/bb;->e:I

    iget v6, v4, Lcom/amap/api/col/l3s/bb;->c:I

    iget v7, v4, Lcom/amap/api/col/l3s/bb;->f:I

    iget v8, v4, Lcom/amap/api/col/l3s/bb;->d:I

    iget v4, p0, Lcom/amap/api/col/l3s/bf;->b:I

    add-int/lit8 v9, v4, 0x1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3s/bf;-><init>(IIIII)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/bf;->e:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/amap/api/col/l3s/bf;->a:Lcom/amap/api/col/l3s/bb;

    iget v4, p0, Lcom/amap/api/col/l3s/bb;->f:I

    iget p0, p0, Lcom/amap/api/col/l3s/bb;->e:I

    if-ge v0, v4, :cond_3

    if-ge v1, p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-ge v1, p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    const/4 p0, 0x3

    :goto_1
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Lcom/amap/api/col/l3s/bf;

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/amap/api/col/l3s/bf;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method
