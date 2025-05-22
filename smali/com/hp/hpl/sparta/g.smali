.class Lcom/hp/hpl/sparta/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/hp/hpl/sparta/ParseSource;


# static fields
.field private static final A:[C

.field private static final B:[C

.field private static final C:[C

.field private static final D:[C

.field private static final E:[C

.field private static final F:[C

.field private static final G:[C

.field private static final H:[C

.field private static final I:[C

.field private static final J:[C

.field private static final K:[C

.field private static final q:[C

.field private static final r:[Z

.field private static final s:[C

.field private static final t:[C

.field private static final u:[C

.field private static final v:[C

.field private static final w:[C

.field private static final x:[C

.field private static final y:[C

.field private static final z:[C


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Ljava/io/Reader;

.field private final d:Ljava/util/Hashtable;

.field private final e:Ljava/util/Hashtable;

.field private final f:Lcom/hp/hpl/sparta/ParseLog;

.field private final g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private final j:[C

.field private k:I

.field private l:I

.field private m:Z

.field private final n:[C

.field private o:I

.field private final p:Lcom/hp/hpl/sparta/ParseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/hp/hpl/sparta/g;->q:[C

    const/16 v1, 0x80

    new-array v2, v1, [Z

    sput-object v2, Lcom/hp/hpl/sparta/g;->r:[Z

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const-string v1, "<!--"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->s:[C

    const-string v1, "-->"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->t:[C

    const-string v1, "<?"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->u:[C

    const-string v1, "?>"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->v:[C

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->w:[C

    const-string v1, "<?xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->x:[C

    const-string v1, "encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->y:[C

    const-string v1, "version"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/g;->z:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hp/hpl/sparta/g;->A:[C

    const-string v0, "<!"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->B:[C

    const-string v0, "&#"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->C:[C

    const-string v0, "<!ENTITY"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->D:[C

    const-string v0, "NDATA"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->E:[C

    const-string v0, "SYSTEM"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->F:[C

    const-string v0, "PUBLIC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->G:[C

    const-string v0, "<![CDATA["

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->H:[C

    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->I:[C

    const-string v0, "/>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->J:[C

    const-string v0, "</"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/g;->K:[C

    return-void

    :cond_0
    sget-object v3, Lcom/hp/hpl/sparta/g;->r:[Z

    invoke-static {v2}, Lcom/hp/hpl/sparta/g;->w(C)Z

    move-result v4

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto/16 :goto_0

    :array_0
    .array-data 2
        0x2es
        0x2ds
        0x5fs
        0x3as
    .end array-data

    :array_1
    .array-data 2
        0x5fs
        0x2es
        0x3as
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/g;->e:Ljava/util/Hashtable;

    const/4 v1, -0x2

    iput v1, p0, Lcom/hp/hpl/sparta/g;->h:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hp/hpl/sparta/g;->i:Z

    iput v1, p0, Lcom/hp/hpl/sparta/g;->k:I

    iput v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    iput-boolean v1, p0, Lcom/hp/hpl/sparta/g;->m:Z

    const/16 v2, 0xff

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/hp/hpl/sparta/g;->n:[C

    const/4 v2, -0x1

    iput v2, p0, Lcom/hp/hpl/sparta/g;->o:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/hp/hpl/sparta/g;->o:I

    if-nez p4, :cond_0

    sget-object p4, Lcom/hp/hpl/sparta/ParseSource;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    :cond_0
    iput-object p4, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    if-nez p5, :cond_1

    move-object p4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/hp/hpl/sparta/g;->g:Ljava/lang/String;

    iget-object p4, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    const-string p5, "lt"

    const-string v3, "<"

    invoke-virtual {p4, p5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    const-string p5, "gt"

    const-string v3, ">"

    invoke-virtual {p4, p5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    const-string p5, "amp"

    const-string v3, "&"

    invoke-virtual {p4, p5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    const-string p5, "apos"

    const-string v3, "\'"

    invoke-virtual {p4, p5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    const-string p5, "quot"

    const-string v3, "\""

    invoke-virtual {p4, p5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iput v1, p0, Lcom/hp/hpl/sparta/g;->k:I

    array-length p2, p3

    iput p2, p0, Lcom/hp/hpl/sparta/g;->l:I

    iput-boolean v2, p0, Lcom/hp/hpl/sparta/g;->m:Z

    iput-object v0, p0, Lcom/hp/hpl/sparta/g;->c:Ljava/io/Reader;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/hp/hpl/sparta/g;->c:Ljava/io/Reader;

    const/16 p2, 0x400

    new-array p2, p2, [C

    iput-object p2, p0, Lcom/hp/hpl/sparta/g;->j:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    :goto_1
    iput-object p1, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {p6, p0}, Lcom/hp/hpl/sparta/ParseHandler;->setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->h0()V

    iget-object p1, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {p1}, Lcom/hp/hpl/sparta/ParseHandler;->startDocument()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->S()Lcom/hp/hpl/sparta/Element;

    move-result-object p1

    iget-object p2, p0, Lcom/hp/hpl/sparta/g;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "DOCTYPE name \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/hp/hpl/sparta/g;->b:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "\" not same as tag name, \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" of root element"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result p4

    invoke-interface {p2, p1, p3, p4}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->u()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/hp/hpl/sparta/g;->c:Ljava/io/Reader;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    :cond_4
    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {p0}, Lcom/hp/hpl/sparta/ParseHandler;->endDocument()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->b0()V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method private final A()Z
    .locals 4

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/g;->i(CCCC)Z

    move-result p0

    return p0
.end method

.method private final B([C)Z
    .locals 5

    array-length v0, p1

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    iget v2, p0, Lcom/hp/hpl/sparta/g;->k:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->b(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/hp/hpl/sparta/g;->h:I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v3, p0, Lcom/hp/hpl/sparta/g;->l:I

    add-int/lit8 v4, v3, -0x1

    aget-char v1, v1, v4

    iput v1, p0, Lcom/hp/hpl/sparta/g;->h:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->k:I

    sub-int/2addr v3, v1

    if-ge v3, v0, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v4, p0, Lcom/hp/hpl/sparta/g;->k:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    aget-char v4, p1, v1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private C()Z
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->E()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x5a

    if-gt v0, p0, :cond_1

    if-le p0, v0, :cond_3

    :cond_1
    sget-object v0, Lcom/hp/hpl/sparta/g;->A:[C

    invoke-static {p0, v0}, Lcom/hp/hpl/sparta/g;->s(C[C)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private D()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->x:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private final E()C
    .locals 2

    iget v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget p0, p0, Lcom/hp/hpl/sparta/g;->k:I

    aget-char p0, v0, p0

    return p0
.end method

.method private F()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->J(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j0()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private G(Lcom/hp/hpl/sparta/Element;)V
    .locals 5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Y()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " contains attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "more than once"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result p0

    invoke-interface {v2, v3, v4, p0}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private H()V
    .locals 6

    sget-object v0, Lcom/hp/hpl/sparta/g;->H:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Lcom/hp/hpl/sparta/g;->I:[C

    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/hp/hpl/sparta/g;->I:[C

    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/g;->l0([C)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    array-length v2, v1

    invoke-interface {p0, v1, v0, v2}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-interface {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    :goto_1
    return-void

    :cond_1
    const/16 v3, 0xff

    if-lt v2, v3, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_2
    move v2, v0

    :cond_3
    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v5

    aput-char v5, v3, v2

    move v2, v4

    goto :goto_0
.end method

.method private final I()C
    .locals 3

    iget v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v1, p0, Lcom/hp/hpl/sparta/g;->k:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/hp/hpl/sparta/g;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hp/hpl/sparta/g;->o:I

    :cond_2
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v1, p0, Lcom/hp/hpl/sparta/g;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hp/hpl/sparta/g;->k:I

    aget-char p0, v0, v1

    return p0
.end method

.method private final J(CC)C
    .locals 4

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v0

    if-eq v0, p1, :cond_1

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 p1, 0x1

    aput-char p2, v2, p1

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;C[C)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final K(CCCC)C
    .locals 4

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v0

    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-eq v0, p3, :cond_1

    if-ne v0, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 p1, 0x1

    aput-char p2, v2, p1

    const/4 p1, 0x2

    aput-char p3, v2, p1

    const/4 p1, 0x3

    aput-char p4, v2, p1

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;C[C)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final L(C)V
    .locals 2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v1, p0, v0, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;CC)V

    throw v1
.end method

.method private M()C
    .locals 8

    sget-object v0, Lcom/hp/hpl/sparta/g;->C:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x3b

    invoke-direct {p0, v4}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v5

    const/16 v6, 0x20

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lcom/hp/hpl/sparta/g;->L(C)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :try_start_0
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char p0, p0

    return p0

    :catch_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\" is not a valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1

    const-string v0, "hexadecimal"

    goto :goto_2

    :cond_1
    const-string v0, "decimal"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " number"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result p0

    invoke-interface {v2, v0, v1, p0}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    :cond_2
    iget-object v4, p0, Lcom/hp/hpl/sparta/g;->n:[C

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v7

    aput-char v7, v4, v3

    const/16 v3, 0xff

    if-lt v5, v3, :cond_3

    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result p0

    const-string v2, "Tmp buffer overflow on readCharRef"

    invoke-interface {v0, v2, v1, p0}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private final N()V
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->s:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/g;->t:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/g;->t:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_0
.end method

.method private O()V
    .locals 5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->g0()V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j0()[C

    move-result-object v1

    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->H()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->f0()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->N()V

    goto :goto_1

    :cond_6
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->S()Lcom/hp/hpl/sparta/Element;

    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->g0()V

    goto :goto_0
.end method

.method private P()V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->e0()Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :goto_0
    return-void
.end method

.method private Q()V
    .locals 3

    sget-object v0, Lcom/hp/hpl/sparta/g;->w:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    const/16 v1, 0x3e

    const/16 v2, 0x5b

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/g;->i:Z

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Z()Ljava/lang/String;

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    :goto_0
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->P()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a0()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-void
.end method

.method private R(Lcom/hp/hpl/sparta/Element;)V
    .locals 4

    sget-object v0, Lcom/hp/hpl/sparta/g;->K:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "end tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") does not match begin tag ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_1
    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-void
.end method

.method private final S()Lcom/hp/hpl/sparta/Element;
    .locals 3

    new-instance v0, Lcom/hp/hpl/sparta/Element;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/Element;-><init>()V

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->T(Lcom/hp/hpl/sparta/Element;)Z

    move-result v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v2, v0}, Lcom/hp/hpl/sparta/ParseHandler;->startElement(Lcom/hp/hpl/sparta/Element;)V

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->O()V

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->R(Lcom/hp/hpl/sparta/Element;)V

    :cond_0
    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {p0, v0}, Lcom/hp/hpl/sparta/ParseHandler;->endElement(Lcom/hp/hpl/sparta/Element;)V

    return-object v0
.end method

.method private T(Lcom/hp/hpl/sparta/Element;)Z
    .locals 2

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Element;->setTagName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    const/16 v1, 0x3e

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/g;->L(C)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hp/hpl/sparta/g;->J:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    :goto_1
    return p1

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    const/16 v0, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->h(CC)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/g;->G(Lcom/hp/hpl/sparta/Element;)V

    goto :goto_0
.end method

.method private U()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hp/hpl/sparta/g;->y:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Y()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->J(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private V()V
    .locals 3

    sget-object v0, Lcom/hp/hpl/sparta/g;->D:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->X()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Z()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->e:Ljava/util/Hashtable;

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->X()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_3
    sget-object v2, Lcom/hp/hpl/sparta/g;->E:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/hp/hpl/sparta/g;->E:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    :goto_2
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_5
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-void

    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw v0
.end method

.method private W()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/hp/hpl/sparta/g;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; not found -- possibly defined in external DTD)"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No declaration of &"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, ""

    :cond_1
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-object v1
.end method

.method private final X()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->J(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->e0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j0()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private final Y()V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_1
    return-void
.end method

.method private Z()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hp/hpl/sparta/g;->F:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/g;->F:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hp/hpl/sparta/g;->G:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/g;->G:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->i0()V

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->m0()V

    const-string p0, "(WARNING: external ID not read)"

    return-object p0

    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw v0
.end method

.method private a()I
    .locals 5

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/g;->m:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/hp/hpl/sparta/g;->l:I

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->j:[C

    array-length v2, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hp/hpl/sparta/g;->l:I

    iput v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->c:Ljava/io/Reader;

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v3, p0, Lcom/hp/hpl/sparta/g;->l:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/g;->m:Z

    return v1

    :cond_2
    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    return v0
.end method

.method private a0()V
    .locals 2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->f0()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->N()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->V()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hp/hpl/sparta/g;->B:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    :goto_1
    return-void

    :cond_3
    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->h(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting processing instruction, comment, or \"<!\""

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/g;->m:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    array-length v0, v0

    iget v2, p0, Lcom/hp/hpl/sparta/g;->k:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-ge v0, p1, :cond_2

    move p1, v2

    :goto_0
    iget v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    add-int v3, v0, p1

    iget v4, p0, Lcom/hp/hpl/sparta/g;->l:I

    if-lt v3, v4, :cond_1

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/hp/hpl/sparta/g;->l:I

    iput v2, p0, Lcom/hp/hpl/sparta/g;->k:I

    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->j:[C

    add-int/2addr v0, p1

    aget-char v0, v3, v0

    aput-char v0, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    move-result p0

    if-ne p0, v1, :cond_4

    if-nez v2, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    add-int/2addr v2, p0

    return v2
.end method

.method private b0()V
    .locals 2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->N()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->f0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting comment or processing instruction or space"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw v0
.end method

.method private final c0()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->d0()C

    move-result v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->v()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0xff

    if-lt v0, v3, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    move v0, v2

    :cond_3
    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v5

    aput-char v5, v3, v0

    move v0, v4

    goto :goto_0
.end method

.method private d0()C
    .locals 3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v0

    invoke-static {v0}, Lcom/hp/hpl/sparta/g;->t(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "letter, underscore, colon"

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;CLjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private e0()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->c0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No declaration of %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/g;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, ""

    :cond_0
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-object v1
.end method

.method private f()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->H:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private final f0()V
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->u:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/g;->v:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/g;->v:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_0
.end method

.method private final g(C)Z
    .locals 2

    iget v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "unexpected end of expression."

    invoke-direct {p1, p0, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget p0, p0, Lcom/hp/hpl/sparta/g;->k:I

    aget-char p0, v0, p0

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private g0()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/hp/hpl/sparta/g;->I:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v3

    aput-char v3, v2, v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->n:[C

    aget-char v2, v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->E()C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v3

    aput-char v3, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-interface {v1, v3, v0, v2}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->p:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->n:[C

    invoke-interface {v2, p0, v0, v1}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    :cond_4
    return-void
.end method

.method private final h(CC)Z
    .locals 3

    iget v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget p0, p0, Lcom/hp/hpl/sparta/g;->k:I

    aget-char p0, v0, p0

    if-eq p0, p1, :cond_1

    if-ne p0, p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private h0()V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->p0()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->u()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Q()V

    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->u()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->b0()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->b0()V

    goto :goto_0
.end method

.method private final i(CCCC)Z
    .locals 3

    iget v0, p0, Lcom/hp/hpl/sparta/g;->k:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget p0, p0, Lcom/hp/hpl/sparta/g;->k:I

    aget-char p0, v0, p0

    if-eq p0, p1, :cond_1

    if-eq p0, p2, :cond_1

    if-eq p0, p3, :cond_1

    if-ne p0, p4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final i0()V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->m0()V

    return-void
.end method

.method private final j()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->s:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private final j0()[C
    .locals 2

    sget-object v0, Lcom/hp/hpl/sparta/g;->C:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->M()C

    move-result p0

    aput-char p0, v0, v1

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->W()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method private k()Z
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final k0()V
    .locals 5

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/g;->K(CCCC)C

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/g;->i(CCCC)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->w:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private final l0([C)V
    .locals 5

    array-length v0, p1

    iget v1, p0, Lcom/hp/hpl/sparta/g;->l:I

    iget v2, p0, Lcom/hp/hpl/sparta/g;->k:I

    sub-int/2addr v1, v2

    const-string v2, "end of XML file"

    if-ge v1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->b(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/hp/hpl/sparta/g;->h:I

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v0, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;[C)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v3, p0, Lcom/hp/hpl/sparta/g;->l:I

    add-int/lit8 v4, v3, -0x1

    aget-char v1, v1, v4

    iput v1, p0, Lcom/hp/hpl/sparta/g;->h:I

    iget v1, p0, Lcom/hp/hpl/sparta/g;->k:I

    sub-int/2addr v3, v1

    if-lt v3, v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    iget p1, p0, Lcom/hp/hpl/sparta/g;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hp/hpl/sparta/g;->k:I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v3, p0, Lcom/hp/hpl/sparta/g;->k:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    aget-char v3, p1, v1

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/g;->j:[C

    iget v4, p0, Lcom/hp/hpl/sparta/g;->k:I

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;[C)V

    throw v1

    :cond_4
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v0, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/g;Ljava/lang/String;[C)V

    throw v0
.end method

.method private m()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->K:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private final m0()V
    .locals 2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->E()C

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->y:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private n0()V
    .locals 2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    sget-object v0, Lcom/hp/hpl/sparta/g;->z:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->Y()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->J(CC)C

    move-result v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->o0()V

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->L(C)V

    return-void
.end method

.method private o()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->D:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private o0()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private final p()Z
    .locals 2

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/g;->h(CC)Z

    move-result p0

    return p0
.end method

.method private p0()V
    .locals 3

    sget-object v0, Lcom/hp/hpl/sparta/g;->x:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->n0()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->k0()V

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->U()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/g;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/hp/hpl/sparta/EncodingMismatchException;

    iget-object v2, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p0}, Lcom/hp/hpl/sparta/EncodingMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/g;->v:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hp/hpl/sparta/g;->v:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->l0([C)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->I()C

    goto :goto_0
.end method

.method private static q(C)Z
    .locals 1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x387

    if-eq p0, v0, :cond_0

    const/16 v0, 0x640

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe46

    if-eq p0, v0, :cond_0

    const/16 v0, 0xec6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3005

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x3031
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30fc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private r()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->F:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/g;->G:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final s(C[C)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget-char v2, p1, v1

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static t(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private u()Z
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private v()Z
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/g;->E()C

    move-result p0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/g;->r:[Z

    aget-boolean p0, v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hp/hpl/sparta/g;->w(C)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static w(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hp/hpl/sparta/g;->t(C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/g;->q:[C

    invoke-static {p0, v0}, Lcom/hp/hpl/sparta/g;->s(C[C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hp/hpl/sparta/g;->q(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private x()Z
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result p0

    return p0
.end method

.method private final y()Z
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/g;->u:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->B([C)Z

    move-result p0

    return p0
.end method

.method private final z()Z
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/g;->g(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final c()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method d()I
    .locals 0

    iget p0, p0, Lcom/hp/hpl/sparta/g;->h:I

    return p0
.end method

.method e()Lcom/hp/hpl/sparta/ParseLog;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->f:Lcom/hp/hpl/sparta/ParseLog;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/hp/hpl/sparta/g;->o:I

    return p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/g;->a:Ljava/lang/String;

    return-object p0
.end method
