.class Lcom/android/systemui/shared/system/RotationWatcher$a;
.super Landroid/view/IRotationWatcher$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/systemui/shared/system/RotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RotationWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RotationWatcher$a;->a:Lcom/android/systemui/shared/system/RotationWatcher;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RotationWatcher$a;->a:Lcom/android/systemui/shared/system/RotationWatcher;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RotationWatcher;->onRotationChanged(I)V

    return-void
.end method
