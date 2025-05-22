.class Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->getAnimatorState()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalScheduleView  animatorState -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switchState -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->b(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->b(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0804ef

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->e(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->removeData()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0804ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->e(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->addData()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c(Lcom/zui/launcher/globalsearch/GlobalScheduleView;Z)Z

    :cond_2
    return-void
.end method
