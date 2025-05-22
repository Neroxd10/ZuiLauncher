.class Lcom/zui/quickstep/util/RecentItemAnimator$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/RecentItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$h;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/zui/quickstep/util/RecentItemAnimator$h;->b:I

    iput p3, p0, Lcom/zui/quickstep/util/RecentItemAnimator$h;->c:I

    iput p4, p0, Lcom/zui/quickstep/util/RecentItemAnimator$h;->d:I

    iput p5, p0, Lcom/zui/quickstep/util/RecentItemAnimator$h;->e:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/zui/quickstep/util/RecentItemAnimator$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/quickstep/util/RecentItemAnimator$h;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
