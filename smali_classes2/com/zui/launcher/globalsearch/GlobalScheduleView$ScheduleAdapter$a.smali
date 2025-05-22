.class Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->c:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "Schedule"

    const-string v0, "GSScheduleClick"

    const-string v1, "\u67e5\u770b\u65e5\u7a0b"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->c:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->c:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
