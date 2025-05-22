.class Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;
.super Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ClockDrawableWrapper$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;


# direct methods
.method constructor <init>(Lcom/zui/launcher/icons/ClockDrawableWrapper$c;Z)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, v1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;IZ)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    return-void
.end method


# virtual methods
.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;->newDrawable()Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable()Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 2

    new-instance v0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    invoke-direct {v0, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;-><init>(Lcom/zui/launcher/icons/ClockDrawableWrapper$c;)V

    iget-boolean p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    invoke-virtual {v0, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-object v0
.end method
