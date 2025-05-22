.class final Lcom/zui/launcher/widget/picker/b0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/widget/picker/b0;->a:F

    const v1, 0x7f0708a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/widget/picker/b0;->b:F

    const v0, 0x7f060321

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/b0;->c:Landroid/content/res/ColorStateList;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/b0;->d:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private b(FF)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/b0;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput p1, v1, p0

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p1, v1, p0

    const/4 p0, 0x3

    aput p1, v1, p0

    const/4 p0, 0x4

    aput p2, v1, p0

    const/4 p0, 0x5

    aput p2, v1, p0

    const/4 p0, 0x6

    aput p2, v1, p0

    const/4 p0, 0x7

    aput p2, v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v1, Lcom/zui/launcher/widget/picker/c0;->MIDDLE:Lcom/zui/launcher/widget/picker/c0;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/c0;->a:[I

    iget v2, p0, Lcom/zui/launcher/widget/picker/b0;->b:F

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/zui/launcher/widget/picker/b0;->b(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/zui/launcher/widget/picker/c0;->LAST:Lcom/zui/launcher/widget/picker/c0;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/c0;->a:[I

    iget v2, p0, Lcom/zui/launcher/widget/picker/b0;->a:F

    invoke-direct {p0, v3, v2}, Lcom/zui/launcher/widget/picker/b0;->b(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/b0;->d:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
