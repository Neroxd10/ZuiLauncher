.class public Lcom/zui/quickstep/RecentsActivityTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/RecentsActivityTracker$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/quickstep/BaseRecentsActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;"
    }
.end annotation


# static fields
.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/quickstep/BaseRecentsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/zui/quickstep/RecentsActivityTracker$b;


# instance fields
.field private final a:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/zui/quickstep/RecentsActivityTracker$b;

    invoke-direct {v0, v1}, Lcom/zui/quickstep/RecentsActivityTracker$b;-><init>(Lcom/zui/quickstep/RecentsActivityTracker$a;)V

    sput-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->c:Lcom/zui/quickstep/RecentsActivityTracker$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/RecentsActivityTracker;->a:Ljava/util/function/BiPredicate;

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/zui/quickstep/RecentsActivityTracker;Lcom/zui/quickstep/BaseRecentsActivity;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/RecentsActivityTracker;->c(Lcom/zui/quickstep/BaseRecentsActivity;Z)Z

    move-result p0

    return p0
.end method

.method private c(Lcom/zui/quickstep/BaseRecentsActivity;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivityTracker;->a:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getCurrentActivity()Lcom/zui/quickstep/BaseRecentsActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/quickstep/BaseRecentsActivity;",
            ">()TT;"
        }
    .end annotation

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsActivity;

    return-object v0
.end method

.method public static onRecentsActivityCreate(Lcom/zui/quickstep/BaseRecentsActivity;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->b:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->c:Lcom/zui/quickstep/RecentsActivityTracker$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zui/quickstep/RecentsActivityTracker$b;->b(Lcom/zui/quickstep/BaseRecentsActivity;Z)Z

    return-void
.end method

.method public static onRecentsActivityDestroy(Lcom/zui/quickstep/BaseRecentsActivity;)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/zui/quickstep/RecentsActivityTracker;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public static onRecentsActivityNewIntent(Lcom/zui/quickstep/BaseRecentsActivity;)V
    .locals 2

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->c:Lcom/zui/quickstep/RecentsActivityTracker$b;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/zui/quickstep/RecentsActivityTracker$b;->b(Lcom/zui/quickstep/BaseRecentsActivity;Z)Z

    return-void
.end method


# virtual methods
.method public register()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->c:Lcom/zui/quickstep/RecentsActivityTracker$b;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsActivityTracker$b;->c(Lcom/zui/quickstep/RecentsActivityTracker;)V

    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsActivityTracker;->register()V

    invoke-virtual {p2, p4, p5, p6, p3}, Lcom/zui/quickstep/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;JLandroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p3, p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentsActivityTracker;->c:Lcom/zui/quickstep/RecentsActivityTracker$b;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsActivityTracker$b;->a(Lcom/zui/quickstep/RecentsActivityTracker;)Z

    return-void
.end method
