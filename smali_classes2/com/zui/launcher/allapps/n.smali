.class public final synthetic Lcom/zui/launcher/allapps/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/n;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iput-object p2, p0, Lcom/zui/launcher/allapps/n;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/n;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iget-object p0, p0, Lcom/zui/launcher/allapps/n;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
