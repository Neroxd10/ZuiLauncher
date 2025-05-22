.class Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onDragEnd(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)Lcom/zui/launcher/LauncherState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method
