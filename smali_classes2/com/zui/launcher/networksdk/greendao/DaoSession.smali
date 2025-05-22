.class public Lcom/zui/launcher/networksdk/greendao/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source ""


# instance fields
.field private final e:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final f:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    const-class p1, Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/greendao/DaoSession;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p1, Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object p2, p0, Lcom/zui/launcher/networksdk/greendao/DaoSession;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/zui/launcher/networksdk/greendao/DaoSession;)V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/greendao/DaoSession;->f:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    const-class p2, Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/greendao/DaoSession;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getDownloadEntityDao()Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/greendao/DaoSession;->f:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    return-object p0
.end method
