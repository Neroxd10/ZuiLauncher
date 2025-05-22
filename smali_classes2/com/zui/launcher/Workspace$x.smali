.class Lcom/zui/launcher/Workspace$x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "x"
.end annotation


# instance fields
.field final a:Lcom/zui/launcher/CellLayout;

.field final b:I

.field final c:I

.field final d:Lcom/zui/launcher/folder/PreviewBackground;

.field final synthetic e:Lcom/zui/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;II)V
    .locals 10

    iput-object p1, p0, Lcom/zui/launcher/Workspace$x;->e:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/zui/launcher/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Workspace$x;->d:Lcom/zui/launcher/folder/PreviewBackground;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$x;->a:Lcom/zui/launcher/CellLayout;

    iput p3, p0, Lcom/zui/launcher/Workspace$x;->b:I

    iput p4, p0, Lcom/zui/launcher/Workspace$x;->c:I

    invoke-virtual {p2, p3, p4}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/Workspace$x;->d:Lcom/zui/launcher/folder/PreviewBackground;

    iget-object v2, p1, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    const/4 v3, 0x0

    move-object v1, v2

    invoke-virtual/range {v0 .. v9}, Lcom/zui/launcher/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/zui/launcher/views/ActivityContext;Landroid/view/View;IIIIZI)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace$x;->d:Lcom/zui/launcher/folder/PreviewBackground;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->isClipping:Z

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/Workspace$x;->e:Lcom/zui/launcher/Workspace;

    iget-object v0, p0, Lcom/zui/launcher/Workspace$x;->d:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-static {p1, v0}, Lcom/zui/launcher/Workspace;->v(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/folder/PreviewBackground;)Lcom/zui/launcher/folder/PreviewBackground;

    iget-object p1, p0, Lcom/zui/launcher/Workspace$x;->e:Lcom/zui/launcher/Workspace;

    invoke-static {p1}, Lcom/zui/launcher/Workspace;->u(Lcom/zui/launcher/Workspace;)Lcom/zui/launcher/folder/PreviewBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/Workspace$x;->a:Lcom/zui/launcher/CellLayout;

    iget v1, p0, Lcom/zui/launcher/Workspace$x;->b:I

    iget v2, p0, Lcom/zui/launcher/Workspace$x;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/launcher/folder/PreviewBackground;->animateToAccept(Lcom/zui/launcher/CellLayout;II)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace$x;->a:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->clearDragOutlines()V

    iget-object p0, p0, Lcom/zui/launcher/Workspace$x;->e:Lcom/zui/launcher/Workspace;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    return-void
.end method
