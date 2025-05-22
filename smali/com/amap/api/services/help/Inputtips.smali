.class public final Lcom/amap/api/services/help/Inputtips;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IInputtipsSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/ie;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/l3s/ie;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/ie;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/l3s/ie;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->getQuery()Lcom/amap/api/services/help/InputtipsQuery;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestInputtips()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final requestInputtipsAsyn()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtipsAsyn()V

    :cond_0
    return-void
.end method

.method public final setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    :cond_0
    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V

    :cond_0
    return-void
.end method
