.class public final Lcom/amap/api/col/l3s/kh;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static b:Z = true

.field private static c:Z = false


# instance fields
.field private a:Lcom/amap/api/col/l3s/kd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/amap/api/col/l3s/kd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p4, p0, Lcom/amap/api/col/l3s/kh;->a:Lcom/amap/api/col/l3s/kd;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kh;->a:Lcom/amap/api/col/l3s/kd;

    invoke-interface {p0, p1}, Lcom/amap/api/col/l3s/kd;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kh;->a:Lcom/amap/api/col/l3s/kd;

    invoke-interface {p0, p1, p2}, Lcom/amap/api/col/l3s/kd;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method
