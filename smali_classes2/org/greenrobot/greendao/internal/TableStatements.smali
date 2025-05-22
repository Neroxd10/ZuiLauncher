.class public Lorg/greenrobot/greendao/internal/TableStatements;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lorg/greenrobot/greendao/database/Database;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private f:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private g:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private h:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private i:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private volatile j:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;

.field private volatile m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->a:Lorg/greenrobot/greendao/database/Database;

    iput-object p2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->c:[Ljava/lang/String;

    iput-object p4, p0, Lorg/greenrobot/greendao/internal/TableStatements;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->i:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->a:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->i:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->i:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object p0
.end method

.method public getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->h:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->a:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->h:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->h:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->h:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->h:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object p0
.end method

.method public getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->f:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_1

    const-string v0, "INSERT OR REPLACE INTO "

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->a:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->f:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->f:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->f:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->f:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object p0
.end method

.method public getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->e:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_1

    const-string v0, "INSERT INTO "

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->a:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->e:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->e:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->e:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->e:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object p0
.end method

.method public getSelectAll()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "T"

    invoke-static {v0, v3, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->j:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectByKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->d:[Ljava/lang/String;

    const-string v2, "T"

    invoke-static {v0, v2, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendColumnsEqValue(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->k:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectByRowId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE ROWID=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->l:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectKeys()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "T"

    invoke-static {v0, v3, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->m:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->g:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->c:[Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlUpdate(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->a:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->g:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->g:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->g:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->g:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object p0
.end method
