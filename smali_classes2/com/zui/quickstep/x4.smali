.class Lcom/zui/quickstep/x4;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source ""


# instance fields
.field final synthetic d:I

.field final synthetic e:Landroid/graphics/Bitmap;

.field final synthetic f:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    iput p3, p0, Lcom/zui/quickstep/x4;->d:I

    iput-object p4, p0, Lcom/zui/quickstep/x4;->e:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/zui/quickstep/x4;->f:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget v1, p0, Lcom/zui/quickstep/x4;->d:I

    iget-object v2, p0, Lcom/zui/quickstep/x4;->e:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/quickstep/x4;->f:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
