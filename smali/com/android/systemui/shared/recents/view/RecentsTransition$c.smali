.class Lcom/android/systemui/shared/recents/view/RecentsTransition$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(FILandroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->a:F

    iput p2, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->b:I

    iput-object p3, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->a:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->c:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/view/RecentsTransition$c;->a(Landroid/graphics/Canvas;)V

    return-void
.end method
