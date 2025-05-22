.class public final synthetic Lcom/zui/quickstep/util/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/util/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/util/c;

    invoke-direct {v0}, Lcom/zui/quickstep/util/c;-><init>()V

    sput-object v0, Lcom/zui/quickstep/util/c;->a:Lcom/zui/quickstep/util/c;

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

    invoke-static {p1, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->b(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p2
.end method
