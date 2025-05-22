.class public Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lidroid/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/db/converter/ColumnConverter<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;->fieldValue2ColumnValue([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fieldValue2ColumnValue([B)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 0

    sget-object p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object p0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;->getFieldValue(Landroid/database/Cursor;I)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;->getFieldValue(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)[B
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFieldValue(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
