.class public final synthetic Lcom/android/systemui/shared/system/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Landroid/window/TransitionInfo;

.field public final synthetic d:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic e:Landroid/os/IBinder;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/d;->a:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

    iput-object p2, p0, Lcom/android/systemui/shared/system/d;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/systemui/shared/system/d;->c:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/shared/system/d;->d:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/systemui/shared/system/d;->e:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/systemui/shared/system/d;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/system/d;->a:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

    iget-object v1, p0, Lcom/android/systemui/shared/system/d;->b:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/d;->c:Landroid/window/TransitionInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/system/d;->d:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/systemui/shared/system/d;->e:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/systemui/shared/system/d;->f:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$a;->b(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method
