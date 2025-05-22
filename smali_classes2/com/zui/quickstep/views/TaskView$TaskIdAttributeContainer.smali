.class public Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskIdAttributeContainer"
.end annotation


# instance fields
.field private final a:Lcom/zui/quickstep/views/TaskThumbnailView;

.field private final b:Lcom/android/systemui/shared/recents/model/Task;

.field private final c:Lcom/zui/quickstep/views/IconView;

.field private d:I

.field private final e:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field final synthetic f:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/views/IconView;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->b:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->a:Lcom/zui/quickstep/views/TaskThumbnailView;

    iput-object p4, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->c:Lcom/zui/quickstep/views/IconView;

    iput p5, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->d:I

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    const p1, 0x7f0a037a

    goto :goto_0

    :cond_0
    const p1, 0x7f0a037c

    :goto_0
    iput p1, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->e:I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->d:I

    return-void
.end method

.method public getA11yNodeId()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->e:I

    return p0
.end method

.method public getIconView()Lcom/zui/quickstep/views/IconView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->c:Lcom/zui/quickstep/views/IconView;

    return-object p0
.end method

.method public getItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->f:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->b:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getStagePosition()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->d:I

    return p0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->b:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->f:Lcom/zui/quickstep/views/TaskView;

    return-object p0
.end method

.method public getThumbnailView()Lcom/zui/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->a:Lcom/zui/quickstep/views/TaskThumbnailView;

    return-object p0
.end method
