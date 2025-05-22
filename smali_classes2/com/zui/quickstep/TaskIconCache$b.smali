.class Lcom/zui/quickstep/TaskIconCache$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/quickstep/TaskIconCache$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/quickstep/TaskIconCache$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TaskIconCache$b;-><init>()V

    return-void
.end method
