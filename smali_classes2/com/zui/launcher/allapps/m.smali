.class public final synthetic Lcom/zui/launcher/allapps/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/m;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iput-object p2, p0, Lcom/zui/launcher/allapps/m;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/m;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iget-object p0, p0, Lcom/zui/launcher/allapps/m;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method
