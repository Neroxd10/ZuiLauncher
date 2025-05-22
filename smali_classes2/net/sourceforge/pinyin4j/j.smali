.class Lnet/sourceforge/pinyin4j/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final b:Lnet/sourceforge/pinyin4j/j;

.field static final c:Lnet/sourceforge/pinyin4j/j;

.field static final d:Lnet/sourceforge/pinyin4j/j;

.field static final e:Lnet/sourceforge/pinyin4j/j;

.field static final f:Lnet/sourceforge/pinyin4j/j;

.field static final g:Lnet/sourceforge/pinyin4j/j;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/j;

    const-string v1, "Hanyu"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/j;->b:Lnet/sourceforge/pinyin4j/j;

    new-instance v0, Lnet/sourceforge/pinyin4j/j;

    const-string v1, "Wade"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/j;->c:Lnet/sourceforge/pinyin4j/j;

    new-instance v0, Lnet/sourceforge/pinyin4j/j;

    const-string v1, "MPSII"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/j;->d:Lnet/sourceforge/pinyin4j/j;

    new-instance v0, Lnet/sourceforge/pinyin4j/j;

    const-string v1, "Yale"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/j;->e:Lnet/sourceforge/pinyin4j/j;

    new-instance v0, Lnet/sourceforge/pinyin4j/j;

    const-string v1, "Tongyong"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/j;->f:Lnet/sourceforge/pinyin4j/j;

    new-instance v0, Lnet/sourceforge/pinyin4j/j;

    const-string v1, "Gwoyeu"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/j;->g:Lnet/sourceforge/pinyin4j/j;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/j;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/j;->a:Ljava/lang/String;

    return-void
.end method
