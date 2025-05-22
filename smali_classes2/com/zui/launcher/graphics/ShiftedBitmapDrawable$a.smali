.class Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FF)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;->b:F

    iput p3, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;->c:F

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    iget-object v1, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;->a:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;->b:F

    iget p0, p0, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable$a;->c:F

    invoke-direct {v0, v1, v2, p0}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FF)V

    return-object v0
.end method
