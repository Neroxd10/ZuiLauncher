.class public Lcom/zui/launcher/search/StringMatcherUtility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_5

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    const/4 p2, 0x3

    if-eq p0, p2, :cond_6

    const/16 p2, 0x14

    if-eq p0, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return v1

    :pswitch_0
    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    :pswitch_1
    return v0

    :cond_2
    const/4 p0, 0x5

    if-gt p1, p0, :cond_4

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0

    :cond_5
    if-ne p2, v0, :cond_6

    return v0

    :cond_6
    if-eq p1, v0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_b

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    sub-int v5, v1, v0

    move v6, v2

    move v7, v6

    :goto_0
    if-gt v6, v5, :cond_4

    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    invoke-static {v3, v7, v8}, Lcom/zui/launcher/search/StringMatcherUtility;->a(III)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int v7, v6, v0

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, p0, v7}, Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move v7, v3

    move v3, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v4, :cond_5

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isLetter(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v4

    goto :goto_2

    :cond_5
    move p2, v4

    :goto_2
    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_7

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    :cond_7
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    return v4

    :cond_9
    return v2

    :cond_a
    :goto_3
    return v4

    :cond_b
    :goto_4
    return v2
.end method
