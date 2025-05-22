.class public final synthetic Lcom/zui/quickstep/util/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

.field public final synthetic b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/w;->a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    iput-object p2, p0, Lcom/zui/quickstep/util/w;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/w;->a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    iget-object p0, p0, Lcom/zui/quickstep/util/w;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->d([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
