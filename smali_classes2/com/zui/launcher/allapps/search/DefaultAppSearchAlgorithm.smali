.class public Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->a:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->getInstance()Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/AppInfo;

    invoke-static {v2, p1, v1}, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->matches(Lcom/zui/launcher/AppInfo;Ljava/lang/String;Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/zui/launcher/AppInfo;->toComponentKey()Lcom/zui/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static matches(Lcom/zui/launcher/AppInfo;Ljava/lang/String;Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    const/4 v1, 0x0

    if-gtz p2, :cond_0

    return v1

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isLetter(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v2

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return v2

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;-><init>(Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
