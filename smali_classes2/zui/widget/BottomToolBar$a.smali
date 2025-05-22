.class Lzui/widget/BottomToolBar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/BottomToolBar;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/BottomToolBar;


# direct methods
.method constructor <init>(Lzui/widget/BottomToolBar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomToolBar$a;->a:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemClick:id is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int p2, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BottomToolBar"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lzui/widget/BottomToolBar$a;->a:Lzui/widget/BottomToolBar;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lzui/widget/BottomToolBar$a;->a:Lzui/widget/BottomToolBar;

    invoke-virtual {p2}, Lzui/widget/BottomToolBar;->closePopMenu()V

    iget-object p0, p0, Lzui/widget/BottomToolBar$a;->a:Lzui/widget/BottomToolBar;

    iget-object p2, p0, Lzui/widget/BottomTabBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lzui/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Lzui/widget/BottomTabBar;I)V

    :cond_1
    return-void
.end method
