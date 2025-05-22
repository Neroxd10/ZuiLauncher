.class public Lcom/zui/quickstep/RecentsAdapter$RecentsViewholder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsViewholder"
.end annotation


# instance fields
.field a:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/RecentsAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/zui/quickstep/RecentsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    instance-of p1, p2, Lcom/zui/quickstep/views/TaskView;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/zui/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/zui/quickstep/RecentsAdapter$RecentsViewholder;->a:Lcom/zui/quickstep/views/TaskView;

    :cond_0
    return-void
.end method
