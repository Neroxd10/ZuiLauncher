.class public Lcom/amap/api/location/CoordinateConverter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/CoordinateConverter$CoordType;
    }
.end annotation


# static fields
.field private static b:I = 0x0

.field private static c:I = 0x1

.field private static d:I = 0x2

.field private static e:I = 0x4

.field private static f:I = 0x8

.field private static g:I = 0x10

.field private static h:I = 0x20

.field private static i:I = 0x40


# instance fields
.field a:Lcom/amap/api/location/DPoint;

.field private j:Landroid/content/Context;

.field private k:Lcom/amap/api/location/CoordinateConverter$CoordType;

.field private l:Lcom/amap/api/location/DPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    return-void
.end method

.method public static calculateLineDistance(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAMapDataAvailable(DD)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/ow;->a(DD)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized convert()Lcom/amap/api/location/DPoint;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/amap/api/location/CoordinateConverter$1;->a:[I

    iget-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->i:I

    and-int/2addr v2, v4

    if-nez v2, :cond_0

    const-string v1, "gps"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->i:I

    or-int/2addr v0, v2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    move v0, v3

    :cond_0
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/oy;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto/16 :goto_2

    :pswitch_1
    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->h:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    const-string v1, "google"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->h:I

    or-int/2addr v0, v2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    move v0, v3

    :cond_1
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    goto :goto_0

    :pswitch_2
    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->g:I

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    const-string v1, "aliyun"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->g:I

    or-int/2addr v0, v2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    move v0, v3

    :cond_2
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    goto :goto_0

    :pswitch_3
    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->f:I

    and-int/2addr v2, v4

    if-nez v2, :cond_3

    const-string v1, "sosomap"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->f:I

    or-int/2addr v0, v2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    move v0, v3

    :cond_3
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    goto :goto_0

    :pswitch_4
    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->e:I

    and-int/2addr v2, v4

    if-nez v2, :cond_4

    const-string v1, "mapabc"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->e:I

    or-int/2addr v0, v2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    move v0, v3

    :cond_4
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-static {v2, v4}, Lcom/amap/api/col/l3s/oy;->b(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->d:I

    and-int/2addr v2, v4

    if-nez v2, :cond_5

    const-string v1, "mapbar"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->d:I

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;

    invoke-static {v2}, Lcom/amap/api/col/l3s/oy;->a(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    sget v2, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v4, Lcom/amap/api/location/CoordinateConverter;->c:I

    and-int/2addr v2, v4

    if-nez v2, :cond_5

    const-string v1, "baidu"

    sget v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    sget v2, Lcom/amap/api/location/CoordinateConverter;->c:I

    :goto_1
    or-int/2addr v0, v2

    sput v0, Lcom/amap/api/location/CoordinateConverter;->b:I

    move v0, v3

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "amap_loc_coordinate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->j:Landroid/content/Context;

    const-string v2, "O021"

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u6362\u5750\u6807\u6e90\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u6362\u5750\u6807\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized coord(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/CoordinateConverter;
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->l:Lcom/amap/api/location/DPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4f20\u5165\u7ecf\u7eac\u5ea6\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized from(Lcom/amap/api/location/CoordinateConverter$CoordType;)Lcom/amap/api/location/CoordinateConverter;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->k:Lcom/amap/api/location/CoordinateConverter$CoordType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
