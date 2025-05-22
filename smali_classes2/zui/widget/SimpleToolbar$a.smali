.class Lzui/widget/SimpleToolbar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/SimpleToolbar;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/SimpleToolbar;


# direct methods
.method constructor <init>(Lzui/widget/SimpleToolbar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SimpleToolbar$a;->a:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lzui/widget/SimpleToolbar$a;->a:Lzui/widget/SimpleToolbar;

    invoke-static {p1}, Lzui/widget/SimpleToolbar;->a(Lzui/widget/SimpleToolbar;)Lzui/widget/SimpleToolbar$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lzui/widget/SimpleToolbar$a;->a:Lzui/widget/SimpleToolbar;

    new-instance v0, Lzui/widget/SimpleToolbar$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lzui/widget/SimpleToolbar$b;-><init>(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$a;)V

    invoke-static {p1, v0}, Lzui/widget/SimpleToolbar;->b(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$b;)Lzui/widget/SimpleToolbar$b;

    :cond_0
    iget-object p0, p0, Lzui/widget/SimpleToolbar$a;->a:Lzui/widget/SimpleToolbar;

    invoke-static {p0}, Lzui/widget/SimpleToolbar;->a(Lzui/widget/SimpleToolbar;)Lzui/widget/SimpleToolbar$b;

    move-result-object p0

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar$b;->b()V

    return-void
.end method
