.class public Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleaseCheck"
.end annotation


# instance fields
.field a:Z

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;->a:Z

    return-void
.end method


# virtual methods
.method protected setCanRelease(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
