.class Lnet/sourceforge/pinyin4j/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/pinyin4j/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hp/hpl/sparta/Document;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/h;->c()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/pinyin4j/g;)V
    .locals 0

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/h;-><init>()V

    return-void
.end method

.method static a()Lnet/sourceforge/pinyin4j/h;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/h$a;->a:Lnet/sourceforge/pinyin4j/h;

    return-object v0
.end method

.method private c()V
    .locals 2

    :try_start_0
    const-string v0, ""

    const-string v1, "/pinyindb/pinyin_mapping.xml"

    invoke-static {v1}, Lnet/sourceforge/pinyin4j/k;->b(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hp/hpl/sparta/Parser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/hp/hpl/sparta/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/pinyin4j/h;->d(Lcom/hp/hpl/sparta/Document;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/hp/hpl/sparta/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d(Lcom/hp/hpl/sparta/Document;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/h;->a:Lcom/hp/hpl/sparta/Document;

    return-void
.end method


# virtual methods
.method b()Lcom/hp/hpl/sparta/Document;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/h;->a:Lcom/hp/hpl/sparta/Document;

    return-object p0
.end method
