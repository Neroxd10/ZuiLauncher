.class public Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/greenrobot/greendao/database/DatabaseStatement;


# instance fields
.field private final a:Lnet/sqlcipher/database/SQLiteStatement;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-void
.end method

.method public execute()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawStatement()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    return-object p0
.end method

.method public simpleQueryForLong()J
    .locals 2

    iget-object p0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method
