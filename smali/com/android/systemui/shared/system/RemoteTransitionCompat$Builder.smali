.class public Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/window/RemoteTransition;

.field private b:Landroid/window/TransitionFilter;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->a:Landroid/window/RemoteTransition;

    const-class p0, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private a()V
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->a()V

    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->b:Landroid/window/TransitionFilter;

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->a:Landroid/window/RemoteTransition;

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->b:Landroid/window/TransitionFilter;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    return-object v0
.end method

.method public setFilter(Landroid/window/TransitionFilter;)Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->a()V

    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->b:Landroid/window/TransitionFilter;

    return-object p0
.end method

.method public setTransition(Landroid/window/RemoteTransition;)Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->a()V

    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->c:J

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->a:Landroid/window/RemoteTransition;

    return-object p0
.end method
