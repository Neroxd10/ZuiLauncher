.class public final synthetic Lcom/zui/launcher/dragndrop/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/dragndrop/DragView;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/dragndrop/DragView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/g;->a:Lcom/zui/launcher/dragndrop/DragView;

    iput p2, p0, Lcom/zui/launcher/dragndrop/g;->b:F

    iput p3, p0, Lcom/zui/launcher/dragndrop/g;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/g;->a:Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/dragndrop/g;->b:F

    iget p0, p0, Lcom/zui/launcher/dragndrop/g;->c:F

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/dragndrop/DragView;->B(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
