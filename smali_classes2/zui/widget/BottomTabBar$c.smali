.class Lzui/widget/BottomTabBar$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/widget/BottomBarItem$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/BottomTabBar;


# direct methods
.method private constructor <init>(Lzui/widget/BottomTabBar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar$c;-><init>(Lzui/widget/BottomTabBar;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lzui/widget/BottomBarItem;Z)V
    .locals 3

    iget-object v0, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    invoke-static {v0}, Lzui/widget/BottomTabBar;->c(Lzui/widget/BottomTabBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzui/widget/BottomTabBar;->d(Lzui/widget/BottomTabBar;Z)Z

    iget-object v0, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    invoke-static {v0}, Lzui/widget/BottomTabBar;->e(Lzui/widget/BottomTabBar;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    invoke-static {v0}, Lzui/widget/BottomTabBar;->e(Lzui/widget/BottomTabBar;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lzui/widget/BottomTabBar;->f(Lzui/widget/BottomTabBar;IZ)V

    :cond_1
    iget-object v0, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    invoke-static {v0, v2}, Lzui/widget/BottomTabBar;->d(Lzui/widget/BottomTabBar;Z)Z

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    if-eqz p2, :cond_2

    iget-object p0, p0, Lzui/widget/BottomTabBar$c;->a:Lzui/widget/BottomTabBar;

    invoke-static {p0, p1}, Lzui/widget/BottomTabBar;->b(Lzui/widget/BottomTabBar;I)V

    :cond_2
    return-void
.end method
