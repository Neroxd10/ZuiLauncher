.class Lcom/zui/quickstep/views/RecentsViewForPad$a;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/RecentsViewForPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsViewForPad;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$a;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityUnpinned()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityUnpinned()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    return-void
.end method
