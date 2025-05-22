.class Lzui/widget/BottomToolBar$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/widget/BottomBarItem$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/BottomToolBar;


# direct methods
.method private constructor <init>(Lzui/widget/BottomToolBar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomToolBar$d;->a:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/BottomToolBar;Lzui/widget/BottomToolBar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomToolBar$d;-><init>(Lzui/widget/BottomToolBar;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lzui/widget/BottomBarItem;Z)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzui/widget/BottomBarItem;->setFocused(Z)V

    iget-object p2, p0, Lzui/widget/BottomToolBar$d;->a:Lzui/widget/BottomToolBar;

    invoke-static {p2}, Lzui/widget/BottomToolBar;->p(Lzui/widget/BottomToolBar;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p2

    iget-object v0, p0, Lzui/widget/BottomToolBar$d;->a:Lzui/widget/BottomToolBar;

    invoke-static {v0}, Lzui/widget/BottomToolBar;->p(Lzui/widget/BottomToolBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lzui/widget/BottomToolBar$d;->a:Lzui/widget/BottomToolBar;

    invoke-static {p0}, Lzui/widget/BottomToolBar;->q(Lzui/widget/BottomToolBar;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/widget/BottomToolBar$d;->a:Lzui/widget/BottomToolBar;

    iget-object p2, p0, Lzui/widget/BottomTabBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lzui/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Lzui/widget/BottomTabBar;I)V

    :cond_1
    :goto_0
    return-void
.end method
