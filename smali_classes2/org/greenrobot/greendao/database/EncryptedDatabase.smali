.class public Lorg/greenrobot/greendao/database/EncryptedDatabase;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/greenrobot/greendao/database/Database;


# instance fields
.field private final a:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;-><init>(Lnet/sqlcipher/database/SQLiteStatement;)V

    return-object v0
.end method

.method public endTransaction()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getRawDatabase()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object p0
.end method

.method public getSQLiteDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object p0
.end method

.method public inTransaction()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result p0

    return p0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result p0

    return p0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public setTransactionSuccessful()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->a:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
