.class public Lcom/zui/launcher/globalsearch/FormatUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, p0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static indexOfNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    if-ge v1, v2, :cond_1

    goto :goto_5

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_a

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int v5, v4, v2

    if-le v5, v1, :cond_3

    return-object v0

    :cond_3
    move v6, v3

    move v7, v6

    :goto_2
    if-ge v6, v2, :cond_8

    :goto_3
    add-int v8, v4, v7

    add-int/2addr v8, v6

    if-eq v8, v1, :cond_5

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_4

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    if-ne v8, v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    if-ne v6, v2, :cond_9

    new-instance p0, Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;

    add-int/2addr v5, v7

    invoke-direct {p0, v4, v5}, Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;-><init>(II)V

    return-object p0

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    :goto_5
    return-object v0
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_7

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    if-ge v1, v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_7

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int v5, v4, v2

    if-le v5, v1, :cond_3

    return v0

    :cond_3
    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_5

    add-int v6, v4, v5

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ne v5, v2, :cond_6

    return v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return v0
.end method

.method public static overlapPoint(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget p0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/FormatUtils;->overlapPoint([C[C)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static overlapPoint([C[C)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    array-length v1, p0

    array-length v2, p1

    :goto_0
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_6

    add-int v5, v4, v2

    if-le v5, v1, :cond_2

    sub-int v2, v1, v4

    :cond_2
    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_4

    add-int v6, v4, v5

    aget-char v6, p0, v6

    aget-char v7, p1, v5

    if-eq v6, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ne v5, v2, :cond_5

    return v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    return v0
.end method
