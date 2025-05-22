.class public Lzui/appcompat/app/ModalFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/util/DisplayMetrics;

.field private e:Lzui/widget/SimpleToolbar;

.field private f:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lzui/appcompat/app/ModalFragmentActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->d:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    iget v2, p0, Lzui/appcompat/app/ModalFragmentActivity;->a:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->b:I

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_0

    iget v1, p0, Lzui/appcompat/app/ModalFragmentActivity;->a:I

    invoke-virtual {v0, v1}, Lzui/widget/SimpleToolbar;->setMaxWidth(I)V

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/widget/SimpleToolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    invoke-virtual {v0}, Lzui/widget/SimpleToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    invoke-virtual {v0}, Lzui/widget/SimpleToolbar;->setupMenu()V

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    invoke-virtual {v0, p0}, Lzui/widget/SimpleToolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method public static dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const-class v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    return v1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lzui/appcompat/app/ModalFragmentActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget v0, Lzui/platform/R$anim;->dialog_enter:I

    sget v1, Lzui/platform/R$anim;->dialog_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getActivityHeight()I
    .locals 0

    iget p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->b:I

    return p0
.end method

.method public getActivityWidth()I
    .locals 0

    iget p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->a:I

    return p0
.end method

.method public getToolbar()Lzui/widget/SimpleToolbar;
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lzui/appcompat/app/ModalFragmentActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lzui/platform/R$style;->Theme_AppCompat_Zui_ModalActivity_Horizontal:I

    goto :goto_1

    :cond_1
    sget v0, Lzui/platform/R$style;->Theme_AppCompat_Zui_ModalActivity:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->c:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->d:Landroid/util/DisplayMetrics;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    sget v0, Lzui/platform/R$dimen;->modal_dialog_width_screenwidth_ratio:I

    invoke-static {p0, v0}, Lzui/util/CommonUtils;->getFloatFromResource(Landroid/content/Context;I)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->a:I

    int-to-float p1, p1

    sget v0, Lzui/platform/R$dimen;->modal_dialog_width_height_ratio:I

    invoke-static {p0, v0}, Lzui/util/CommonUtils;->getFloatFromResource(Landroid/content/Context;I)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->b:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    sget p1, Lzui/platform/R$anim;->dialog_enter:I

    sget v0, Lzui/platform/R$anim;->dialog_exit:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x40000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget v0, Lzui/platform/R$style;->Animation_Zui_ModalActivity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    sget p1, Lzui/platform/R$layout;->activity_modal:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    sget p1, Lzui/platform/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/SimpleToolbar;

    iput-object p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Lzui/appcompat/app/ModalFragmentActivity;->b()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lzui/appcompat/app/ModalFragmentActivity;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-ltz v0, :cond_0

    iget v2, p0, Lzui/appcompat/app/ModalFragmentActivity;->a:I

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->b:I

    if-le v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lzui/appcompat/app/ModalFragmentActivity;->finish()V

    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setContentView(I)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public showHomeAsUpIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzui/widget/SimpleToolbar;->useDefaultNavigationIcon(Z)V

    iget-object p1, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    invoke-virtual {p1, p0}, Lzui/widget/SimpleToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showToolbar(Z)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/ModalFragmentActivity;->e:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lzui/appcompat/app/ModalFragmentActivity;->b()V

    :cond_1
    return-void
.end method
