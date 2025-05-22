.class public Lcom/lenovo/lsf/lenovoid/b/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/lsf/lenovoid/b/e;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/lsf/lenovoid/b/e;->a:I

    return p0
.end method

.method static synthetic c(Lcom/lenovo/lsf/lenovoid/b/e;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/lsf/lenovoid/b/e;->a:I

    return p1
.end method

.method static synthetic d(Lcom/lenovo/lsf/lenovoid/b/e;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/b/e;->b:[B

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/lenovo/lsf/lenovoid/b/e;->a:I

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/b/e;->b:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
