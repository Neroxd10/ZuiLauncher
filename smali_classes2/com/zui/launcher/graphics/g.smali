.class public final synthetic Lcom/zui/launcher/graphics/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/graphics/IconShape$Squircle;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/graphics/IconShape$Squircle;FFFFFFFFFFFFLandroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/graphics/g;->a:Lcom/zui/launcher/graphics/IconShape$Squircle;

    iput p2, p0, Lcom/zui/launcher/graphics/g;->b:F

    iput p3, p0, Lcom/zui/launcher/graphics/g;->c:F

    iput p4, p0, Lcom/zui/launcher/graphics/g;->d:F

    iput p5, p0, Lcom/zui/launcher/graphics/g;->e:F

    iput p6, p0, Lcom/zui/launcher/graphics/g;->f:F

    iput p7, p0, Lcom/zui/launcher/graphics/g;->g:F

    iput p8, p0, Lcom/zui/launcher/graphics/g;->h:F

    iput p9, p0, Lcom/zui/launcher/graphics/g;->i:F

    iput p10, p0, Lcom/zui/launcher/graphics/g;->j:F

    iput p11, p0, Lcom/zui/launcher/graphics/g;->k:F

    iput p12, p0, Lcom/zui/launcher/graphics/g;->l:F

    iput p13, p0, Lcom/zui/launcher/graphics/g;->m:F

    iput-object p14, p0, Lcom/zui/launcher/graphics/g;->n:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/zui/launcher/graphics/g;->a:Lcom/zui/launcher/graphics/IconShape$Squircle;

    iget v2, v0, Lcom/zui/launcher/graphics/g;->b:F

    iget v3, v0, Lcom/zui/launcher/graphics/g;->c:F

    iget v4, v0, Lcom/zui/launcher/graphics/g;->d:F

    iget v5, v0, Lcom/zui/launcher/graphics/g;->e:F

    iget v6, v0, Lcom/zui/launcher/graphics/g;->f:F

    iget v7, v0, Lcom/zui/launcher/graphics/g;->g:F

    iget v8, v0, Lcom/zui/launcher/graphics/g;->h:F

    iget v9, v0, Lcom/zui/launcher/graphics/g;->i:F

    iget v10, v0, Lcom/zui/launcher/graphics/g;->j:F

    iget v11, v0, Lcom/zui/launcher/graphics/g;->k:F

    iget v12, v0, Lcom/zui/launcher/graphics/g;->l:F

    iget v13, v0, Lcom/zui/launcher/graphics/g;->m:F

    iget-object v14, v0, Lcom/zui/launcher/graphics/g;->n:Landroid/graphics/Path;

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, p1

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/graphics/IconShape$Squircle;->f(FFFFFFFFFFFFLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void
.end method
