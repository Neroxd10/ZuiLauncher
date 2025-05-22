.class Lcom/zui/quickstep/w4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field final synthetic a:Lcom/zui/launcher/BaseDraggingActivity;

.field final synthetic b:Lcom/zui/quickstep/views/TaskView;

.field final synthetic c:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/quickstep/w4;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p3, p0, Lcom/zui/quickstep/w4;->b:Lcom/zui/quickstep/views/TaskView;

    iput-object p4, p0, Lcom/zui/quickstep/w4;->c:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/w4;->a:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/BaseActivity;->removeOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/w4;->b:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/quickstep/w4;->c:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
