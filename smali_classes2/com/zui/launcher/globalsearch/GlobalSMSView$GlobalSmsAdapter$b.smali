.class Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;->c:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "SMS"

    const-string v0, "GSSMSClick"

    const-string v1, "\u67e5\u770b\u77ed\u4fe1"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;->c:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    return-void
.end method
