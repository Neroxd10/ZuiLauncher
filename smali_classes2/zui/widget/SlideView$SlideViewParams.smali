.class public Lzui/widget/SlideView$SlideViewParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideViewParams"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->f:I

    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->h:I

    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_left_menu_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->listview_x_left_space_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lzui/widget/SlideView$SlideViewParams;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->f:I

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->h:I

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->i:I

    iput p2, p0, Lzui/widget/SlideView$SlideViewParams;->a:I

    iput-object p3, p0, Lzui/widget/SlideView$SlideViewParams;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Lzui/widget/SlideView$SlideViewParams;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/SlideView$SlideViewParams;->j:Z

    return p0
.end method


# virtual methods
.method public getBgColor()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->f:I

    return p0
.end method

.method public getBgPressedColor()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->g:I

    return p0
.end method

.method public getLayoutResource()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->e:I

    return p0
.end method

.method public getLeftSlideThreshold()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->h:I

    return p0
.end method

.method public getLeftSpaceWidth()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->b:I

    return p0
.end method

.method public getRightSlideThreshold()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->i:I

    return p0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView$SlideViewParams;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getShowText()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/SlideView$SlideViewParams;->j:Z

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView$SlideViewParams;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView$SlideViewParams;->a:I

    return p0
.end method

.method public setBgColor(II)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->f:I

    iput p2, p0, Lzui/widget/SlideView$SlideViewParams;->g:I

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->e:I

    return-void
.end method

.method public setLeftSlideThreshHold(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->h:I

    return-void
.end method

.method public setLeftSpaceWidth(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->b:I

    return-void
.end method

.method public setRightSlideThreshHold(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->i:I

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView$SlideViewParams;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/SlideView$SlideViewParams;->j:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView$SlideViewParams;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->a:I

    return-void
.end method
