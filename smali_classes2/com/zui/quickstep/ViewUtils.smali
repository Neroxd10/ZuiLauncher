.class public Lcom/zui/quickstep/ViewUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/ViewUtils$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z
    .locals 1

    sget-object v0, Lcom/zui/quickstep/v2;->a:Lcom/zui/quickstep/v2;

    invoke-static {p0, p1, v0}, Lcom/zui/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result p0

    return p0
.end method

.method public static postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z
    .locals 1

    new-instance v0, Lcom/zui/quickstep/ViewUtils$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/quickstep/ViewUtils$a;-><init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)V

    invoke-static {v0}, Lcom/zui/quickstep/ViewUtils$a;->a(Lcom/zui/quickstep/ViewUtils$a;)Z

    move-result p0

    return p0
.end method
