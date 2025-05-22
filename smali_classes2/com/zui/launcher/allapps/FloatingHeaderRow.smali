.class public interface abstract Lcom/zui/launcher/allapps/FloatingHeaderRow;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_ROWS:[Lcom/zui/launcher/allapps/FloatingHeaderRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zui/launcher/allapps/FloatingHeaderRow;

    sput-object v0, Lcom/zui/launcher/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    return-void
.end method


# virtual methods
.method public abstract getExpectedHeight()I
.end method

.method public abstract getTypeClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/launcher/allapps/FloatingHeaderRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasVisibleContent()Z
.end method

.method public abstract setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setInsets(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;)V
.end method

.method public abstract setVerticalScroll(IZ)V
.end method

.method public abstract setup(Lcom/zui/launcher/allapps/FloatingHeaderView;[Lcom/zui/launcher/allapps/FloatingHeaderRow;Z)V
.end method

.method public abstract shouldDraw()Z
.end method
