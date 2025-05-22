.class Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AllTaskIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Lcom/android/systemui/shared/recents/model/Task;

.field b:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;->a:Lcom/android/systemui/shared/recents/model/Task;

    iput p3, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;->b:I

    return-void
.end method
