.class Lzui/appcompat/preference/PreferenceFragmentCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/appcompat/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/PreferenceFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->g(Lzui/appcompat/preference/PreferenceFragmentCompat;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->h(Lzui/appcompat/preference/PreferenceFragmentCompat;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {v1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->e(Lzui/appcompat/preference/PreferenceFragmentCompat;)I

    move-result v1

    sub-int v1, p2, v1

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {v3, p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->f(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {v3}, Lzui/appcompat/preference/PreferenceFragmentCompat;->g(Lzui/appcompat/preference/PreferenceFragmentCompat;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {v3}, Lzui/appcompat/preference/PreferenceFragmentCompat;->c(Lzui/appcompat/preference/PreferenceFragmentCompat;)I

    move-result v3

    sub-int/2addr p2, v3

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {v3}, Lzui/appcompat/preference/PreferenceFragmentCompat;->a(Lzui/appcompat/preference/PreferenceFragmentCompat;)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p2, p1, :cond_6

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p0, v1, v0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->j(Lzui/appcompat/preference/PreferenceFragmentCompat;IZ)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->g(Lzui/appcompat/preference/PreferenceFragmentCompat;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->h(Lzui/appcompat/preference/PreferenceFragmentCompat;)V

    :cond_3
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2, v2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->f(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2, v2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->b(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2, v2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->d(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    :cond_4
    :goto_0
    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p0, p1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->i(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p2, p1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->b(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    iget-object p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p1, v0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->d(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;->a:Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-static {p0, v0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->f(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    :cond_6
    :goto_1
    return v2
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
