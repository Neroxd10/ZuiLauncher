.class public Lcom/autonavi/base/amap/mapcore/NativeBase$Method;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/base/amap/mapcore/NativeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method"
.end annotation


# instance fields
.field private baseClass:Z

.field private clazz:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private methodName:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private param:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->object:Ljava/lang/Object;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->methodName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->baseClass:Z

    if-eqz p4, :cond_5

    :try_start_0
    array-length p1, p4

    if-lez p1, :cond_5

    array-length p1, p4

    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->clazz:[Ljava/lang/Class;

    const-string p1, "createOverlay"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "updateOptions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p3, v0

    :cond_1
    const/4 p1, 0x0

    move p2, p1

    if-eqz p3, :cond_3

    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_4

    if-ne p2, v0, :cond_2

    iget-object p3, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->clazz:[Ljava/lang/Class;

    aget-object v1, p4, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p3, p2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->clazz:[Ljava/lang/Class;

    aget-object v1, p4, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p3, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    array-length p3, p4

    if-ge p2, p3, :cond_4

    iget-object p3, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->clazz:[Ljava/lang/Class;

    aget-object v0, p4, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    array-length p2, p4

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->param:[Ljava/lang/Object;

    :goto_3
    array-length p2, p4

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->param:[Ljava/lang/Object;

    aget-object p3, p4, p1

    aput-object p3, p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :catchall_0
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->object:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->clazz:[Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->param:[Ljava/lang/Object;

    return-object p0
.end method
