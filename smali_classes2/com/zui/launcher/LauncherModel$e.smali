.class Lcom/zui/launcher/LauncherModel$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->removeRecommendWidget(Landroid/content/ComponentName;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:J

.field final synthetic c:Lcom/zui/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Landroid/content/ComponentName;J)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$e;->c:Lcom/zui/launcher/LauncherModel;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$e;->a:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/zui/launcher/LauncherModel$e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$e;->a:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$e;->c:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zui/launcher/LauncherModel;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v4, p0, Lcom/zui/launcher/LauncherModel$e;->a:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/zui/launcher/LauncherModel$e;->b:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$e;->c:Lcom/zui/launcher/LauncherModel;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$e;->a:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidgets(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
