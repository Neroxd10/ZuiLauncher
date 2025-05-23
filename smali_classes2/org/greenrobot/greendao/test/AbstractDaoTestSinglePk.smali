.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTest;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao<",
        "TT;TK;>;T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTest<",
        "TD;TT;TK;>;"
    }
.end annotation


# instance fields
.field private b:Lorg/greenrobot/greendao/Property;

.field protected usedPks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected checkKeyIsNullable()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Test is not available for entities with non-null keys"

    invoke-static {p0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected abstract createEntity(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation
.end method

.method protected createEntityWithRandomPk()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract createRandomPk()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method protected nextPk()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x186a0

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createRandomPk()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find a new PK"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TK;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    invoke-static {v0, v3, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    const-string v3, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(II)V

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Landroid/database/DatabaseUtils;->appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertTrue(Z)V

    :goto_1
    if-ge v1, p1, :cond_2

    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-static {v2, p1}, Landroid/test/AndroidTestCase;->assertEquals(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_3
    :goto_3
    return-object p0
.end method

.method protected runLoadPkTest(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    const-string v1, "42"

    invoke-virtual {p0, p1, v1, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {p0, v1, p1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method protected setUp()V
    .locals 5

    invoke-super {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTest;->setUp()V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getProperties()[Lorg/greenrobot/greendao/Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-boolean v4, v3, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->b:Lorg/greenrobot/greendao/Property;

    if-nez v4, :cond_0

    iput-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->b:Lorg/greenrobot/greendao/Property;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Test does not work with multiple PK columns"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->b:Lorg/greenrobot/greendao/Property;

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Test does not work without a PK column"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public testCount()V
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    return-void
.end method

.method public testDelete()V
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    return-void
.end method

.method public testDeleteAll()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public testDeleteByKeyInTx()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx(Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public testDeleteInTx()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public testInsertAndLoad()V
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public testInsertInTx()V
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    return-void
.end method

.method public testInsertOrReplaceInTx()V
    .locals 5

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v3

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    return-void
.end method

.method public testInsertOrReplaceTwice()V
    .locals 5

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v3

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    move-result-object p0

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_0

    invoke-static {v1, v2, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    :cond_0
    return-void
.end method

.method public testInsertTwice()V
    .locals 2

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    :try_start_0
    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    const-string p0, "Inserting twice should not work"

    invoke-static {p0}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public testLoadAll()V
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, p0}, Landroid/test/AndroidTestCase;->assertEquals(II)V

    return-void
.end method

.method public testLoadPk()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    return-void
.end method

.method public testLoadPkWithOffset()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    return-void
.end method

.method public testQuery()V
    .locals 7

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v1, v5}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v4, v2}, Landroid/test/AndroidTestCase;->assertEquals(II)V

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public testReadWithOffset()V
    .locals 4

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    const/4 v1, 0x5

    const-string v2, "42"

    invoke-virtual {p0, v1, v2, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v3, v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public testRowId()V
    .locals 4

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v2

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/test/AndroidTestCase;->assertTrue(Z)V

    return-void
.end method

.method public testSave()V
    .locals 4

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->checkKeyIsNullable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->save(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->save(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    :cond_1
    return-void
.end method

.method public testSaveInTx()V
    .locals 5

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->checkKeyIsNullable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    return-void
.end method

.method public testUpdate()V
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    return-void
.end method
