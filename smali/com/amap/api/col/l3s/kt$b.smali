.class public final Lcom/amap/api/col/l3s/kt$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/kt;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/kt;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kt$b;->a:Lcom/amap/api/col/l3s/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/col/l3s/kt$b;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/amap/api/col/l3s/kt$b;->c:J

    iput-object p5, p0, Lcom/amap/api/col/l3s/kt$b;->d:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/amap/api/col/l3s/kt$b;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/kt;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/amap/api/col/l3s/kt$b;-><init>(Lcom/amap/api/col/l3s/kt;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$b;->d:[Ljava/io/InputStream;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final close()V
    .locals 3

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$b;->d:[Ljava/io/InputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/amap/api/col/l3s/kt;->a(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
