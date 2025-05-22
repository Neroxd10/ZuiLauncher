.class Lzui/appcompat/widget/Toolbar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/widget/Toolbar;->updateZuiStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lzui/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/widget/Toolbar$a;->a:Lzui/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lzui/appcompat/widget/Toolbar$a;->a:Lzui/appcompat/widget/Toolbar;

    invoke-static {p1}, Lzui/appcompat/widget/Toolbar;->a(Lzui/appcompat/widget/Toolbar;)Lzui/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lzui/appcompat/widget/Toolbar$a;->a:Lzui/appcompat/widget/Toolbar;

    invoke-static {p0}, Lzui/appcompat/widget/Toolbar;->b(Lzui/appcompat/widget/Toolbar;)V

    :cond_0
    return-void
.end method
