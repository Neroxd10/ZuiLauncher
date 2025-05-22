.class Lcom/zui/quickstep/util/DisplayManagerWrapper$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/DisplayManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/util/DisplayManagerWrapper;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/DisplayManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getHDMIDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v2}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->a(Lcom/zui/quickstep/util/DisplayManagerWrapper;)I

    move-result v2

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getAllStackInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityTaskManager$RootTaskInfo;

    iget v6, v5, Landroid/app/ActivityTaskManager$RootTaskInfo;->displayId:I

    if-eq v6, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v6, v5, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/zui/quickstep/util/DisplayManagerWrapper;->m:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    iget v6, v5, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    const-string v7, "Launcher.MultiDisplay"

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v1}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->a(Lcom/zui/quickstep/util/DisplayManagerWrapper;)I

    move-result v1

    if-eq v1, v6, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MoveInactiveBack, stackId :"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " diff : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v8}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->a(Lcom/zui/quickstep/util/DisplayManagerWrapper;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v1, v6}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->b(Lcom/zui/quickstep/util/DisplayManagerWrapper;I)I

    :cond_5
    move-object v1, v5

    :cond_6
    if-lez v6, :cond_2

    iget-object v5, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v5}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->a(Lcom/zui/quickstep/util/DisplayManagerWrapper;)I

    move-result v5

    if-eq v6, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoveInactiveBack, stackId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v6, v3, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->moveStackToDisplayPositionAt(IIZ)V

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->c(Lcom/zui/quickstep/util/DisplayManagerWrapper;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {v0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->c(Lcom/zui/quickstep/util/DisplayManagerWrapper;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/util/DisplayManagerWrapper$a;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-static {p0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->a(Lcom/zui/quickstep/util/DisplayManagerWrapper;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
