.class public Lcom/autonavi/base/amap/mapcore/ClassTools;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const-class v0, Lcom/autonavi/base/amap/mapcore/ClassTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
