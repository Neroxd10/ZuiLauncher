.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;
    }
.end annotation


# instance fields
.field protected final cornerRadius:I

.field protected final margin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    iput p2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->margin:I

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 1

    instance-of p3, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;

    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    iget p0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->margin:I

    invoke-direct {p3, p1, v0, p0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, p3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
