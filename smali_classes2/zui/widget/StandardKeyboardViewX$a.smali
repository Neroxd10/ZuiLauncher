.class Lzui/widget/StandardKeyboardViewX$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/StandardKeyboardViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/StandardKeyboardViewX;


# direct methods
.method constructor <init>(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 0

    const/4 p2, -0x5

    if-eq p1, p2, :cond_4

    const/4 p2, -0x4

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_2

    const/4 p2, -0x2

    if-eq p1, p2, :cond_1

    const/4 p2, -0x1

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    if-eq p1, p2, :cond_0

    invoke-static {p0, p1}, Lzui/widget/StandardKeyboardViewX;->g(Lzui/widget/StandardKeyboardViewX;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lzui/widget/StandardKeyboardViewX;->d(Lzui/widget/StandardKeyboardViewX;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p0}, Lzui/widget/StandardKeyboardViewX;->e(Lzui/widget/StandardKeyboardViewX;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->hideKeyboard()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p0}, Lzui/widget/StandardKeyboardViewX;->f(Lzui/widget/StandardKeyboardViewX;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p0}, Lzui/widget/StandardKeyboardViewX;->c(Lzui/widget/StandardKeyboardViewX;)V

    :goto_0
    return-void
.end method

.method public onPress(I)V
    .locals 0

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p0, p1}, Lzui/widget/StandardKeyboardViewX;->b(Lzui/widget/StandardKeyboardViewX;I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p1}, Lzui/widget/StandardKeyboardViewX;->a(Lzui/widget/StandardKeyboardViewX;)V

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX$a;->a:Lzui/widget/StandardKeyboardViewX;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
