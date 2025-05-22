.class Lcom/zui/quickstep/RecentTasksList$a;
.super Landroid/util/SparseBooleanArray;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/RecentTasksList;->j(IIZ)Lcom/zui/quickstep/RecentTasksList$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/RecentTasksList;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentTasksList;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentTasksList$a;->a:Lcom/zui/quickstep/RecentTasksList;

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentTasksList$a;->a:Lcom/zui/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/zui/quickstep/RecentTasksList;->a(Lcom/zui/quickstep/RecentTasksList;)Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;->isDeviceLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    invoke-super {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method
