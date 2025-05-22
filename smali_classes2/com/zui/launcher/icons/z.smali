.class public final synthetic Lcom/zui/launcher/icons/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/icons/z;->a:I

    iput-object p2, p0, Lcom/zui/launcher/icons/z;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/icons/z;->a:I

    iget-object p0, p0, Lcom/zui/launcher/icons/z;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;->d(ILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
