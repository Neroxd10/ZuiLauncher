.class final Lcom/amap/api/col/l3s/ep$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ep$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const-string p1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/ep$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x41c64e6d

    iput v0, p0, Lcom/amap/api/col/l3s/ep$a;->b:I

    const/16 v0, 0x3039

    iput v0, p0, Lcom/amap/api/col/l3s/ep$a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/ep$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ep$a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .locals 4

    int-to-long v0, p1

    iget p1, p0, Lcom/amap/api/col/l3s/ep$a;->b:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget p0, p0, Lcom/amap/api/col/l3s/ep$a;->c:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    const-wide/32 p0, 0x7fffffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/ep$a;->a(I)I

    move-result p2

    rem-int v2, p2, p1

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/ep$a;->a(I)I

    move-result p2

    rem-int v3, p2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ep$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/ep$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    iget-object v5, p0, Lcom/amap/api/col/l3s/ep$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/2addr v4, p1

    add-int/2addr v4, v3

    rem-int/2addr v4, v1

    iget-object v5, p0, Lcom/amap/api/col/l3s/ep$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    iget-object v5, p0, Lcom/amap/api/col/l3s/ep$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
