.class final Lcom/amap/api/col/l3s/fh$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/amap/api/col/l3s/fh$c;

.field c:Lcom/amap/api/col/l3s/fh$b;

.field d:Lcom/amap/api/col/l3s/fh$b;

.field final synthetic f:Lcom/amap/api/col/l3s/fh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/l3s/fh$b;->e:Z

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3s/fh;Lcom/amap/api/col/l3s/fh$c;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fh$b;->f:Lcom/amap/api/col/l3s/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fh$b;->d:Lcom/amap/api/col/l3s/fh$b;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    return-void
.end method

.method private a()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fh$b;->a()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final a(IILjava/lang/String;)Lcom/amap/api/col/l3s/fh$b;
    .locals 6

    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/fh$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/col/l3s/fh$b;->a(IILjava/lang/String;)Lcom/amap/api/col/l3s/fh$b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh$b;->d:Lcom/amap/api/col/l3s/fh$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/fh$b;->a(IILjava/lang/String;)Lcom/amap/api/col/l3s/fh$b;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget v2, v0, Lcom/amap/api/col/l3s/fh$c;->c:I

    if-gt p1, v2, :cond_4

    iget v0, v0, Lcom/amap/api/col/l3s/fh$c;->d:I

    if-gt p2, v0, :cond_4

    if-ne p1, v2, :cond_3

    if-ne p2, v0, :cond_3

    sget v0, Lcom/amap/api/col/l3s/fh$a;->b:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/amap/api/col/l3s/fh$a;->c:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/amap/api/col/l3s/fh$a;->a:I

    :goto_1
    sget-object v2, Lcom/amap/api/col/l3s/fh$1;->a:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    aget v0, v2, v0

    if-eq v0, v3, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget v1, v0, Lcom/amap/api/col/l3s/fh$c;->c:I

    sub-int/2addr v1, p1

    iget v0, v0, Lcom/amap/api/col/l3s/fh$c;->d:I

    sub-int/2addr v0, p2

    sget-boolean v2, Lcom/amap/api/col/l3s/fh$b;->e:Z

    if-nez v2, :cond_7

    if-ltz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    sget-boolean v2, Lcom/amap/api/col/l3s/fh$b;->e:Z

    if-nez v2, :cond_9

    if-ltz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_3
    if-le v1, v0, :cond_a

    new-instance v0, Lcom/amap/api/col/l3s/fh$c;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget v2, v1, Lcom/amap/api/col/l3s/fh$c;->a:I

    iget v3, v1, Lcom/amap/api/col/l3s/fh$c;->b:I

    iget v1, v1, Lcom/amap/api/col/l3s/fh$c;->d:I

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/amap/api/col/l3s/fh$c;-><init>(IIII)V

    new-instance v1, Lcom/amap/api/col/l3s/fh$c;

    iget v2, v0, Lcom/amap/api/col/l3s/fh$c;->a:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget v4, v3, Lcom/amap/api/col/l3s/fh$c;->b:I

    iget v5, v3, Lcom/amap/api/col/l3s/fh$c;->c:I

    sub-int/2addr v5, p1

    iget v3, v3, Lcom/amap/api/col/l3s/fh$c;->d:I

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/amap/api/col/l3s/fh$c;-><init>(IIII)V

    goto :goto_4

    :cond_a
    new-instance v0, Lcom/amap/api/col/l3s/fh$c;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget v2, v1, Lcom/amap/api/col/l3s/fh$c;->a:I

    iget v3, v1, Lcom/amap/api/col/l3s/fh$c;->b:I

    iget v1, v1, Lcom/amap/api/col/l3s/fh$c;->c:I

    invoke-direct {v0, v2, v3, v1, p2}, Lcom/amap/api/col/l3s/fh$c;-><init>(IIII)V

    new-instance v1, Lcom/amap/api/col/l3s/fh$c;

    iget-object v2, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget v3, v2, Lcom/amap/api/col/l3s/fh$c;->a:I

    iget v4, v0, Lcom/amap/api/col/l3s/fh$c;->b:I

    add-int/2addr v4, p2

    iget v5, v2, Lcom/amap/api/col/l3s/fh$c;->c:I

    iget v2, v2, Lcom/amap/api/col/l3s/fh$c;->d:I

    sub-int/2addr v2, p2

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/amap/api/col/l3s/fh$c;-><init>(IIII)V

    :goto_4
    new-instance v2, Lcom/amap/api/col/l3s/fh$b;

    iget-object v3, p0, Lcom/amap/api/col/l3s/fh$b;->f:Lcom/amap/api/col/l3s/fh;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/col/l3s/fh$b;-><init>(Lcom/amap/api/col/l3s/fh;Lcom/amap/api/col/l3s/fh$c;)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    new-instance v0, Lcom/amap/api/col/l3s/fh$b;

    iget-object v2, p0, Lcom/amap/api/col/l3s/fh$b;->f:Lcom/amap/api/col/l3s/fh;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/l3s/fh$b;-><init>(Lcom/amap/api/col/l3s/fh;Lcom/amap/api/col/l3s/fh$c;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->d:Lcom/amap/api/col/l3s/fh$b;

    :goto_5
    iget-object p0, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    goto/16 :goto_0

    :cond_b
    iput-object p3, p0, Lcom/amap/api/col/l3s/fh$b;->a:Ljava/lang/String;

    return-object p0

    :cond_c
    return-object v1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fh$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/amap/api/col/l3s/fh$b;->a:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fh$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fh$b;->d:Lcom/amap/api/col/l3s/fh$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fh$b;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/fh$b;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/fh$b;->d:Lcom/amap/api/col/l3s/fh$b;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/fh$b;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iput-object v1, p0, Lcom/amap/api/col/l3s/fh$b;->c:Lcom/amap/api/col/l3s/fh$b;

    iput-object v1, p0, Lcom/amap/api/col/l3s/fh$b;->d:Lcom/amap/api/col/l3s/fh$b;

    :cond_3
    return v0
.end method
