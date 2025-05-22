.class public Lcom/zui/launcher/LauncherAnimUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL_APPS_TRANSITION_MS:I = 0x140

.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDITVIEW_TRANSITION_MS:I = 0xfa

.field public static final LAYOUT_HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/ViewGroup$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/ViewGroup$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_PROGRESS_TO_ALL_APPS:F = 0.5f

.field public static final OVERVIEW_TRANSITION_MS:I = 0xfa

.field public static final SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPRING_LOADED_EXIT_DELAY:I = 0x1f4

.field public static final SPRING_LOADED_TRANSITION_MS:I = 0x96

.field public static final SUCCESS_TRANSITION_PROGRESS:F = 0.5f

.field public static final VIEW_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_TRANSLATE_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field static b:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$b;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "drawableAlpha"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/LauncherAnimUtils$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$c;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherAnimUtils$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$d;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/LauncherAnimUtils$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$e;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/LauncherAnimUtils$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/Property;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    instance-of v1, v0, Landroid/util/FloatProperty;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$f;

    const-string v1, "translateX"

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherAnimUtils$f;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    instance-of v1, v0, Landroid/util/FloatProperty;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$g;

    const-string v1, "translateY"

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherAnimUtils$g;-><init>(Ljava/lang/String;)V

    :goto_1
    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    instance-of v1, v0, Landroid/util/FloatProperty;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$h;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherAnimUtils$h;-><init>(Ljava/lang/String;)V

    :goto_2
    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$i;

    const-string v1, "backgroundColor"

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherAnimUtils$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->a:Ljava/util/HashSet;

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$a;

    invoke-direct {v0}, Lcom/zui/launcher/LauncherAnimUtils$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/LauncherAnimUtils;->b:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockedFlingDurationFactor(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->b:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0}, Lcom/zui/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/zui/launcher/LauncherAnimUtils$j;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherAnimUtils$j;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;
    .locals 0

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    return-object p0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 0

    invoke-static {p0, p0, p1}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 0

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    return-object p0
.end method

.method public static onDestroyActivity()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/zui/launcher/LauncherAnimUtils;->a:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/zui/launcher/LauncherAnimUtils;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
