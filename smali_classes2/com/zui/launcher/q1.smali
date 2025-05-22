.class public final synthetic Lcom/zui/launcher/q1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/q1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/q1;

    invoke-direct {v0}, Lcom/zui/launcher/q1;-><init>()V

    sput-object v0, Lcom/zui/launcher/q1;->a:Lcom/zui/launcher/q1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/zui/launcher/LauncherAnimationRunner;->f(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method
