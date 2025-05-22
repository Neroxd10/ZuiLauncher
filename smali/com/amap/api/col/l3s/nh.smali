.class public final Lcom/amap/api/col/l3s/nh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false

.field private static volatile b:Lcom/amap/api/col/l3s/nv;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/nv;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/amap/api/col/l3s/nh;->b:Lcom/amap/api/col/l3s/nv;

    :cond_0
    return-void
.end method

.method public static b()Lcom/amap/api/col/l3s/nv;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/nh;->b:Lcom/amap/api/col/l3s/nv;

    return-object v0
.end method
