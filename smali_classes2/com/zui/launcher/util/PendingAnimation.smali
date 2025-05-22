.class public Lcom/zui/launcher/util/PendingAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/PendingAnimation$OnEndListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/util/PendingAnimation$OnEndListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final anim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/PendingAnimation;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public addEndListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/util/PendingAnimation$OnEndListener;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/util/PendingAnimation;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/util/PendingAnimation;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    new-instance v2, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-direct {v2, p1, p2}, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;-><init>(ZI)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/util/PendingAnimation;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
