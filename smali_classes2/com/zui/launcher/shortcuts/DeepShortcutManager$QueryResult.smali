.class public Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/shortcuts/DeepShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field static b:Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    invoke-direct {v0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;-><init>()V

    sput-object v0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->b:Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->a:Z

    return-void
.end method


# virtual methods
.method public wasSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->a:Z

    return p0
.end method
