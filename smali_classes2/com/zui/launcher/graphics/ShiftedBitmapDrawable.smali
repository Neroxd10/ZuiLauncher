.class public Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Bitmap;

.field private c:F

.field private d:F

.field private final e:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FF)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->a:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->c:F

    iput p3, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->d:F

    new-instance v0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;-><init>(Landroid/graphics/Bitmap;FF)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->e:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->c:F

    iget v2, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->d:F

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->e:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getShiftX()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->c:F

    return p0
.end method

.method public getShiftY()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->d:F

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setShiftX(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->c:F

    return-void
.end method

.method public setShiftY(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->d:F

    return-void
.end method
