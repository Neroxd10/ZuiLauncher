.class public abstract Lcom/zui/launcher/popup/SystemShortcut;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/popup/SystemShortcut$RemoveIcon;,
        Lcom/zui/launcher/popup/SystemShortcut$Uninstall;,
        Lcom/zui/launcher/popup/SystemShortcut$EditWidget;,
        Lcom/zui/launcher/popup/SystemShortcut$RemoveWidget;,
        Lcom/zui/launcher/popup/SystemShortcut$FloatOpen;,
        Lcom/zui/launcher/popup/SystemShortcut$DismissPrediction;,
        Lcom/zui/launcher/popup/SystemShortcut$Install;,
        Lcom/zui/launcher/popup/SystemShortcut$AppInfo;,
        Lcom/zui/launcher/popup/SystemShortcut$Widgets;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        ">",
        "Lcom/zui/launcher/ItemInfo;"
    }
.end annotation


# instance fields
.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/Icon;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private final k:I

.field protected mItemInfo:Lcom/zui/launcher/ItemInfo;

.field protected mTarget:Lcom/zui/launcher/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    iput p2, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    iput p2, p0, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->h:Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->i:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IILcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/zui/launcher/ItemInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    iput p2, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    iput p2, p0, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    iput-object p3, p0, Lcom/zui/launcher/popup/SystemShortcut;->mTarget:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p4, p0, Lcom/zui/launcher/popup/SystemShortcut;->mItemInfo:Lcom/zui/launcher/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->h:Landroid/graphics/drawable/Icon;

    iput-object p2, p0, Lcom/zui/launcher/popup/SystemShortcut;->i:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/zui/launcher/popup/SystemShortcut;->j:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/popup/SystemShortcut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/popup/SystemShortcut<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iget v0, p1, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    iput v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    iget v0, p1, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    iput v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    iget v0, p1, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    iput v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    iget-object v0, p1, Lcom/zui/launcher/popup/SystemShortcut;->mTarget:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->mTarget:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p1, p1, Lcom/zui/launcher/popup/SystemShortcut;->mItemInfo:Lcom/zui/launcher/ItemInfo;

    iput-object p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->mItemInfo:Lcom/zui/launcher/ItemInfo;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected static dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x35d8b

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    return-void
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 2

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v1, p0, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public abstract getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/zui/launcher/ItemInfo;",
            ")",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation
.end method

.method public hasHandlerForAction(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/popup/SystemShortcut;->k:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftGroup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->h:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/launcher/popup/a;

    invoke-direct {v2, p1}, Lcom/zui/launcher/popup/a;-><init>(Landroid/widget/ImageView;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/popup/SystemShortcut;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->h:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/launcher/popup/a;

    invoke-direct {v2, p1}, Lcom/zui/launcher/popup/a;-><init>(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/launcher/popup/x;

    invoke-direct {v2, p1}, Lcom/zui/launcher/popup/x;-><init>(Landroid/view/View;)V

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->i:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget p0, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void
.end method

.method public setIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->f:I

    return-void
.end method

.method public setLabelResId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut;->g:I

    return-void
.end method
