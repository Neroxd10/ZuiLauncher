.class public Lcom/android/systemui/shared/system/SurfaceControlCompat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/SurfaceControlCompat;->a:Landroid/view/SurfaceControl;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shared/system/SurfaceControlCompat;->a:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/SurfaceControlCompat;->a:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/SurfaceControlCompat;->a:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
