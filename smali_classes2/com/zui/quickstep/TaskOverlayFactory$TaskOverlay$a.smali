.class Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final l:Lcom/zui/launcher/BaseDraggingActivity;

.field final synthetic m:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;->m:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    const p1, 0x7f080286

    const v0, 0x7f12006b

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(IILcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    iput-object p2, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;->l:Lcom/zui/launcher/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;->m:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object v0, p1, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;->l:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {p0}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method

.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    new-instance p1, Lcom/zui/quickstep/i1;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/i1;-><init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;)V

    return-object p1
.end method
