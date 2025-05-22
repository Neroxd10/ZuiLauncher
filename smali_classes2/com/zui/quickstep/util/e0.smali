.class public final synthetic Lcom/zui/quickstep/util/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SplitSelectStateController$a;

.field public final synthetic b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SplitSelectStateController$a;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/e0;->a:Lcom/zui/quickstep/util/SplitSelectStateController$a;

    iput-object p2, p0, Lcom/zui/quickstep/util/e0;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/zui/quickstep/util/e0;->c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/zui/quickstep/util/e0;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/zui/quickstep/util/e0;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/util/e0;->a:Lcom/zui/quickstep/util/SplitSelectStateController$a;

    iget-object v1, p0, Lcom/zui/quickstep/util/e0;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/zui/quickstep/util/e0;->c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/zui/quickstep/util/e0;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/zui/quickstep/util/e0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/quickstep/util/SplitSelectStateController$a;->c([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method
