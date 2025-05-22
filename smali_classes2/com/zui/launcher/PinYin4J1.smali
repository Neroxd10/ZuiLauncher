.class public Lcom/zui/launcher/PinYin4J1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/PinYin4J1$Token;
    }
.end annotation


# static fields
.field private static final a:Ljava/text/Collator;

.field public static final mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "0"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "1"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "2"

    const-string v2, "ABC2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "3"

    const-string v2, "DEF3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "4"

    const-string v2, "GHI4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "5"

    const-string v2, "JKL5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "6"

    const-string v2, "MNO6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "7"

    const-string v2, "PQRS7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "8"

    const-string v2, "TUV8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "9"

    const-string v2, "WXYZ9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    const-string v1, "."

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/PinYin4J1;->a:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/PinYin4J1$Token;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/PinYin4J1$Token;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, p3, p0, v1, p4}, Lcom/zui/launcher/PinYin4J1$Token;-><init>(ILjava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public static array2Set([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/PinYin4J1$Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v5, v1, :cond_10

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v9, v10, :cond_e

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_e

    const/16 v10, 0x5f

    if-eq v9, v10, :cond_e

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v10, 0x100

    if-ge v9, v10, :cond_4

    if-ne v6, v3, :cond_1

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v8, :cond_1

    const/16 v10, 0x3a

    if-ge v9, v10, :cond_2

    const/16 v10, 0x2f

    if-le v9, v10, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/zui/launcher/PinYin4J1;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;II)V

    move v8, v4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v7, v5

    :cond_3
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v3

    goto/16 :goto_2

    :cond_4
    const/16 v10, 0x3400

    if-ge v9, v10, :cond_8

    if-ne v6, v11, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/zui/launcher/PinYin4J1;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;II)V

    move v8, v4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    move v7, v5

    :cond_7
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v11

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v9}, Lcom/zui/launcher/PinYin4J1;->getToken(C)Lcom/zui/launcher/PinYin4J1$Token;

    move-result-object v10

    iput v5, v10, Lcom/zui/launcher/PinYin4J1$Token;->position:I

    iget v11, v10, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    if-ne v11, v12, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/zui/launcher/PinYin4J1;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;II)V

    :cond_9
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v4

    move v6, v12

    goto :goto_2

    :cond_a
    if-ne v6, v11, :cond_b

    if-eqz v8, :cond_c

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_c

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/zui/launcher/PinYin4J1;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;II)V

    move v8, v4

    :cond_c
    iget v6, v10, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_d

    move v7, v5

    :cond_d
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_f

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v3

    :cond_f
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_11

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/zui/launcher/PinYin4J1;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;II)V

    :cond_11
    return-object v0
.end method

.method public getNumberLookupKeys(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v5, p0

    invoke-virtual {v5, v0, v4}, Lcom/zui/launcher/PinYin4J1;->getPinyin1(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const/4 v11, 0x0

    if-ne v10, v4, :cond_4

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v11

    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    sget-object v16, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_0
    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    move v14, v15

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_4
    const/4 v4, 0x2

    if-ne v10, v4, :cond_a

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v11

    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_7

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    sget-object v15, Lcom/zui/launcher/PinYin4J1;->mappings:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_5
    const/4 v11, 0x0

    goto :goto_7

    :cond_6
    :goto_8
    move v13, v14

    const/4 v11, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v11, "\\."

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    new-instance v12, Landroid/util/Pair;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    :goto_9
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_9

    :cond_8
    move v11, v13

    goto/16 :goto_5

    :cond_9
    const/16 v16, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_a
    :goto_a
    const/16 v16, 0x1

    :goto_b
    move/from16 v4, v16

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7528\u65f6......"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":  "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v1

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u6beb\u79d2...."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v3
.end method

.method public getPinyin(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-array p1, p1, [[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, v0

    const/4 v7, 0x1

    if-ge v3, v6, :cond_f

    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[\\u4E00-\\u9FA5]+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "."

    if-eqz v8, :cond_3

    invoke-static {v6, p2}, Lcom/zui/launcher/PinyinHelper;->getUnformattedHanyuPinyinStringArray(CZ)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v6, p1, v3

    array-length v6, v4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v6, v1, v3

    move v6, v2

    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_2

    aget-object v8, v1, v3

    aget-object v10, v4, v6

    invoke-virtual {v10, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v6

    array-length v8, v0

    if-eq v3, v8, :cond_0

    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    aget-object v5, p1, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v6

    aget-object v11, v4, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    goto :goto_2

    :cond_0
    array-length v5, v0

    sub-int/2addr v5, v7

    if-eq v3, v5, :cond_1

    aget-object v5, p1, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v6

    aget-object v11, v4, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    move v5, v7

    goto :goto_3

    :cond_1
    aget-object v5, p1, v3

    aget-object v8, v4, v6

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    :goto_2
    move v5, v2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_4
    move v4, v7

    goto/16 :goto_9

    :cond_3
    const/16 v8, 0x61

    const/16 v10, 0x5a

    const/16 v11, 0x41

    const-string v12, ""

    if-lt v6, v8, :cond_7

    const/16 v8, 0x7a

    if-gt v6, v8, :cond_7

    if-nez v3, :cond_4

    new-array v4, v7, [Ljava/lang/String;

    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v1, v3

    goto :goto_5

    :cond_4
    if-eqz v4, :cond_6

    add-int/lit8 v4, v3, -0x1

    aget-char v5, v0, v4

    if-lt v5, v11, :cond_5

    aget-char v4, v0, v4

    if-le v4, v10, :cond_6

    :cond_5
    new-array v4, v7, [Ljava/lang/String;

    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v1, v3

    goto :goto_5

    :cond_6
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_5
    new-array v4, v7, [Ljava/lang/String;

    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p1, v3

    move v4, v2

    :goto_6
    move v5, v4

    goto/16 :goto_9

    :cond_7
    if-lt v6, v11, :cond_8

    if-le v6, v10, :cond_9

    :cond_8
    const/16 v4, 0x30

    if-lt v6, v4, :cond_c

    const/16 v4, 0x39

    if-gt v6, v4, :cond_c

    :cond_9
    new-array v4, v7, [Ljava/lang/String;

    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v4, v1, v3

    array-length v4, v0

    if-eq v3, v4, :cond_a

    if-eqz v3, :cond_a

    if-nez v5, :cond_a

    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p1, v3

    goto :goto_8

    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_b

    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p1, v3

    goto :goto_7

    :cond_b
    new-array v4, v7, [Ljava/lang/String;

    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p1, v3

    goto :goto_8

    :cond_c
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    array-length v4, v0

    sub-int/2addr v4, v7

    const/16 v8, 0x2e

    if-eq v3, v4, :cond_d

    if-eqz v3, :cond_d

    if-nez v5, :cond_d

    if-eq v6, v8, :cond_d

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    goto :goto_7

    :cond_d
    if-ne v6, v8, :cond_e

    new-array v4, v7, [Ljava/lang/String;

    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p1, v3

    :goto_7
    move v4, v7

    goto/16 :goto_6

    :cond_e
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    :goto_8
    move v5, v2

    goto/16 :goto_4

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PinYin4J1;->paiLie([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/PinYin4J1;->array2Set([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PinYin4J1;->paiLie([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/PinYin4J1;->array2Set([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getPinyin1(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PinYin4J1;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/PinYin4J1$Token;

    iget-object v3, v3, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;

    aput-object v3, p2, v2

    aget-object v3, p2, v2

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v0, v2

    move v3, v1

    :goto_1
    aget-object v5, p2, v2

    array-length v5, v5

    if-ge v3, v5, :cond_0

    aget-object v5, v0, v2

    aget-object v6, p2, v2

    aget-object v6, v6, v3

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/zui/launcher/PinYin4J1;->paiLie([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/PinYin4J1;->array2Set([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PinYin4J1;->paiLie([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/PinYin4J1;->array2Set([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getPinyinKey(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PinYin4J1;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/PinYin4J1$Token;

    iget-object v3, v3, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;

    aput-object v3, p2, v2

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, p2, v2

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v0, v2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_1
    aget-object v4, p2, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-object v5, v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/zui/launcher/PinYin4J1;->paiLie([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/PinYin4J1;->array2Set([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PinYin4J1;->paiLie([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/PinYin4J1;->array2Set([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public getToken(C)Lcom/zui/launcher/PinYin4J1$Token;
    .locals 7

    new-instance p0, Lcom/zui/launcher/PinYin4J1$Token;

    invoke-direct {p0}, Lcom/zui/launcher/PinYin4J1$Token;-><init>()V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/PinYin4J1$Token;->source:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x100

    if-ge p1, v3, :cond_0

    iput v2, p0, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v3, 0x3400

    const/4 v4, 0x3

    if-ge p1, v3, :cond_1

    iput v4, p0, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object v3, Lcom/zui/launcher/PinYin4J1;->a:Ljava/text/Collator;

    const-string v5, "\u963f"

    invoke-virtual {v3, v0, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    iput v4, p0, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 v5, 0x2

    if-nez v3, :cond_3

    :goto_0
    iput v5, p0, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/zui/launcher/PinYin4J1;->a:Ljava/text/Collator;

    const-string v6, "\u84d9"

    invoke-virtual {v3, v0, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    iput v4, p0, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;

    return-object p0

    :cond_4
    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iput v5, p0, Lcom/zui/launcher/PinYin4J1$Token;->type:I

    :try_start_0
    invoke-static {p1, v1}, Lcom/zui/launcher/PinyinHelper;->getUnformattedHanyuPinyinStringArray(CZ)[Ljava/lang/String;

    move-result-object p1

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iput-object p1, p0, Lcom/zui/launcher/PinYin4J1$Token;->target:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object p0
.end method

.method public makeStringByStringSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public paiLie([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 p0, 0x0

    const/4 v0, 0x1

    move v1, p0

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-object v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v1

    array-length v3, v3

    mul-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    move v3, p0

    :goto_2
    if-ge v3, v2, :cond_5

    const-string v4, ""

    move v5, p0

    move v6, v0

    :goto_3
    array-length v7, p1

    if-ge v5, v7, :cond_3

    aget-object v7, p1, v5

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    aget-object v7, p1, v5

    array-length v7, v7

    mul-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v5

    div-int v8, v2, v6

    div-int v8, v3, v8

    aget-object v9, p1, v5

    array-length v9, v9

    rem-int/2addr v8, v9

    aget-object v4, v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const-string v5, ".."

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v1, v3

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v1
.end method
