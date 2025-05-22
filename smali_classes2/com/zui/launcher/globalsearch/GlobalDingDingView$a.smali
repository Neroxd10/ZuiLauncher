.class Lcom/zui/launcher/globalsearch/GlobalDingDingView$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalDingDingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalDingDingView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalDingDingView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a;->a:Lcom/zui/launcher/globalsearch/GlobalDingDingView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a;->a:Lcom/zui/launcher/globalsearch/GlobalDingDingView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalDingDingView;->a(Lcom/zui/launcher/globalsearch/GlobalDingDingView;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0151

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalDingDingView$a;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a;->a(Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalDingDingView$a;->b(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalDingDingView$a$a;

    move-result-object p0

    return-object p0
.end method
