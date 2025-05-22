.class Lcom/zui/launcher/globalsearch/HotWordDownLoad$d;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/HotWordDownLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/HotWordDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$d;->a:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/ObserverManager;->getObserverListenerList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler   mWidgtehotWordList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch.HotWordDownLoad"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$d;->a:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->checkToppingWord()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;

    check-cast p1, Lcom/zui/launcher/SearchWidgetView;

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/SearchWidgetView;->setToopingList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;

    check-cast p1, Lcom/zui/launcher/SearchWidgetView;

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/SearchWidgetView;->setNormalList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$d;->a:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->g(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Z

    move-result p0

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/globalsearch/ObserverManager;->notifyListenerData(ZLjava/util/List;)V

    :cond_2
    return-void
.end method
