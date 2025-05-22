.class public final Lcom/amap/api/col/l3s/dq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:I

.field b:[I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/col/l3s/dq;->a:I

    iput-object p2, p0, Lcom/amap/api/col/l3s/dq;->b:[I

    iput-object p3, p0, Lcom/amap/api/col/l3s/dq;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/l3s/dq;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/amap/api/col/l3s/dq;->g:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    move-object p3, p4

    :cond_0
    const/16 p4, -0x3e8

    iput p4, p0, Lcom/amap/api/col/l3s/dq;->c:I

    const-string p4, "regions"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x3e9

    :goto_0
    iput p3, p0, Lcom/amap/api/col/l3s/dq;->c:I

    goto :goto_1

    :cond_1
    const-string p4, "water"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p3, 0x3ea

    goto :goto_0

    :cond_2
    const-string p4, "buildings"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/16 p3, 0x3eb

    goto :goto_0

    :cond_3
    const-string p4, "roads"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/16 p3, 0x3ec

    goto :goto_0

    :cond_4
    const-string p4, "labels"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const/16 p3, 0x3ed

    goto :goto_0

    :cond_5
    const-string p4, "borders"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/16 p3, 0x3ee

    goto :goto_0

    :cond_6
    :goto_1
    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/amap/api/col/l3s/dq;->d:I

    return-void
.end method
