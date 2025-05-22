.class public Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BREAK_BY_CHARACTER_SEQUENCES:I = 0x2

.field public static final BREAK_BY_WORDS:I = 0x1


# instance fields
.field public breakResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBreakMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->mBreakMode:I

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)[I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->mBreakMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/text/BreakIterator;->first()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    move v4, v2

    move v2, v0

    move v0, v4

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Integer;

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphBreakIterator;->breakResult:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array p0, p1, [I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object p0
.end method
