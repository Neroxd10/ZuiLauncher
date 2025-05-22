.class public final Lcom/amap/api/col/l3s/fp$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/fp$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fp$a;->a:Ljava/lang/String;

    if-eqz p3, :cond_1

    array-length p1, p3

    if-lez p1, :cond_1

    array-length p1, p3

    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fp$a;->c:[Ljava/lang/Class;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fp$a;->c:[Ljava/lang/Class;

    aget-object v1, p3, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p3

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fp$a;->d:[Ljava/lang/Object;

    :goto_1
    array-length p2, p3

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/fp$a;->d:[Ljava/lang/Object;

    aget-object v0, p3, p1

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fp$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fp$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fp$a;->c:[Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fp$a;->d:[Ljava/lang/Object;

    return-object p0
.end method
