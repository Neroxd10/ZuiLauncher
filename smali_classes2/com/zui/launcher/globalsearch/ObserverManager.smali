.class public Lcom/zui/launcher/globalsearch/ObserverManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/zui/launcher/globalsearch/ObserverManager;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/ObserverManager;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;
    .locals 2

    sget-object v0, Lcom/zui/launcher/globalsearch/ObserverManager;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/globalsearch/ObserverManager;->b:Lcom/zui/launcher/globalsearch/ObserverManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/globalsearch/ObserverManager;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/ObserverManager;-><init>()V

    sput-object v1, Lcom/zui/launcher/globalsearch/ObserverManager;->b:Lcom/zui/launcher/globalsearch/ObserverManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/zui/launcher/globalsearch/ObserverManager;->b:Lcom/zui/launcher/globalsearch/ObserverManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getObserverListenerList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    return-object p0
.end method

.method public isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyListenerData(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;->onScrollTextViewObserverData(ZLjava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/ObserverManager;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
