.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;
    }
.end annotation


# static fields
.field public static final MEDIA_VISIT_SIZE:I = 0x32

.field public static final PROVIDER_TYPE_CLOUD:I = 0x1

.field public static final PROVIDER_TYPE_LOCAL:I

.field private static j:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

.field private volatile c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;

.field private f:Ljava/lang/Thread;

.field private g:I

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;"
        }
    .end annotation
.end field

.field protected result:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->d:Ljava/util/Map;

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->g:I

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->i(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->g:I

    return p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->l(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method public static getInstance(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->getInstance(IZ)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(IZ)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->j:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->g:I

    if-eq p1, p0, :cond_1

    :cond_0
    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;-><init>(I)V

    sput-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->j:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    :cond_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->j:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    return-object p0
.end method

.method private h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChoosers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChoosers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private i(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->result:I

    return-void
.end method

.method private k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;->onLoadingPart(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private l(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumTotalImageCount()I

    move-result v1

    const/16 v2, 0x1f4

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    mul-int/lit16 v4, v3, 0x1f4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v6

    invoke-interface {v5, v6, v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;->getMediaListByAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->isChoseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    iget-wide v7, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->n(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->n(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private m(II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v7

    add-int/2addr v7, v5

    if-lt v1, v7, :cond_0

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v7

    add-int/2addr v5, v7

    sub-int v7, v1, v5

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumTotalImageCount()I

    move-result v8

    const/16 v9, 0x1f4

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_5

    mul-int/lit16 v11, v10, 0x1f4

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v13

    invoke-interface {v12, v13, v11, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;->getMediaListByAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {v6, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->isChoseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-lez v7, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->d:Ljava/util/Map;

    iget-wide v14, v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    iget-wide v14, v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v13, p2

    if-ne v12, v13, :cond_1

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->k(Ljava/util/List;)V

    return-object v2

    :cond_4
    move/from16 v13, p2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move/from16 v13, p2

    goto :goto_0

    :cond_6
    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->k(Ljava/util/List;)V

    return-object v2
.end method

.method private n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->k(Ljava/util/List;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->save(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "save data error"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getImageId(I)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageInfo(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->queryImageInfo(JZ)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getImageList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->queryList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, p2, :cond_2

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->result:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->h:Ljava/lang/Exception;

    instance-of v1, v1, Landroid/database/sqlite/SQLiteException;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->m(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->startLoad()V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->h:Ljava/lang/Exception;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->h:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public isResultOK()Z
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->result:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized notifyRemove()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->delete(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeChoice(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->updateFlag(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c:Ljava/util/List;

    iget-wide v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setLoadingListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;

    return-void
.end method

.method public startLoad()V
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->j()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
