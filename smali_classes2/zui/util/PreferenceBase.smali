.class public Lzui/util/PreferenceBase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/util/PreferenceBase$PreferenceCallback;
    }
.end annotation


# instance fields
.field private a:Lzui/util/PreferenceBase$PreferenceCallback;

.field private b:I

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lzui/util/PreferenceBase$PreferenceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lzui/util/PreferenceBase;->f:I

    iput v0, p0, Lzui/util/PreferenceBase;->g:I

    iput-object p1, p0, Lzui/util/PreferenceBase;->a:Lzui/util/PreferenceBase$PreferenceCallback;

    return-void
.end method

.method static synthetic a(Lzui/util/PreferenceBase;)I
    .locals 0

    iget p0, p0, Lzui/util/PreferenceBase;->b:I

    return p0
.end method

.method static synthetic b(Lzui/util/PreferenceBase;I)I
    .locals 0

    iput p1, p0, Lzui/util/PreferenceBase;->b:I

    return p1
.end method

.method static synthetic c(Lzui/util/PreferenceBase;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/util/PreferenceBase;->c:Z

    return p0
.end method

.method static synthetic d(Lzui/util/PreferenceBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzui/util/PreferenceBase;->c:Z

    return p1
.end method

.method static synthetic e(Lzui/util/PreferenceBase;)Lzui/util/PreferenceBase$PreferenceCallback;
    .locals 0

    iget-object p0, p0, Lzui/util/PreferenceBase;->a:Lzui/util/PreferenceBase$PreferenceCallback;

    return-object p0
.end method


# virtual methods
.method public adjustPaddings(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    iget v0, p0, Lzui/util/PreferenceBase;->f:I

    if-gtz v0, :cond_0

    iget v0, p0, Lzui/util/PreferenceBase;->g:I

    if-lez v0, :cond_3

    :cond_0
    iget v0, p0, Lzui/util/PreferenceBase;->f:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget p0, p0, Lzui/util/PreferenceBase;->g:I

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_preferenceActivatedBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lzui/util/PreferenceBase;->d:Landroid/graphics/drawable/Drawable;

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingStart:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->f:I

    if-gez p2, :cond_0

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingLeft:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->f:I

    :cond_0
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingEnd:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->g:I

    if-gez p2, :cond_1

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingRight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->g:I

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzui/util/PreferenceBase$b;

    invoke-direct {v1, p0, v0, p1}, Lzui/util/PreferenceBase$b;-><init>(Lzui/util/PreferenceBase;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzui/util/PreferenceBase$a;

    invoke-direct {v1, p0, v0, p1}, Lzui/util/PreferenceBase$a;-><init>(Lzui/util/PreferenceBase;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setActivated(Landroid/view/View;ZZ)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lzui/util/PreferenceBase;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/util/PreferenceBase;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/util/PreferenceBase;->e:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lzui/util/PreferenceBase;->e:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    const v1, 0x10100a7

    aput v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p0, p0, Lzui/util/PreferenceBase;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lzui/util/PreferenceBase;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lzui/util/PreferenceBase;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iput p1, p0, Lzui/util/PreferenceBase;->f:I

    iput p2, p0, Lzui/util/PreferenceBase;->g:I

    return-void
.end method
