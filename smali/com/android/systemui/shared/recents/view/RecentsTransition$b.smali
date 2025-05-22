.class Lcom/android/systemui/shared/recents/view/RecentsTransition$b;
.super Landroid/os/IRemoteCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/view/RecentsTransition;->wrapStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/IRemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$b;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$b;->a:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$b;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
