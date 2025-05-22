.class public abstract Lcom/zui/launcher/graphics/RotationMode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static NORMAL:Lcom/zui/launcher/graphics/RotationMode;


# instance fields
.field public final isTransposed:Z

.field public final surfaceRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/graphics/RotationMode$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/graphics/RotationMode$a;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/graphics/RotationMode;->surfaceRotation:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    return-void
.end method


# virtual methods
.method public mapInsets(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public mapRect(IIIILandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final mapRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/graphics/RotationMode;->mapRect(IIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public toNaturalGravity(I)I
    .locals 0

    return p1
.end method
