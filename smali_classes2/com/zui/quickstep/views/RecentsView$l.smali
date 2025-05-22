.class Lcom/zui/quickstep/views/RecentsView$l;
.super Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseActivity;",
        ">",
        "Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;"
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic g()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$l;->a:Lcom/zui/launcher/BaseActivity;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_0
    return-void
.end method

.method public onPipAnimationStarted()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/views/f0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/f0;-><init>(Lcom/zui/quickstep/views/RecentsView$l;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPipCornerRadiusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$l;->b:Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->B(Lcom/zui/quickstep/views/RecentsView;I)I

    :cond_0
    return-void
.end method
