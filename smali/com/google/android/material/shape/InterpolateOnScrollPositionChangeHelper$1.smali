.class Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;

    invoke-virtual {p0}, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->updateInterpolationForScreenPosition()V

    return-void
.end method
