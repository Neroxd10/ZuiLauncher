.class Lcom/zui/launcher/ReorderActor$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/ReorderActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/ReorderActor$d;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/ReorderActor$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor$c;->a:Lcom/zui/launcher/ReorderActor$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ReorderActor$c;->a:Lcom/zui/launcher/ReorderActor$d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor$d;->a()V

    :cond_0
    return-void
.end method
