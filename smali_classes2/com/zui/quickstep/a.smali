.class public final synthetic Lcom/zui/quickstep/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/a;

    invoke-direct {v0}, Lcom/zui/quickstep/a;-><init>()V

    sput-object v0, Lcom/zui/quickstep/a;->a:Lcom/zui/quickstep/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-static {p1, p2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getHiddenTargetAlpha(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Float;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
