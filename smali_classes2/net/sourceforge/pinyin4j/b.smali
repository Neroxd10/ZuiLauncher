.class Lnet/sourceforge/pinyin4j/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/pinyin4j/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/b;->a:Ljava/util/Properties;

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/b;->e()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/pinyin4j/a;)V
    .locals 0

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/b;-><init>()V

    return-void
.end method

.method private a(C)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/b;->d()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sourceforge/pinyin4j/b;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static c()Lnet/sourceforge/pinyin4j/b;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/b$a;->a:Lnet/sourceforge/pinyin4j/b;

    return-object v0
.end method

.method private d()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/b;->a:Ljava/util/Properties;

    return-object p0
.end method

.method private e()V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0}, Lnet/sourceforge/pinyin4j/b;->g(Ljava/util/Properties;)V

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/b;->d()Ljava/util/Properties;

    move-result-object p0

    const-string v0, "/pinyindb/unicode_to_hanyu_pinyin.txt"

    invoke-static {v0}, Lnet/sourceforge/pinyin4j/k;->b(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "(none0)"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "("

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private g(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/b;->a:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method b(C)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lnet/sourceforge/pinyin4j/b;->a(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
