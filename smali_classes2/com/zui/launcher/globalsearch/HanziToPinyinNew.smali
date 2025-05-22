.class public Lcom/zui/launcher/globalsearch/HanziToPinyinNew;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;
    }
.end annotation


# static fields
.field private static c:Lcom/zui/launcher/globalsearch/HanziToPinyinNew;


# instance fields
.field private a:Landroid/icu/text/Transliterator;

.field private b:Landroid/icu/text/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "Han-Latin; Latin-Ascii; Any-Upper"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a:Landroid/icu/text/Transliterator;

    const-string v0, "Latin-Ascii"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->b:Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HanziToPinyin"

    const-string v0, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;

    invoke-direct {v0, p3, p0, p0}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private b(CLcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->source:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x80

    if-ge p1, v2, :cond_0

    iput v1, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->type:I

    iput-object v0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->target:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v0, 0x250

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_1

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->type:I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a:Landroid/icu/text/Transliterator;

    iget-object p1, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->source:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->target:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->source:Ljava/lang/String;

    iget-object p1, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->target:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x3

    iput p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->type:I

    iget-object p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->source:Ljava/lang/String;

    iput-object p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->target:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    :goto_0
    iput v1, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->type:I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->b:Landroid/icu/text/Transliterator;

    if-nez p0, :cond_5

    iget-object p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->source:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p1, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->source:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, p2, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->target:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/HanziToPinyinNew;
    .locals 2

    const-class v0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->c:Lcom/zui/launcher/globalsearch/HanziToPinyinNew;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;-><init>()V

    sput-object v1, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->c:Lcom/zui/launcher/globalsearch/HanziToPinyinNew;

    :cond_0
    sget-object v1, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->c:Lcom/zui/launcher/globalsearch/HanziToPinyinNew;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->hasChineseTransliterator()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;

    invoke-direct {v3}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-direct {p0, v2, v0, v5}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, v6, v3}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->b(CLcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;)V

    iget v6, v3, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-direct {p0, v2, v0, v5}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;

    invoke-direct {v3}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;-><init>()V

    goto :goto_1

    :cond_3
    if-eq v5, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, v2, v0, v5}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_4
    iget-object v5, v3, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v5, v3, Lcom/zui/launcher/globalsearch/HanziToPinyinNew$Token;->type:I

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    invoke-direct {p0, v2, v0, v5}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public hasChineseTransliterator()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a:Landroid/icu/text/Transliterator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HanziToPinyinNew;->a:Landroid/icu/text/Transliterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method
