.class public final synthetic Lcom/zui/quickstep/m1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic c:Lcom/zui/quickstep/BaseRecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/BaseRecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/m1;->a:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p2, p0, Lcom/zui/quickstep/m1;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p3, p0, Lcom/zui/quickstep/m1;->c:Lcom/zui/quickstep/BaseRecentsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/m1;->a:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/zui/quickstep/m1;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p0, p0, Lcom/zui/quickstep/m1;->c:Lcom/zui/quickstep/BaseRecentsView;

    invoke-static {v0, v1, p0, p1}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->n(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/BaseRecentsView;Landroid/view/View;)V

    return-void
.end method
