.class Lcom/android/systemui/shared/system/ActivityOptionsCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$a;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$a;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
