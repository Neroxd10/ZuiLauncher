.class public Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;
.super Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/PreloadIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PreloadIconConstantState"
.end annotation


# instance fields
.field protected final mIndicatorColor:I

.field protected final mInfo:Lcom/zui/launcher/ItemInfoWithIcon;

.field protected final mIsDarkMode:Z

.field protected final mLevel:I

.field protected final mPreloadColors:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IZLcom/zui/launcher/ItemInfoWithIcon;I[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;IZ)V

    iput-object p4, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mInfo:Lcom/zui/launcher/ItemInfoWithIcon;

    iput p5, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIndicatorColor:I

    iput-object p6, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mPreloadColors:[I

    iput-boolean p7, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIsDarkMode:Z

    invoke-virtual {p4}, Lcom/zui/launcher/ItemInfoWithIcon;->getProgressLevel()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mLevel:I

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->newDrawable()Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable()Lcom/zui/launcher/graphics/PreloadIconDrawable;
    .locals 4

    new-instance v0, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mInfo:Lcom/zui/launcher/ItemInfoWithIcon;

    iget v2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIndicatorColor:I

    iget-object v3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mPreloadColors:[I

    iget-boolean p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIsDarkMode:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;I[IZ)V

    return-object v0
.end method

.method public bridge synthetic newDrawable()Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;->newDrawable()Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object p0

    return-object p0
.end method
