.class public final synthetic Lcom/zui/quickstep/v1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskViewUtils$b;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskViewUtils$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/v1;->a:Lcom/zui/quickstep/TaskViewUtils$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/v1;->a:Lcom/zui/quickstep/TaskViewUtils$b;

    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/TaskViewUtils$b;->b(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
