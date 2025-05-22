.class public Lcom/zui/launcher/ExtendedEditText;
.super Landroid/widget/EditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;,
        Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;

.field private d:Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/ExtendedEditText;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/ExtendedEditText;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/ExtendedEditText;->b:Z

    return-void
.end method

.method private b()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public synthetic a()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ExtendedEditText;->b()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/ExtendedEditText;->a:Z

    return-void
.end method

.method public dispatchBackKey()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->hideKeyboard()V

    iget-object p0, p0, Lcom/zui/launcher/ExtendedEditText;->c:Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    :cond_0
    return-void
.end method

.method public forceDisableSuggestions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ExtendedEditText;->b:Z

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/util/UiThreadHelper;->hideKeyboardAsync(Lcom/zui/launcher/views/ActivityContext;Landroid/os/IBinder;)V

    return-void
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/ExtendedEditText;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/ExtendedEditText;->d:Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;->onFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->hideKeyboard()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/ExtendedEditText;->c:Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/zui/launcher/ExtendedEditText;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zui/launcher/w;

    invoke-direct {p1, p0}, Lcom/zui/launcher/w;-><init>(Lcom/zui/launcher/ExtendedEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->hideKeyboard()V

    return-void
.end method

.method public setOnBackKeyListener(Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ExtendedEditText;->c:Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;

    return-void
.end method

.method public setOnFocusChangedListener(Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ExtendedEditText;->d:Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ExtendedEditText;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/ExtendedEditText;->a:Z

    return-void
.end method
